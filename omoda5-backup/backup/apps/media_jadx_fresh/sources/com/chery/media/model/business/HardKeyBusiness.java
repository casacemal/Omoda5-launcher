package com.chery.media.model.business;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.avn.tools.activity.ActivityUtils;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.common.PackageConstants;
import com.chery.common.PageConstants;
import com.chery.common.PageManager;
import com.chery.media.util.PowerWakeLockUse;
import com.chery.media.view.activity.MediaActivity;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class HardKeyBusiness {
    private static final String TAG = CarLog.concatTag("MEDIA", HardKeyBusiness.class);
    private static HardKeyBusiness instance;
    private Context context;
    private int longPressedKeyCode = 0;
    private List<HardKeyListener> hardKeyListenerList = new ArrayList();

    public interface HardKeyListener {
        void onHardKey(int r1, boolean z, boolean z2);
    }

    public void addHardKeyListener(HardKeyListener hardKeyListener) {
        if (this.hardKeyListenerList.contains(hardKeyListener)) {
            return;
        }
        this.hardKeyListenerList.add(hardKeyListener);
    }

    public void removeHardKeyListener(HardKeyListener hardKeyListener) {
        this.hardKeyListenerList.remove(hardKeyListener);
    }

    public static HardKeyBusiness getInstance() {
        if (instance == null) {
            instance = new HardKeyBusiness();
        }
        return instance;
    }

    public void init(Context context) {
        this.context = context;
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.chery.media.model.business.HardKeyBusiness.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) throws SecurityException, UnsupportedEncodingException {
                if (intent.getAction().equals("com.saic.keyevent.hardkey.report")) {
                    HardKeyBusiness.this.onHardKey(intent);
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.saic.keyevent.hardkey.report");
        this.context.registerReceiver(broadcastReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onHardKey(Intent intent) throws SecurityException, UnsupportedEncodingException {
        PFLog.m25d(TAG, "onHardKey:" + intent);
        int r1 = 0;
        int intExtra = intent.getIntExtra("android.intent.extra.hardkey.keycode", 0);
        boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.hardkey.down", false);
        boolean booleanExtra2 = intent.getBooleanExtra("android.intent.extra.hardkey.longpress", false);
        PFLog.m25d(TAG, String.format("keyCode:%s keyDown:%s longPress:%s", Integer.valueOf(intExtra), Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2)));
        if (PowerWakeLockUse.getInstance().getPowerWakeLock().isScreenLock()) {
            PFLog.m25d(TAG, "screen is lock!");
            return;
        }
        if (intExtra == 87) {
            int currentAudioSource = MediaBusiness.getInstance().getCurrentAudioSource();
            if (currentAudioSource == 1 || currentAudioSource == 2) {
                if (booleanExtra) {
                    if (booleanExtra2) {
                        RadioBusiness.getInstance().tuneByList(0);
                    }
                } else if (this.longPressedKeyCode != intExtra) {
                    RadioBusiness.getInstance().seek(0, true);
                }
            } else if (currentAudioSource != 3) {
                if (currentAudioSource != 5) {
                    if (currentAudioSource != 6) {
                        if (currentAudioSource != 12) {
                            if (currentAudioSource == 16) {
                                if (booleanExtra) {
                                    if (booleanExtra2) {
                                        VideoBusiness.getInstance().fastForward(VideoBusiness.getInstance().getCurrentUsb());
                                    }
                                } else if (this.longPressedKeyCode == intExtra) {
                                    VideoBusiness.getInstance().stopFastPlay(VideoBusiness.getInstance().getCurrentUsb());
                                } else {
                                    VideoBusiness.getInstance().playNext(VideoBusiness.getInstance().getCurrentUsb());
                                }
                            }
                        } else if (booleanExtra) {
                            if (booleanExtra2) {
                                LocalMusicBusiness.getInstance().fastForward();
                            }
                        } else if (this.longPressedKeyCode == intExtra) {
                            LocalMusicBusiness.getInstance().stopFastPlay();
                        } else {
                            LocalMusicBusiness.getInstance().playNext();
                        }
                    } else if (booleanExtra) {
                        if (booleanExtra2) {
                            UsbMusicBusiness.getInstance().fastForward(MediaDef.getUsbMusicTypeOfAudioSource(currentAudioSource));
                        }
                    } else if (this.longPressedKeyCode == intExtra) {
                        UsbMusicBusiness.getInstance().stopFastPlay(MediaDef.getUsbMusicTypeOfAudioSource(currentAudioSource));
                    } else {
                        UsbMusicBusiness.getInstance().playNext(MediaDef.getUsbMusicTypeOfAudioSource(currentAudioSource));
                    }
                } else if (!booleanExtra && this.longPressedKeyCode != intExtra) {
                    BtMusicBusiness.getInstance().next();
                }
            } else if (!booleanExtra && this.longPressedKeyCode != intExtra) {
                DabBusiness.getInstance().playNext();
            }
        } else if (intExtra == 88) {
            int currentAudioSource2 = MediaBusiness.getInstance().getCurrentAudioSource();
            if (currentAudioSource2 == 1 || currentAudioSource2 == 2) {
                if (booleanExtra) {
                    if (booleanExtra2) {
                        RadioBusiness.getInstance().tuneByList(1);
                    }
                } else if (this.longPressedKeyCode != intExtra) {
                    RadioBusiness.getInstance().seek(1, true);
                }
            } else if (currentAudioSource2 != 3) {
                if (currentAudioSource2 != 5) {
                    if (currentAudioSource2 != 6) {
                        if (currentAudioSource2 != 12) {
                            if (currentAudioSource2 == 16) {
                                if (booleanExtra) {
                                    if (booleanExtra2) {
                                        VideoBusiness.getInstance().fastBackward(VideoBusiness.getInstance().getCurrentUsb());
                                    }
                                } else if (this.longPressedKeyCode == intExtra) {
                                    VideoBusiness.getInstance().stopFastPlay(VideoBusiness.getInstance().getCurrentUsb());
                                } else {
                                    VideoBusiness.getInstance().playPrior(VideoBusiness.getInstance().getCurrentUsb());
                                }
                            }
                        } else if (booleanExtra) {
                            if (booleanExtra2) {
                                LocalMusicBusiness.getInstance().fastBackward();
                            }
                        } else if (this.longPressedKeyCode == intExtra) {
                            LocalMusicBusiness.getInstance().stopFastPlay();
                        } else {
                            LocalMusicBusiness.getInstance().playPrior();
                        }
                    } else if (booleanExtra) {
                        if (booleanExtra2) {
                            UsbMusicBusiness.getInstance().fastBackward(MediaDef.getUsbMusicTypeOfAudioSource(currentAudioSource2));
                        }
                    } else if (this.longPressedKeyCode == intExtra) {
                        UsbMusicBusiness.getInstance().stopFastPlay(MediaDef.getUsbMusicTypeOfAudioSource(currentAudioSource2));
                    } else {
                        UsbMusicBusiness.getInstance().playPrior(MediaDef.getUsbMusicTypeOfAudioSource(currentAudioSource2));
                    }
                } else if (!booleanExtra && this.longPressedKeyCode != intExtra) {
                    BtMusicBusiness.getInstance().previous();
                }
            } else if (!booleanExtra && this.longPressedKeyCode != intExtra) {
                DabBusiness.getInstance().playPrevious();
            }
        } else if (intExtra == 289 && !booleanExtra && this.longPressedKeyCode == 0) {
            onHardKeySrc(this.context);
        }
        if (booleanExtra && booleanExtra2) {
            r1 = intExtra;
        }
        this.longPressedKeyCode = r1;
        Iterator<HardKeyListener> it = this.hardKeyListenerList.iterator();
        while (it.hasNext()) {
            it.next().onHardKey(intExtra, booleanExtra, booleanExtra2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0050, code lost:
    
        if (r0 != 6) goto L42;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void onHardKeySrc(android.content.Context r8) throws java.lang.SecurityException, java.io.UnsupportedEncodingException {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.HardKeyBusiness.onHardKeySrc(android.content.Context):void");
    }

    private boolean isSourceValid(int r3) {
        if (r3 == 1 || r3 == 2) {
            return true;
        }
        if (r3 == 5) {
            return BtMusicBusiness.getInstance().getBtMusicState().getValue().booleanValue();
        }
        if (r3 == 6) {
            return UsbScannerBusiness.getInstance().getUsbDeviceInfo(MediaDef.getUsbMusicTypeOfAudioSource(r3)).musicsCount > 0;
        }
        if (r3 == 12) {
            return true ^ LocalMusicBusiness.getInstance().getLocalMusics().isEmpty();
        }
        if (r3 != 50) {
            return r3 == 70 && MediaBusiness.getInstance().getAAModel().getSessionState() == 1;
        }
        return MediaBusiness.getInstance().getCarplayModel().isCPStarted();
    }

    private void checkChangeSourceView(Context context, final int r13) throws SecurityException, UnsupportedEncodingException {
        PFLog.m25d(TAG, "checkChangeSourceView source:" + r13);
        ComponentName topActivityComponentName = ActivityUtils.getTopActivityComponentName(context);
        PFLog.m25d(TAG, "checkChangeSourceView ComponentName:" + topActivityComponentName);
        if (topActivityComponentName == null) {
            return;
        }
        final MediaActivity mediaActivity = MediaActivity.getInstance();
        PFLog.m25d(TAG, "checkChangeSourceView mediaActivity:" + mediaActivity);
        if (mediaActivity != null) {
            PFLog.m25d(TAG, "checkChangeSourceView mediaActivity.getCurrentFragment:" + mediaActivity.getCurrentFragment());
        }
        if (r13 == 1 || r13 == 2) {
            if (PackageConstants.CarPlay.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || MediaBusiness.getInstance().getCarplayModel().isVideoStarted() || PackageConstants.AndroidAuto.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || ("com.chery.media".equals(topActivityComponentName.getPackageName()) && (PackageConstants.Media.VIDEO_ACTIVITY_NAME.equals(topActivityComponentName.getClassName()) || PackageConstants.Media.VIDEO_PLAYER_ACTIVITY_NAME.equals(topActivityComponentName.getClassName())))) {
                new PageManager(context).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_RADIO_PLAYER);
                MediaBusiness.getInstance().getCarplayModel().requestVideoResource(false);
            }
            if (mediaActivity != null) {
                mediaActivity.addRunnable(new Runnable() { // from class: com.chery.media.model.business.HardKeyBusiness.3
                    @Override // java.lang.Runnable
                    public void run() {
                        mediaActivity.checkFragmentToSource(r13);
                    }
                });
                return;
            }
            return;
        }
        if (r13 == 3) {
            if (PackageConstants.CarPlay.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || MediaBusiness.getInstance().getCarplayModel().isVideoStarted() || PackageConstants.AndroidAuto.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || ("com.chery.media".equals(topActivityComponentName.getPackageName()) && (PackageConstants.Media.VIDEO_ACTIVITY_NAME.equals(topActivityComponentName.getClassName()) || PackageConstants.Media.VIDEO_PLAYER_ACTIVITY_NAME.equals(topActivityComponentName.getClassName())))) {
                new PageManager(context).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_DAB_PLAYER);
                MediaBusiness.getInstance().getCarplayModel().requestVideoResource(false);
            }
            if (mediaActivity != null) {
                mediaActivity.addRunnable(new Runnable() { // from class: com.chery.media.model.business.HardKeyBusiness.2
                    @Override // java.lang.Runnable
                    public void run() {
                        mediaActivity.checkFragmentToSource(r13);
                    }
                });
                return;
            }
            return;
        }
        if (r13 == 5) {
            if (PackageConstants.CarPlay.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || MediaBusiness.getInstance().getCarplayModel().isVideoStarted() || PackageConstants.AndroidAuto.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || ("com.chery.media".equals(topActivityComponentName.getPackageName()) && (PackageConstants.Media.VIDEO_ACTIVITY_NAME.equals(topActivityComponentName.getClassName()) || PackageConstants.Media.VIDEO_PLAYER_ACTIVITY_NAME.equals(topActivityComponentName.getClassName())))) {
                new PageManager(context).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_BT_MUSIC_PLAYER);
                MediaBusiness.getInstance().getCarplayModel().requestVideoResource(false);
            }
            if (mediaActivity != null) {
                mediaActivity.addRunnable(new Runnable() { // from class: com.chery.media.model.business.HardKeyBusiness.5
                    @Override // java.lang.Runnable
                    public void run() {
                        mediaActivity.checkFragmentToSource(r13);
                    }
                });
                return;
            }
            return;
        }
        if (r13 == 6) {
            if (PackageConstants.CarPlay.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || MediaBusiness.getInstance().getCarplayModel().isVideoStarted() || PackageConstants.AndroidAuto.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || ("com.chery.media".equals(topActivityComponentName.getPackageName()) && (PackageConstants.Media.VIDEO_ACTIVITY_NAME.equals(topActivityComponentName.getClassName()) || PackageConstants.Media.VIDEO_PLAYER_ACTIVITY_NAME.equals(topActivityComponentName.getClassName())))) {
                new PageManager(context).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_USB_MUSIC_PLAYER);
                MediaBusiness.getInstance().getCarplayModel().requestVideoResource(false);
            }
            if (mediaActivity != null) {
                mediaActivity.addRunnable(new Runnable() { // from class: com.chery.media.model.business.HardKeyBusiness.4
                    @Override // java.lang.Runnable
                    public void run() {
                        mediaActivity.checkFragmentToSource(r13);
                    }
                });
                return;
            }
            return;
        }
        if (r13 == 12) {
            if (PackageConstants.CarPlay.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || MediaBusiness.getInstance().getCarplayModel().isVideoStarted() || PackageConstants.AndroidAuto.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || ("com.chery.media".equals(topActivityComponentName.getPackageName()) && (PackageConstants.Media.VIDEO_ACTIVITY_NAME.equals(topActivityComponentName.getClassName()) || PackageConstants.Media.VIDEO_PLAYER_ACTIVITY_NAME.equals(topActivityComponentName.getClassName())))) {
                new PageManager(context).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_LOCAL_MUSIC_PLAYER);
                MediaBusiness.getInstance().getCarplayModel().requestVideoResource(false);
            }
            if (mediaActivity != null) {
                mediaActivity.addRunnable(new Runnable() { // from class: com.chery.media.model.business.HardKeyBusiness.6
                    @Override // java.lang.Runnable
                    public void run() {
                        mediaActivity.checkFragmentToSource(r13);
                    }
                });
                return;
            }
            return;
        }
        if (r13 == 50) {
            if (PackageConstants.AndroidAuto.PACKAGE_NAME.equals(topActivityComponentName.getPackageName())) {
                MediaBusiness.getInstance().getCarplayModel().requestVideoResource(true);
                return;
            }
            if ("com.chery.media".equals(topActivityComponentName.getPackageName())) {
                if (PackageConstants.Media.MEDIA_ACTIVITY_NAME.equals(topActivityComponentName.getClassName()) || PackageConstants.Media.VIDEO_ACTIVITY_NAME.equals(topActivityComponentName.getClassName()) || PackageConstants.Media.VIDEO_PLAYER_ACTIVITY_NAME.equals(topActivityComponentName.getClassName())) {
                    MediaBusiness.getInstance().getCarplayModel().requestVideoResource(true);
                    return;
                }
                return;
            }
            return;
        }
        if (r13 != 70) {
            return;
        }
        if (MediaBusiness.getInstance().getCarplayModel().isVideoStarted()) {
            MediaBusiness.getInstance().getAAModel().switchAAMediaSource(2);
            return;
        }
        if ("com.chery.media".equals(topActivityComponentName.getPackageName())) {
            if (PackageConstants.Media.MEDIA_ACTIVITY_NAME.equals(topActivityComponentName.getClassName()) || PackageConstants.Media.VIDEO_ACTIVITY_NAME.equals(topActivityComponentName.getClassName()) || PackageConstants.Media.VIDEO_PLAYER_ACTIVITY_NAME.equals(topActivityComponentName.getClassName())) {
                MediaBusiness.getInstance().getAAModel().switchAAMediaSource(2);
            }
        }
    }
}
