# Chery OMODA5 Tuş Takımı Logları (Hardkey Logs)

## 📋 Genel Bilgi
- **Tarih:** 2024-02-28
- **Saat Aralığı:** 01:45 - 01:58
- **Cihaz:** Chery OMODA5 (t19c)
- **Log Tipi:** Android Logcat Hardkey Events

## 🔑 Tuş Kodları (Keycodes)
- **Keycode 3:** HOME (Ana sayfa)
- **Keycode 5:** CALL (Çağrı)
- **Keycode 25:** VOLUME UP/DOWN (Ses kontrolleri)
- **Keycode 87:** MEDIA (Medya kontrol)
- **Keycode 289-294, 291, 293:** Araç kontrol tuşları

## 📊 Log Kayıtları

### Tuş Olayları (02-28 01:45:30)

02-28 01:45:30.401  3094  3094 D Input.HardKeyReceiver: down:false,longPress:false,keyCode:294
02-28 01:45:30.401  3094  3094 W SYSUI.HardKeyHandler: receive key code : 294
02-28 01:45:30.401  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:45:30.401  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:45:30.401  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:30.401  3831  3831 D MEDIA.HardKeyBusiness: keyCode:294 keyDown:false longPress:false
02-28 01:45:31.897  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 289down true
02-28 01:45:31.897  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=289 down=true longpress=false
02-28 01:45:31.898  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:45:31.898  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:31.898  3094  3094 D Input.HardKeyReceiver: down:true,longPress:false,keyCode:289
02-28 01:45:31.898  3492  3492 D CarHardkeyManager: hardkey keycode:289
02-28 01:45:31.898  3492  3492 D CarHardkeyManager: press_down
02-28 01:45:31.898  3492  3492 D CarHardkeyManager: isPress:true
02-28 01:45:31.898  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:45:31.899  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:31.899  3831  3831 D MEDIA.HardKeyBusiness: keyCode:289 keyDown:true longPress:false
02-28 01:45:31.900  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:45:32.098  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 289down false
02-28 01:45:32.098  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=289 down=false longpress=false
02-28 01:45:32.099  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:45:32.099  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:32.099  3094  3094 D Input.HardKeyReceiver: down:false,longPress:false,keyCode:289
02-28 01:45:32.099  3094  3094 W SYSUI.HardKeyHandler: receive key code : 289
02-28 01:45:32.100  3492  3492 D CarHardkeyManager: hardkey keycode:289
02-28 01:45:32.100  3492  3492 D CarHardkeyManager: shortPress_up
02-28 01:45:32.100  3492  3492 D CarHardkeyManager: isPress: false
02-28 01:45:32.100  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:45:32.100  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:32.100  3831  3831 D MEDIA.HardKeyBusiness: keyCode:289 keyDown:false longPress:false
02-28 01:45:32.101  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:45:32.111  3831  3831 D MEDIA.HardKeyBusiness: onHardKeySrc
02-28 01:45:32.111  3831  3831 D MEDIA.HardKeyBusiness: onHardKeySrc currentSource:0
02-28 01:45:32.111  3831  3831 D MEDIA.HardKeyBusiness: changeSource:Radio
02-28 01:45:32.192  3831  3831 D MEDIA.HardKeyBusiness: checkChangeSourceView source:2
02-28 01:45:32.210  3831  3831 D MEDIA.HardKeyBusiness: checkChangeSourceView ComponentName:ComponentInfo{in.krosbits.musicolet/in.krosbits.musicolet.MusicActivity}
02-28 01:45:32.210  3831  3831 D MEDIA.HardKeyBusiness: checkChangeSourceView mediaActivity:null
02-28 01:45:34.097  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 290down true
02-28 01:45:34.097  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=290 down=true longpress=false
02-28 01:45:34.098  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:45:34.098  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:34.099  3430  3554 D CarHardwareHandler: receive hardkey event: keycode:290, isDown:true, isLongPress:false
02-28 01:45:34.100  3492  3492 D CarHardkeyManager: hardkey keycode:290
02-28 01:45:34.100  3492  3492 D CarHardkeyManager: press_down
02-28 01:45:34.100  3492  3492 D CarHardkeyManager: isPress:true
02-28 01:45:34.100  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:45:34.100  3492  3492 D CarHardkeyManager: keycodeHandle: CP is not connected
02-28 01:45:34.100  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:45:34.101  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:34.101  3831  3831 D MEDIA.HardKeyBusiness: keyCode:290 keyDown:true longPress:false
02-28 01:45:34.101  3094  3094 D Input.HardKeyReceiver: down:true,longPress:false,keyCode:290
02-28 01:45:34.352  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 290down false
02-28 01:45:34.352  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=290 down=false longpress=false
02-28 01:45:34.353  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:45:34.353  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:34.359  3492  3492 D CarHardkeyManager: hardkey keycode:290
02-28 01:45:34.359  3492  3492 D CarHardkeyManager: shortPress_up
02-28 01:45:34.359  3492  3492 D CarHardkeyManager: isPress: false
02-28 01:45:34.359  3094  3094 D Input.HardKeyReceiver: down:false,longPress:false,keyCode:290
02-28 01:45:34.359  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:45:34.359  3492  3492 D CarHardkeyManager: keycodeHandle: CP is not connected
02-28 01:45:34.359  3094  3094 W SYSUI.HardKeyHandler: receive key code : 290
02-28 01:45:34.359  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:45:34.359  3430  3554 D CarHardwareHandler: receive hardkey event: keycode:290, isDown:false, isLongPress:false
02-28 01:45:34.359  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:34.360  3831  3831 D MEDIA.HardKeyBusiness: keyCode:290 keyDown:false longPress:false
02-28 01:45:36.103  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 293down true
02-28 01:45:36.103  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=293 down=true longpress=false
02-28 01:45:36.104  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:45:36.104  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:36.104  3094  3094 D Input.HardKeyReceiver: down:true,longPress:false,keyCode:293
02-28 01:45:36.104  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:36.105  3831  3831 D MEDIA.HardKeyBusiness: keyCode:293 keyDown:true longPress:false
02-28 01:45:36.105  3492  3492 D CarHardkeyManager: hardkey keycode:293
02-28 01:45:36.105  3492  3492 D CarHardkeyManager: press_down
02-28 01:45:36.105  3492  3492 D CarHardkeyManager: isPress:true
02-28 01:45:36.105  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:45:36.105  3492  3492 D CarHardkeyManager: keycodeHandle: getSiriStatus ===> false
02-28 01:45:36.105  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:45:36.351  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 293down false
02-28 01:45:36.351  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=293 down=false longpress=false
02-28 01:45:36.352  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:45:36.352  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:36.352  3094  3094 D Input.HardKeyReceiver: down:false,longPress:false,keyCode:293
02-28 01:45:36.353  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:36.353  3831  3831 D MEDIA.HardKeyBusiness: keyCode:293 keyDown:false longPress:false
02-28 01:45:36.353  3492  3492 D CarHardkeyManager: hardkey keycode:293
02-28 01:45:36.353  3492  3492 D CarHardkeyManager: shortPress_up
02-28 01:45:36.353  3492  3492 D CarHardkeyManager: isPress: false
02-28 01:45:36.353  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:45:36.353  3492  3492 D CarHardkeyManager: keycodeHandle: getSiriStatus ===> false
02-28 01:45:36.353  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:45:36.353  3492  3492 D CarHardkeyManager: telKey:8
02-28 01:45:36.353  3492  3492 E CarPlayCommClient: sendHardKey:keyType8
02-28 01:45:36.353  2539  2539 I CarPlayCommService: sendHardKey is called.
02-28 01:45:36.353  2539  2539 I CarPlayCommProtocal_CPP: CarPlayCommProtocal::sendHardKey is called.
02-28 01:45:36.353  3492  3492 E CarPlayCommClient: sendHardKey:keyType8
02-28 01:45:36.354  2539  2539 I CarPlayCommService: sendHardKey is called.
02-28 01:45:36.354  2539  2539 I CarPlayCommProtocal_CPP: CarPlayCommProtocal::sendHardKey is called.
02-28 01:45:37.800  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 5down true
02-28 01:45:37.801  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=5 down=true longpress=false
02-28 01:45:37.801  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:45:37.802  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:37.802  3094  3094 D Input.HardKeyReceiver: down:true,longPress:false,keyCode:5
02-28 01:45:37.802  3492  3492 D CarHardkeyManager: hardkey keycode:5
02-28 01:45:37.802  3492  3492 D CarHardkeyManager: press_down
02-28 01:45:37.802  3492  3492 D CarHardkeyManager: isPress:true
02-28 01:45:37.802  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:45:37.802  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:37.802  3831  3831 D MEDIA.HardKeyBusiness: keyCode:5 keyDown:true longPress:false
02-28 01:45:37.802  3492  3492 E CarPlayCommClient: sendHardKey:keyType6
02-28 01:45:37.803  2539  2539 I CarPlayCommService: sendHardKey is called.
02-28 01:45:37.803  2539  2539 I CarPlayCommProtocal_CPP: CarPlayCommProtocal::sendHardKey is called.
02-28 01:45:37.803  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:45:38.006  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 5down false
02-28 01:45:38.006  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=5 down=false longpress=false
02-28 01:45:38.007  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:45:38.007  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:38.007  3492  3492 D CarHardkeyManager: hardkey keycode:5
02-28 01:45:38.007  3492  3492 D CarHardkeyManager: shortPress_up
02-28 01:45:38.007  3492  3492 D CarHardkeyManager: isPress: false
02-28 01:45:38.007  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:45:38.007  3094  3094 D Input.HardKeyReceiver: down:false,longPress:false,keyCode:5
02-28 01:45:38.008  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:45:38.008  3831  3831 D MEDIA.HardKeyBusiness: keyCode:5 keyDown:false longPress:false
02-28 01:45:38.008  3492  3492 E CarPlayCommClient: sendHardKey:keyType6
02-28 01:45:38.009  2539  2539 I CarPlayCommService: sendHardKey is called.
02-28 01:45:38.009  2539  2539 I CarPlayCommProtocal_CPP: CarPlayCommProtocal::sendHardKey is called.
02-28 01:45:38.010  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:46:03.435  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 25down true
02-28 01:46:03.435  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=25 down=true longpress=false
02-28 01:46:03.437  3492  3492 D CarHardkeyManager: hardkey keycode:25
02-28 01:46:03.437  3492  3492 D CarHardkeyManager: press_down
02-28 01:46:03.437  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:46:03.437  3492  3492 D CarHardkeyManager: isPress:true
02-28 01:46:03.437  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:46:03.437  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:46:03.437  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:46:03.438  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:46:03.438  3094  3094 D Input.HardKeyReceiver: down:true,longPress:false,keyCode:25
02-28 01:46:03.438  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:46:03.438  3831  3831 D MEDIA.HardKeyBusiness: keyCode:25 keyDown:true longPress:false
02-28 01:46:03.439  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 25down false
02-28 01:46:03.440  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=25 down=false longpress=false
02-28 01:46:03.442  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:46:03.442  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:46:03.442  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:46:03.442  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:46:03.442  3831  3831 D MEDIA.HardKeyBusiness: keyCode:25 keyDown:false longPress:false
02-28 01:46:03.443  3492  3492 D CarHardkeyManager: hardkey keycode:25
02-28 01:46:03.443  3492  3492 D CarHardkeyManager: shortPress_up
02-28 01:46:03.443  3492  3492 D CarHardkeyManager: isPress: false
02-28 01:46:03.443  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:46:03.443  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:46:03.443  3094  3094 D Input.HardKeyReceiver: down:false,longPress:false,keyCode:25
02-28 01:46:03.443  3094  3094 W SYSUI.HardKeyHandler: ignore key code : 25
02-28 01:46:03.719  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 25down true
02-28 01:46:03.719  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=25 down=true longpress=false
02-28 01:46:03.720  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 25down false
02-28 01:46:03.720  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=25 down=false longpress=false
02-28 01:46:03.721  3492  3492 D CarHardkeyManager: hardkey keycode:25
02-28 01:46:03.721  3492  3492 D CarHardkeyManager: press_down
02-28 01:46:03.721  3492  3492 D CarHardkeyManager: isPress:true
02-28 01:46:03.721  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:46:03.721  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:46:03.721  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:46:03.721  3492  3492 D CarHardkeyManager: hardkey keycode:25
02-28 01:46:03.721  3492  3492 D CarHardkeyManager: shortPress_up
02-28 01:46:03.721  3492  3492 D CarHardkeyManager: isPress: false
02-28 01:46:03.721  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:46:03.721  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:46:03.722  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:46:03.722  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:46:03.722  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:46:03.722  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:46:03.722  3831  3831 D MEDIA.HardKeyBusiness: keyCode:25 keyDown:true longPress:false
02-28 01:46:03.723  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:46:03.723  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:46:03.723  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:46:03.723  3831  3831 D MEDIA.HardKeyBusiness: keyCode:25 keyDown:false longPress:false
02-28 01:46:03.724  3094  3094 D Input.HardKeyReceiver: down:true,longPress:false,keyCode:25
02-28 01:46:03.725  3094  3094 D Input.HardKeyReceiver: down:false,longPress:false,keyCode:25
02-28 01:46:03.725  3094  3094 W SYSUI.HardKeyHandler: ignore key code : 25
02-28 01:46:03.974  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 25down true
02-28 01:46:03.974  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=25 down=true longpress=false
02-28 01:46:03.976  3492  3492 D CarHardkeyManager: hardkey keycode:25
02-28 01:46:03.976  3492  3492 D CarHardkeyManager: press_down
02-28 01:46:03.976  3492  3492 D CarHardkeyManager: isPress:true
02-28 01:46:03.976  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:46:03.976  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:46:03.976  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:46:03.976  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:46:03.976  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:46:03.977  3831  3831 D MEDIA.HardKeyBusiness: keyCode:25 keyDown:true longPress:false
02-28 01:46:03.978  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 25down false
02-28 01:46:03.978  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=25 down=false longpress=false
02-28 01:46:03.979  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:46:03.980  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:46:03.980  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:46:03.980  3492  3492 D CarHardkeyManager: hardkey keycode:25
02-28 01:46:03.980  3492  3492 D CarHardkeyManager: shortPress_up
02-28 01:46:03.980  3492  3492 D CarHardkeyManager: isPress: false
02-28 01:46:03.980  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:46:03.980  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:46:03.980  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:46:03.980  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:46:03.980  3831  3831 D MEDIA.HardKeyBusiness: keyCode:25 keyDown:false longPress:false
02-28 01:46:03.981  3094  3094 D Input.HardKeyReceiver: down:true,longPress:false,keyCode:25
02-28 01:46:03.981  3094  3094 D Input.HardKeyReceiver: down:false,longPress:false,keyCode:25
02-28 01:46:03.981  3094  3094 W SYSUI.HardKeyHandler: ignore key code : 25
02-28 01:46:04.177  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 25down true
02-28 01:46:04.177  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=25 down=true longpress=false
02-28 01:46:03.980  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report

---

## 📝 Tuş Olayları (02-28 01:58:22 - Devam)

chery_t19c:/ $ adb logcat -c

/system/bin/sh: adb: inaccessible or not found
127|chery_t19c:/ $ adb logcat | grep -i hardkey

/system/bin/sh: adb: inaccessible or not found
1|chery_t19c:/ $ logcat -c

chery_t19c:/ $  logcat | grep -i hardkey

02-28 01:58:22.556  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 87down true
02-28 01:58:22.556  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=87 down=true longpress=false
02-28 01:58:22.557  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:58:22.558  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:22.558  3094  3094 D Input.HardKeyReceiver: down:true,longPress:false,keyCode:87
02-28 01:58:22.558  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:22.558  3831  3831 D MEDIA.HardKeyBusiness: keyCode:87 keyDown:true longPress:false
02-28 01:58:22.558  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:58:22.559  3492  3492 D CarHardkeyManager: hardkey keycode:87
02-28 01:58:22.559  3492  3492 D CarHardkeyManager: press_down
02-28 01:58:22.559  3492  3492 D CarHardkeyManager: isPress:true
02-28 01:58:22.559  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:58:22.559  3430  3554 D CarHardwareHandler: receive hardkey event: keycode:87, isDown:true, isLongPress:false
02-28 01:58:22.560  3492  3492 D CarHardkeyManager: mediaValue:3
02-28 01:58:22.747  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 87down false
02-28 01:58:22.747  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=87 down=false longpress=false
02-28 01:58:22.748  3094  3094 D Input.HardKeyReceiver: down:false,longPress:false,keyCode:87
02-28 01:58:22.748  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:58:22.748  3094  3094 W SYSUI.HardKeyHandler: ignore key code : 87
02-28 01:58:22.748  3430  3554 D CarHardwareHandler: receive hardkey event: keycode:87, isDown:false, isLongPress:false
02-28 01:58:22.749  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:22.751  3492  3492 D CarHardkeyManager: hardkey keycode:87
02-28 01:58:22.751  3492  3492 D CarHardkeyManager: shortPress_up
02-28 01:58:22.751  3492  3492 D CarHardkeyManager: isPress: false
02-28 01:58:22.751  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:58:22.751  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:22.751  3831  3831 D MEDIA.HardKeyBusiness: keyCode:87 keyDown:false longPress:false
02-28 01:58:22.751  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:58:22.752  3492  3492 D CarHardkeyManager: mediaValue:3
02-28 01:58:24.916  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 3down true
02-28 01:58:24.916  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=3 down=true longpress=false
02-28 01:58:24.917  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:58:24.917  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:24.918  3094  3094 D Input.HardKeyReceiver: down:true,longPress:false,keyCode:3
02-28 01:58:24.919  3492  3492 D CarHardkeyManager: hardkey keycode:3
02-28 01:58:24.919  3492  3492 D CarHardkeyManager: press_down
02-28 01:58:24.919  3492  3492 D CarHardkeyManager: isPress:true
02-28 01:58:24.919  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:58:24.919  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:58:24.919  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:24.919  3831  3831 D MEDIA.HardKeyBusiness: keyCode:3 keyDown:true longPress:false
02-28 01:58:24.919  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:58:25.061  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 3down false
02-28 01:58:25.062  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=3 down=false longpress=false
02-28 01:58:25.063  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:58:25.063  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:25.064  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:58:25.064  3492  3492 D CarHardkeyManager: hardkey keycode:3
02-28 01:58:25.064  3492  3492 D CarHardkeyManager: shortPress_up
02-28 01:58:25.064  3492  3492 D CarHardkeyManager: isPress: false
02-28 01:58:25.064  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:58:25.064  3492  3492 D CarHardkeyManager: KEYCODE_HOME: take video from device
02-28 01:58:25.065  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:25.066  3094  3094 D Input.HardKeyReceiver: down:false,longPress:false,keyCode:3
02-28 01:58:25.066  3831  3831 D MEDIA.HardKeyBusiness: keyCode:3 keyDown:false longPress:false
02-28 01:58:25.066  3094  3094 I SYSUI.HardKeyHandler: KEYCODE_HOME :openHomePage
02-28 01:58:25.078  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:58:27.415  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 3down true
02-28 01:58:27.415  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=3 down=true longpress=false
02-28 01:58:27.416  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:58:27.416  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:27.417  3094  3094 D Input.HardKeyReceiver: down:true,longPress:false,keyCode:3
02-28 01:58:27.417  3492  3492 D CarHardkeyManager: hardkey keycode:3
02-28 01:58:27.418  3492  3492 D CarHardkeyManager: press_down
02-28 01:58:27.418  3492  3492 D CarHardkeyManager: isPress:true
02-28 01:58:27.418  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:58:27.418  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:58:27.418  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:27.418  3831  3831 D MEDIA.HardKeyBusiness: keyCode:3 keyDown:true longPress:false
02-28 01:58:27.418  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:58:27.561  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 3down false
02-28 01:58:27.561  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=3 down=false longpress=false
02-28 01:58:27.562  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:58:27.562  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:27.562  3094  3094 D Input.HardKeyReceiver: down:false,longPress:false,keyCode:3
02-28 01:58:27.562  3094  3094 I SYSUI.HardKeyHandler: KEYCODE_HOME :openHomePage
02-28 01:58:27.563  3492  3492 D CarHardkeyManager: hardkey keycode:3
02-28 01:58:27.564  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:58:27.564  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:27.566  3492  3492 D CarHardkeyManager: shortPress_up
02-28 01:58:27.566  3492  3492 D CarHardkeyManager: isPress: false
02-28 01:58:27.566  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:58:27.566  3492  3492 D CarHardkeyManager: KEYCODE_HOME: take video from device
02-28 01:58:27.567  3831  3831 D MEDIA.HardKeyBusiness: keyCode:3 keyDown:false longPress:false
02-28 01:58:27.580  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:58:29.979  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 291down true
02-28 01:58:29.979  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=291 down=true longpress=false
02-28 01:58:29.980  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:58:29.980  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:29.980  3094  3094 D Input.HardKeyReceiver: down:true,longPress:false,keyCode:291
02-28 01:58:29.981  3492  3492 D CarHardkeyManager: hardkey keycode:291
02-28 01:58:29.981  3492  3492 D CarHardkeyManager: press_down
02-28 01:58:29.981  3492  3492 D CarHardkeyManager: isPress:true
02-28 01:58:29.981  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:58:29.981  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:58:29.982  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:29.982  3831  3831 D MEDIA.HardKeyBusiness: keyCode:291 keyDown:true longPress:false
02-28 01:58:29.982  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:58:30.110  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 291down false
02-28 01:58:30.110  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=291 down=false longpress=false
02-28 01:58:30.111  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:58:30.111  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:30.112  3094  3094 D Input.HardKeyReceiver: down:false,longPress:false,keyCode:291
02-28 01:58:30.112  3094  3094 W SYSUI.HardKeyHandler: receiver key code : 291(not processed)
02-28 01:58:30.113  3492  3492 D CarHardkeyManager: hardkey keycode:291
02-28 01:58:30.113  3492  3492 D CarHardkeyManager: shortPress_up
02-28 01:58:30.113  3492  3492 D CarHardkeyManager: isPress: false
02-28 01:58:30.113  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:58:30.113  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:58:30.113  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:58:30.114  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:30.114  3831  3831 D MEDIA.HardKeyBusiness: keyCode:291 keyDown:false longPress:false
02-28 01:58:32.011  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 291down true
02-28 01:58:32.011  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=291 down=true longpress=false
02-28 01:58:32.013  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:58:32.013  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:32.014  3094  3094 D Input.HardKeyReceiver: down:true,longPress:false,keyCode:291
02-28 01:58:32.016  3492  3492 D CarHardkeyManager: hardkey keycode:291
02-28 01:58:32.016  3492  3492 D CarHardkeyManager: press_down
02-28 01:58:32.016  3492  3492 D CarHardkeyManager: isPress:true
02-28 01:58:32.016  3492  3492 D CarHardkeyManager: isLongPress:false
02-28 01:58:32.016  3492  3492 D CarHardkeyManager: mediaValue:-1
02-28 01:58:32.016  3831  3831 D MEDIA.HardKeyBusiness: onHardKey:Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:32.016  3831  3831 D MEDIA.HardKeyBusiness: keyCode:291 keyDown:true longPress:false
02-28 01:58:32.016  5363  5363 D Input.HardKeyReceiver: no filter key
02-28 01:58:32.164  2677  2922 I WindowManager: interceptKeyBeforeDispatching: report hardkey event keyCode 291down false
02-28 01:58:32.164  2677  2788 D WindowManager: reportHardKeyEvent:  keycode=291 down=false longpress=false
02-28 01:58:32.166  3285  3285 D CarPlayReceiver: onReceive: com.saic.keyevent.hardkey.report
02-28 01:58:32.166  3285  3285 D CarPlayReceiver: onReceive: intent.toString    Intent { act=com.saic.keyevent.hardkey.report flg=0x10 (has extras) }
02-28 01:58:32.166  3094  3094 D Input.HardKeyReceiver: down:false,longPress:false,keyCode:291
02-28 01:58:32.166  3094  3094 W SYSUI.HardKeyHandler: receiver key code : 291(not processed)

---

## 💡 Sistem Mimarisi

### Tuş İşleme Akışı:
1. **WindowManager** → Tuş olayını başlangıçta yakalar ve raporlar
2. **Input.HardKeyReceiver** → Tuş türünü belirler (basılı/bırakıldı)
3. **CarHardkeyManager** → Tuş durumunu yönetir (press_down/shortPress_up)
4. **MEDIA.HardKeyBusiness** → Medya işlemleri uygular
5. **CarPlayReceiver** → CarPlay bağlantısına işler
6. **CarPlayCommClient** → CarPlay protokolü ile iletişim kurar

## ⚠️ Tespit Edilen Sorunlar
- CarPlay bağlantısı kopuyor: "CP is not connected"
- Bazı tuş kodları işlenmiyor: "not processed"  
- ADB erişim sorunları: `adb: inaccessible or not found`
- Loglar cihazda doğrudan çekilmiş görülüyor
