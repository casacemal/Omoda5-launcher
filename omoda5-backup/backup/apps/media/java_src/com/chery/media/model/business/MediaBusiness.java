package com.chery.media.model.business;

import android.car.Car;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.androidauto.AAModel;
import com.chery.caradapter.carapi.interfaces.IPowerListener;
import com.chery.caradapter.carapi.interfaces.IVolumeListener;
import com.chery.carplay.CarplayModel;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.util.RunnableThread;
import com.chery.window.UiVisibilityTest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class MediaBusiness {
    private static final String TAG = CarLog.concatTag("MEDIA", MediaBusiness.class);
    private static MediaBusiness instance;
    private AAModel aaModel;
    private AudioManager audioManager;
    private HandlerThread audioMgrThread;
    private Handler audioMgrThreadHandler;
    private CarplayModel carplayModel;
    private Context context;
    private Handler handler;
    private RunnableThread ioThread;
    private UiVisibilityTest mUiVisibilityTest;
    private BroadcastReceiver screenSwitchReceiver;
    private int currentAudioSource = 0;
    private boolean isDabLastPlayed = false;
    private List<OnAudioSourceChangeListener> audioSourceChangeListeners = new ArrayList();
    private boolean screenOn = false;
    private List<ScreenSwitchListener> screenSwitchListeners = new ArrayList();

    public interface OnAudioSourceChangeListener {
        void onAudioSourceChanged(int r1, int r2);
    }

    public interface ScreenSwitchListener {
        void onScreenOnChanged(boolean z);
    }

    public void addAudioSourceChangeListener(OnAudioSourceChangeListener onAudioSourceChangeListener) {
        if (this.audioSourceChangeListeners.contains(onAudioSourceChangeListener)) {
            return;
        }
        this.audioSourceChangeListeners.add(onAudioSourceChangeListener);
    }

    public void removeAudioSourceChangeListener(OnAudioSourceChangeListener onAudioSourceChangeListener) {
        this.audioSourceChangeListeners.remove(onAudioSourceChangeListener);
    }

    public void addScreenSwitchListener(ScreenSwitchListener screenSwitchListener) {
        if (this.screenSwitchListeners.contains(screenSwitchListener)) {
            return;
        }
        this.screenSwitchListeners.add(screenSwitchListener);
    }

    public void removeScreenSwitchListener(ScreenSwitchListener screenSwitchListener) {
        this.screenSwitchListeners.remove(screenSwitchListener);
    }

    public static MediaBusiness getInstance() {
        if (instance == null) {
            instance = new MediaBusiness();
        }
        return instance;
    }

    public void init(Context context) {
        PFLog.m25d(TAG, "init");
        this.context = context;
        this.handler = new Handler();
        this.audioManager = (AudioManager) this.context.getSystemService(Car.AUDIO_SERVICE);
        HandlerThread handlerThread = new HandlerThread("audioMgrThread");
        this.audioMgrThread = handlerThread;
        handlerThread.start();
        this.audioMgrThreadHandler = new Handler(this.audioMgrThread.getLooper());
        this.audioManager.registerAudioSourceChange(new AudioManager.OnAudioSourceChangeCallBack() { // from class: com.chery.media.model.business.MediaBusiness.1
            public void onSourceChanged(final AudioAttributes audioAttributes, final String str) {
                MediaBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.MediaBusiness.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PFLog.m25d(MediaBusiness.TAG, "onSourceChanged Package: " + str);
                        PFLog.m25d(MediaBusiness.TAG, "onSourceChanged " + audioAttributes);
                        AudioAttributes audioAttributes2 = audioAttributes;
                        if (audioAttributes2 == null) {
                            MediaBusiness.this.setCurrentAudioSource(0);
                        }
                        Bundle bundle = audioAttributes2.getBundle();
                        int usage = audioAttributes.getUsage();
                        if (usage != 12) {
                            if (usage == 16) {
                                MediaBusiness.this.setCurrentAudioSource(31);
                                return;
                            }
                            switch (usage) {
                                case 1:
                                    if (bundle == null || !bundle.containsKey("key_car_source_type")) {
                                        MediaBusiness.this.setCurrentAudioSource(0);
                                        break;
                                    } else {
                                        MediaBusiness.this.setCurrentAudioSource(bundle.getInt("key_car_source_type"));
                                        break;
                                    }
                                    break;
                                case 2:
                                    MediaBusiness.this.setCurrentAudioSource(40);
                                    break;
                                case 3:
                                    MediaBusiness.this.setCurrentAudioSource(42);
                                    break;
                                case 4:
                                    if (bundle == null || !bundle.containsKey("key_car_source_type")) {
                                        MediaBusiness.this.setCurrentAudioSource(5);
                                        break;
                                    } else {
                                        MediaBusiness.this.setCurrentAudioSource(bundle.getInt("key_car_source_type"));
                                        break;
                                    }
                                case 5:
                                    break;
                                case 6:
                                    MediaBusiness.this.setCurrentAudioSource(46);
                                    break;
                                default:
                                    switch (usage) {
                                        case 997:
                                        case 998:
                                            break;
                                        case 999:
                                            MediaBusiness.this.setCurrentAudioSource(0);
                                            break;
                                        default:
                                            MediaBusiness.this.setCurrentAudioSource(0);
                                            break;
                                    }
                            }
                        }
                    }
                });
            }
        }, this.audioMgrThreadHandler);
        setCurrentAudioSource(this.audioManager.getCurrentSource());
        setScreenOn(CarAdapterUse.getCarPowerClient().getBackLightStatus());
        CarAdapterUse.addCarPowerClientListener(new IPowerListener() { // from class: com.chery.media.model.business.MediaBusiness.2
            @Override // com.chery.caradapter.carapi.interfaces.IPowerListener
            public void onStateChanged(final int r3) {
                MediaBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.MediaBusiness.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int r0 = r3;
                        if (r0 == 21 || r0 == 22) {
                            MediaBusiness.this.setScreenOn(CarAdapterUse.getCarPowerClient().getBackLightStatus());
                        }
                    }
                });
            }
        });
        CarAdapterUse.addCarVolumeClientListener(new IVolumeListener() { // from class: com.chery.media.model.business.MediaBusiness.3
            @Override // com.chery.caradapter.carapi.interfaces.IVolumeListener
            public void onMasterMuteChanged(int r1, int r2) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IVolumeListener
            public void onGroupVolumeChanged(int r1, int r2, int r3) {
                if (r2 == CarAdapterUse.getCarVolumeClient().getVolumeGroupIdForUsage(1)) {
                    MediaBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.MediaBusiness.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            int r0 = MediaBusiness.this.currentAudioSource;
                            if (r0 == 1 || r0 == 2) {
                                RadioBusiness.getInstance().setPlayingState(true);
                                return;
                            }
                            if (r0 == 3) {
                                DabBusiness.getInstance().setPlayingState(true);
                                return;
                            }
                            if (r0 == 6) {
                                UsbMusicBusiness.getInstance().play(MediaDef.getUsbMusicTypeOfAudioSource(MediaBusiness.this.currentAudioSource));
                            } else if (r0 == 12) {
                                LocalMusicBusiness.getInstance().play();
                            } else {
                                if (r0 != 16) {
                                    return;
                                }
                                VideoBusiness.getInstance().play(VideoBusiness.getInstance().getCurrentUsb());
                            }
                        }
                    });
                } else if (r2 == CarAdapterUse.getCarVolumeClient().getVolumeGroupIdForUsage(4)) {
                    MediaBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.MediaBusiness.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MediaBusiness.this.currentAudioSource != 5) {
                                return;
                            }
                            if (BtMusicBusiness.getInstance().isPlaying()) {
                                PFLog.m25d(MediaBusiness.TAG, "BT music is playing");
                            } else {
                                BtMusicBusiness.getInstance().play();
                            }
                        }
                    });
                }
            }

            @Override // com.chery.caradapter.carapi.interfaces.IVolumeListener
            public void onGroupMuteChanged(int r1, int r2, int r3) {
                if (r2 == CarAdapterUse.getCarVolumeClient().getVolumeGroupIdForUsage(1)) {
                    final boolean groupMute = CarAdapterUse.getCarVolumeClient().getGroupMute(r2);
                    MediaBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.MediaBusiness.3.3
                        @Override // java.lang.Runnable
                        public void run() {
                            MediaBusiness.this.onMediaGroupMuteChanged(groupMute);
                        }
                    });
                } else if (r2 == CarAdapterUse.getCarVolumeClient().getVolumeGroupIdForUsage(4)) {
                    final boolean groupMute2 = CarAdapterUse.getCarVolumeClient().getGroupMute(r2);
                    MediaBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.MediaBusiness.3.4
                        @Override // java.lang.Runnable
                        public void run() {
                            MediaBusiness.this.onAlarmGroupMuteChanged(groupMute2);
                        }
                    });
                }
            }
        });
        UiVisibilityTest uiVisibilityTest = new UiVisibilityTest(this.context, 3, "Media", false);
        this.mUiVisibilityTest = uiVisibilityTest;
        uiVisibilityTest.init();
        CarplayModel carplayModel = new CarplayModel(this.context);
        this.carplayModel = carplayModel;
        carplayModel.init();
        this.carplayModel.registerListener(new CarplayModel.CarplayListenerCallback() { // from class: com.chery.media.model.business.MediaBusiness.4
            @Override // com.chery.carplay.CarplayModel.CarplayListenerCallback
            public void onNotification(String str) {
            }

            @Override // com.chery.carplay.CarplayModel.CarplayListenerCallback
            public void onNotifyCPReadyToAuth(String str, int r2) {
            }

            @Override // com.chery.carplay.CarplayModel.CarplayListenerCallback
            public void onNotifyDevTransport(String str, String str2, boolean z) {
            }

            @Override // com.chery.carplay.CarplayModel.CarplayListenerCallback
            public void onNotifyDisableBt(String str) {
            }

            @Override // com.chery.carplay.CarplayModel.CarplayListenerCallback
            public void onNotifyLauncherPop(int r1, String str) {
            }

            @Override // com.chery.carplay.CarplayModel.CarplayListenerCallback
            public void onNotifyVideoChange(boolean z) {
            }

            @Override // com.chery.carplay.CarplayModel.CarplayListenerCallback
            public void onSessionStsUpdate(int r1, String str, String str2) {
            }

            @Override // com.chery.carplay.CarplayModel.CarplayListenerCallback
            public void onSetVideoFocus(boolean z) {
            }

            @Override // com.chery.carplay.CarplayModel.CarplayListenerCallback
            public void onUSBIAP2DeviceStsChanged(boolean z, String str) {
            }

            @Override // com.chery.carplay.CarplayModel.CarplayListenerCallback
            public void onUpdateCallInfo(int r1, String str, String str2, long j) {
            }

            @Override // com.chery.carplay.CarplayModel.CarplayListenerCallback
            public void onUpdateClientSts(boolean z) {
            }

            @Override // com.chery.carplay.CarplayModel.CarplayListenerCallback
            public void onUpdateMediaToken(MediaSession.Token token) {
            }

            @Override // com.chery.carplay.CarplayModel.CarplayListenerCallback
            public void onUpdateSiriSts(boolean z) {
            }
        });
        AAModel aAModel = new AAModel(this.context, null);
        this.aaModel = aAModel;
        aAModel.init();
        RunnableThread runnableThread = new RunnableThread();
        this.ioThread = runnableThread;
        runnableThread.init();
    }

    public boolean isDabLastPlayed() {
        return this.isDabLastPlayed;
    }

    public int getCurrentAudioSource() {
        return this.currentAudioSource;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentAudioSource(int r4) {
        if (r4 == this.currentAudioSource) {
            return;
        }
        if (r4 == 1 || r4 == 2) {
            this.isDabLastPlayed = false;
        } else if (r4 == 3) {
            this.isDabLastPlayed = true;
        }
        PFLog.m25d(TAG, "setCurrentAudioSource " + r4);
        int r0 = this.currentAudioSource;
        this.currentAudioSource = r4;
        Iterator<OnAudioSourceChangeListener> it = this.audioSourceChangeListeners.iterator();
        while (it.hasNext()) {
            it.next().onAudioSourceChanged(r0, r4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScreenOn(boolean z) {
        if (z == this.screenOn) {
            return;
        }
        PFLog.m25d(TAG, "setScreenOn " + z);
        this.screenOn = z;
        Iterator<ScreenSwitchListener> it = this.screenSwitchListeners.iterator();
        while (it.hasNext()) {
            it.next().onScreenOnChanged(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMediaGroupMuteChanged(boolean z) {
        PFLog.m25d(TAG, "onMediaGroupMuteChanged " + z);
        if (z) {
            int r9 = this.currentAudioSource;
            if (r9 == 1 || r9 == 2) {
                RadioBusiness.getInstance().setPlayingState(false);
                return;
            }
            if (r9 == 3) {
                DabBusiness.getInstance().setPlayingState(false);
                return;
            }
            if (r9 == 5) {
                BtMusicBusiness.getInstance().pause();
                return;
            }
            if (r9 == 6) {
                UsbMusicBusiness.getInstance().pause(MediaDef.getUsbMusicTypeOfAudioSource(this.currentAudioSource));
                return;
            } else if (r9 == 12) {
                LocalMusicBusiness.getInstance().pause();
                return;
            } else {
                if (r9 != 16) {
                    return;
                }
                VideoBusiness.getInstance().pause(VideoBusiness.getInstance().getCurrentUsb());
                return;
            }
        }
        int r92 = this.currentAudioSource;
        if (r92 == 1 || r92 == 2) {
            RadioBusiness.getInstance().setPlayingState(true);
            return;
        }
        if (r92 == 3) {
            DabBusiness.getInstance().setPlayingState(true);
            return;
        }
        if (r92 == 5) {
            BtMusicBusiness.getInstance().play();
            return;
        }
        if (r92 == 6) {
            UsbMusicBusiness.getInstance().play(MediaDef.getUsbMusicTypeOfAudioSource(this.currentAudioSource));
        } else if (r92 == 12) {
            LocalMusicBusiness.getInstance().play();
        } else {
            if (r92 != 16) {
                return;
            }
            VideoBusiness.getInstance().play(VideoBusiness.getInstance().getCurrentUsb());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAlarmGroupMuteChanged(boolean z) {
        PFLog.m25d(TAG, "onAlarmGroupMuteChanged " + z);
        if (z) {
            if (this.currentAudioSource != 5) {
                return;
            }
            BtMusicBusiness.getInstance().stopA2dpRender();
            BtMusicBusiness.getInstance().pause();
            return;
        }
        if (this.currentAudioSource != 5) {
            return;
        }
        BtMusicBusiness.getInstance().play();
        BtMusicBusiness.getInstance().startA2dpRender();
    }

    public void updateFullscreenState(boolean z) {
        PFLog.m29i(TAG, "Change to fullscreen? " + z);
        UiVisibilityTest uiVisibilityTest = this.mUiVisibilityTest;
        if (uiVisibilityTest == null) {
            PFLog.m33w(TAG, "return. ");
        } else if (z) {
            uiVisibilityTest.setUiVisibility(3, 0);
        } else {
            uiVisibilityTest.setUiVisibility(3, 2);
        }
    }

    public CarplayModel getCarplayModel() {
        return this.carplayModel;
    }

    public AAModel getAAModel() {
        return this.aaModel;
    }

    public RunnableThread getIoThread() {
        return this.ioThread;
    }
}
