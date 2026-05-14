# 03 - Guvenlik Baseline

## Kritik Riskler
- Serbest komut calistirma (RCE)
- Asiri izin talebi (`WRITE_SECURE_SETTINGS`, `INSTALL_PACKAGES`, `INTERACT_ACROSS_USERS`)
- Boot'ta otomatik acilisla kontrolsuz aksiyon

## Zorunlu Kontroller
1. **Command allowlist**
- Sadece onayli komut presetleri calisir.
- Serbest metin komut kapali (debug build haric).

2. **Role-based guard**
- `operator`, `advanced`, `admin` seviyeleri.
- `root` komutlar yalnizca `admin`.

3. **Audit log**
- Her komut icin: timestamp, user role, command id, exit code.
- Log dosyasi: append-only.

4. **Kill switch**
- Runtime config ile command engine tamamen kapatilabilir.

5. **Permission minimization**
- Uygulama ilk fazda su izinlerle baslar:
  - `INTERNET`
  - `ACCESS_NETWORK_STATE`
  - `RECEIVE_BOOT_COMPLETED` (eger gerekli)
- Asagidaki izinler varsayilan kapali:
  - `WRITE_SECURE_SETTINGS`
  - `INSTALL_PACKAGES`
  - `INTERACT_ACROSS_USERS`

## Omoda5 Uyum Notu
- HVAC/launcher gibi kritik islemlerde once read-only check, sonra write operation.
- Her riskli komuta rollback komutu baglanmali.
