"""
VHAL AES — Omoda 5 Araç Sensör İzleme & MQTT Simülatörü
Geliştirici: Omoda Universal Assistant Projesi
"""
import customtkinter as ctk
import tkinter as tk
from tkinter import ttk, messagebox, filedialog
import threading
import subprocess
import time
import re
import json
import logging
import os
from datetime import datetime
from typing import Optional

import paho.mqtt.client as mqtt

# ─── Logging ───────────────────────────────────────────────────────────────────
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    datefmt="%H:%M:%S",
)
log = logging.getLogger("VHAL_AES")

# ─── Tema ──────────────────────────────────────────────────────────────────────
ctk.set_appearance_mode("Dark")
ctk.set_default_color_theme("blue")

# ─── Sabitler ──────────────────────────────────────────────────────────────────
APP_DIR = os.path.dirname(os.path.abspath(__file__))
CONFIG_FILE = os.path.join(APP_DIR, "config.json")
DISCOVERED_SENSORS_FILE = os.path.join(APP_DIR, "discovered_sensors.json")
DEFAULT_LOG_DIR = APP_DIR

# ─── Android (Köprü) MQTT Adresi — SABİT ───────────────────────────────────────
# Android uygulamanın telemetri verisi gönderdiği broker ve topic'ler.
# Kaynak: core/src/main/java/com/omoda/lanc/mqtt/MqttPublisher.kt, MqttTelemetryBridge.kt
ANDROID_MQTT_BROKER = "192.168.1.14"
ANDROID_MQTT_PORT = 1883
ANDROID_MQTT_USER = "mqtthome"
ANDROID_MQTT_PASS = "4078"
ANDROID_TOPICS = [
    "omoda/telemetri",
    "omoda/komut",
    "omoda/vhal_raw",
    "omoda5/+/telemetry",
    "omoda5/+/climate/state",
    "omoda5/+/media/state",
    "omoda5/+/assistant/speech",
]

AOSP_VHAL_PROPERTIES: dict[str, str] = {
    "0x11100100": "INFO_MAKE",
    "0x11100101": "INFO_MODEL",
    "0x11100102": "INFO_MODEL_YEAR",
    "0x11100104": "INFO_FUEL_CAPACITY",
    "0x11100105": "INFO_FUEL_TYPE",
    "0x11100106": "INFO_EV_BATTERY_CAPACITY",
    "0x11200301": "ENGINE_OIL_TEMP",
    "0x11200305": "ENGINE_COOLANT_TEMP",
    "0x11200308": "HVAC_TEMPERATURE_CURRENT",
    "0x11400400": "GEAR_SELECTION",
    "0x11400401": "CURRENT_GEAR",
    "0x11400402": "PARKING_BRAKE_ON",
    "0x11400403": "PARKING_BRAKE_AUTO_APPLY",
    "0x11400b00": "TURN_SIGNAL_STATE",
    "0x11400b01": "IGNITION_STATE",
    "0x11400b02": "ABS_ACTIVE",
    "0x11400b03": "TRACTION_CONTROL_ACTIVE",
    "0x11600205": "FUEL_LEVEL",
    "0x11600207": "PERF_VEHICLE_SPEED",
    "0x11600305": "ENGINE_RPM",
    "0x11600702": "EV_BATTERY_LEVEL",
    "0x15400500": "HVAC_POWER_ON",
    "0x15600501": "HVAC_DEFROSTER",
    "0x15600502": "HVAC_AC_ON",
    "0x15600503": "HVAC_MAX_AC_ON",
    "0x15600505": "HVAC_TEMPERATURE_SET",
    "0x15600506": "HVAC_DEFROSTER",
    "0x1560050a": "HVAC_FAN_SPEED",
    "0x16200b00": "DOOR_POS",
    "0x16400b01": "DOOR_MOVE",
    "0x16200b02": "DOOR_LOCK",
    "0x16200b03": "MIRROR_Z_POS",
    "0x16200b04": "MIRROR_Z_MOVE",
    "0x16200b05": "MIRROR_Y_POS",
    "0x16200b06": "MIRROR_Y_MOVE",
    "0x16200b07": "MIRROR_LOCK",
    "0x16200b08": "MIRROR_FOLD",
    "0x16200b09": "SEAT_MEMORY_SELECT",
    "0x16200b0a": "SEAT_MEMORY_SET",
    "0x16200b0b": "SEAT_HEADREST_HEIGHT_POS",
    "0x16400b0c": "SEAT_HEADREST_HEIGHT_MOVE",
    "0x16200b0d": "SEAT_HEADREST_ANGLE_POS",
    "0x16400b0e": "SEAT_HEADREST_ANGLE_MOVE",
    "0x16200b0f": "SEAT_HEADREST_FORE_AFT_POS",
    "0x16400b10": "SEAT_HEADREST_FORE_AFT_MOVE",
    "0x21103034": "AP_POWER_STATE_REQ",
    "0x21602003": "OBD2_LIVE_FRAME",
}


def load_app_config() -> dict:
    """config.json dosyasını oku. Yoksa varsayılan değerler döner."""
    defaults = {
        "adb_target": "100.89.242.14:5555",
        "mqtt_broker": "100.95.239.119",
        "mqtt_port": 1883,
        "mqtt_user": "mqtthome",
        "mqtt_pass": "4078",
        "mqtt_topic_simulate": "omoda/simulate",
        "mqtt_topic_komut": "omoda/komut",
        "poll_interval_sec": 1,
        "adb_timeout_sec": 10,
        "batch_size": 20,
    }
    if os.path.exists(CONFIG_FILE):
        try:
            with open(CONFIG_FILE, "r", encoding="utf-8") as f:
                data = json.load(f)
            defaults.update(data)
            log.info("Config yüklendi: %s", CONFIG_FILE)
        except (json.JSONDecodeError, OSError) as e:
            log.warning("Config okuma hatası, varsayılanlar kullanılıyor: %s", e)
    else:
        log.info("config.json bulunamadı, varsayılanlar kullanılıyor.")
    return defaults


def save_app_config(cfg: dict) -> None:
    """Mevcut config'i config.json'a yazar."""
    try:
        with open(CONFIG_FILE, "w", encoding="utf-8") as f:
            json.dump(cfg, f, indent=4, ensure_ascii=False)
        log.info("Config kaydedildi: %s", CONFIG_FILE)
    except OSError as e:
        log.error("Config yazma hatası: %s", e)


# ═══════════════════════════════════════════════════════════════════════════════
# Ana Uygulama
# ═══════════════════════════════════════════════════════════════════════════════
class VhalAesApp(ctk.CTk):
    """Omoda 5 VHAL AES masaüstü uygulaması."""

    def __init__(self) -> None:
        super().__init__()
        self.title("VHAL AES — Omoda 5 Sensör İzleme")
        self.geometry("1500x900")

        self.cfg = load_app_config()
        self.is_monitoring = False
        self.prop_defs: dict[str, str] = {}
        self.sensor_aliases: dict[str, dict] = {}
        self.baseline: dict[str, tuple] = {}
        self.last_update_time: Optional[str] = None
        self.adb_connected = False
        self.dashboard_widgets = {}

        # MQTT — Simülasyon istemcisi (cfg broker'ı: 100.95.239.119)
        self.mqtt_client = mqtt.Client()
        self.mqtt_client.username_pw_set(
            self.cfg["mqtt_user"], self.cfg["mqtt_pass"]
        )

        # MQTT — Android (Köprü) istemcisi (ayrı broker: 192.168.1.14)
        # Android telemetrisi bu broker'a yayınlanır; sim broker'ı farklı
        # olduğundan veri akışı için ayrı bir istemci şarttır.
        self.bridge_mqtt_client = mqtt.Client()
        self.bridge_mqtt_client.username_pw_set(
            ANDROID_MQTT_USER, ANDROID_MQTT_PASS
        )
        self.bridge_mqtt_client.on_message = self._on_android_message
        self.bridge_mqtt_client.on_connect = self._on_bridge_connect
        self.bridge_mqtt_client.on_disconnect = self._on_bridge_disconnect

        self._build_ui()
        self.load_discovered_sensors()
        self.load_config()

    # ─── UI Yapısı ─────────────────────────────────────────────────────────────
    def _build_ui(self) -> None:
        """Ana UI bileşenlerini oluşturur."""

        # ═══ Sol Panel (Kontroller) ════════════════════════════════════════════
        self.left_frame = ctk.CTkScrollableFrame(self, width=300)
        self.left_frame.pack(side="left", fill="y", padx=10, pady=10)

        ctk.CTkLabel(
            self.left_frame,
            text="VHAL AES Kontrol",
        ).pack(pady=10)

        # ── ADB Hedef IP ──
        adb_frame = ctk.CTkFrame(self.left_frame)
        adb_frame.pack(pady=5, fill="x", padx=10)
        ctk.CTkLabel(adb_frame, text="ADB Hedef:", font=ctk.CTkFont(size=13)).pack(
            anchor="w", padx=5, pady=(5, 0)
        )

        adb_row = ctk.CTkFrame(adb_frame, fg_color="transparent")
        adb_row.pack(fill="x", padx=5, pady=5)

        self.entry_adb_target = ctk.CTkEntry(adb_row, placeholder_text="IP:PORT")
        self.entry_adb_target.insert(0, self.cfg["adb_target"])
        self.entry_adb_target.pack(side="left", fill="x", expand=True, padx=(0, 5))

        self.btn_adb_connect = ctk.CTkButton(
            adb_row, text="Bağlan", width=80, command=self.adb_connect
        )
        self.btn_adb_connect.pack(side="right")

        # ── Config / Log Seçimi ──
        ctk.CTkLabel(
            self.left_frame,
            text="Config / Log Seçimi:",
            font=ctk.CTkFont(size=14),
        ).pack(pady=(10, 0))

        list_frame = ctk.CTkFrame(self.left_frame, height=120)
        list_frame.pack(pady=5, fill="x", padx=10)
        list_frame.pack_propagate(False)

        self.log_listbox = tk.Listbox(
            list_frame,
            bg="#2b2b2b",
            fg="white",
            selectbackground="#1f538d",
            borderwidth=0,
            highlightthickness=0,
        )
        self.log_listbox.pack(side="left", fill="both", expand=True, padx=5, pady=5)

        scroll = ttk.Scrollbar(list_frame, command=self.log_listbox.yview)
        scroll.pack(side="right", fill="y")
        self.log_listbox.config(yscrollcommand=scroll.set)
        self.refresh_log_list()

        ctk.CTkButton(
            self.left_frame, text="Seçileni Yükle", command=self.load_selected_config
        ).pack(pady=5, fill="x", padx=10)

        self.btn_monitor = ctk.CTkButton(
            self.left_frame,
            text="▶ Canlı ADB İzleme Başlat",
            fg_color="green",
            command=self.toggle_monitor,
        )
        self.btn_monitor.pack(pady=5, fill="x", padx=10)

        ctk.CTkButton(
            self.left_frame, text="💾 Verileri Kaydet (Log)", command=self.save_logs
        ).pack(pady=5, fill="x", padx=10)

        # ── MQTT ──
        ctk.CTkLabel(
            self.left_frame,
            text="MQTT Simülatörü",
            font=ctk.CTkFont(size=16, weight="bold"),
        ).pack(pady=(20, 5))

        self.btn_mqtt = ctk.CTkButton(
            self.left_frame, text="MQTT Bağlan", command=self.connect_mqtt
        )
        self.btn_mqtt.pack(pady=5, fill="x", padx=10)

        self.btn_bridge = ctk.CTkButton(
            self.left_frame, text="🌉 Köprü Adresi / Abone Ol",
            command=self.open_bridge_panel, fg_color="#5b2a86",
        )
        self.btn_bridge.pack(pady=5, fill="x", padx=10)

        # ── Manuel Sensör Gönderim ──
        manual_frame = ctk.CTkFrame(self.left_frame)
        manual_frame.pack(pady=10, fill="x", padx=10)
        ctk.CTkLabel(
            manual_frame,
            text="Manuel Sensör Gönder",
            font=ctk.CTkFont(size=14, weight="bold"),
        ).pack(pady=5)

        row_frame = ctk.CTkFrame(manual_frame, fg_color="transparent")
        row_frame.pack(pady=5, fill="x", padx=5)

        self.combo_prop = ctk.CTkComboBox(
            row_frame, values=["Önce Config Yükle"], width=200
        )
        self.combo_prop.pack(side="left", fill="x", expand=True, padx=(0, 5))

        ctk.CTkButton(
            row_frame, text="✏️ Düzenle", width=80, command=self.open_sensor_editor
        ).pack(side="right")

        self.entry_val = ctk.CTkEntry(
            manual_frame, placeholder_text="Değer (Float/Int)"
        )
        self.entry_val.pack(pady=5, fill="x", padx=5)

        self.lbl_status = ctk.CTkLabel(manual_frame, text="", text_color="green")
        self.lbl_status.pack()
        self.entry_val.bind("<KeyRelease>", self.validate_manual_input)

        self.entry_pass = ctk.CTkEntry(
            manual_frame, placeholder_text="Gönderim Şifresi", show="*"
        )
        self.entry_pass.insert(0, self.cfg.get("mqtt_pass", "4078"))
        self.entry_pass.pack(pady=5, fill="x", padx=5)

        ctk.CTkButton(
            manual_frame,
            text="Simüle Et (Gönder)",
            command=self.send_manual_sensor,
        ).pack(pady=5, fill="x", padx=5)

        quick_frame = ctk.CTkFrame(manual_frame, fg_color="transparent")
        quick_frame.pack(pady=5, fill="x", padx=5)
        ctk.CTkButton(
            quick_frame,
            text="Hız: 50",
            width=70,
            command=lambda: self.quick_send("0x11600207", 50.0),
        ).pack(side="left", padx=2)
        ctk.CTkButton(
            quick_frame,
            text="Vites: D",
            width=70,
            command=lambda: self.quick_send("0x11400400", 8),
        ).pack(side="left", padx=2)
        ctk.CTkButton(
            quick_frame,
            text="RPM: 2000",
            width=80,
            command=lambda: self.quick_send("0x11600305", 2000.0),
        ).pack(side="left", padx=2)

        # ── İnteraktif Sürüş Simülatörü ──
        drive_frame = ctk.CTkFrame(self.left_frame)
        drive_frame.pack(pady=10, fill="x", padx=10)
        ctk.CTkLabel(
            drive_frame,
            text="🕹️ İnteraktif Sürüş",
            font=ctk.CTkFont(size=14, weight="bold"),
        ).pack(pady=5)
        
        self.lbl_speed_slider = ctk.CTkLabel(drive_frame, text="Hız: 0 km/h")
        self.lbl_speed_slider.pack(pady=(5,0))
        self.slider_speed = ctk.CTkSlider(drive_frame, from_=0, to=220, command=self._on_speed_slide)
        self.slider_speed.set(0)
        self.slider_speed.pack(pady=(0,5), fill="x", padx=10)
        
        self.lbl_rpm_slider = ctk.CTkLabel(drive_frame, text="RPM: 0")
        self.lbl_rpm_slider.pack(pady=(5,0))
        self.slider_rpm = ctk.CTkSlider(drive_frame, from_=0, to=8000, command=self._on_rpm_slide)
        self.slider_rpm.set(0)
        self.slider_rpm.pack(pady=(0,5), fill="x", padx=10)

        # ── Hermes ──
        ctk.CTkLabel(
            self.left_frame,
            text="Hermes Tetikleyiciler",
            font=ctk.CTkFont(size=16, weight="bold"),
        ).pack(pady=(20, 5))
        ctk.CTkButton(
            self.left_frame,
            text="Bilgi Al",
            command=lambda: self.trigger_hermes("get_info"),
        ).pack(pady=5, fill="x", padx=10)
        ctk.CTkButton(
            self.left_frame,
            text="Klima Aç",
            command=lambda: self.trigger_hermes("ac_on"),
        ).pack(pady=5, fill="x", padx=10)

        # ═══ Sağ Panel (Tablo + Arama + Dashboard) ════════════════════════════
        self.right_frame = ctk.CTkFrame(self)
        self.right_frame.pack(side="right", fill="both", expand=True, padx=10, pady=10)

        # ── TabView ──
        self.tabview = ctk.CTkTabview(self.right_frame)
        self.tabview.pack(fill="both", expand=True, padx=5, pady=5)
        self.tabview.add("Sensör Listesi")
        self.tabview.add("Canlı İzleme & Test")

        # ── TAB 1: Sensör Listesi ──
        tab_list = self.tabview.tab("Sensör Listesi")

        # Arama kutusu
        search_frame = ctk.CTkFrame(tab_list, fg_color="transparent")
        search_frame.pack(fill="x", padx=5, pady=(5, 0))

        ctk.CTkLabel(search_frame, text="🔍").pack(side="left", padx=(0, 5))
        self.entry_search = ctk.CTkEntry(
            search_frame, placeholder_text="Sensör Ara (ID veya isim)..."
        )
        self.entry_search.pack(side="left", fill="x", expand=True)
        self.entry_search.bind("<KeyRelease>", self._on_search)

        self.lbl_count = ctk.CTkLabel(
            search_frame, text="0 sensör", text_color="gray"
        )
        self.lbl_count.pack(side="right", padx=10)

        # Treeview
        columns = (
            "prop_id", "name", "parsed_val", "status", "zone", "float", "int32", "int64",
            "bytes", "string",
        )
        style = ttk.Style()
        style.theme_use("clam")
        style.configure(
            "Treeview",
            background="#1e1e1e",
            foreground="white",
            fieldbackground="#1e1e1e",
            rowheight=24,
        )
        style.configure("Treeview.Heading", background="#333", foreground="white")
        style.map("Treeview", background=[("selected", "#1f538d")])

        tree_frame = ctk.CTkFrame(tab_list, fg_color="transparent")
        tree_frame.pack(fill="both", expand=True, padx=5, pady=5)

        self.tree = ttk.Treeview(
            tree_frame, columns=columns, show="headings", height=30
        )

        col_widths = {
            "prop_id": 100, "name": 200, "parsed_val": 150, "status": 100, "zone": 50,
            "float": 80, "int32": 80, "int64": 70, "bytes": 100, "string": 100,
        }
        col_labels = {
            "prop_id": "Property ID", "name": "İsim", "parsed_val": "Anlamlı Değer",
            "status": "Durum", "zone": "Zone", "float": "Raw Float",
            "int32": "Raw Int32", "int64": "Raw Int64", "bytes": "Raw Bytes", "string": "Raw String",
        }
        for col in columns:
            self.tree.heading(col, text=col_labels[col])
            self.tree.column(col, width=col_widths[col])

        self.tree.pack(side="left", fill="both", expand=True)

        scrollbar = ttk.Scrollbar(
            tree_frame, orient="vertical", command=self.tree.yview
        )
        scrollbar.pack(side="right", fill="y")
        self.tree.configure(yscrollcommand=scrollbar.set)

        # ── TAB 2: Canlı İzleme & Test ──
        self._build_dashboard_tab()

        # Durum çubuğu
        self.status_bar = ctk.CTkFrame(self.right_frame, height=30)
        self.status_bar.pack(fill="x", padx=5, pady=(0, 5))

        self.lbl_adb_status = ctk.CTkLabel(
            self.status_bar, text="⚪ ADB: Bağlı değil", text_color="gray", font=ctk.CTkFont(size=12)
        )
        self.lbl_adb_status.pack(side="left", padx=10)

        self.lbl_mqtt_status = ctk.CTkLabel(
            self.status_bar, text="⚪ MQTT: Bağlı değil", text_color="gray", font=ctk.CTkFont(size=12)
        )
        self.lbl_mqtt_status.pack(side="left", padx=10)

        self.lbl_bridge_status = ctk.CTkLabel(
            self.status_bar, text="⚪ Köprü: 192.168.1.14", text_color="gray", font=ctk.CTkFont(size=12)
        )
        self.lbl_bridge_status.pack(side="left", padx=10)

        self.lbl_last_update = ctk.CTkLabel(
            self.status_bar, text="Son güncelleme: —", text_color="gray", font=ctk.CTkFont(size=12)
        )
        self.lbl_last_update.pack(side="right", padx=10)

        self.lbl_media = ctk.CTkLabel(
            self.status_bar, text="🎵 —", text_color="#69E2D3", font=ctk.CTkFont(size=12)
        )
        self.lbl_media.pack(side="right", padx=20)

    # ─── ADB Bağlantı ─────────────────────────────────────────────────────────
    def adb_connect(self) -> None:
        """Kullanıcının girdiği ADB hedefine bağlanır ve config'i günceller."""
        target = self.entry_adb_target.get().strip()
        if not target:
            messagebox.showwarning("Uyarı", "Lütfen ADB hedef IP:PORT girin!")
            return

        # Port yoksa ekle
        if ":" not in target:
            target += ":5555"
            self.entry_adb_target.delete(0, tk.END)
            self.entry_adb_target.insert(0, target)

        self.cfg["adb_target"] = target
        save_app_config(self.cfg)

        def _connect():
            try:
                res = subprocess.run(
                    ["adb", "connect", target],
                    capture_output=True, text=True, timeout=10,
                )
                output = res.stdout.strip()
                log.info("ADB connect: %s", output)
                if "connected" in output.lower():
                    self.adb_connected = True
                    self.after(0, lambda: self.lbl_adb_status.configure(
                        text=f"🟢 ADB: {target}", text_color="#4CAF50"
                    ))
                    self.after(0, lambda: self.btn_adb_connect.configure(
                        text="Bağlı ✓", fg_color="green"
                    ))
                else:
                    self.adb_connected = False
                    self.after(0, lambda: self.lbl_adb_status.configure(
                        text=f"🔴 ADB: Bağlantı reddedildi", text_color="red"
                    ))
                    self.after(0, lambda: messagebox.showerror(
                        "ADB Hatası", f"Bağlantı başarısız:\n{output}"
                    ))
            except subprocess.TimeoutExpired:
                self.after(0, lambda: self.lbl_adb_status.configure(
                    text="🔴 ADB: Zaman aşımı", text_color="red"
                ))
            except FileNotFoundError:
                self.after(0, lambda: messagebox.showerror(
                    "ADB Hatası", "ADB komutu bulunamadı! PATH'e ekleyin."
                ))

        threading.Thread(target=_connect, daemon=True).start()

    # ─── Sensör Yönetimi ───────────────────────────────────────────────────────
    def load_discovered_sensors(self) -> None:
        """discovered_sensors.json dosyasından sensör alias'larını yükler."""
        if os.path.exists(DISCOVERED_SENSORS_FILE):
            try:
                with open(DISCOVERED_SENSORS_FILE, "r", encoding="utf-8") as f:
                    self.sensor_aliases = json.load(f)
                log.info("Keşfedilen sensörler yüklendi: %d", len(self.sensor_aliases))
            except (json.JSONDecodeError, OSError) as e:
                log.error("Discovered sensors okuma hatası: %s", e)

    def save_discovered_sensors(self) -> None:
        """Sensör alias'larını diske yazar."""
        try:
            with open(DISCOVERED_SENSORS_FILE, "w", encoding="utf-8") as f:
                json.dump(self.sensor_aliases, f, indent=4, ensure_ascii=False)
        except OSError as e:
            log.error("Discovered sensors yazma hatası: %s", e)

    def get_sensor_display_name(self, prop_id: str) -> str:
        """Bir property ID için en iyi gösterim ismini döner."""
        alias_data = self.sensor_aliases.get(prop_id, {})
        alias = alias_data.get("alias", "").strip()
        if alias:
            return alias
        name = alias_data.get("name", "").strip()
        if name and name != "Bilinmeyen":
            return name
        return self.prop_defs.get(prop_id, AOSP_VHAL_PROPERTIES.get(prop_id, "Bilinmeyen"))

    def refresh_combo_prop(self) -> None:
        """Manuel sensör gönderim combobox'ını günceller."""
        all_ids = sorted(set(self.prop_defs.keys()) | set(self.sensor_aliases.keys()))
        combo_vals = [f"{pid} - {self.get_sensor_display_name(pid)}" for pid in all_ids]

        if combo_vals:
            self.combo_prop.configure(values=combo_vals)
            if self.combo_prop.get() == "Önce Config Yükle":
                self.combo_prop.set(combo_vals[0])

    def open_sensor_editor(self) -> None:
        """Sensör alias düzenleyici penceresi açar."""
        editor = ctk.CTkToplevel(self)
        editor.title("Sensör Düzenleyici (Takma Ad / Alias)")
        editor.geometry("650x450")
        editor.attributes("-topmost", True)

        ctk.CTkLabel(
            editor,
            text="Sensör Listesi (Düzenlemek için Seçin)",
            font=ctk.CTkFont(weight="bold"),
        ).pack(pady=10)

        list_frame = ctk.CTkFrame(editor)
        list_frame.pack(fill="both", expand=True, padx=10, pady=5)

        editor_listbox = tk.Listbox(
            list_frame, bg="#2b2b2b", fg="white",
            selectbackground="#1f538d", borderwidth=0,
        )
        editor_listbox.pack(side="left", fill="both", expand=True, padx=5, pady=5)

        scroll = ttk.Scrollbar(list_frame, command=editor_listbox.yview)
        scroll.pack(side="right", fill="y")
        editor_listbox.config(yscrollcommand=scroll.set)

        all_ids = sorted(set(self.prop_defs.keys()) | set(self.sensor_aliases.keys()))
        for pid in all_ids:
            editor_listbox.insert(tk.END, f"{pid} - {self.get_sensor_display_name(pid)}")

        edit_frame = ctk.CTkFrame(editor)
        edit_frame.pack(fill="x", padx=10, pady=10)

        entry_name = ctk.CTkEntry(
            edit_frame, placeholder_text="Orijinal Ad", width=200
        )
        entry_name.pack(side="left", fill="x", expand=True, padx=5)

        entry_alias = ctk.CTkEntry(
            edit_frame, placeholder_text="Takma Ad (Türkçe)", width=200
        )
        entry_alias.pack(side="left", fill="x", expand=True, padx=5)

        def on_select(event):
            sel = editor_listbox.curselection()
            if not sel:
                return
            val = editor_listbox.get(sel[0])
            pid = val.split(" - ")[0]
            alias_data = self.sensor_aliases.get(pid, {})
            entry_name.delete(0, tk.END)
            entry_name.insert(0, alias_data.get("name", self.prop_defs.get(pid, "")))
            entry_alias.delete(0, tk.END)
            entry_alias.insert(0, alias_data.get("alias", ""))

        editor_listbox.bind("<<ListboxSelect>>", on_select)

        def save_alias():
            sel = editor_listbox.curselection()
            if not sel:
                return
            pid = editor_listbox.get(sel[0]).split(" - ")[0]
            if pid not in self.sensor_aliases:
                self.sensor_aliases[pid] = {}
            self.sensor_aliases[pid]["name"] = entry_name.get().strip() or "Bilinmeyen"
            self.sensor_aliases[pid]["alias"] = entry_alias.get().strip()
            self.save_discovered_sensors()
            self.refresh_combo_prop()
            messagebox.showinfo("Başarılı", "Ad ve Takma ad kaydedildi!")
            editor.destroy()

        ctk.CTkButton(edit_frame, text="Kaydet", command=save_alias).pack(
            side="right", padx=5
        )

    # ─── Config / Log ──────────────────────────────────────────────────────────
    def refresh_log_list(self) -> None:
        """Çalışma dizinindeki .txt dosyalarını listeler."""
        self.log_listbox.delete(0, tk.END)
        try:
            for f in sorted(os.listdir(APP_DIR)):
                if f.endswith(".txt"):
                    self.log_listbox.insert(tk.END, f)
        except OSError as e:
            log.error("Dosya listesi hatası: %s", e)

    def load_selected_config(self) -> None:
        """Listbox'tan seçilen dosyayı yükler."""
        sel = self.log_listbox.curselection()
        if not sel:
            messagebox.showwarning("Uyarı", "Lütfen listeden bir .txt dosyası seçin!")
            return
        selected_file = self.log_listbox.get(sel[0])
        self.load_config(os.path.join(APP_DIR, selected_file))

    def load_config(self, filename: Optional[str] = None) -> None:
        """Property config dosyasını okur ve tabloyu doldurur."""
        if filename is None:
            filename = os.path.join(APP_DIR, "car_properties_config.txt")
        if not os.path.exists(filename):
            return

        self.prop_defs.clear()
        with open(filename, "r", encoding="utf-8", errors="ignore") as f:
            content = f.read()

        for line in content.splitlines():
            if line.startswith("Property:"):
                m = re.match(
                    r"Property:(0x[0-9a-fA-F]+),Property name:([^,]+),", line
                )
                if m:
                    self.prop_defs[m.group(1).lower()] = m.group(2)
            elif line.startswith("ID:"):
                m = re.match(r"ID:(0x[0-9a-fA-F]+)\s*\|\s*Name:([^|]+)", line)
                if m:
                    self.prop_defs[m.group(1).lower()] = m.group(2).strip()

        self.refresh_combo_prop()
        self._update_sensor_count()

        # Log dosyası yükleme
        if filename != os.path.join(APP_DIR, "car_properties_config.txt"):
            self.tree.delete(*self.tree.get_children())

            if "floatValues:" in content:
                self.parse_and_update_table(content, from_log=True)
            elif "ID:" in content and "| F:" in content:
                for line in content.splitlines():
                    if line.startswith("ID:"):
                        try:
                            parts = [p.strip() for p in line.split("|")]
                            pid = parts[0].split(":", 1)[1]
                            name = parts[1].split(":", 1)[1]
                            zone = parts[2].split(":", 1)[1]
                            f_val = parts[3].split(":", 1)[1]
                            i_val = parts[4].split(":", 1)[1]
                            s_val = parts[5].split(":", 1)[1]
                            iid = f"{pid}_{zone}"
                            parsed = self._parse_vehicle_value(pid, f_val, i_val, s_val)
                            values = (pid, name, parsed, "LOG DOSYASI", zone, f_val, i_val, "[]", "[]", s_val)
                            self.tree.insert("", "end", iid=iid, values=values)
                        except (IndexError, ValueError):
                            pass

            n = len(self.tree.get_children())
            if n > 0 or len(self.prop_defs) > 0:
                messagebox.showinfo(
                    "Başarılı", f"{os.path.basename(filename)} yüklendi.\n{n} satır tabloya eklendi."
                )
            else:
                messagebox.showwarning("Uyarı", "Dosyada uygun format bulunamadı!")

    # ─── Arama / Filtre ───────────────────────────────────────────────────────
    def _on_search(self, event=None) -> None:
        """Tablodaki satırları arama terimine göre filtreler."""
        query = self.entry_search.get().strip().lower()
        if not query:
            # Tüm satırları göster
            for item_id in self.tree.get_children():
                self.tree.reattach(item_id, "", "end")
            self._update_sensor_count()
            return

        visible = 0
        for item_id in self.tree.get_children():
            vals = self.tree.item(item_id)["values"]
            text = " ".join(str(v).lower() for v in vals)
            if query in text:
                self.tree.reattach(item_id, "", "end")
                visible += 1
            else:
                self.tree.detach(item_id)
        self.lbl_count.configure(text=f"{visible} sonuç")

    def _update_sensor_count(self) -> None:
        """Tablodaki toplam satır sayısını günceller."""
        n = len(self.tree.get_children())
        self.lbl_count.configure(text=f"{n} sensör")

    # ─── Manuel Gönderim ───────────────────────────────────────────────────────
    def validate_manual_input(self, event=None) -> None:
        val = self.entry_val.get().strip()
        if not val:
            self.lbl_status.configure(text="")
            return
        if val.replace(".", "", 1).lstrip("-").isdigit():
            self.lbl_status.configure(text="✅ Veri formatı uygun", text_color="green")
        else:
            self.lbl_status.configure(text="⚠️ String tespit edildi", text_color="orange")

    def send_manual_sensor(self) -> None:
        """Manuel sensör değeri MQTT üzerinden gönderir."""
        if not self.mqtt_client.is_connected():
            messagebox.showwarning("Uyarı", "Önce MQTT'ye bağlanın!")
            return
        if self.entry_pass.get() != self.cfg["mqtt_pass"]:
            messagebox.showerror("Hata", "Geçersiz Gönderim Şifresi!")
            return

        selection = self.combo_prop.get()
        val = self.entry_val.get().strip()
        if not selection or " - " not in selection:
            return
        prop_id = selection.split(" - ")[0]

        payload: dict = {"propertyId": prop_id, "zone": "0x0"}
        if val.replace(".", "", 1).lstrip("-").isdigit():
            if "." in val:
                payload["float"] = val
            else:
                payload["int"] = val
        else:
            payload["string"] = val

        self.mqtt_client.publish(self.cfg["mqtt_topic_simulate"], json.dumps(payload))
        self.lbl_status.configure(text="✅ Gönderildi!", text_color="blue")

    def quick_send(self, prop_id: str, val) -> None:
        """Kısayol butonlarıyla hızlı sensör gönderimi."""
        if not self.mqtt_client.is_connected():
            messagebox.showwarning("Uyarı", "Önce MQTT'ye bağlanın!")
            return
        if self.entry_pass.get() != self.cfg["mqtt_pass"]:
            messagebox.showerror("Hata", "Geçersiz Gönderim Şifresi!")
            return

        payload: dict = {"propertyId": prop_id, "zone": "0x0"}
        if isinstance(val, float):
            payload["float"] = val
        elif isinstance(val, int):
            payload["int"] = val
        self.mqtt_client.publish(self.cfg["mqtt_topic_simulate"], json.dumps(payload))
        self.lbl_status.configure(
            text=f"✅ Kısayol: {prop_id} → {val}", text_color="blue"
        )

    def _on_speed_slide(self, val) -> None:
        """Sürüş simülatörü (Hız)"""
        val_int = int(val)
        self.lbl_speed_slider.configure(text=f"Hız: {val_int} km/h")
        self.quick_send("0x11600207", float(val_int))

    def _on_rpm_slide(self, val) -> None:
        """Sürüş simülatörü (RPM)"""
        val_int = int(val)
        self.lbl_rpm_slider.configure(text=f"RPM: {val_int}")
        self.quick_send("0x11600305", float(val_int))

    # ─── Log Kaydetme ──────────────────────────────────────────────────────────
    def save_logs(self) -> None:
        """Tablodaki verileri dosyaya kaydeder."""
        ts = datetime.now().strftime("%Y%m%d_%H%M%S")
        file_path = filedialog.asksaveasfilename(
            defaultextension=".txt",
            initialfile=f"vhal_aes_log_{ts}.txt",
            initialdir=APP_DIR,
        )
        if not file_path:
            return
        try:
            with open(file_path, "w", encoding="utf-8") as f:
                f.write(f"# VHAL AES Log — {datetime.now().isoformat()}\n")
                f.write(f"# ADB Target: {self.cfg['adb_target']}\n\n")
                for item_id in self.tree.get_children():
                    vals = self.tree.item(item_id)["values"]
                    f.write(
                        f"ID:{vals[0]} | Name:{vals[1]} | Zone:{vals[2]} | "
                        f"F:{vals[3]} | I32:{vals[4]} | S:{vals[7]}\n"
                    )
            messagebox.showinfo("Başarılı", f"Veriler kaydedildi:\n{file_path}")
        except OSError as e:
            messagebox.showerror("Hata", f"Dosya yazma hatası: {e}")

    # ─── MQTT ──────────────────────────────────────────────────────────────────
    def connect_mqtt(self) -> None:
        """MQTT broker'a bağlanır (simülasyon istemcisi)."""
        try:
            self.mqtt_client.connect(
                self.cfg["mqtt_broker"], self.cfg["mqtt_port"], 60
            )
            self.mqtt_client.loop_start()
            self.btn_mqtt.configure(text="MQTT Bağlı ✓", fg_color="green", state="disabled")
            self.lbl_mqtt_status.configure(
                text=f"🟢 MQTT: {self.cfg['mqtt_broker']}", text_color="#4CAF50"
            )
            log.info("MQTT bağlantısı kuruldu: %s", self.cfg["mqtt_broker"])
        except (ConnectionRefusedError, OSError) as e:
            messagebox.showerror("MQTT Hatası", str(e))
            self.lbl_mqtt_status.configure(text="🔴 MQTT: Hata", text_color="red")

    def _connect_bridge(self) -> None:
        """Android (Köprü) broker'ına bağlanır."""
        self.bridge_mqtt_client.connect(
            ANDROID_MQTT_BROKER, ANDROID_MQTT_PORT, 60
        )
        self.bridge_mqtt_client.loop_start()

    def _on_mqtt_connect(self, client, userdata, flags, rc) -> None:
        """Simülasyon istemcisi bağlandı (Android topic aboneliği burada YOK)."""
        log.info("Simülasyon MQTT bağlandı (rc=%s)", rc)

    def _on_bridge_connect(self, client, userdata, flags, rc) -> None:
        """Köprü (Android) bağlantısı kurulunca topic'lere abone olur."""
        if rc != 0:
            log.warning("Köprü MQTT bağlantı rc=%s", rc)
            self.after(0, lambda: self._set_bridge_status(False))
            return
        for topic in ANDROID_TOPICS:
            try:
                client.subscribe(topic)
                log.info("Köprü topic aboneliği: %s", topic)
            except Exception as e:
                log.warning("Abonelik hatası (%s): %s", topic, e)
        self.after(0, lambda: self._set_bridge_status(True))

    def _on_bridge_disconnect(self, client, userdata, rc) -> None:
        """Köprü bağlantısı koptuğunda durumu günceller."""
        log.warning("Köprü MQTT bağlantısı koptu (rc=%s)", rc)
        self.after(0, lambda: self._set_bridge_status(False))

    def _set_bridge_status(self, connected: bool) -> None:
        """Köprü durum etiketini günceller."""
        if connected:
            self.lbl_bridge_status.configure(
                text=f"🟢 Köprü: {ANDROID_MQTT_BROKER}", text_color="#4CAF50"
            )
        else:
            self.lbl_bridge_status.configure(
                text=f"⚪ Köprü: {ANDROID_MQTT_BROKER}", text_color="gray"
            )

    def subscribe_android_topics(self) -> None:
        """Android (Köprü) broker'ına bağlanır ve topic'lerine abone olur."""
        if not self.bridge_mqtt_client.is_connected():
            try:
                self._connect_bridge()
            except (ConnectionRefusedError, OSError) as e:
                messagebox.showerror(
                    "🌉 Köprü Hatası",
                    f"Android broker'a bağlanılamadı:\n"
                    f"{ANDROID_MQTT_BROKER}:{ANDROID_MQTT_PORT}\n\n{str(e)}",
                )
                return
        for topic in ANDROID_TOPICS:
            self.bridge_mqtt_client.subscribe(topic)
        log.info("Köprü (Android) topic'lerine abone olundu: %d topic", len(ANDROID_TOPICS))
        self.after(0, lambda: messagebox.showinfo(
            "🌉 Köprü Aktif",
            f"Android veri adresine abone olundu:\n"
            f"{ANDROID_MQTT_BROKER}:{ANDROID_MQTT_PORT}\n\n"
            f"{len(ANDROID_TOPICS)} topic dinleniyor.\n"
            f"Gelen veriler tabloda '🌉 KÖPRÜ' olarak görünecek.",
        ))

    def open_bridge_panel(self) -> None:
        """Android adresini gösteren ve abonelik başlatan Köprü penceresi."""
        panel = ctk.CTkToplevel(self)
        panel.title("🌉 Köprü — Android Veri Adresi")
        panel.geometry("480x420")
        panel.attributes("-topmost", True)

        ctk.CTkLabel(
            panel, text="🌉 Android (Köprü) MQTT Adresi",
            font=ctk.CTkFont(size=16, weight="bold"),
        ).pack(pady=(15, 5))

        info = (
            f"Broker : {ANDROID_MQTT_BROKER}:{ANDROID_MQTT_PORT}\n"
            f"Kullanıcı: {ANDROID_MQTT_USER} / {ANDROID_MQTT_PASS}\n"
            f"Durum  : {'🟢 Bağlı' if self.bridge_mqtt_client.is_connected() else '⚪ Bağlı değil'}"
        )
        ctk.CTkLabel(panel, text=info, justify="left").pack(pady=5, padx=15, anchor="w")

        ctk.CTkLabel(
            panel, text="Abone olunan topic'ler:",
            font=ctk.CTkFont(weight="bold"),
        ).pack(pady=(10, 0))

        topic_box = tk.Listbox(
            panel, bg="#2b2b2b", fg="white", borderwidth=0,
            highlightthickness=0, height=10,
        )
        topic_box.pack(fill="both", expand=True, padx=15, pady=5)
        for t in ANDROID_TOPICS:
            topic_box.insert(tk.END, t)

        ctk.CTkButton(
            panel, text="🌉 Abone Ol / Köprüyü Aç",
            fg_color="#5b2a86", command=lambda: (
                self.subscribe_android_topics(), panel.destroy()
            ),
        ).pack(pady=10, fill="x", padx=15)

    def _build_dashboard_tab(self) -> None:
        """Canlı İzleme tabını (Dashboard) oluşturur."""
        tab = self.tabview.tab("Canlı İzleme & Test")

        # Grid ayarları
        tab.grid_columnconfigure((0, 1, 2, 3), weight=1, pad=10)
        tab.grid_rowconfigure((0, 1, 2, 3), weight=1, pad=10)

        # Sensör Tanımları (Kartlar)
        sensors = [
            ("Hız", "0x11600207", "0 km/h", "#69E2D3"),
            ("RPM", "0x11600305", "0 RPM", "#69E2D3"),
            ("Vites", "0x21402006", "P", "#69E2D3"),
            ("Yakıt", "0x11600307", "0 L", "#F3B14B"),
            ("Dış Isı", "0x11600703", "0°C", "#2196F3"),
            ("El Freni", "0x2140100d", "PASİF", "#E57373"),
            ("Klima", "0x21401002", "KAPALI", "#4CAF50"),
            ("Klima Isı", "0x21401008", "0°C", "#4CAF50"),
        ]

        for idx, (label, pid, default, color) in enumerate(sensors):
            r, c = divmod(idx, 4)
            card = ctk.CTkFrame(tab, fg_color="#2b2b2b", corner_radius=10, border_width=1, border_color=color)
            card.grid(row=r, column=c, padx=10, pady=10, sticky="nsew")

            # KRİTİK KURAL: Linux Tkinter'da weight="black" kullanmak çökmeye neden olur! SADECE "bold" VEYA "normal" KULLANIN.
            ctk.CTkLabel(card, text=label, text_color=color).pack(pady=(5, 0))
            val_lbl = ctk.CTkLabel(card, text=default)
            val_lbl.pack(pady=5)
            self.dashboard_widgets[pid.lower()] = val_lbl

        # Butonlar (Sadece durum gösterir)
        controls = [
            ("KLİMA GÜCÜ", "0x21401002", "#4CAF50"),
            ("KAPI KİLİDİ", "0x16200b02", "#E57373"),
            ("DÖRTLÜLER", "0x11400e03", "#F3B14B"),
            ("FARLAR", "0x11400e00", "#2196F3"),
        ]

        btn_frame = ctk.CTkFrame(tab, fg_color="transparent")
        btn_frame.grid(row=2, column=0, columnspan=4, sticky="ew", pady=20)

        for idx, (label, pid, color) in enumerate(controls):
            btn = ctk.CTkButton(
                btn_frame, text=f"{label}: BEKLENİYOR",
                fg_color="#333", border_width=2, border_color=color,
                hover=False, # Tıklanabilir ama işlevsiz olduğunu hissettirir
                command=lambda l=label: log.info(f"Test Modu: {l} komutu gönderilmedi.")
            )
            btn.pack(side="left", expand=True, padx=10, pady=10, fill="x")
            self.dashboard_widgets[f"btn_{pid.lower()}"] = btn

    def _update_dashboard_widget(self, pid: str, value: str) -> None:
        """Dashboard'daki widget'ları günceller."""
        pid = pid.lower()
        if pid in self.dashboard_widgets:
            widget = self.dashboard_widgets[pid]
            if isinstance(widget, ctk.CTkLabel):
                widget.configure(text=value)
            elif isinstance(widget, ctk.CTkButton):
                # Buton durumunu metin ve renk ile güncelle
                is_active = "AÇIK" in value.upper() or "AKTİF" in value.upper() or "KİLİTLİ" in value.upper() or "1" == value
                base_text = widget.cget("text").split(":")[0]
                new_text = f"{base_text}: {value}"
                widget.configure(text=new_text, fg_color=widget.cget("border_color") if is_active else "#333")

    def _process_android_message(self, topic: str, payload: str) -> None:
        """Android topic'ine gelen mesajı ayrıştırıp tabloya ve Dashboard'a yazar."""
        # ── omoda/telemetri : JSON telemetri ──
        if topic == "omoda/telemetri":
            try:
                data = json.loads(payload)
            except (json.JSONDecodeError, ValueError):
                return

            if "speed" in data:
                val = f"{data['speed']} km/h"
                self._update_bridge_row("ANDROID_SPEED", "0x11600207", "Hız (Köprü)", val, f_val=str(data["speed"]))
                self._update_dashboard_widget("0x11600207", val)

            if "gear" in data:
                gear = data["gear"]
                if isinstance(gear, int):
                    gear = {1: "P", 2: "R", 3: "N", 5: "D1", 6: "D2", 7: "D3"}.get(gear, "D")
                self._update_bridge_row("ANDROID_GEAR", "0x11400401", "Vites (Köprü)", str(gear), s_val=str(gear))
                self._update_dashboard_widget("0x21402006", str(gear))

            if "rpm" in data:
                val = f"{data['rpm']} RPM"
                self._update_bridge_row("ANDROID_RPM", "0x11600305", "RPM (Köprü)", val, i_val=str(data["rpm"]))
                self._update_dashboard_widget("0x11600305", val)

            if "ac_on" in data:
                val = "AÇIK" if data["ac_on"] else "KAPALI"
                self._update_bridge_row("ANDROID_AC", "0x15600502", "Klima (Köprü)", val, i_val="1" if data["ac_on"] else "0")
                self._update_dashboard_widget("0x21401002", val)
                self._update_dashboard_widget("btn_0x21401002", val)

            if "ac_driver_temp" in data:
                val = f"{data['ac_driver_temp']}°C"
                self._update_dashboard_widget("0x21401008", val)

            if "outside_temp" in data:
                val = f"{data['outside_temp']}°C"
                self._update_dashboard_widget("0x11600703", val)

            return

        # ── omoda/vhal_raw ──
        if topic == "omoda/vhal_raw":
            self._update_bridge_row("ANDROID_VHAL_RAW", "omoda/vhal_raw", "VHAL (ham)", payload[:120], s_val=payload)
            # Ham veriden Dashboard güncellemesi (isteğe bağlı)
            return

        # ── Diğer topicler ──
        self._update_bridge_row(f"ANDROID_{topic.replace('/', '_')}", topic, f"Köprü: {topic}", payload[:120], s_val=payload)

    def trigger_hermes(self, action: str) -> None:
        """Hermes komut tetikleyicisi."""
        if self.mqtt_client.is_connected():
            self.mqtt_client.publish(
                self.cfg["mqtt_topic_komut"], json.dumps({"action": action})
            )

    # ─── Canlı ADB İzleme ─────────────────────────────────────────────────────
    def toggle_monitor(self) -> None:
        """Canlı ADB izlemeyi başlatır/durdurur."""
        if self.is_monitoring:
            self.is_monitoring = False
            self.btn_monitor.configure(
                text="▶ Canlı ADB İzleme Başlat", fg_color="green"
            )
            log.info("İzleme durduruldu.")
        else:
            self.is_monitoring = True
            self.btn_monitor.configure(text="⏹ İzlemeyi Durdur", fg_color="red")
            threading.Thread(target=self._monitor_loop, daemon=True).start()
            log.info("İzleme başlatıldı: %s", self.cfg["adb_target"])

    def _monitor_loop(self) -> None:
        """Arka plan thread'inde ADB üzerinden sensör verilerini okur."""
        target = self.cfg["adb_target"]
        interval = self.cfg["poll_interval_sec"]
        timeout = self.cfg["adb_timeout_sec"]

        while self.is_monitoring:
            try:
                # Tüm property'leri tek çekimde oku
                res = subprocess.run(
                    ["adb", "-s", target, "shell",
                     "dumpsys car_service get-property-value"],
                    capture_output=True, text=True, timeout=timeout,
                )
                if res.returncode == 0 and res.stdout.strip():
                    self.after(0, lambda text=res.stdout: self.parse_and_update_table(text))
                    self.after(0, self._update_timestamp)
                else:
                    log.warning("ADB boş yanıt veya hata: rc=%d", res.returncode)
                    # Bağlantı kopmuş olabilir, yeniden bağlan
                    self._try_adb_reconnect(target)

                # Medya bilgisi çek
                self._fetch_media_info(target, timeout)

            except subprocess.TimeoutExpired:
                log.warning("ADB zaman aşımı (%ds), yeniden deneniyor...", timeout)
                self._try_adb_reconnect(target)
            except FileNotFoundError:
                log.error("ADB komutu bulunamadı!")
                self.is_monitoring = False
                self.after(0, lambda: self.btn_monitor.configure(
                    text="▶ Canlı ADB İzleme Başlat", fg_color="green"
                ))
                break
            except Exception as e:
                log.error("İzleme hatası: %s", e)

            time.sleep(interval)

    def _try_adb_reconnect(self, target: str) -> None:
        """ADB bağlantısı koptuğunda yeniden bağlanmayı dener."""
        try:
            subprocess.run(
                ["adb", "connect", target],
                capture_output=True, text=True, timeout=5,
            )
            log.info("ADB yeniden bağlandı: %s", target)
        except Exception as e:
            log.warning("ADB yeniden bağlanma başarısız: %s", e)

    def _fetch_media_info(self, target: str, timeout: int) -> None:
        """Çalan şarkı bilgisini ADB üzerinden çeker."""
        try:
            res = subprocess.run(
                ["adb", "-s", target, "shell",
                 "dumpsys media_session | grep -A5 'active=true' | grep 'description=' | head -n1"],
                capture_output=True, text=True, timeout=timeout,
            )
            output = res.stdout.strip()
            if output and "description=" in output:
                desc = output.split("description=", 1)[1].strip()
                # Sonraki virgülden kes
                if "," in desc:
                    desc = desc.rsplit(",", 1)[0].strip()
                if desc and desc != "null":
                    self.after(0, lambda d=desc: self._update_media_display(d))

                    # Tabloya da ekle
                    self.after(0, lambda d=desc: self._update_media_row(d))
        except Exception as e:
            log.debug("Medya bilgisi alınamadı: %s", e)

    def _update_media_display(self, desc: str) -> None:
        """Durum çubuğundaki medya etiketini günceller."""
        short = desc[:60] + "…" if len(desc) > 60 else desc
        self.lbl_media.configure(text=f"🎵 {short}")

    def _update_media_row(self, desc: str) -> None:
        """MEDIA_INFO satırını tabloda günceller veya ekler."""
        iid = "MEDIA_INFO_0x0"
        values = ("MEDIA_INFO", "Çalan Medya", desc, "🎵 CANLI", "—", "", "", "", "", desc)
        if self.tree.exists(iid):
            self.tree.item(iid, values=values)
        else:
            self.tree.insert("", 0, iid=iid, values=values)

    def _update_timestamp(self) -> None:
        """Son güncelleme zamanını gösterir."""
        now = datetime.now().strftime("%H:%M:%S")
        self.last_update_time = now
        self.lbl_last_update.configure(text=f"Son güncelleme: {now}")
        self.lbl_adb_status.configure(
            text=f"🟢 ADB: {self.cfg['adb_target']}", text_color="#4CAF50"
        )

    # ─── Veri Ayrıştırma ──────────────────────────────────────────────────────
    def _parse_vehicle_value(self, prop_id: str, f_val: str, i_val: str, s_val: str) -> str:
        """Gelen raw veriyi Android uygulamasındaki gibi anlamlı string'e çevirir."""
        # Standart temizleme
        try:
            f = float(f_val.strip()) if f_val.strip() else 0.0
        except ValueError:
            f = 0.0
            
        try:
            i = int(i_val.strip()) if i_val.strip() else 0
        except ValueError:
            i = 0
            
        pid = prop_id.lower().replace("0x", "")
        
        # map functions
        def map_gear(g):
            return {1: "P", 2: "R", 3: "N", 5: "D1", 6: "D2", 7: "D3"}.get(g, "D")
        
        def map_std_gear(g):
            return {1: "N", 2: "R", 4: "P", 8: "D"}.get(g, "D")

        # Fallback raw string if unparsed
        raw_display = s_val if s_val else (str(f) if "." in f_val else str(i))

        if pid == "11600207": return f"{f:.1f} km/h"
        if pid == "21402006": return map_gear(i if i else 1)
        if pid == "11400301": return "AÇIK" if i > 0 else "KAPALI"
        if pid == "11600305": return f"{int(f)} RPM"
        if pid == "11600204": return f"{int(f)} km"
        if pid == "11600307": return f"{(f / 1000.0):.1f} L"
        if pid == "11600308": return f"{int(f)} km"
        if pid == "11400400" or pid == "11400401": return map_std_gear(i if i else 4)
        if pid == "21402000": return "AÇIK" if i > 0 else "KAPALI"
        if pid in ["21402012", "21402013", "21402014", "21402015", "21402016"]: return "AÇIK" if i > 0 else "KAPALI"
        if pid == "21402002" or pid == "21402001": return "AÇIK" if i > 0 else "KAPALI"
        if pid == "2140100d": return "AKTİF" if i > 0 else "PASİF"
        if pid == "11200402": return "AÇIK" if i > 0 else "KAPALI"
        if pid == "21402005": return {1: "ECO", 2: "SPORT", 3: "SNOW", 4: "MUD"}.get(i, "NORMAL")
        if pid == "21401002": return "AÇIK" if i > 0 else "KAPALI"
        if pid == "21401008" or pid == "21401009": return f"{i}°C"
        if pid == "11600703": return f"{f:.1f}°C"
        if pid == "21401005": return f"Seviye {i}"
        if pid == "21401004": return "İÇ SİRK" if i == 1 else "DIŞ HAVA"
        if pid == "21401003": return "AÇIK" if i > 0 else "KAPALI"
        if pid == "21401007": return "OTO" if i > 0 else "MANÜEL"
        if pid == "2140101e" or pid == "2140101f": return "AÇIK" if i > 0 else "KAPALI"
        if pid == "21401019": return f"{i}°C"
        if pid == "2140101a": return "AÇIK" if i > 0 else "KAPALI"
        if pid == "11600309": return f"{int(f)}%"
        if pid == "11600104": return f"{(f / 1000.0):.1f} L"
        if pid == "11400409": return {1: "KAPALI", 2: "AKSESUAR (ACC)", 3: "AÇIK (ON)", 4: "ÇALIŞIYOR (START)"}.get(i, f"Durum: {i}")
        if pid == "11400e03": return "AÇIK" if i > 0 else "KAPALI"
        if pid == "16200b02": return "KİLİTLİ" if i == 1 else "AÇIK"
        if pid == "15200505": return "AÇIK" if i > 0 else "KAPALI"
        if pid == "15400500": return f"Seviye {i}"
        if pid == "13400bc0": return f"Pozisyon: {i}"
        if pid == "11400e00": return "AÇIK" if i > 0 else "KAPALI"

        return raw_display

    def _on_android_message(self, client, userdata, message) -> None:
        """Android MQTT kanalından gelen ham mesajları yakalar."""
        topic = message.topic
        payload = message.payload.decode("utf-8", errors="ignore")
        log.debug("Bridge Msg [%s]: %s", topic, payload)
        self.after(0, lambda: self._process_android_message(topic, payload))

    def _update_bridge_row(self, iid_base: str, prop_id: str, name: str, parsed_val: str,
                           f_val: str = "", i_val: str = "", s_val: str = "") -> None:
        """Tabloda Köprüden gelen veriler için satır günceller."""
        iid = f"BRIDGE_{iid_base}"
        zone = "—"
        status = "🌉 KÖPRÜ"
        values = (prop_id, name, parsed_val, status, zone, f_val, i_val, "", "", s_val)

        if self.tree.exists(iid):
            self.tree.item(iid, values=values)
            self.tree.item(iid, tags=("bridge",))
        else:
            self.tree.insert("", 0, iid=iid, values=values, tags=("bridge",))

        self.tree.tag_configure("bridge", foreground="#69E2D3")
        self._update_sensor_count()

    def parse_and_update_table(self, dump_text: str, from_log: bool = False) -> None:
        """dumpsys çıktısını parse eder ve Treeview'ı günceller."""
        pattern = re.compile(
            r"Property:(0x[0-9a-fA-F]+),.*?"
            r"zone:(0x[0-9a-fA-F]+),"
            r"floatValues: \[([^\]]*)\],"
            r"int32Values: \[([^\]]*)\],"
            r"int64Values: \[([^\]]*)\],"
            r"bytes: \[([^\]]*)\],"
            r"string: (.*)"
        )

        for line in dump_text.splitlines():
            m = pattern.search(line)
            if not m:
                continue

            prop_id = m.group(1).lower()
            zone = m.group(2)
            f_val = m.group(3)
            i_val = m.group(4)
            i64_val = m.group(5)
            b_val = m.group(6)
            s_val = m.group(7).strip()

            # Dinamik Keşif
            if prop_id not in self.prop_defs and prop_id not in self.sensor_aliases:
                detected_name = AOSP_VHAL_PROPERTIES.get(prop_id, "Bilinmeyen")
                self.sensor_aliases[prop_id] = {"name": detected_name, "alias": ""}
                self.save_discovered_sensors()
                self.refresh_combo_prop()

            name = self.get_sensor_display_name(prop_id)
            iid = f"{prop_id}_{zone}"

            status = ""
            if not from_log and prop_id not in ["0x21103034", "0x21602003"]:
                old_vals = self.baseline.get(iid)
                new_vals = (f_val, i_val, i64_val, b_val, s_val)
                if old_vals and old_vals != new_vals:
                    status = "🔴 DEĞİŞTİ"
                    # Değişen veriyi MQTT'ye gönder
                    if self.mqtt_client.is_connected():
                        payload = {
                            "propertyId": prop_id,
                            "zone": zone,
                            "float": f_val,
                            "int": i_val,
                        }
                        self.mqtt_client.publish(
                            self.cfg["mqtt_topic_simulate"], json.dumps(payload)
                        )
                self.baseline[iid] = new_vals
            elif from_log:
                status = "LOG DOSYASI"

            parsed_val = self._parse_vehicle_value(prop_id, f_val, i_val, s_val)

            values = (prop_id, name, parsed_val, status, zone, f_val, i_val, i64_val, b_val, s_val)
            if self.tree.exists(iid):
                self.tree.item(iid, values=values)
                if status == "🔴 DEĞİŞTİ":
                    self.tree.item(iid, tags=("changed",))
            else:
                tag = ("changed",) if status == "🔴 DEĞİŞTİ" else ()
                self.tree.insert("", "end", iid=iid, values=values, tags=tag)

        # Renk kodlama
        self.tree.tag_configure("changed", background="#2d4a2d")
        self._update_sensor_count()


# ═══════════════════════════════════════════════════════════════════════════════
if __name__ == "__main__":
    try:
        app = VhalAesApp()
        app.mainloop()
    except Exception as e:
        with open("crash_log.txt", "w") as f:
            import traceback
            f.write(str(e) + "\n")
            f.write(traceback.format_exc())
        print(f"CRASH: {e}")
