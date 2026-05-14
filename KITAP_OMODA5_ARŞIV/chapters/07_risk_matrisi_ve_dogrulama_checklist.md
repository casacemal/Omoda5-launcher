# 07 - Risk Matrisi ve Dogrulama Checklist

## Amac
Karar aninda hizli/no-regret uygulama icin tek sayfa risk ve kabul listesi sunmak.

## Onkosul
- Onceki bolum adimlari tanimli ve kaynaklari mevcut

## Risk Matrisi (Ozet)
| Alan | Ornek Risk | Etki | Azaltma |
|---|---|---|---|
| GMS Kurulum | Yanlis zip/ABI | Bootloop | Preflight + backup + hash |
| Overlay Launcher | Fallback yok | Siyah ekran/servis kaybi | Orijinal launcher fallback |
| Split UI | Agir polling | Lag/batarya | Update throttle |
| OTA/Flash | Yanlis partition | Brick | Restore script + sirali flash |

## Dogrulama Checklist
- [ ] SDK ve ABI dogrulandi
- [ ] `su` ve recovery erisimi dogrulandi
- [ ] Partition backup + checksum tamam
- [ ] Kurulum sonrasi `gsf/gms/vending` mevcut
- [ ] Play Store smoke test gecti
- [ ] Meminfo/logcat kritik hata icermiyor
- [ ] 30-60 dk stabilite testi gecti
- [ ] Geri donus scripti test edildi

## Kaynaklar
- `GOOGLE_SERVICES_MINIMAL_CONFIG.md`
- `CHERY_OMODA5_OVERLAY_LAUNCHER_TASARIMI.md`
- `CHERY_OTA_UPDATE_SYSTEM.md`
