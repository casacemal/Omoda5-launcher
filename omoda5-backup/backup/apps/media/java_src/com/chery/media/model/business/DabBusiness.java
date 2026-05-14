package com.chery.media.model.business;

import android.car.Car;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.avn.tools.activity.ActivityUtils;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.btphone.BtCallManager;
import com.chery.caradapter.carapi.interfaces.IAvmEngineListener;
import com.chery.caradapter.carapi.interfaces.IPowerListener;
import com.chery.common.PackageConstants;
import com.chery.media.C0632R;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.util.Utils;
import com.chery.media.view.activity.MediaActivity;
import com.chery.media.view.dialog.Dialog_DABAnnounce;
import com.chery.media.view.dialog.Dialog_DabReserveHint;
import com.chery.media.view.dialog.Dialog_SingleText;
import com.chery.media.view.fragment.DabPlayerFragment;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p004sw.com.dabdrmradio.DabEPGProgramInfo;
import p004sw.com.dabdrmradio.DabEPGTime;
import p004sw.com.dabdrmradio.DabImage;
import p004sw.com.dabdrmradio.IAIDLDabService;
import p004sw.com.dabdrmradio.IDabCallBack;

/* loaded from: classes.dex */
public class DabBusiness {
    private static final String ACTIVITY_ANNOUNCE = "com.chery.media.view.activity.DabAnnounceActivity";
    private static final String ACTIVITY_EPG = "com.chery.media.view.activity.DabEpgActivity";
    private static final String ACTIVITY_LIST = "com.chery.media.view.activity.DabListActivity";
    public static final int ANNOUNCEMENT_TYPE_ALARM = 0;
    public static final int ANNOUNCEMENT_TYPE_AREA_WEATHER_FLASH = 10;
    public static final int ANNOUNCEMENT_TYPE_EVENT_ANNOUNCEMENT = 1;
    public static final int ANNOUNCEMENT_TYPE_FINANCIAL_REPORT = 9;
    public static final int ANNOUNCEMENT_TYPE_NEWS_FLASH = 8;
    public static final int ANNOUNCEMENT_TYPE_PROGRAM_INFORMATION = 5;
    public static final int ANNOUNCEMENT_TYPE_ROAD_TRAFFIC_FLASH = 2;
    public static final int ANNOUNCEMENT_TYPE_SPECIAL_EVENT = 3;
    public static final int ANNOUNCEMENT_TYPE_SPORT_REPORT = 7;
    public static final int ANNOUNCEMENT_TYPE_TRANSPORT_FLASH = 4;
    public static final int ANNOUNCEMENT_TYPE_WARNING_OR_SERVICE = 6;
    private static final String DAB_BER_ACTION = "dab_ber_action";
    private static final String DAB_BER_EXPONENT = "dab_ber_exponent";
    private static final String DAB_BER_SIGNIFICANT = "dab_ber_significant";
    private static final String DAB_BER_VALID_FLAG = "dab_ber_valid_flag";
    private static final String DAB_CURRENT_FREQ = "dab_current_freq";
    private static final String DAB_PLAYING_STATE = "dab_playing_state";
    public static final int LAST_LIST_PAGE_ALL = 0;
    public static final int LAST_LIST_PAGE_ENSEMBLE = 1;
    public static final int LAST_LIST_PAGE_FAVOR = 3;
    public static final int LAST_LIST_PAGE_PTY = 2;
    public static final int LIST_TYPE_ALL = 0;
    public static final int LIST_TYPE_ENSEMBLE = 1;
    public static final int LIST_TYPE_FAVOR = 3;
    public static final int LIST_TYPE_PTY = 2;
    private static final int MAX_FAVOR_SIZE = 20;
    public static final int MSG_HIDE_DIALOG = 1;
    public static final int MSG_SHOW_DIALOG = 0;
    private static final String SAVE_ALL_LIST = "save_all_list";
    private static final String SAVE_ANNOUNCE_SWITCH = "save_announce_switch";
    private static final String SAVE_CUR_DAB_INFO = "save_cur_dab_info";
    private static final String SAVE_CUR_PLAY_LIST_NAME = "save_cur_play_list_name";
    private static final String SAVE_CUR_PLAY_LIST_TYPE = "save_cur_play_list_type";
    private static final String SAVE_DAB_OPTION = "save_dab_option";
    private static final String SAVE_FAVOR_LIST = "save_favor_list";
    private static final String SAVE_FIRST_TIME_USED = "save_first_time_used";
    private static final String SAVE_PROGRAM_INFO_LIST = "save_program_info_list";
    private static final String TAG = CarLog.concatTag("DAB", DabBusiness.class);
    private static DabBusiness instance;
    private AudioFocusRequest audioFocusRequest;
    private AudioManager audioManager;
    private Context context;
    private Dialog_DABAnnounce dialogDabAnnounce;
    private Dialog_DabReserveHint dialogDabReserveHint;
    private IAIDLDabService mService;
    private NotifyCallLister notifyCallLister;
    private Runnable runSaveRestoreInfo;
    private int audioFocus = -1;
    private boolean mbPlayStatusRecover = true;
    List<DabBusinessCallback> mCallbacks = new ArrayList();
    List<DabInfo> dabAllList = new ArrayList();
    List<DabInfo> favorList = new ArrayList();
    List<DabInfo> playList = new ArrayList();
    DabInfo curDabInfo = new DabInfo();
    List<DabProgramInfo> dabProgramInfoList = new ArrayList();
    List<DabProgramInfo> dabReserveList = new ArrayList();
    private DabEPGTime curTime = new DabEPGTime();
    private int curPlayListType = 0;
    private String curPlayListName = "";
    private int lastListPage = 0;
    int announcementSwitch = 1;
    private MutableLiveData<Boolean> playingState = new MutableLiveData<>();
    private MutableLiveData<List<DabInfo>> curPlayList = new MutableLiveData<>();
    private MutableLiveData<DabInfo> curPlayInfo = new MutableLiveData<>();
    private MutableLiveData<String> playLabel = new MutableLiveData<>();
    private MutableLiveData<DabImage> playImage = new MutableLiveData<>();
    private MutableLiveData<List<DabAnnounceInfo>> announceList = new MutableLiveData<>();
    private MutableLiveData<Boolean> scanState = new MutableLiveData<>();
    private MutableLiveData<Boolean> dabOption = new MutableLiveData<>();
    private int curIndex = -1;
    private boolean avmActive = false;
    private boolean firstReceiveTime = false;
    int berValidFlag = 0;
    int berSignificant = 0;
    int berExponent = 0;
    private AudioManager.OnAudioFocusChangeListener audioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.chery.media.model.business.-$$Lambda$DabBusiness$WeMRhfgoA_2DMszcpy87STv4BSI
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(int r1) {
            this.f$0.lambda$new$0$DabBusiness(r1);
        }
    };
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.chery.media.model.business.DabBusiness.20
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            PFLog.m29i(DabBusiness.TAG, "onServiceConnected");
            DabBusiness.this.mService = IAIDLDabService.Stub.asInterface(iBinder);
            if (DabBusiness.this.mService != null) {
                try {
                    DabBusiness.this.notifyCallLister = DabBusiness.this.new NotifyCallLister();
                    DabBusiness.this.mService.registerCallBack(DabBusiness.this.notifyCallLister);
                    DabBusiness.this.mService.nativeCmdDabInitAnnounceBandScanFreq(DabBusiness.this.announcementSwitch, (byte) 0, (byte) 0, DabBusiness.this.curDabInfo.freq, DabBusiness.this.curDabInfo.ensembleId, DabBusiness.this.curDabInfo.serviceId, DabBusiness.this.curDabInfo.componentId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            PFLog.m29i(DabBusiness.TAG, "onServiceDisconnected");
        }
    };
    private Runnable checkReserveRunnable = new Runnable() { // from class: com.chery.media.model.business.DabBusiness.21
        @Override // java.lang.Runnable
        public void run() {
            if (DabBusiness.this.dabReserveList.size() > 0) {
                Iterator<DabProgramInfo> it = DabBusiness.this.dabReserveList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    DabProgramInfo next = it.next();
                    if (DabBusiness.this.isProgramStartInOneMinute(next)) {
                        int r2 = 0;
                        while (true) {
                            if (r2 >= DabBusiness.this.dabProgramInfoList.size()) {
                                break;
                            }
                            if (DabBusiness.this.dabProgramInfoList.get(r2).equals(next)) {
                                DabBusiness.this.dabProgramInfoList.get(r2).hasReserved = false;
                                DabBusiness.this.notifyProgramListChanged();
                                DabBusiness.this.updateReservedList();
                                DabBusiness.this.saveProgramInfoList();
                                break;
                            }
                            r2++;
                        }
                        if (!DabBusiness.this.isDabOnTop() && (!DabBusiness.this.isCurDabInfo(next) || DabBusiness.this.audioFocus != 1)) {
                            DabBusiness.this.showReverseHintDialog(next, true);
                        }
                        if ((DabBusiness.this.isDabOnTop() && (!DabBusiness.this.isCurDabInfo(next) || DabBusiness.this.audioFocus != 1)) || !DabBusiness.this.getPlayingState().getValue().booleanValue()) {
                            DabBusiness.this.showReverseHintDialog(next, false);
                        }
                    }
                }
            }
            DabBusiness.this.handler.postDelayed(DabBusiness.this.checkReserveRunnable, 1000L);
        }
    };
    Comparator comparator = new Comparator<DabProgramInfo>() { // from class: com.chery.media.model.business.DabBusiness.23
        @Override // java.util.Comparator
        public int compare(DabProgramInfo dabProgramInfo, DabProgramInfo dabProgramInfo2) {
            byte ePGTimeHour;
            byte ePGTimeHour2;
            if (dabProgramInfo.startTime.getEPGTimeHour() == dabProgramInfo2.startTime.getEPGTimeHour()) {
                ePGTimeHour = dabProgramInfo.startTime.getEPGTimeMinute();
                ePGTimeHour2 = dabProgramInfo2.startTime.getEPGTimeMinute();
            } else {
                ePGTimeHour = dabProgramInfo.startTime.getEPGTimeHour();
                ePGTimeHour2 = dabProgramInfo2.startTime.getEPGTimeHour();
            }
            return ePGTimeHour - ePGTimeHour2;
        }
    };
    private Handler handler = new Handler() { // from class: com.chery.media.model.business.DabBusiness.24
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int r0 = message.what;
            if (r0 != 0) {
                if (r0 != 1) {
                    return;
                }
                DabBusiness.this.dialogDabAnnounce.dismiss();
            } else {
                DabBusiness.this.dialogDabAnnounce = new Dialog_DABAnnounce(DabBusiness.this.context, DabBusiness.this.getAnnounceName1(message.arg1), true);
                DabBusiness.this.dialogDabAnnounce.show();
            }
        }
    };

    public interface DabBusinessCallback {
        void allListChanged();

        default void curDabInfoChanged(DabInfo dabInfo) {
        }

        void favorInfoChanged();

        default void programInfoListChanged() {
        }
    }

    public static DabBusiness getInstance() {
        if (instance == null) {
            instance = new DabBusiness();
        }
        return instance;
    }

    private DabBusiness() {
        PFLog.m25d(TAG, "DABBusiness()");
    }

    public void init(Context context) {
        PFLog.m25d(TAG, "init");
        this.context = context;
        this.audioManager = (AudioManager) context.getSystemService(Car.AUDIO_SERVICE);
        BtCallManager.init(this.context);
        initAllList();
        initFavorList();
        initCurDabInfo();
        initCurPlayListType();
        initAnnounceSwitch();
        initProgramInfoList();
        initDabOption();
        initCurTime();
        setPlayingState(false);
        setMute(false);
        this.scanState.postValue(false);
        Bundle bundle = new Bundle();
        bundle.putInt("key_car_source_type", 3);
        this.audioFocusRequest = new AudioFocusRequest.Builder(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).addBundle(bundle).build()).setOnAudioFocusChangeListener(this.audioFocusChangeListener).build();
        Intent intent = new Intent();
        intent.setAction("android.intent.action.sw.dabdrmRadio");
        intent.setComponent(new ComponentName("sw.com.dabdrmradio", "sw.com.dabdrmradio.AIDLService"));
        context.bindService(intent, this.serviceConnection, 1);
        recoverSource();
        this.handler.postDelayed(this.checkReserveRunnable, 1000L);
        CarAdapterUse.addAvmEngineListener(new IAvmEngineListener() { // from class: com.chery.media.model.business.DabBusiness.1
            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onAvmVersion(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onCalibrationStatus(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onDataStorage(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onEngineerMode(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onLogSettings(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onSimulateOthers(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onViewParams(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onViewStatus(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onEnterExitState(byte[] bArr) {
                DabBusiness dabBusiness = DabBusiness.this;
                boolean z = false;
                if (bArr != null && bArr.length >= 1 && bArr[0] == 1) {
                    z = true;
                }
                dabBusiness.setAvmActive(z);
            }
        });
        CarAdapterUse.addCarPowerClientListener(new IPowerListener() { // from class: com.chery.media.model.business.DabBusiness.2
            @Override // com.chery.caradapter.carapi.interfaces.IPowerListener
            public void onStateChanged(final int r3) {
                DabBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.DabBusiness.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int r0 = r3;
                        if (r0 == 12 || r0 == 15) {
                            DabBusiness.this.recoverSource();
                        }
                    }
                });
            }
        });
    }

    public void addCallback(DabBusinessCallback dabBusinessCallback) {
        if (this.mCallbacks.contains(dabBusinessCallback)) {
            return;
        }
        this.mCallbacks.add(dabBusinessCallback);
    }

    public void removeCallback(DabBusinessCallback dabBusinessCallback) {
        this.mCallbacks.remove(dabBusinessCallback);
    }

    public void setLastListPage(int r1) {
        this.lastListPage = r1;
    }

    public int getLastListPage() {
        return this.lastListPage;
    }

    public LiveData<Boolean> getPlayingState() {
        return this.playingState;
    }

    public LiveData<List<DabInfo>> getCurPlayList() {
        return this.curPlayList;
    }

    public LiveData<DabInfo> getCurPlayInfo() {
        return this.curPlayInfo;
    }

    public LiveData<String> getPlayLabel() {
        return this.playLabel;
    }

    public LiveData<DabImage> getPlayImage() {
        return this.playImage;
    }

    public LiveData<List<DabAnnounceInfo>> getAnnounceList() {
        updateAnnounceList();
        return this.announceList;
    }

    public LiveData<Boolean> getScanState() {
        return this.scanState;
    }

    public LiveData<Boolean> getDabOption() {
        return this.dabOption;
    }

    public boolean requestAudioFocus() {
        if (this.audioFocus == 1) {
            PFLog.m29i(TAG, "requestAudioFocus, already has focus");
            return true;
        }
        this.audioFocus = this.audioManager.requestAudioFocus(this.audioFocusRequest);
        PFLog.m29i(TAG, "requestAudioFocus:" + this.audioFocus);
        setPlayingState(this.audioFocus == 1);
        return this.audioFocus == 1;
    }

    public void playPause() {
        if (getPlayingState().getValue().booleanValue()) {
            setPlayingState(false);
        } else {
            playChannel(this.curDabInfo);
        }
    }

    public void setPlayingState(boolean z) {
        PFLog.m25d(TAG, "setPlayingState:" + z);
        this.playingState.setValue(Boolean.valueOf(z));
        this.playingState.postValue(Boolean.valueOf(z));
        if (z) {
            setMute(false);
            int volumeGroupIdForUsage = CarAdapterUse.getCarVolumeClient().getVolumeGroupIdForUsage(1);
            if (CarAdapterUse.getCarVolumeClient().getGroupMute(volumeGroupIdForUsage)) {
                CarAdapterUse.getCarVolumeClient().setGroupMute(volumeGroupIdForUsage, false, 0);
            }
        } else if (this.audioManager != null) {
            if (this.audioFocus == 1) {
                setMute(true);
            } else {
                setMute(false);
            }
        }
        sendDABBroadcast();
    }

    public void addFavor(DabInfo dabInfo) {
        PFLog.m29i(TAG, "addFavor: " + dabInfo);
        if (dabInfo == null) {
            PFLog.m29i(TAG, "addFavor dabInfo is null");
            return;
        }
        if (isFavor(dabInfo)) {
            PFLog.m29i(TAG, "addFavor is already favor");
            return;
        }
        if (this.favorList.size() >= 20) {
            new Dialog_SingleText(this.context).showText(this.context.getString(C0632R.string.radio_collection_no_space), PathInterpolatorCompat.MAX_NUM_POINTS);
            return;
        }
        dabInfo.isFavor = true;
        this.favorList.add(dabInfo);
        new Dialog_SingleText(this.context).showText(this.context.getString(C0632R.string.radio_marked_favorite), PathInterpolatorCompat.MAX_NUM_POINTS);
        saveFavorList();
        Iterator<DabInfo> it = this.dabAllList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            DabInfo next = it.next();
            if (next.equals(dabInfo)) {
                next.isFavor = true;
                break;
            }
        }
        if (this.curPlayListType == 3) {
            this.playList.clear();
            this.playList.addAll(this.favorList);
            this.curPlayList.postValue(this.playList);
            updateCurIndex();
        } else {
            Iterator<DabInfo> it2 = this.playList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                DabInfo next2 = it2.next();
                if (next2.equals(dabInfo)) {
                    next2.isFavor = true;
                    this.curPlayList.postValue(this.playList);
                    updateCurIndex();
                    break;
                }
            }
        }
        notifyFavorInfoChanged();
    }

    public void cancelFavor(DabInfo dabInfo) {
        PFLog.m29i(TAG, "cancelFavor: " + dabInfo);
        Iterator<DabInfo> it = this.favorList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            DabInfo next = it.next();
            if (next.equals(dabInfo)) {
                this.favorList.remove(next);
                new Dialog_SingleText(this.context).showText(this.context.getString(C0632R.string.radio_collection_canceled), PathInterpolatorCompat.MAX_NUM_POINTS);
                saveFavorList();
                break;
            }
        }
        Iterator<DabInfo> it2 = this.dabAllList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DabInfo next2 = it2.next();
            if (next2.equals(dabInfo)) {
                next2.isFavor = false;
                break;
            }
        }
        if (this.curPlayListType == 3) {
            this.playList.clear();
            this.playList.addAll(this.favorList);
            this.curPlayList.postValue(this.playList);
            updateCurIndex();
        } else {
            Iterator<DabInfo> it3 = this.playList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                DabInfo next3 = it3.next();
                if (next3.equals(dabInfo)) {
                    next3.isFavor = false;
                    this.curPlayList.postValue(this.playList);
                    updateCurIndex();
                    break;
                }
            }
        }
        notifyFavorInfoChanged();
    }

    public boolean isFavor(DabInfo dabInfo) {
        Iterator<DabInfo> it = this.favorList.iterator();
        while (it.hasNext()) {
            if (it.next().equals(dabInfo)) {
                return true;
            }
        }
        return false;
    }

    public List<DabInfo> getFavorList() {
        return new ArrayList(this.favorList);
    }

    public List<DabInfo> getALLList() {
        return new ArrayList(this.dabAllList);
    }

    public void setCurPlayType(int r4, String str) {
        PFLog.m29i(TAG, "setCurPlayType, listType: " + r4 + ", name: " + str);
        this.curPlayListType = r4;
        this.curPlayListName = str;
        if (r4 == 0) {
            this.playList.clear();
            this.playList.addAll(this.dabAllList);
        } else if (r4 == 1) {
            this.playList.clear();
            for (DabInfo dabInfo : this.dabAllList) {
                if (dabInfo.ensembleName.equals(str)) {
                    this.playList.add(dabInfo);
                }
            }
        } else if (r4 == 2) {
            this.playList.clear();
            for (DabInfo dabInfo2 : this.dabAllList) {
                if (getPtyName(dabInfo2.servicePty).equals(str)) {
                    this.playList.add(dabInfo2);
                }
            }
        } else if (r4 == 3) {
            this.playList.clear();
            this.playList.addAll(this.favorList);
        }
        this.curPlayList.postValue(this.playList);
        updateCurIndex();
        saveCurPlayListType();
    }

    public void playChannel(DabInfo dabInfo) {
        PFLog.m29i(TAG, "playChannel: " + dabInfo);
        setMute(false);
        if (dabInfo == null || dabInfo.freq == 0) {
            return;
        }
        if (this.audioFocus != 1) {
            requestAudioFocus();
        }
        IAIDLDabService iAIDLDabService = this.mService;
        if (iAIDLDabService != null) {
            try {
                iAIDLDabService.nativeCmdDabServiceComponentSelectPlay(dabInfo.freq, dabInfo.ensembleId, dabInfo.serviceId, dabInfo.componentId);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        for (DabInfo dabInfo2 : this.dabAllList) {
            if (dabInfo2.equals(dabInfo)) {
                dabInfo2.isPlaying = true;
            } else {
                dabInfo2.isPlaying = false;
            }
        }
        this.curDabInfo = dabInfo;
        saveCurDabInfo();
        this.curPlayInfo.postValue(this.curDabInfo);
        updateCurIndex();
        notifyCurDabInfoChanged();
        setPlayingState(true);
    }

    public void startScan() {
        PFLog.m29i(TAG, "startScan");
        IAIDLDabService iAIDLDabService = this.mService;
        if (iAIDLDabService != null) {
            try {
                iAIDLDabService.nativeCmdDabScanStart((byte) 1);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void stopScan() {
        PFLog.m29i(TAG, "stopScan");
        IAIDLDabService iAIDLDabService = this.mService;
        if (iAIDLDabService != null) {
            try {
                iAIDLDabService.nativeCmdDabScanStart((byte) 0);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0026. Please report as an issue. */
    public void setAnnouncementTypeSwitch(int r4, boolean z) {
        int r42;
        int r43;
        PFLog.m25d(TAG, "setAnnouncementTypeSwitch, type: " + r4 + ", on: " + z);
        int r0 = this.announcementSwitch;
        int r1 = r0 & 255;
        int r02 = (r0 >> 8) & 255;
        switch (r4) {
            case 0:
                r42 = z ? r1 | 1 : r1 & 254;
                r1 = r42;
                break;
            case 1:
                r42 = z ? r1 | 64 : r1 & 191;
                r1 = r42;
                break;
            case 2:
                r42 = z ? r1 | 2 : r1 & 253;
                r1 = r42;
                break;
            case 3:
                r42 = z ? r1 | 128 : r1 & 127;
                r1 = r42;
                break;
            case 4:
                r42 = z ? r1 | 4 : r1 & 251;
                r1 = r42;
                break;
            case 5:
                r43 = z ? r02 | 1 : r02 & 254;
                r02 = r43;
                break;
            case 6:
                r42 = z ? r1 | 8 : r1 & 247;
                r1 = r42;
                break;
            case 7:
                r43 = z ? r02 | 2 : r02 & 253;
                r02 = r43;
                break;
            case 8:
                r42 = z ? r1 | 16 : r1 & 239;
                r1 = r42;
                break;
            case 9:
                r43 = z ? r02 | 4 : r02 & 251;
                r02 = r43;
                break;
            case 10:
                r42 = z ? r1 | 32 : r1 & 223;
                r1 = r42;
                break;
        }
        int r44 = (r02 << 8) + r1;
        this.announcementSwitch = r44;
        saveAnnounceSwitch();
        PFLog.m25d(TAG, "setAnnouncementTypeSwitch, switchValue: " + r44);
        updateAnnounceList();
        IAIDLDabService iAIDLDabService = this.mService;
        if (iAIDLDabService != null) {
            try {
                iAIDLDabService.nativeCmdDabAnnouncementSwitch(r44);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void playNext() {
        PFLog.m25d(TAG, "playNext");
        if (this.playList.size() > 0) {
            int r0 = this.curIndex;
            if (r0 == -1) {
                playChannel(this.playList.get(0));
            } else if (r0 < this.playList.size() - 1) {
                playChannel(this.playList.get(this.curIndex + 1));
            } else {
                playChannel(this.playList.get(0));
            }
        }
    }

    public void playPrevious() {
        PFLog.m25d(TAG, "playPrevious");
        if (this.playList.size() > 0) {
            int r0 = this.curIndex;
            if (r0 == -1) {
                playChannel(this.playList.get(0));
            } else if (r0 > 0) {
                playChannel(this.playList.get(r0 - 1));
            } else {
                playChannel(this.playList.get(r0.size() - 1));
            }
        }
    }

    public List<String> getAllEnsembleName() {
        ArrayList arrayList = new ArrayList();
        for (DabInfo dabInfo : this.dabAllList) {
            if (!arrayList.contains(dabInfo.ensembleName)) {
                arrayList.add(dabInfo.ensembleName);
            }
        }
        return arrayList;
    }

    public List<DabInfo> getDabListByEnsembleName(String str) {
        ArrayList arrayList = new ArrayList();
        for (DabInfo dabInfo : this.dabAllList) {
            if (dabInfo.ensembleName.equals(str)) {
                arrayList.add(dabInfo);
            }
        }
        return arrayList;
    }

    public List<Integer> getAllPtyId() {
        ArrayList arrayList = new ArrayList();
        for (DabInfo dabInfo : this.dabAllList) {
            if (!arrayList.contains(Integer.valueOf(dabInfo.servicePty))) {
                arrayList.add(Integer.valueOf(dabInfo.servicePty));
            }
        }
        return arrayList;
    }

    public String getPtyName(int r1) {
        switch (r1) {
            case 0:
                return this.context.getResources().getString(C0632R.string.dab_pty_no);
            case 1:
                return this.context.getResources().getString(C0632R.string.dab_pty_news);
            case 2:
                return this.context.getResources().getString(C0632R.string.dab_pty_current_affairs);
            case 3:
                return this.context.getResources().getString(C0632R.string.dab_pty_information);
            case 4:
                return this.context.getResources().getString(C0632R.string.dab_pty_sport);
            case 5:
                return this.context.getResources().getString(C0632R.string.dab_pty_education);
            case 6:
                return this.context.getResources().getString(C0632R.string.dab_pty_drama);
            case 7:
                return this.context.getResources().getString(C0632R.string.dab_pty_culture);
            case 8:
                return this.context.getResources().getString(C0632R.string.dab_pty_science);
            case 9:
                return this.context.getResources().getString(C0632R.string.dab_pty_varied);
            case 10:
                return this.context.getResources().getString(C0632R.string.dab_pty_pop_music);
            case 11:
                return this.context.getResources().getString(C0632R.string.dab_pty_rock_music);
            case 12:
                return this.context.getResources().getString(C0632R.string.dab_pty_easy_listening);
            case 13:
                return this.context.getResources().getString(C0632R.string.dab_pty_light_classical);
            case 14:
                return this.context.getResources().getString(C0632R.string.dab_pty_serious_classical);
            case 15:
                return this.context.getResources().getString(C0632R.string.dab_pty_other_music);
            case 16:
                return this.context.getResources().getString(C0632R.string.dab_pty_weather);
            case 17:
                return this.context.getResources().getString(C0632R.string.dab_pty_finance);
            case 18:
                return this.context.getResources().getString(C0632R.string.dab_pty_children_programs);
            case 19:
                return this.context.getResources().getString(C0632R.string.dab_pty_social_affairs);
            case 20:
                return this.context.getResources().getString(C0632R.string.dab_pty_religion);
            case 21:
                return this.context.getResources().getString(C0632R.string.dab_pty_phone_in);
            case 22:
                return this.context.getResources().getString(C0632R.string.dab_pty_travel);
            case 23:
                return this.context.getResources().getString(C0632R.string.dab_pty_leisure);
            case 24:
                return this.context.getResources().getString(C0632R.string.dab_pty_jazz_music);
            case 25:
                return this.context.getResources().getString(C0632R.string.dab_pty_country_music);
            case 26:
                return this.context.getResources().getString(C0632R.string.dab_pty_national_music);
            case 27:
                return this.context.getResources().getString(C0632R.string.dab_pty_oldies_music);
            case 28:
                return this.context.getResources().getString(C0632R.string.dab_pty_folk_music);
            case 29:
                return this.context.getResources().getString(C0632R.string.dab_pty_documentary);
            default:
                return "";
        }
    }

    public List<DabInfo> getDabListByPty(int r4) {
        ArrayList arrayList = new ArrayList();
        for (DabInfo dabInfo : this.dabAllList) {
            if (dabInfo.servicePty == r4) {
                arrayList.add(dabInfo);
            }
        }
        return arrayList;
    }

    public boolean isFirstTimeUsed() {
        byte[] fromInternalFile = Utils.readFromInternalFile(this.context, SAVE_FIRST_TIME_USED);
        if (fromInternalFile == null || fromInternalFile.length <= 0) {
            return true;
        }
        try {
            return ((Boolean) new Gson().fromJson(new String(fromInternalFile), new TypeToken<Boolean>() { // from class: com.chery.media.model.business.DabBusiness.3
            }.getType())).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void setFirstTimeUsedFalse() {
        final String json = new Gson().toJson((Object) false);
        Runnable runnable = new Runnable() { // from class: com.chery.media.model.business.DabBusiness.4
            @Override // java.lang.Runnable
            public void run() {
                MediaBusiness.getInstance().getIoThread().addRunnable(new Runnable() { // from class: com.chery.media.model.business.DabBusiness.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Utils.writeToInternalFile(DabBusiness.this.context, DabBusiness.SAVE_FIRST_TIME_USED, json.getBytes(), false);
                    }
                });
            }
        };
        this.runSaveRestoreInfo = runnable;
        this.handler.postDelayed(runnable, 500L);
    }

    public List<DabProgramInfo> getDabProgramInfoList(int r6, int r7, int r8, int r9, int r10, int r11) {
        ArrayList arrayList = new ArrayList();
        for (DabProgramInfo dabProgramInfo : this.dabProgramInfoList) {
            if (dabProgramInfo.ensembleId == r6 && dabProgramInfo.serviceId == (65535 & r7) && dabProgramInfo.scIds == (r8 & 15) && dabProgramInfo.startTime.getEPGTimeYear() == r9 && dabProgramInfo.startTime.getEPGTimeMonth() == r10 && dabProgramInfo.startTime.getEPGTimeDay() == r11) {
                arrayList.add(dabProgramInfo);
            }
        }
        Collections.sort(arrayList, this.comparator);
        return arrayList;
    }

    public void addReserve(DabProgramInfo dabProgramInfo) {
        PFLog.m25d(TAG, "addReserve: " + dabProgramInfo.toString());
        for (int r0 = 0; r0 < this.dabProgramInfoList.size(); r0++) {
            if (this.dabProgramInfoList.get(r0).equals(dabProgramInfo)) {
                this.dabProgramInfoList.get(r0).hasReserved = true;
                saveProgramInfoList();
                notifyProgramListChanged();
                updateReservedList();
                new Dialog_SingleText(this.context).showText(this.context.getString(C0632R.string.dab_add_reserve), PathInterpolatorCompat.MAX_NUM_POINTS);
                return;
            }
        }
    }

    public void removeReserve(DabProgramInfo dabProgramInfo) {
        PFLog.m25d(TAG, "removeReserve: " + dabProgramInfo.toString());
        for (int r1 = 0; r1 < this.dabProgramInfoList.size(); r1++) {
            if (this.dabProgramInfoList.get(r1).equals(dabProgramInfo)) {
                this.dabProgramInfoList.get(r1).hasReserved = false;
                notifyProgramListChanged();
                updateReservedList();
                saveProgramInfoList();
                new Dialog_SingleText(this.context).showText(this.context.getString(C0632R.string.dab_cancel_reserve), PathInterpolatorCompat.MAX_NUM_POINTS);
                return;
            }
        }
    }

    public boolean isReservedExpired(DabProgramInfo dabProgramInfo) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(dabProgramInfo.startTime.getEPGTimeYear(), dabProgramInfo.startTime.getEPGTimeMonth() - 1, dabProgramInfo.startTime.getEPGTimeDay(), dabProgramInfo.startTime.getEPGTimeHour(), dabProgramInfo.startTime.getEPGTimeMinute(), 0);
        return getCurTimeSeconds() >= calendar.getTimeInMillis() / 1000;
    }

    public boolean isCurPlayingProgram(DabProgramInfo dabProgramInfo) {
        Calendar calendar = Calendar.getInstance();
        long curTimeSeconds = getCurTimeSeconds();
        calendar.set(dabProgramInfo.startTime.getEPGTimeYear(), dabProgramInfo.startTime.getEPGTimeMonth() - 1, dabProgramInfo.startTime.getEPGTimeDay(), dabProgramInfo.startTime.getEPGTimeHour(), dabProgramInfo.startTime.getEPGTimeMinute(), 0);
        long timeInMillis = calendar.getTimeInMillis() / 1000;
        return curTimeSeconds >= timeInMillis && curTimeSeconds < timeInMillis + ((long) (dabProgramInfo.duration * 60));
    }

    public boolean isProgramStartInOneMinute(DabProgramInfo dabProgramInfo) {
        Calendar calendar = Calendar.getInstance();
        long curTimeSeconds = getCurTimeSeconds();
        calendar.set(dabProgramInfo.startTime.getEPGTimeYear(), dabProgramInfo.startTime.getEPGTimeMonth() - 1, dabProgramInfo.startTime.getEPGTimeDay(), dabProgramInfo.startTime.getEPGTimeHour(), dabProgramInfo.startTime.getEPGTimeMinute(), 0);
        long timeInMillis = calendar.getTimeInMillis() / 1000;
        if (curTimeSeconds != timeInMillis && curTimeSeconds != timeInMillis - 60) {
            return false;
        }
        PFLog.m25d(TAG, "isProgramStartInOneMinute  true");
        return true;
    }

    public boolean isProgramInvalid(DabProgramInfo dabProgramInfo) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(dabProgramInfo.startTime.getEPGTimeYear(), dabProgramInfo.startTime.getEPGTimeMonth() - 1, dabProgramInfo.startTime.getEPGTimeDay(), dabProgramInfo.startTime.getEPGTimeHour(), dabProgramInfo.startTime.getEPGTimeMinute(), 0);
        return getCurTimeSeconds() >= (calendar.getTimeInMillis() / 1000) + 86400;
    }

    public void setDabOption(boolean z) {
        IAIDLDabService iAIDLDabService = this.mService;
        if (iAIDLDabService != null) {
            try {
                iAIDLDabService.nativeCmdDabLinkingOption(z ? (byte) 1 : (byte) 0);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void playDabProgram(DabProgramInfo dabProgramInfo) {
        PFLog.m25d(TAG, "playDabProgram: " + dabProgramInfo.toString());
        for (DabInfo dabInfo : this.dabAllList) {
            if (dabProgramInfo.ensembleId == dabInfo.ensembleId && dabProgramInfo.serviceId == (dabInfo.serviceId & 65535) && dabProgramInfo.scIds == (dabInfo.scIds & 15)) {
                playChannel(dabInfo);
                return;
            }
        }
    }

    private boolean getAnnounceSwitch(int r3) {
        switch (r3) {
            case 0:
                return (this.announcementSwitch & 1) == 1;
            case 1:
                return ((this.announcementSwitch >> 6) & 1) == 1;
            case 2:
                return ((this.announcementSwitch >> 1) & 1) == 1;
            case 3:
                return ((this.announcementSwitch >> 7) & 1) == 1;
            case 4:
                return ((this.announcementSwitch >> 2) & 1) == 1;
            case 5:
                return ((this.announcementSwitch >> 8) & 1) == 1;
            case 6:
                return ((this.announcementSwitch >> 3) & 1) == 1;
            case 7:
                return ((this.announcementSwitch >> 9) & 1) == 1;
            case 8:
                return ((this.announcementSwitch >> 4) & 1) == 1;
            case 9:
                return ((this.announcementSwitch >> 10) & 1) == 1;
            case 10:
                return ((this.announcementSwitch >> 5) & 1) == 1;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseServiceInfo(String str) throws NumberFormatException {
        try {
            DabInfo dabInfo = new DabInfo();
            JSONObject jSONObject = new JSONObject(str);
            int r6 = Integer.parseInt(jSONObject.getString("state"));
            PFLog.m29i(TAG, "parseServiceInfo, state " + r6);
            if (r6 == 0) {
                return;
            }
            dabInfo.freq = Integer.parseInt(jSONObject.getString("freq"));
            dabInfo.ensembleId = Integer.parseInt(jSONObject.getString("ensemble_id"));
            dabInfo.ensembleName = jSONObject.getString("ensemble_name");
            dabInfo.serviceId = Integer.parseInt(jSONObject.getString("service_id"));
            dabInfo.serviceName = jSONObject.getString("service_name");
            dabInfo.servicePty = Integer.parseInt(jSONObject.getString("service_pty"));
            dabInfo.componentId = Integer.parseInt(jSONObject.getString("component_id"));
            dabInfo.componentName = jSONObject.getString("component_name");
            dabInfo.componentType = Integer.parseInt(jSONObject.getString("component_type"));
            dabInfo.scIds = Integer.parseInt(jSONObject.getString("sc_ids"));
            PFLog.m29i(TAG, "parseServiceInfo, info: " + dabInfo.toString());
            this.curDabInfo = dabInfo;
            saveCurDabInfo();
            this.curPlayInfo.postValue(dabInfo);
            updateCurIndex();
            notifyCurDabInfoChanged();
        } catch (JSONException e) {
            PFLog.m29i(TAG, "JSONException: " + e);
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseServiceList(String str) throws NumberFormatException {
        try {
            DabInfo dabInfo = new DabInfo();
            JSONObject jSONObject = new JSONObject(str);
            int r7 = Integer.parseInt(jSONObject.getString("total_num"));
            PFLog.m29i(TAG, "parseServiceList, totalNum " + r7);
            if (r7 == 0) {
                this.dabAllList.clear();
                saveAllList();
                setCurPlayType(this.curPlayListType, this.curPlayListName);
                notifyAllListChanged();
                return;
            }
            int r2 = Integer.parseInt(jSONObject.getString("cur_num"));
            boolean z = true;
            if (r2 == 1) {
                this.dabAllList.clear();
            }
            dabInfo.freq = Integer.parseInt(jSONObject.getString("freq"));
            dabInfo.ensembleId = Integer.parseInt(jSONObject.getString("ensemble_id"));
            dabInfo.ensembleName = jSONObject.getString("ensemble_name");
            dabInfo.serviceId = Integer.parseInt(jSONObject.getString("service_id"));
            dabInfo.serviceName = jSONObject.getString("service_name");
            dabInfo.servicePty = Integer.parseInt(jSONObject.getString("service_pty"));
            dabInfo.componentId = Integer.parseInt(jSONObject.getString("component_id"));
            dabInfo.componentName = jSONObject.getString("component_name");
            dabInfo.componentType = Integer.parseInt(jSONObject.getString("component_type"));
            dabInfo.scIds = Integer.parseInt(jSONObject.getString("sc_ids"));
            PFLog.m29i(TAG, "parseServiceList, info: " + dabInfo.toString());
            dabInfo.isFavor = isFavor(dabInfo);
            Iterator<DabInfo> it = this.dabAllList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (it.next().equals(dabInfo)) {
                    break;
                }
            }
            if (!z) {
                this.dabAllList.add(dabInfo);
            }
            if (r2 == r7) {
                saveAllList();
                setCurPlayType(this.curPlayListType, this.curPlayListName);
                notifyAllListChanged();
            }
        } catch (JSONException e) {
            PFLog.m29i(TAG, "JSONException: " + e);
            e.printStackTrace();
        }
    }

    private void saveAllList() {
        final String json = new Gson().toJson(this.dabAllList);
        Runnable runnable = new Runnable() { // from class: com.chery.media.model.business.DabBusiness.5
            @Override // java.lang.Runnable
            public void run() {
                MediaBusiness.getInstance().getIoThread().addRunnable(new Runnable() { // from class: com.chery.media.model.business.DabBusiness.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Utils.writeToInternalFile(DabBusiness.this.context, DabBusiness.SAVE_ALL_LIST, json.getBytes(), false);
                    }
                });
            }
        };
        this.runSaveRestoreInfo = runnable;
        this.handler.postDelayed(runnable, 500L);
    }

    private void initAllList() {
        byte[] fromInternalFile = Utils.readFromInternalFile(this.context, SAVE_ALL_LIST);
        if (fromInternalFile == null || fromInternalFile.length <= 0) {
            return;
        }
        try {
            List list = (List) new Gson().fromJson(new String(fromInternalFile), new TypeToken<List<DabInfo>>() { // from class: com.chery.media.model.business.DabBusiness.6
            }.getType());
            if (list != null) {
                this.dabAllList.clear();
                this.dabAllList.addAll(list);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void initFavorList() {
        byte[] fromInternalFile = Utils.readFromInternalFile(this.context, SAVE_FAVOR_LIST);
        if (fromInternalFile == null || fromInternalFile.length <= 0) {
            return;
        }
        try {
            List list = (List) new Gson().fromJson(new String(fromInternalFile), new TypeToken<List<DabInfo>>() { // from class: com.chery.media.model.business.DabBusiness.7
            }.getType());
            if (list != null) {
                this.favorList.clear();
                this.favorList.addAll(list);
                for (DabInfo dabInfo : this.dabAllList) {
                    dabInfo.isFavor = isFavor(dabInfo);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void saveFavorList() {
        final String json = new Gson().toJson(this.favorList);
        Runnable runnable = new Runnable() { // from class: com.chery.media.model.business.DabBusiness.8
            @Override // java.lang.Runnable
            public void run() {
                MediaBusiness.getInstance().getIoThread().addRunnable(new Runnable() { // from class: com.chery.media.model.business.DabBusiness.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Utils.writeToInternalFile(DabBusiness.this.context, DabBusiness.SAVE_FAVOR_LIST, json.getBytes(), false);
                    }
                });
            }
        };
        this.runSaveRestoreInfo = runnable;
        this.handler.postDelayed(runnable, 500L);
    }

    private void saveCurDabInfo() {
        final String json = new Gson().toJson(this.curDabInfo);
        Runnable runnable = new Runnable() { // from class: com.chery.media.model.business.DabBusiness.9
            @Override // java.lang.Runnable
            public void run() {
                MediaBusiness.getInstance().getIoThread().addRunnable(new Runnable() { // from class: com.chery.media.model.business.DabBusiness.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Utils.writeToInternalFile(DabBusiness.this.context, DabBusiness.SAVE_CUR_DAB_INFO, json.getBytes(), false);
                    }
                });
            }
        };
        this.runSaveRestoreInfo = runnable;
        this.handler.postDelayed(runnable, 500L);
    }

    private void initCurDabInfo() {
        byte[] fromInternalFile = Utils.readFromInternalFile(this.context, SAVE_CUR_DAB_INFO);
        if (fromInternalFile == null || fromInternalFile.length <= 0) {
            return;
        }
        try {
            DabInfo dabInfo = (DabInfo) new Gson().fromJson(new String(fromInternalFile), new TypeToken<DabInfo>() { // from class: com.chery.media.model.business.DabBusiness.10
            }.getType());
            if (dabInfo != null) {
                this.curDabInfo = dabInfo;
                dabInfo.isFavor = isFavor(dabInfo);
                this.curPlayInfo.postValue(this.curDabInfo);
                updateCurIndex();
                notifyCurDabInfoChanged();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void saveCurPlayListType() {
        final String json = new Gson().toJson(Integer.valueOf(this.curPlayListType));
        final String json2 = new Gson().toJson(this.curPlayListName);
        Runnable runnable = new Runnable() { // from class: com.chery.media.model.business.DabBusiness.11
            @Override // java.lang.Runnable
            public void run() {
                MediaBusiness.getInstance().getIoThread().addRunnable(new Runnable() { // from class: com.chery.media.model.business.DabBusiness.11.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Utils.writeToInternalFile(DabBusiness.this.context, DabBusiness.SAVE_CUR_PLAY_LIST_TYPE, json.getBytes(), false);
                        Utils.writeToInternalFile(DabBusiness.this.context, DabBusiness.SAVE_CUR_PLAY_LIST_NAME, json2.getBytes(), false);
                    }
                });
            }
        };
        this.runSaveRestoreInfo = runnable;
        this.handler.postDelayed(runnable, 500L);
    }

    private void initCurPlayListType() {
        byte[] fromInternalFile = Utils.readFromInternalFile(this.context, SAVE_CUR_PLAY_LIST_TYPE);
        byte[] fromInternalFile2 = Utils.readFromInternalFile(this.context, SAVE_CUR_PLAY_LIST_NAME);
        if (fromInternalFile == null || fromInternalFile.length <= 0 || fromInternalFile2 == null || fromInternalFile2.length <= 0) {
            setCurPlayType(0, "");
            return;
        }
        String str = new String(fromInternalFile);
        String str2 = new String(fromInternalFile2);
        try {
            this.curPlayListType = ((Integer) new Gson().fromJson(str, new TypeToken<Integer>() { // from class: com.chery.media.model.business.DabBusiness.12
            }.getType())).intValue();
            String str3 = (String) new Gson().fromJson(str2, new TypeToken<String>() { // from class: com.chery.media.model.business.DabBusiness.13
            }.getType());
            this.curPlayListName = str3;
            setCurPlayType(this.curPlayListType, str3);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveAnnounceSwitch() {
        final String json = new Gson().toJson(Integer.valueOf(this.announcementSwitch));
        Runnable runnable = new Runnable() { // from class: com.chery.media.model.business.DabBusiness.14
            @Override // java.lang.Runnable
            public void run() {
                MediaBusiness.getInstance().getIoThread().addRunnable(new Runnable() { // from class: com.chery.media.model.business.DabBusiness.14.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Utils.writeToInternalFile(DabBusiness.this.context, DabBusiness.SAVE_ANNOUNCE_SWITCH, json.getBytes(), false);
                    }
                });
            }
        };
        this.runSaveRestoreInfo = runnable;
        this.handler.postDelayed(runnable, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveProgramInfoList() {
        final String json = new Gson().toJson(this.dabProgramInfoList);
        Runnable runnable = new Runnable() { // from class: com.chery.media.model.business.DabBusiness.15
            @Override // java.lang.Runnable
            public void run() {
                MediaBusiness.getInstance().getIoThread().addRunnable(new Runnable() { // from class: com.chery.media.model.business.DabBusiness.15.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Utils.writeToInternalFile(DabBusiness.this.context, DabBusiness.SAVE_PROGRAM_INFO_LIST, json.getBytes(), false);
                    }
                });
            }
        };
        this.runSaveRestoreInfo = runnable;
        this.handler.postDelayed(runnable, 500L);
    }

    private void initProgramInfoList() {
        byte[] fromInternalFile = Utils.readFromInternalFile(this.context, SAVE_PROGRAM_INFO_LIST);
        if (fromInternalFile == null || fromInternalFile.length <= 0) {
            return;
        }
        try {
            List list = (List) new Gson().fromJson(new String(fromInternalFile), new TypeToken<List<DabProgramInfo>>() { // from class: com.chery.media.model.business.DabBusiness.16
            }.getType());
            if (list != null) {
                this.dabProgramInfoList.clear();
                this.dabProgramInfoList.addAll(list);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        updateReservedList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveDabOption(boolean z) {
        final String json = new Gson().toJson(Boolean.valueOf(z));
        Runnable runnable = new Runnable() { // from class: com.chery.media.model.business.DabBusiness.17
            @Override // java.lang.Runnable
            public void run() {
                MediaBusiness.getInstance().getIoThread().addRunnable(new Runnable() { // from class: com.chery.media.model.business.DabBusiness.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Utils.writeToInternalFile(DabBusiness.this.context, DabBusiness.SAVE_DAB_OPTION, json.getBytes(), false);
                    }
                });
            }
        };
        this.runSaveRestoreInfo = runnable;
        this.handler.postDelayed(runnable, 500L);
    }

    private void initDabOption() {
        byte[] fromInternalFile = Utils.readFromInternalFile(this.context, SAVE_DAB_OPTION);
        boolean zBooleanValue = false;
        if (fromInternalFile == null || fromInternalFile.length <= 0) {
            this.dabOption.postValue(false);
            return;
        }
        try {
            zBooleanValue = ((Boolean) new Gson().fromJson(new String(fromInternalFile), new TypeToken<Boolean>() { // from class: com.chery.media.model.business.DabBusiness.18
            }.getType())).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.dabOption.postValue(Boolean.valueOf(zBooleanValue));
    }

    private void initAnnounceSwitch() {
        byte[] fromInternalFile = Utils.readFromInternalFile(this.context, SAVE_ANNOUNCE_SWITCH);
        if (fromInternalFile == null || fromInternalFile.length <= 0) {
            this.announcementSwitch = 1;
            updateAnnounceList();
            return;
        }
        try {
            this.announcementSwitch = ((Integer) new Gson().fromJson(new String(fromInternalFile), new TypeToken<Integer>() { // from class: com.chery.media.model.business.DabBusiness.19
            }.getType())).intValue();
        } catch (Exception e) {
            e.printStackTrace();
        }
        updateAnnounceList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAnnounceList() {
        ArrayList arrayList = new ArrayList();
        for (int r1 = 0; r1 <= 10; r1++) {
            DabAnnounceInfo dabAnnounceInfo = new DabAnnounceInfo();
            dabAnnounceInfo.announceName = getAnnounceName(r1);
            dabAnnounceInfo.announceSwitchOn = getAnnounceSwitch(r1);
            arrayList.add(dabAnnounceInfo);
        }
        this.announceList.postValue(arrayList);
    }

    private String getAnnounceName(int r1) {
        switch (r1) {
            case 0:
                return this.context.getResources().getString(C0632R.string.dab_announce_alarm);
            case 1:
                return this.context.getResources().getString(C0632R.string.dab_announce_event_announcement);
            case 2:
                return this.context.getResources().getString(C0632R.string.dab_announce_road_traffic_flash);
            case 3:
                return this.context.getResources().getString(C0632R.string.dab_announce_special_event);
            case 4:
                return this.context.getResources().getString(C0632R.string.dab_announce_transport_flash);
            case 5:
                return this.context.getResources().getString(C0632R.string.dab_announce_program_information);
            case 6:
                return this.context.getResources().getString(C0632R.string.dab_announce_warning_service);
            case 7:
                return this.context.getResources().getString(C0632R.string.dab_announce_sport_report);
            case 8:
                return this.context.getResources().getString(C0632R.string.dab_announce_new_flash);
            case 9:
                return this.context.getResources().getString(C0632R.string.dab_announce_financial_report);
            case 10:
                return this.context.getResources().getString(C0632R.string.dab_announce_area_weather_flash);
            default:
                return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getAnnounceName1(int r1) {
        switch (r1) {
            case 1:
                return this.context.getResources().getString(C0632R.string.dab_announce_alarm);
            case 2:
                return this.context.getResources().getString(C0632R.string.dab_announce_road_traffic_flash);
            case 3:
                return this.context.getResources().getString(C0632R.string.dab_announce_transport_flash);
            case 4:
                return this.context.getResources().getString(C0632R.string.dab_announce_warning_service);
            case 5:
                return this.context.getResources().getString(C0632R.string.dab_announce_new_flash);
            case 6:
                return this.context.getResources().getString(C0632R.string.dab_announce_area_weather_flash);
            case 7:
                return this.context.getResources().getString(C0632R.string.dab_announce_event_announcement);
            case 8:
                return this.context.getResources().getString(C0632R.string.dab_announce_special_event);
            case 9:
                return this.context.getResources().getString(C0632R.string.dab_announce_program_information);
            case 10:
                return this.context.getResources().getString(C0632R.string.dab_announce_sport_report);
            case 11:
                return this.context.getResources().getString(C0632R.string.dab_announce_financial_report);
            default:
                return "";
        }
    }

    public /* synthetic */ void lambda$new$0$DabBusiness(int r6) {
        PFLog.m25d(TAG, String.format("onAudioFocusChange %d", Integer.valueOf(r6)));
        if (r6 == -1) {
            this.audioFocus = -1;
            setPlayingState(false);
            this.mbPlayStatusRecover = true;
        } else {
            if (r6 == 1 || r6 == 2 || r6 == 3 || r6 == 4) {
                this.audioFocus = 1;
                if (!this.mbPlayStatusRecover) {
                    this.mbPlayStatusRecover = true;
                    setPlayingState(false);
                    return;
                } else {
                    setPlayingState(true);
                    return;
                }
            }
            this.audioFocus = -2;
            this.mbPlayStatusRecover = getPlayingState().getValue().booleanValue();
            setPlayingState(false);
        }
    }

    class NotifyCallLister extends IDabCallBack.Stub {
        NotifyCallLister() {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabPlayState(int r2, int r3) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabPlayState, dab_state: " + r2);
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabCurrentServiceInfor(String str) throws NumberFormatException, RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabCurrentServiceInfor, serviceinfor: " + str);
            DabBusiness.this.parseServiceInfo(str);
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabCurrentServiceSignallevel(int r3) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabCurrentServiceSignallevel, signalleve: " + r3);
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabServiceList(String str) throws NumberFormatException, RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabServiceList, savelist: " + str);
            DabBusiness.this.parseServiceList(str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabScanState(int r4, int r5) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabScanState, scan_state: " + r4 + ",scan_percent: " + r5);
            boolean z = r4 == 1;
            if (DabBusiness.this.scanState.getValue() != 0 && ((Boolean) DabBusiness.this.scanState.getValue()).booleanValue() != z) {
                DabBusiness.this.scanState.postValue(Boolean.valueOf(z));
            }
            if (z || DabBusiness.this.audioFocus != 1) {
                return;
            }
            DabBusiness.this.setPlayingState(true);
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabCurrentDynamicLabel(String str) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabCurrentDynamicLabel, dynamic_label: " + str);
            DabBusiness.this.playLabel.postValue(str);
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabBandSelect(byte b) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabBandSelect, select: " + ((int) b));
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabAnnouncementSwitch(int r4) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabAnnouncementSwitch, Switch: " + r4);
            DabBusiness.this.announcementSwitch = r4;
            DabBusiness.this.saveAnnounceSwitch();
            DabBusiness.this.updateAnnounceList();
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabImage(DabImage dabImage) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabImage, image: " + dabImage.toString());
            DabBusiness.this.playImage.postValue(dabImage);
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabAnnouncementState(byte b, byte b2) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabAnnouncementState, byOnOff: " + ((int) b) + ", byType: " + ((int) b2));
            if (b == 0 && DabBusiness.this.dialogDabAnnounce != null) {
                DabBusiness.this.handler.sendEmptyMessage(1);
            } else if (b == 1) {
                Message message = new Message();
                message.what = 0;
                message.arg1 = b2;
                DabBusiness.this.handler.sendMessage(message);
            }
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabChipPara(byte b, byte b2) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabChipPara, para_action: " + ((int) b));
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabLinkingServiceInfor(String str) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabLinkingServiceInfor, serviceinfor: " + str);
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabVBERState(byte b, byte b2, byte b3) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabVBERState, valid_flag: " + ((int) b) + ", significant: " + ((int) b2) + ", exponent: " + ((int) b3));
            DabBusiness.this.berValidFlag = b;
            DabBusiness.this.berSignificant = b2;
            DabBusiness.this.berExponent = b3;
            DabBusiness.this.sendDABBroadcast();
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabFmRdsInfo(String str) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabFmRdsInfo, fm_rds_info: " + str);
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabFmRdsScan(byte b) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabFmRdsScan, scan_state: " + ((int) b));
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabLinkingOption(byte b) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabLinkingOption, option: " + ((int) b));
            DabBusiness.this.dabOption.postValue(Boolean.valueOf(b == 1));
            DabBusiness.this.saveDabOption(b == 1);
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabErrorState(byte b) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabErrorState, state: " + ((int) b));
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabDateTime(DabEPGTime dabEPGTime) throws RemoteException {
            DabBusiness.this.curTime = dabEPGTime;
            DabBusiness.this.printCurTime();
            if (DabBusiness.this.firstReceiveTime) {
                return;
            }
            DabBusiness.this.firstReceiveTime = true;
            ArrayList arrayList = new ArrayList();
            for (int r1 = 0; r1 < DabBusiness.this.dabProgramInfoList.size(); r1++) {
                DabBusiness dabBusiness = DabBusiness.this;
                if (dabBusiness.isProgramInvalid(dabBusiness.dabProgramInfoList.get(r1))) {
                    arrayList.add(Integer.valueOf(r1));
                }
            }
            PFLog.m29i(DabBusiness.TAG, "notifyDabDateTime, remove Invalid Program: " + arrayList.size());
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                DabBusiness.this.dabProgramInfoList.remove(size);
            }
            DabBusiness.this.saveProgramInfoList();
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabLogo(String str, DabImage dabImage) throws NumberFormatException, RemoteException {
            int r3;
            int r4;
            int r2;
            PFLog.m29i(DabBusiness.TAG, "notifyDabLogo, logo_info: " + str);
            for (DabInfo dabInfo : DabBusiness.this.dabAllList) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    r3 = Integer.parseInt(jSONObject.getString("ensemble_id"));
                    r4 = Integer.parseInt(jSONObject.getString("service_id"));
                    r2 = Integer.parseInt(jSONObject.getString("sc_ids"));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                if (r3 == dabInfo.ensembleId && r4 == (dabInfo.serviceId & 65535) && r2 == (dabInfo.scIds & 15)) {
                    dabInfo.dabImage = dabImage;
                    DabBusiness.this.notifyAllListChanged();
                    return;
                }
            }
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabEPGInfo(String str, DabEPGTime dabEPGTime, DabEPGTime dabEPGTime2, int r5, int r6, List<DabEPGProgramInfo> list) throws RemoteException {
            PFLog.m29i(DabBusiness.TAG, "notifyDabEPGInfo, basic_info: " + str);
            for (int r3 = 0; r3 < list.size(); r3++) {
                try {
                    DabProgramInfo dabProgramInfo = new DabProgramInfo();
                    JSONObject jSONObject = new JSONObject(str);
                    dabProgramInfo.ensembleId = Integer.parseInt(jSONObject.getString("ensemble_id"));
                    dabProgramInfo.serviceId = Integer.parseInt(jSONObject.getString("service_id"));
                    dabProgramInfo.scIds = Integer.parseInt(jSONObject.getString("sc_ids"));
                    dabProgramInfo.programName = list.get(r3).getEPGProgramName();
                    dabProgramInfo.startTime = list.get(r3).getEPGProgramStartTime();
                    dabProgramInfo.duration = list.get(r3).getEPGProgramDuaration();
                    PFLog.m29i(DabBusiness.TAG, "notifyDabEPGInfo, dabProgramInfo: " + dabProgramInfo.toString());
                    if (!DabBusiness.this.dabProgramInfoList.contains(dabProgramInfo)) {
                        DabBusiness.this.dabProgramInfoList.add(dabProgramInfo);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                    return;
                }
            }
            DabBusiness.this.saveProgramInfoList();
        }
    }

    private void notifyFavorInfoChanged() {
        Iterator<DabBusinessCallback> it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            it.next().favorInfoChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyAllListChanged() {
        Iterator<DabBusinessCallback> it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            it.next().allListChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyProgramListChanged() {
        Iterator<DabBusinessCallback> it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            it.next().programInfoListChanged();
        }
    }

    private void notifyCurDabInfoChanged() {
        Iterator<DabBusinessCallback> it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            it.next().curDabInfoChanged(this.curDabInfo);
        }
        sendDABBroadcast();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateReservedList() {
        this.dabReserveList.clear();
        for (DabProgramInfo dabProgramInfo : this.dabProgramInfoList) {
            if (dabProgramInfo.hasReserved) {
                this.dabReserveList.add(dabProgramInfo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDabOnTop() throws SecurityException {
        MediaActivity mediaActivity;
        Fragment currentFragment;
        ComponentName topActivityComponentName = ActivityUtils.getTopActivityComponentName(this.context);
        if (topActivityComponentName != null && topActivityComponentName.getPackageName().equals("com.chery.media")) {
            return (topActivityComponentName.getClassName().equals(PackageConstants.Media.MEDIA_ACTIVITY_NAME) && (mediaActivity = MediaActivity.getInstance()) != null && (currentFragment = mediaActivity.getCurrentFragment()) != null && currentFragment.isResumed() && (currentFragment instanceof DabPlayerFragment)) || topActivityComponentName.getClassName().equals(ACTIVITY_EPG) || topActivityComponentName.getClassName().equals(ACTIVITY_LIST) || topActivityComponentName.getClassName().equals(ACTIVITY_ANNOUNCE);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCurDabInfo(DabProgramInfo dabProgramInfo) {
        if (dabProgramInfo.ensembleId != this.curDabInfo.ensembleId || dabProgramInfo.serviceId != (this.curDabInfo.serviceId & 65535) || dabProgramInfo.scIds != (this.curDabInfo.scIds & 15)) {
            return false;
        }
        PFLog.m25d(TAG, "isCurDabInfo true");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showReverseHintDialog(final DabProgramInfo dabProgramInfo, boolean z) {
        if (canShowReverseDialog()) {
            Dialog_DabReserveHint dialog_DabReserveHint = new Dialog_DabReserveHint(this.context, dabProgramInfo.programName, true, z);
            this.dialogDabReserveHint = dialog_DabReserveHint;
            dialog_DabReserveHint.setConfirmClickListener(new View.OnClickListener() { // from class: com.chery.media.model.business.DabBusiness.22
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    DabBusiness.this.playDabProgram(dabProgramInfo);
                    DabBusiness.this.dialogDabReserveHint.dismiss();
                }
            });
            this.dialogDabReserveHint.show();
            PFLog.m25d(TAG, "距离节目开始还有1分钟: " + dabProgramInfo.toString());
        }
    }

    private void setMute(boolean z) {
        if (z && !RadioBusiness.getInstance().getMute()) {
            PFLog.m25d(TAG, "setMute true");
            RadioBusiness.getInstance().setMute(true);
        } else {
            if (z || !RadioBusiness.getInstance().getMute()) {
                return;
            }
            PFLog.m25d(TAG, "setMute false");
            RadioBusiness.getInstance().setMute(false);
        }
    }

    private void updateCurIndex() {
        for (int r0 = 0; r0 < this.playList.size(); r0++) {
            if (this.playList.get(r0).freq == this.curDabInfo.freq && this.playList.get(r0).ensembleId == this.curDabInfo.ensembleId && this.playList.get(r0).serviceId == this.curDabInfo.serviceId && this.playList.get(r0).componentId == this.curDabInfo.componentId) {
                this.curIndex = r0;
                return;
            }
        }
        this.curIndex = -1;
    }

    private boolean canShowReverseDialog() {
        PFLog.m25d(TAG, "canShowReverseDialog, btPhone: " + BtCallManager.get().hasAnyCalls() + ", avm: " + this.avmActive);
        return (BtCallManager.get().hasAnyCalls() || this.avmActive) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAvmActive(boolean z) {
        if (z == this.avmActive) {
            return;
        }
        PFLog.m25d(TAG, "setAvmActive " + z);
        this.avmActive = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recoverSource() {
        int currentSource = this.audioManager.getCurrentSource();
        int lastSource = this.audioManager.getLastSource();
        PFLog.m29i(TAG, "init recover dab currentSource: " + currentSource + ",lastSource:" + lastSource);
        if ((currentSource == 0 || currentSource == 100) && lastSource == 3) {
            requestAudioFocus();
        }
    }

    public void setPlayStateByVr(boolean z) {
        PFLog.m29i(TAG, "setPlayStateByVr:" + z);
        this.mbPlayStatusRecover = z;
    }

    public long getCurTimeSeconds() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(this.curTime.getEPGTimeYear(), this.curTime.getEPGTimeMonth() - 1, this.curTime.getEPGTimeDay(), this.curTime.getEPGTimeHour(), this.curTime.getEPGTimeMinute(), this.curTime.getEPGTimeSecond());
        return calendar.getTimeInMillis() / 1000;
    }

    private void initCurTime() {
        Calendar calendar = Calendar.getInstance();
        this.curTime.setEPGTimeYear(calendar.get(1));
        this.curTime.setEPGTimeMonth((byte) (calendar.get(2) + 1));
        this.curTime.setEPGTimeDay((byte) calendar.get(5));
        this.curTime.setEPGTimeHour((byte) calendar.get(11));
        this.curTime.setEPGTimeMinute((byte) calendar.get(12));
        this.curTime.setEPGTimeSecond((byte) calendar.get(13));
        printCurTime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void printCurTime() {
        PFLog.m31v(TAG, "printCurTime, year: " + this.curTime.getEPGTimeYear() + ", month: " + ((int) this.curTime.getEPGTimeMonth()) + ", day: " + ((int) this.curTime.getEPGTimeDay()) + ", hour: " + ((int) this.curTime.getEPGTimeHour()) + ", minute: " + ((int) this.curTime.getEPGTimeMinute()) + ", second: " + ((int) this.curTime.getEPGTimeSecond()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendDABBroadcast() {
        if (getPlayingState().getValue() == null) {
            return;
        }
        PFLog.m29i(TAG, "sendDABBroadcast: freq: " + this.curDabInfo.freq + ", playing: " + getPlayingState().getValue() + ", berValidFlag: " + this.berValidFlag + ", berSignificant: " + this.berSignificant + ", berExponent: " + this.berExponent);
        Intent intent = new Intent();
        intent.setAction(DAB_BER_ACTION);
        intent.addFlags(16777216);
        intent.putExtra(DAB_PLAYING_STATE, getPlayingState().getValue().booleanValue() ? 1 : 0);
        intent.putExtra(DAB_CURRENT_FREQ, this.curDabInfo.freq);
        intent.putExtra(DAB_BER_VALID_FLAG, this.berValidFlag);
        intent.putExtra(DAB_BER_SIGNIFICANT, this.berSignificant);
        intent.putExtra(DAB_BER_EXPONENT, this.berExponent);
        this.context.sendBroadcast(intent);
    }
}
