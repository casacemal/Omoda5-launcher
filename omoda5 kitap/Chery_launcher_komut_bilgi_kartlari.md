# Chery Omoda 5 – Launcher İçin Komut & Bilgi Kartları

<div style='text-align:right; font-size:0.95em; opacity:0.7;'>Sürüm: 2026-02-28</div>

Bu doküman, **iki kaynak log dosyasından** (tuş/hardkey logları + komut notları) çıkarılan bilgileri, launcher/overlay geliştirme amacıyla **okuma (read-only) odaklı** derler.

**Puanlama:**

- **Sistem Yükü (1–5):** CPU/IO/log yükü (1 düşük, 5 yüksek)
- **Sürüş Güvenliği Etkisi (1–5):** Yanlış kullanımda sürüşe/araç fonksiyonuna etkisi (1 düşük, 5 çok yüksek)

<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#d1fae5;color:#000;font-size:0.85em;margin-right:6px;">1</span> Çok düşük  <span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#bbf7d0;color:#000;font-size:0.85em;margin-right:6px;">2</span> Düşük  <span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#fef9c3;color:#000;font-size:0.85em;margin-right:6px;">3</span> Orta  <span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#fed7aa;color:#000;font-size:0.85em;margin-right:6px;">4</span> Yüksek  <span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#fecaca;color:#000;font-size:0.85em;margin-right:6px;">5</span> Çok yüksek


---

## İçindekiler (Gruplar)


- **Tuşlar / HardKey** (Sayfa 2)

  - Hardkey yayın (broadcast) kaynağı ve event akışı

  - KeyCode listesi ve launcher eşleme notları

- **Sensörler & Araç Durum Kaynakları** (Sayfa 3)

  - `car_service` üzerinden okunabilecek başlıklar

- **Komutlar (Okuma / Teşhis)** (Sayfa 4)

  - `logcat`, `dumpsys car_service` filtreleri

- **Launcher Entegrasyon Notları** (Sayfa 5)

  - Güvenli kullanım prensipleri, önerilen eşleme stratejisi


<div style='text-align:center; margin-top:24px; opacity:0.7;'>— Sayfa 1 —</div>

<div style='page-break-after: always;'></div>

## Tuşlar / HardKey (Launcher için)


<div style="border-left: 6px solid #2563eb; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">HardKey olay kaynağı (logdan görülen akış)</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#dbeafe;color:#000;font-size:0.85em;margin-right:6px;">Kaynak</span>Loglarda hardkey basımı, `WindowManager` tarafından raporlanıyor ve `com.saic.keyevent.hardkey.report` action’lı intent akışına giriyor. Aynı anda `Input.HardKeyReceiver`, `SYSUI.HardKeyHandler`, `CarHardkeyManager` ve bazı durumlarda `MEDIA.HardKeyBusiness` logları görülüyor.<br/><span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#eef2ff;color:#000;font-size:0.85em;margin-right:6px;">Nasıl okunmuş?</span> `logcat | grep -i hardkey` ile filtrelenmiş log.
</div>

<div style="border-left: 6px solid #dc2626; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Tuş Kartı: HOME</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">KeyCode 3</span> <span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#e5e7eb;color:#000;font-size:0.85em;margin-right:6px;">HOME</span><br/><b>Log ipucu:</b> SYSUI.HardKeyHandler: KEYCODE_HOME :openHomePage + CarHardkeyManager: KEYCODE_HOME: take video from device<br/><b>Nasıl okunmuş:</b> logcat (WindowManager / SYSUI / CarHardkeyManager)<br/><b>Kullanım şekli (launcher):</b> Launcher/Home dönüş; uygulamada HOME olayını 'sistem evine dön' yerine yalnızca UI kapat / güvenli davranış için kullan.<br/><b>Sistem Yükü:</b> 1/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 5/5
</div>

<div style="border-left: 6px solid #f59e0b; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Tuş Kartı: MEDIA_NEXT (tahmini)</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">KeyCode 87</span> <span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#e5e7eb;color:#000;font-size:0.85em;margin-right:6px;">MEDIA_NEXT (tahmini)</span><br/><b>Log ipucu:</b> hardkey event keyCode:87, mediaValue:3; SYSUI.HardKeyHandler: ignore key code : 87<br/><b>Nasıl okunmuş:</b> logcat (WindowManager / CarHardwareHandler / SYSUI)<br/><b>Kullanım şekli (launcher):</b> Direksiyon/medya 'ileri' gibi; uygulamada yalnızca 'kısayol' tetikleyici olarak kullan (medya kontrolünü çalmadan).<br/><b>Sistem Yükü:</b> 1/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 4/5
</div>

<div style="border-left: 6px solid #dc2626; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Tuş Kartı: VOLUME_DOWN</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">KeyCode 25</span> <span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#e5e7eb;color:#000;font-size:0.85em;margin-right:6px;">VOLUME_DOWN</span><br/><b>Log ipucu:</b> SYSUI.HardKeyHandler: ignore key code : 25; bazı satırlarda sendHardKey çağrısı var<br/><b>Nasıl okunmuş:</b> logcat (WindowManager / SYSUI / CarPlayReceiver)<br/><b>Kullanım şekli (launcher):</b> Genelde sistem ses; overlay/launcher bu tuşları yakalamamalı (sürüşte kritik). Sadece gözlemle.<br/><b>Sistem Yükü:</b> 1/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 5/5
</div>

<div style="border-left: 6px solid #dc2626; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Tuş Kartı: CALL / PHONE (tahmini)</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">KeyCode 5</span> <span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#e5e7eb;color:#000;font-size:0.85em;margin-right:6px;">CALL / PHONE (tahmini)</span><br/><b>Log ipucu:</b> CarPlayCommClient: sendHardKey:keyType6<br/><b>Nasıl okunmuş:</b> logcat (CarHardkeyManager / CarPlayCommClient)<br/><b>Kullanım şekli (launcher):</b> Telefon/çağrı ile ilişkili olabilir. Launcher tarafında sadece logla; 'yakala' yapma.<br/><b>Sistem Yükü:</b> 1/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 5/5
</div>

<div style="border-left: 6px solid #f59e0b; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Tuş Kartı: SRC / SOURCE (tahmini)</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">KeyCode 289</span> <span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#e5e7eb;color:#000;font-size:0.85em;margin-right:6px;">SRC / SOURCE (tahmini)</span><br/><b>Log ipucu:</b> MEDIA.HardKeyBusiness: onHardKeySrc; changeSource:Radio<br/><b>Nasıl okunmuş:</b> logcat (MEDIA.HardKeyBusiness)<br/><b>Kullanım şekli (launcher):</b> Kaynak değiştir tuşu gibi. Launcher içinde 'kısayol menü aç' gibi tek işlevle eşleştirilebilir.<br/><b>Sistem Yükü:</b> 1/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 4/5
</div>

<div style="border-left: 6px solid #dc2626; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Tuş Kartı: CARPLAY (tahmini)</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">KeyCode 290</span> <span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#e5e7eb;color:#000;font-size:0.85em;margin-right:6px;">CARPLAY (tahmini)</span><br/><b>Log ipucu:</b> CarHardkeyManager: keycodeHandle: CP is not connected<br/><b>Nasıl okunmuş:</b> logcat (CarHardkeyManager)<br/><b>Kullanım şekli (launcher):</b> CarPlay bağlantı tuşu olabilir. Bağlı değilken no-op. Launcher: sadece durum göstergesi.<br/><b>Sistem Yükü:</b> 1/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 5/5
</div>

<div style="border-left: 6px solid #16a34a; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Tuş Kartı: CUSTOM_291 (tanımsız)</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">KeyCode 291</span> <span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#e5e7eb;color:#000;font-size:0.85em;margin-right:6px;">CUSTOM_291 (tanımsız)</span><br/><b>Log ipucu:</b> SYSUI.HardKeyHandler: receiver key code : 291(not processed)<br/><b>Nasıl okunmuş:</b> logcat (SYSUI.HardKeyHandler)<br/><b>Kullanım şekli (launcher):</b> Sistemin işlemediği bir tuş gibi; launcher için en güvenli 'kendi kısayol' adayı (yine de test şart).<br/><b>Sistem Yükü:</b> 1/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 2/5
</div>

<div style="border-left: 6px solid #dc2626; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Tuş Kartı: TEL_KEY / CUSTOM_293</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">KeyCode 293</span> <span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#e5e7eb;color:#000;font-size:0.85em;margin-right:6px;">TEL_KEY / CUSTOM_293</span><br/><b>Log ipucu:</b> CarHardkeyManager: telKey:8; sendHardKey:keyType8<br/><b>Nasıl okunmuş:</b> logcat (CarHardkeyManager / CarPlayCommService)<br/><b>Kullanım şekli (launcher):</b> Telefon/CarPlay hardkey türü. Launcher’ın müdahalesi riskli; sadece gözlemle.<br/><b>Sistem Yükü:</b> 1/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 5/5
</div>

<div style="border-left: 6px solid #16a34a; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Tuş Kartı: CUSTOM_294 (tanımsız)</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">KeyCode 294</span> <span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#e5e7eb;color:#000;font-size:0.85em;margin-right:6px;">CUSTOM_294 (tanımsız)</span><br/><b>Log ipucu:</b> SYSUI.HardKeyHandler: receive key code : 294<br/><b>Nasıl okunmuş:</b> logcat (SYSUI.HardKeyHandler)<br/><b>Kullanım şekli (launcher):</b> Sistemde kullanımı belirsiz; launcher'da varsayılan bağlama yapma, sadece keşif.<br/><b>Sistem Yükü:</b> 1/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 2/5
</div>


<div style='text-align:center; margin-top:24px; opacity:0.7;'>— Sayfa 2 —</div>

<div style='page-break-after: always;'></div>

## Sensörler & Araç Durum Kaynakları (Read-only)


<div style="border-left: 6px solid #7c3aed; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Ana kaynak: `dumpsys car_service`</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#ede9fe;color:#000;font-size:0.85em;margin-right:6px;">Okuma</span> Android Automotive tarafında `car_service` dump çıktısı; hız, vites, kontak, aydınlatma, sinyal vb. property başlıklarını görüp ID keşfi için kullanılır.<br/><b>Kullanım şekli:</b> Büyük çıktı üretir; mutlaka grep ile filtrele. Çıktıyı dosyaya alıp offline incele.<br/><b>Sistem Yükü:</b> 3/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 4/5 (yanlış yorum/yanlış zamanda yoğun log almak dikkat dağıtabilir)
</div>

<div style="border-left: 6px solid #0ea5e9; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Örnek filtre grupları (keşif amaçlı)</b><br/>
<ul><li><code>speed / gear / ign</code>: hız-vites-kontak benzeri başlıklar</li><li><code>lamp / indicator / hazard</code>: aydınlatma-sinyal-dörtlü benzeri başlıklar</li><li><code>brake</code>: fren ile ilgili property’ler (varsa)</li></ul><b>Not:</b> Bu komutlar yazma yapmaz; ancak çıktıyı sık almak CPU/IO yükü yaratabilir.
</div>


<div style='text-align:center; margin-top:24px; opacity:0.7;'>— Sayfa 3 —</div>

<div style='page-break-after: always;'></div>

## Komutlar (Okuma / Teşhis) – Bilgi Kartları


<div style="border-left: 6px solid #ef4444; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Kritik fark: Cihaz shell’inde `adb` yok</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#fecaca;color:#000;font-size:0.85em;margin-right:6px;">Önemli</span> Loglarda cihaz üzerinde <code>adb logcat</code> denenince <i>adb: inaccessible or not found</i> hatası görülüyor. Yani cihazın kendi terminalinde <b>adb değil</b> <b>logcat</b> kullanılmalı. <br/><b>Kullanım:</b> PC tarafında adb ile bağlanıp log alınabilir; cihaz içinde logcat çalışır.<br/><b>Sistem Yükü:</b> 1/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 2/5
</div>

<div style="border-left: 6px solid #16a34a; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Komut Kartı: logcat -c</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">Komut</span> <code>logcat -c</code><br/><b>Amaç:</b> Log buffer temizler. Testten önce gürültüyü azaltır.<br/><b>Nerede:</b> Cihaz shell içinde<br/><b>Sistem Yükü:</b> 1/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 2/5
</div>

<div style="border-left: 6px solid #16a34a; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Komut Kartı: logcat | grep -i hardkey</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">Komut</span> <code>logcat | grep -i hardkey</code><br/><b>Amaç:</b> Hardkey ile ilgili logları filtreler (keyCode/down/longPress + intent action).<br/><b>Nerede:</b> Cihaz shell içinde<br/><b>Sistem Yükü:</b> 2/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 2/5
</div>

<div style="border-left: 6px solid #16a34a; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Komut Kartı: (PC) adb logcat | grep -i hardkey</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">Komut</span> <code>(PC) adb logcat | grep -i hardkey</code><br/><b>Amaç:</b> Aynı izlemeyi PC tarafında adb ile yapar. Not: Cihazın kendi shell’inde adb binary yok.<br/><b>Nerede:</b> PC (host) tarafında<br/><b>Sistem Yükü:</b> 2/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 2/5
</div>

<div style="border-left: 6px solid #f59e0b; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Komut Kartı: dumpsys car_service | grep -Ei "speed|gear|ign|light|brake"</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">Komut</span> <code>dumpsys car_service | grep -Ei "speed|gear|ign|light|brake"</code><br/><b>Amaç:</b> Araç durum property’lerini taramak için (okuma). Büyük çıktı olabilir.<br/><b>Nerede:</b> Cihaz shell içinde<br/><b>Sistem Yükü:</b> 3/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 4/5
</div>

<div style="border-left: 6px solid #f59e0b; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Komut Kartı: dumpsys car_service | grep -Ei "lamp|indicator|hazard"</b><br/>
<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">Komut</span> <code>dumpsys car_service | grep -Ei "lamp|indicator|hazard"</code><br/><b>Amaç:</b> Aydınlatma/sinyal benzeri başlıkları aramak için (okuma).<br/><b>Nerede:</b> Cihaz shell içinde<br/><b>Sistem Yükü:</b> 3/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 4/5
</div>


<div style='text-align:center; margin-top:24px; opacity:0.7;'>— Sayfa 4 —</div>

<div style='page-break-after: always;'></div>

## Launcher Entegrasyon Notları (HardKey + Sensör)


<div style="border-left: 6px solid #16a34a; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Önerilen yaklaşım (güvenli eşleme)</b><br/>
<ol><li><b>Önce sadece gözlem:</b> Hardkey ve car_service çıktısını logla; hiçbir tuşa müdahale etme.</li><li><b>Riskli tuşları sahiplenme:</b> HOME / VOLUME / CALL / TEL türlerini uygulama seviyesinde yakalayıp engelleme.</li><li><b>En uygun adaylar:</b> Sistem tarafından “not processed” görünen custom keyCode’lar (örn. 291) launcher kısayolu için daha uygun.</li><li><b>Sürüşte test yok:</b> Komut/izleme ve mapping testlerini araç park halindeyken yap.</li></ol>
</div>

<div style="border-left: 6px solid #2563eb; background: rgba(0,0,0,0.03); padding: 12px 14px; margin: 12px 0; border-radius: 10px;">
<b style="font-size: 1.05em;">Uygulamada gruplayarak kullan</b><br/>
<ul><li><b>Tuşlar:</b> KeyCode → (Down/Up, LongPress) durumlarıyla “tek tuş toggle” ve “uzun basış debug panel” gibi iki katmanlı kullanım.</li><li><b>Sensörler:</b> door/lock/steering gibi VehicleState (varsa) + hız/gear/ign ile güvenlik kilidi (örn. hareket halinde açma kapama kısıtı).</li><li><b>Kaynak doğrulama:</b> Her property için ID/areaId doğrulaması yap; sadece okuma modunda tut.</li></ul>
</div>


<div style='text-align:center; margin-top:24px; opacity:0.7;'>— Sayfa 5 —</div>
