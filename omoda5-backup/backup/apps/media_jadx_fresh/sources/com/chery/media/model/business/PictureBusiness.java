package com.chery.media.model.business;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.caradapter.carapi.interfaces.IBasicListener;
import com.chery.common.PageConstants;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.UsbScannerBusiness;
import com.chery.media.util.CarAdapterUse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class PictureBusiness {
    public static final int PLAYLIST_ALL = 0;
    public static final int PLAYLIST_FOLDER = 1;
    private static final String TAG = CarLog.concatTag("MEDIA", PictureBusiness.class);
    private static PictureBusiness instance;
    private Context context;
    private Handler handler;
    private ContentObserver vehicleSpeedLimitObserver;
    private int currentUsb = -1;
    private boolean speedLimitSetting = false;
    private boolean speedLimitView = false;
    private List<SpeedLimitListener> speedLimitListeners = new ArrayList();
    private Runnable runReleaseSpeedLimitCover = new Runnable() { // from class: com.chery.media.model.business.PictureBusiness.1
        @Override // java.lang.Runnable
        public void run() {
            PictureBusiness.this.setSpeedLimitView(false);
        }
    };
    private List<OnCurrentUsbListener> currentUsbListeners = new ArrayList();
    private HashMap<Integer, PlayInfo> playInfoMap = new HashMap<>();
    private PlayInfo defaultPlayInfo = new PlayInfo(-1);
    private List<OnPlaylistInfoListener> playlistInfoListeners = new ArrayList();
    private List<OnPlayingInfoListener> playingInfoListeners = new ArrayList();

    public interface OnCurrentUsbListener {
        void onCurrentUsbChanged(int r1);
    }

    public interface OnPlayingInfoListener {
        void onPlayingStateChanged(int r1, boolean z);
    }

    public interface OnPlaylistInfoListener {
        void onCurrentPlayingChanged(int r1, MediaDef.UsbPictureInfo usbPictureInfo);

        void onPlaylistChanged(int r1, int r2, List<MediaDef.UsbPictureInfo> list);
    }

    public interface SpeedLimitListener {
        void onSpeedLimitPlayChanged(boolean z);

        void onSpeedLimitSettingChanged(boolean z);

        void onSpeedLimitViewChanged(boolean z);
    }

    public void addSpeedLimitListener(SpeedLimitListener speedLimitListener) {
        if (this.speedLimitListeners.contains(speedLimitListener)) {
            return;
        }
        this.speedLimitListeners.add(speedLimitListener);
    }

    public void removeSpeedLimitListener(SpeedLimitListener speedLimitListener) {
        this.speedLimitListeners.remove(speedLimitListener);
    }

    public void addCurrentUsbListener(OnCurrentUsbListener onCurrentUsbListener) {
        if (this.currentUsbListeners.contains(onCurrentUsbListener)) {
            return;
        }
        this.currentUsbListeners.add(onCurrentUsbListener);
    }

    public void removeCurrentUsbListener(OnCurrentUsbListener onCurrentUsbListener) {
        this.currentUsbListeners.remove(onCurrentUsbListener);
    }

    private class PlayInfo {
        public MediaDef.UsbPictureInfo currentPlaying;
        public String usbName;
        public int usbType;
        public int playlistType = 0;
        public List<MediaDef.UsbPictureInfo> playlist = new ArrayList();

        public PlayInfo(int r2) {
            this.usbType = r2;
            this.usbName = MediaDef.getUsbName(r2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PlayInfo getPlayInfo(int r3) {
        if (this.playInfoMap.containsKey(Integer.valueOf(r3))) {
            return this.playInfoMap.get(Integer.valueOf(r3));
        }
        return this.defaultPlayInfo;
    }

    public void addPlaylistInfoListener(OnPlaylistInfoListener onPlaylistInfoListener) {
        if (this.playlistInfoListeners.contains(onPlaylistInfoListener)) {
            return;
        }
        this.playlistInfoListeners.add(onPlaylistInfoListener);
    }

    public void removePlaylistInfoListener(OnPlaylistInfoListener onPlaylistInfoListener) {
        this.playlistInfoListeners.remove(onPlaylistInfoListener);
    }

    public void addPlayingInfoListener(OnPlayingInfoListener onPlayingInfoListener) {
        if (this.playingInfoListeners.contains(onPlayingInfoListener)) {
            return;
        }
        this.playingInfoListeners.add(onPlayingInfoListener);
    }

    public void removePlayingInfoListener(OnPlayingInfoListener onPlayingInfoListener) {
        this.playingInfoListeners.remove(onPlayingInfoListener);
    }

    public static PictureBusiness getInstance() {
        if (instance == null) {
            instance = new PictureBusiness();
        }
        return instance;
    }

    public void init(Context context) {
        PFLog.m25d(TAG, "init");
        this.context = context;
        this.handler = new Handler();
        for (int r0 = 0; r0 <= 0; r0++) {
            this.playInfoMap.put(Integer.valueOf(r0), new PlayInfo(r0));
        }
        UsbScannerBusiness.getInstance().addUsbDeviceInfoListener(new UsbScannerBusiness.OnUsbDeviceInfoListener() { // from class: com.chery.media.model.business.PictureBusiness.2
            @Override // com.chery.media.model.business.UsbScannerBusiness.OnUsbDeviceInfoListener
            public void onMountStatusChanged(int r3, boolean z) {
                if (z) {
                    return;
                }
                PictureBusiness.this.changePlaylist(r3, 0, new ArrayList());
                if (r3 == PictureBusiness.this.currentUsb) {
                    PictureBusiness.this.setCurrentUsb(-1);
                }
            }

            @Override // com.chery.media.model.business.UsbScannerBusiness.OnUsbDeviceInfoListener
            public void onScanInfoUpdate(int r3, int r4) {
                if ((r4 == 34 || r4 == 35) && UsbScannerBusiness.getInstance().getUsbDeviceInfo(r3).picturesCount > 0) {
                    if (PictureBusiness.this.currentUsb == -1) {
                        PictureBusiness.this.setCurrentUsb(r3);
                    }
                    PictureBusiness.this.changePlaylist(0, r3, UsbScannerBusiness.getInstance().getPictures(r3));
                    if (PictureBusiness.this.getPlayInfo(r3).currentPlaying == null) {
                        PictureBusiness.this.changeCurrentPlaying(r3, 0);
                    }
                }
            }
        });
        String string = Settings.System.getString(this.context.getContentResolver(), PageConstants.SystemSettings.VIDEO_SPEED_LIMITED);
        PFLog.m25d(TAG, "video_speed_limited:" + string);
        setSpeedLimitSetting(PageConstants.SystemSettings.CLOSE.equals(string) ^ true);
        final Uri uriFor = Settings.System.getUriFor(PageConstants.SystemSettings.VIDEO_SPEED_LIMITED);
        this.vehicleSpeedLimitObserver = new ContentObserver(new Handler()) { // from class: com.chery.media.model.business.PictureBusiness.3
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                super.onChange(z, uri);
                if (uri.equals(uriFor)) {
                    PictureBusiness.this.setSpeedLimitSetting(!PageConstants.SystemSettings.CLOSE.equals(Settings.System.getString(r0.context.getContentResolver(), PageConstants.SystemSettings.VIDEO_SPEED_LIMITED)));
                }
            }
        };
        this.context.getContentResolver().registerContentObserver(uriFor, true, this.vehicleSpeedLimitObserver);
        float vehicleSpeed = CarAdapterUse.getCarBasicClient().getVehicleSpeed();
        PFLog.m25d(TAG, "vehicleSpeed:" + vehicleSpeed);
        if (37 == CarAdapterUse.getCarConfigInfoClient().getCountry()) {
            setSpeedLimitView(vehicleSpeed > 0.0f);
        }
        CarAdapterUse.addCarBasicClientListener(new IBasicListener() { // from class: com.chery.media.model.business.PictureBusiness.4
            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onAutoFoldSts(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onAutoLockSts(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onCWCChargingSts(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onCWCPhoneForgottenMsg(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onCWCPhoneForgottenSts(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onCWCWorkingSts(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onCtpKeyVoiceRemind(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onDMSSts(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onDayNightModeLight(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onICMBrightness(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onIcmTimeChanged(String str) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onKeySts(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onLightDetectedSts(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onPLGMaxPosition(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onRemoteLockFeedbackSts(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onSSMStatus(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onScreenOverTemperature(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onSrfSts(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onTrunkSts(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onWindowSts(int r1, int r2) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onVehicleSpeed(float f) {
                PictureBusiness.this.onVehicleSpeedChanged(f);
            }
        });
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.chery.media.model.business.PictureBusiness.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (intent.getAction().equals("com.chery.media.test.speed") && intent.hasExtra("speed")) {
                    PictureBusiness.this.onVehicleSpeedChanged(Integer.valueOf(intent.getStringExtra("speed")).intValue());
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.chery.media.test.speed");
        this.context.registerReceiver(broadcastReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentUsb(int r4) {
        if (r4 == this.currentUsb) {
            return;
        }
        PFLog.m25d(TAG, "setCurrentUsb : " + getPlayInfo(r4).usbName);
        this.currentUsb = r4;
        Iterator<OnCurrentUsbListener> it = this.currentUsbListeners.iterator();
        while (it.hasNext()) {
            it.next().onCurrentUsbChanged(r4);
        }
    }

    public int getCurrentUsb() {
        return this.currentUsb;
    }

    public void changeCurrentUsb(int r4) {
        PFLog.m25d(TAG, "changeCurrentUsb : " + getPlayInfo(r4).usbName);
        if (r4 == this.currentUsb) {
            return;
        }
        setCurrentUsb(r4);
    }

    public List<MediaDef.UsbPictureInfo> getPlaylist(int r2) {
        return new ArrayList(getPlayInfo(r2).playlist);
    }

    public int getPlaylistType(int r1) {
        return getPlayInfo(r1).playlistType;
    }

    public void changePlaylist(int r8, int r9, List<MediaDef.UsbPictureInfo> list) {
        PlayInfo playInfo = getPlayInfo(r8);
        String str = TAG;
        Object[] objArr = new Object[3];
        boolean z = false;
        objArr[0] = playInfo.usbName;
        objArr[1] = Integer.valueOf(r9);
        objArr[2] = Integer.valueOf(list != null ? list.size() : 0);
        PFLog.m25d(str, String.format("changePlaylist usb:%s playlistType:%d playlist size:%d", objArr));
        if (r9 == playInfo.playlistType && isPlaylistSame(list, playInfo.playlist)) {
            PFLog.m25d(TAG, "playlist no change!");
            return;
        }
        playInfo.playlistType = r9;
        playInfo.playlist.clear();
        if (list != null) {
            playInfo.playlist.addAll(list);
        }
        ArrayList arrayList = list != null ? new ArrayList(list) : new ArrayList();
        Iterator<OnPlaylistInfoListener> it = this.playlistInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onPlaylistChanged(r8, r9, arrayList);
        }
        if (playInfo.currentPlaying != null) {
            if (playInfo.playlist.isEmpty()) {
                setCurrentPlaying(r8, (MediaDef.UsbPictureInfo) null);
                return;
            }
            if (playInfo.playlist.contains(playInfo.currentPlaying)) {
                return;
            }
            int r92 = 0;
            while (true) {
                if (r92 >= playInfo.playlist.size()) {
                    break;
                }
                MediaDef.UsbPictureInfo usbPictureInfo = playInfo.playlist.get(r92);
                if (usbPictureInfo.path.equals(playInfo.currentPlaying.path)) {
                    setCurrentPlaying(r8, usbPictureInfo);
                    z = true;
                    break;
                }
                r92++;
            }
            if (z) {
                return;
            }
            setCurrentPlaying(r8, (MediaDef.UsbPictureInfo) null);
        }
    }

    private boolean isPlaylistSame(List<MediaDef.UsbPictureInfo> list, List<MediaDef.UsbPictureInfo> list2) {
        if (list == list2) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        for (int r1 = 0; r1 < list.size(); r1++) {
            if (!list.get(r1).path.equals(list2.get(r1).path)) {
                return false;
            }
        }
        return true;
    }

    private void setCurrentPlaying(int r6, MediaDef.UsbPictureInfo usbPictureInfo) {
        PlayInfo playInfo = getPlayInfo(r6);
        if (usbPictureInfo == playInfo.currentPlaying) {
            return;
        }
        if (usbPictureInfo != null && playInfo.currentPlaying != null && usbPictureInfo.path.equals(playInfo.currentPlaying.path)) {
            PFLog.m25d(TAG, "info is same");
            return;
        }
        PFLog.m25d(TAG, String.format("setCurrentPlaying usb:%s currentPlaying:%s", playInfo.usbName, usbPictureInfo));
        playInfo.currentPlaying = usbPictureInfo;
        Iterator<OnPlaylistInfoListener> it = this.playlistInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onCurrentPlayingChanged(r6, usbPictureInfo);
        }
    }

    public MediaDef.UsbPictureInfo getCurrentPlaying(int r1) {
        return getPlayInfo(r1).currentPlaying;
    }

    public void changeCurrentPlaying(int r6, MediaDef.UsbPictureInfo usbPictureInfo) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("to changeCurrentPlaying usb:%s pictureInfo:%s", playInfo.usbName, usbPictureInfo));
        if (playInfo.playlist.contains(usbPictureInfo)) {
            setCurrentPlaying(r6, usbPictureInfo);
        } else if (usbPictureInfo != null) {
            changeCurrentPlaying(r6, usbPictureInfo.path);
        }
    }

    public void changeCurrentPlaying(int r6, String str) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("to changeCurrentPlaying usb:%s picturePath:%s", playInfo.usbName, str));
        for (MediaDef.UsbPictureInfo usbPictureInfo : playInfo.playlist) {
            if (usbPictureInfo.path.equals(str)) {
                setCurrentPlaying(r6, usbPictureInfo);
                return;
            }
        }
    }

    public void changeCurrentPlaying(int r6, int r7) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("to changeCurrentPlaying usb:%s index:%s", playInfo.usbName, Integer.valueOf(r7)));
        if (r7 < 0 || r7 >= playInfo.playlist.size()) {
            return;
        }
        setCurrentPlaying(r6, playInfo.playlist.get(r7));
    }

    public void changeNext(int r7) {
        MediaDef.UsbPictureInfo changeNextPicture;
        PlayInfo playInfo = getPlayInfo(r7);
        PFLog.m25d(TAG, String.format("playNext %s", playInfo.usbName));
        if (playInfo.playlist.isEmpty() || (changeNextPicture = getChangeNextPicture(r7)) == null) {
            return;
        }
        PFLog.m25d(TAG, String.format("nextPicture:%s", changeNextPicture));
        changeCurrentPlaying(r7, changeNextPicture);
    }

    private MediaDef.UsbPictureInfo getChangeNextPicture(int r2) {
        PlayInfo playInfo = getPlayInfo(r2);
        int r22 = playInfo.playlist.indexOf(playInfo.currentPlaying);
        if (playInfo.playlist.isEmpty()) {
            return null;
        }
        return playInfo.playlist.get((r22 + 1) % playInfo.playlist.size());
    }

    public void changePrior(int r7) {
        MediaDef.UsbPictureInfo changePriorPicture;
        PlayInfo playInfo = getPlayInfo(r7);
        PFLog.m25d(TAG, String.format("playPrior %s", playInfo.usbName));
        if (playInfo.playlist.isEmpty() || (changePriorPicture = getChangePriorPicture(r7)) == null) {
            return;
        }
        PFLog.m25d(TAG, String.format("priorPicture:%s", changePriorPicture));
        changeCurrentPlaying(r7, changePriorPicture);
    }

    private MediaDef.UsbPictureInfo getChangePriorPicture(int r2) {
        PlayInfo playInfo = getPlayInfo(r2);
        int r22 = playInfo.playlist.indexOf(playInfo.currentPlaying);
        if (playInfo.playlist.isEmpty()) {
            return null;
        }
        return playInfo.playlist.get(r22 <= 0 ? playInfo.playlist.size() - 1 : (r22 - 1) % playInfo.playlist.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onVehicleSpeedChanged(float f) {
        PFLog.m25d(TAG, String.format("onVehicleSpeedChanged,speed is: %s", Float.valueOf(f)));
        if (37 == CarAdapterUse.getCarConfigInfoClient().getCountry()) {
            if (f > 0.0f) {
                setSpeedLimitView(true);
                this.handler.removeCallbacks(this.runReleaseSpeedLimitCover);
            } else {
                if (!this.speedLimitView || this.handler.hasCallbacks(this.runReleaseSpeedLimitCover)) {
                    return;
                }
                this.handler.postDelayed(this.runReleaseSpeedLimitCover, 3000L);
            }
        }
    }

    public boolean getSpeedLimitSetting() {
        return this.speedLimitSetting;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSpeedLimitSetting(boolean z) {
        if (z == this.speedLimitSetting) {
            return;
        }
        PFLog.m25d(TAG, "setSpeedLimitSetting:" + z);
        this.speedLimitSetting = z;
        Iterator<SpeedLimitListener> it = this.speedLimitListeners.iterator();
        while (it.hasNext()) {
            it.next().onSpeedLimitSettingChanged(z);
        }
    }

    public boolean getSpeedLimitView() {
        return this.speedLimitView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSpeedLimitView(boolean z) {
        if (z == this.speedLimitView) {
            return;
        }
        PFLog.m25d(TAG, "setSpeedLimitView:" + z);
        this.speedLimitView = z;
        Iterator<SpeedLimitListener> it = this.speedLimitListeners.iterator();
        while (it.hasNext()) {
            it.next().onSpeedLimitViewChanged(z);
        }
    }
}
