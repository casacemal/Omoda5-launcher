package com.chery.media.model.business;

import android.car.Car;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.hardware.radio.ProgramList;
import android.hardware.radio.ProgramSelector;
import android.hardware.radio.RadioManager;
import android.hardware.radio.RadioTuner;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.caradapter.carapi.constants.CarIpcDisplay;
import com.chery.caradapter.carapi.interfaces.IPowerListener;
import com.chery.common.PackageConstants;
import com.chery.libvr.bean.params.ParamsResValue;
import com.chery.media.C0632R;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.util.Utils;
import com.chery.media.view.dialog.Dialog_SingleText;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;

/* loaded from: classes.dex */
public class RadioBusiness {
    private static final String ACTION_ENTER_ENGINEERING_MODE = "com.yfve.engineeringmode.enter";
    private static final String ACTION_EXIT_ENGINEERING_MODE = "com.yfve.engineeringmode.exit";
    public static final String ALREADY_NO_SAVED = "ALREADY_NO_SAVED";
    public static final String ALREADY_SAVED = "ALREADY_SAVED";
    private static final int COLLECTION_MAX = 20;
    public static final String FAIL_LIST_FULL = "FAIL_LIST_FULL";
    private static final int RADIO_MAX = 40;
    public static final String SUCCESS = "SUCCESS";
    private static RadioBusiness instance;
    private AudioFocusRequest audioFocusRequestAm;
    private AudioFocusRequest audioFocusRequestFm;
    private AudioManager audioManager;
    private Context context;
    private Handler hwHandler;
    private RadioManager.AmBandConfig mAmConfig;
    private RadioManager.AmBandDescriptor mAmDescriptor;
    private RadioManager.FmBandConfig mFmConfig;
    private RadioManager.FmBandDescriptor mFmDescriptor;
    private List<RadioManager.ModuleProperties> mModules;
    private ProgramList mProgramList;
    private List<RadioManager.ProgramInfo> mProgramListSnapshot;
    private RadioManager mRadioManager;
    private RadioTuner mRadioTuner;
    private SharedPreferences mTunerListSp;
    private Runnable runAreaChanged;
    private Runnable runSaveRestoreInfo;
    private static final String TAG = CarLog.concatTag(CarLog.TAG_TUNER, RadioBusiness.class);
    public static final Integer FREQ_DIVIDE_BAND = 5000;
    private Handler handler = new Handler();
    private FrequencySaved mFrequencySave = new FrequencySaved();
    private int mSignalStrength = 0;
    private int mCurrentChannel = 87500;
    private int mCurrentBand = 1;
    private int fmAudioFocus = -1;
    private int amAudioFocus = -1;
    List<RadioDef> listRadio_autoStore = new ArrayList();
    private Integer mCurrentTunerState = 0;
    private Integer mArea = 0;
    private List<Integer> fmCollection = new ArrayList();
    private List<Integer> amCollection = new ArrayList();
    private List<Integer> fmScanList = new ArrayList();
    private List<Integer> amScanList = new ArrayList();
    private List<RadioDef> listRadio = new ArrayList();
    private boolean mbRestoreFrequency = false;
    private boolean mbPlayStatusRecover = true;
    private boolean mbScanByVr = false;
    private boolean mbSettingBand = false;
    private MutableLiveData<RadioDef> currentChannel = new MutableLiveData<>();
    private MutableLiveData<Integer> currentBand = new MutableLiveData<>();
    private MutableLiveData<List<RadioDef>> list = new MutableLiveData<>();
    private MutableLiveData<Integer> tunerState = new MutableLiveData<>();
    private MutableLiveData<Boolean> playingState = new MutableLiveData<>();
    private MutableLiveData<Integer> m_LiveDateArea = new MutableLiveData<>();
    private Runnable runSetMute = new Runnable() { // from class: com.chery.media.model.business.RadioBusiness.4
        @Override // java.lang.Runnable
        public void run() {
            if (RadioBusiness.this.getMute()) {
                PFLog.m25d(RadioBusiness.TAG, "Runnable SET MUTE :false");
                RadioBusiness.this.getRadioTuner().setMute(false);
            }
        }
    };
    private Runnable runShowNoValidRadio = new Runnable() { // from class: com.chery.media.model.business.RadioBusiness.5
        @Override // java.lang.Runnable
        public void run() {
            new Dialog_SingleText(RadioBusiness.this.context).showText(RadioBusiness.this.context.getString(C0632R.string.radio_autostore_no_valid), PathInterpolatorCompat.MAX_NUM_POINTS);
        }
    };
    private Runnable runShowNoSpace = new Runnable() { // from class: com.chery.media.model.business.RadioBusiness.6
        @Override // java.lang.Runnable
        public void run() {
            new Dialog_SingleText(RadioBusiness.this.context).showText(RadioBusiness.this.context.getString(C0632R.string.radio_collection_no_space), PathInterpolatorCompat.MAX_NUM_POINTS);
        }
    };
    private final ProgramList.OnCompleteListener mProgramListCompleteListener = new ProgramList.OnCompleteListener() { // from class: com.chery.media.model.business.-$$Lambda$RadioBusiness$v41xOYTAJys7RoHh8gKlD3AZnek
        public final void onComplete() {
            this.f$0.lambda$new$1$RadioBusiness();
        }
    };

    /* renamed from: cb */
    private RadioTuner.Callback f278cb = new C07207();
    private AudioManager.OnAudioFocusChangeListener fmAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.chery.media.model.business.RadioBusiness.8
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int r6) {
            PFLog.m25d(RadioBusiness.TAG, String.format("onFMAudioFocusChange %d", Integer.valueOf(r6)));
            if (r6 == -1) {
                RadioBusiness.this.setFmAudioFocus(-1);
                return;
            }
            if (r6 == 1 || r6 == 2 || r6 == 3 || r6 == 4) {
                RadioBusiness.this.setFmAudioFocus(1);
            } else {
                RadioBusiness.this.setFmAudioFocus(-2);
            }
        }
    };
    private AudioManager.OnAudioFocusChangeListener amAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.chery.media.model.business.RadioBusiness.9
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int r6) {
            PFLog.m25d(RadioBusiness.TAG, String.format("onAMAudioFocusChange %d", Integer.valueOf(r6)));
            if (r6 == -1) {
                RadioBusiness.this.setAmAudioFocus(-1);
                return;
            }
            if (r6 == 1 || r6 == 2 || r6 == 3 || r6 == 4) {
                RadioBusiness.this.setAmAudioFocus(1);
            } else {
                RadioBusiness.this.setAmAudioFocus(-2);
            }
        }
    };
    private Runnable runMarkedSuccess = new Runnable() { // from class: com.chery.media.model.business.RadioBusiness.14
        @Override // java.lang.Runnable
        public void run() {
            new Dialog_SingleText(RadioBusiness.this.context).showText(RadioBusiness.this.context.getString(C0632R.string.radio_marked_favorite), PathInterpolatorCompat.MAX_NUM_POINTS);
        }
    };
    private Runnable runCollectionCanceled = new Runnable() { // from class: com.chery.media.model.business.RadioBusiness.15
        @Override // java.lang.Runnable
        public void run() {
            new Dialog_SingleText(RadioBusiness.this.context).showText(RadioBusiness.this.context.getString(C0632R.string.radio_collection_canceled), PathInterpolatorCompat.MAX_NUM_POINTS);
        }
    };
    private List<OnTunerInfoListener> tunerInfoListeners = new ArrayList();

    public static class FrequencySaved {
        public int FmFrequency = 0;
        public int AmFrequency = 0;
    }

    public interface OnTunerInfoListener {
        void onAreaChanged(int r1);

        void onChannelChanged(RadioDef radioDef, int r2);

        void onStateChanged(int r1);
    }

    public static RadioBusiness getInstance() {
        if (instance == null) {
            instance = new RadioBusiness();
        }
        return instance;
    }

    private RadioBusiness() {
        PFLog.m25d(TAG, "RadioBusiness()");
        this.tunerState.setValue(0);
        this.m_LiveDateArea.setValue(this.mArea);
        RadioDef radioDef = new RadioDef();
        radioDef.frequencyKhz = getScaleParam(this.mArea.intValue()).fmMinValue;
        this.currentChannel.setValue(radioDef);
        this.playingState.setValue(false);
        this.currentBand.setValue(1);
    }

    public void init(Context context) {
        PFLog.m25d(TAG, "init");
        this.context = context;
        recoverRadioList();
        updateList(1);
        getRadioTuner();
        setMute(false);
        RestoreFrequence();
        initSource();
        recoverSource();
        Runnable runnable = new Runnable() { // from class: com.chery.media.model.business.RadioBusiness.1
            @Override // java.lang.Runnable
            public void run() throws NumberFormatException {
                int areaParam = RadioBusiness.this.getAreaParam();
                if (areaParam < 0 || areaParam > 4) {
                    return;
                }
                RadioBusiness.this.m_LiveDateArea.setValue(Integer.valueOf(areaParam));
                if (RadioBusiness.this.mArea.intValue() != areaParam) {
                    PFLog.m25d(RadioBusiness.TAG, "area changed:" + areaParam);
                    RadioBusiness.this.fmScanList.clear();
                    RadioBusiness.this.amScanList.clear();
                    RadioBusiness.this.fmCollection.clear();
                    RadioBusiness.this.amCollection.clear();
                    if (RadioBusiness.this.isAmAudioFocus() || RadioBusiness.this.isFmAudioFocus()) {
                        RadioBusiness.this.requestAudioFocus(1);
                    }
                    RadioBusiness.this.mCurrentBand = 1;
                    RadioBusiness.this.currentBand.setValue(Integer.valueOf(RadioBusiness.this.mCurrentBand));
                    RadioBusiness.this.updateList(1);
                    RadioBusiness.this.mArea = Integer.valueOf(areaParam);
                    RadioBusiness.this.saveCollection();
                }
                Iterator it = RadioBusiness.this.tunerInfoListeners.iterator();
                while (it.hasNext()) {
                    ((OnTunerInfoListener) it.next()).onAreaChanged(areaParam);
                }
            }
        };
        this.runAreaChanged = runnable;
        this.handler.postDelayed(runnable, 1000L);
        CarAdapterUse.addCarPowerClientListener(new IPowerListener() { // from class: com.chery.media.model.business.RadioBusiness.2
            @Override // com.chery.caradapter.carapi.interfaces.IPowerListener
            public void onStateChanged(final int r3) {
                RadioBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.RadioBusiness.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int r0 = r3;
                        if (r0 == 12 || r0 == 15) {
                            RadioBusiness.this.recoverSource();
                        }
                    }
                });
            }
        });
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.chery.media.model.business.RadioBusiness.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (intent.getAction().equals(RadioBusiness.ACTION_ENTER_ENGINEERING_MODE)) {
                    PFLog.m25d(RadioBusiness.TAG, "ACTION_ENTER_ENGINEERING_MODE");
                    RadioBusiness.this.openSignalReport();
                } else if (intent.getAction().equals(RadioBusiness.ACTION_EXIT_ENGINEERING_MODE)) {
                    PFLog.m25d(RadioBusiness.TAG, "ACTION_EXIT__ENGINEERING_MODE");
                    RadioBusiness.this.closeSignalReport();
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION_ENTER_ENGINEERING_MODE);
        intentFilter.addAction(ACTION_EXIT_ENGINEERING_MODE);
        this.context.registerReceiver(broadcastReceiver, intentFilter);
    }

    public void uninit() {
        if (getRadioTuner() != null) {
            PFLog.m25d(TAG, "uninit");
            getRadioTuner().close();
            this.mRadioTuner = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RadioTuner getRadioTuner() {
        if (this.mRadioTuner == null) {
            this.mRadioManager = (RadioManager) this.context.getSystemService(RadioManager.class);
            ArrayList arrayList = new ArrayList();
            this.mModules = arrayList;
            this.mRadioManager.listModules(arrayList);
            PFLog.m25d(TAG, "Modules.size :" + this.mModules.size());
            if (this.mModules.size() == 0) {
                PFLog.m25d(TAG, "Modules.size :" + this.mModules.size());
            } else {
                this.hwHandler = new Handler(Looper.getMainLooper());
                RadioManager.ModuleProperties moduleProperties = this.mModules.get(0);
                for (RadioManager.FmBandDescriptor fmBandDescriptor : this.mModules.get(0).getBands()) {
                    if (this.mFmDescriptor == null && fmBandDescriptor.isFmBand()) {
                        this.mFmDescriptor = fmBandDescriptor;
                    }
                    if (this.mAmDescriptor == null && fmBandDescriptor.isAmBand()) {
                        this.mAmDescriptor = (RadioManager.AmBandDescriptor) fmBandDescriptor;
                    }
                }
                if (this.mFmDescriptor == null && this.mAmDescriptor == null) {
                    Log.w(TAG, "No AM and FM radio bands could be loaded.");
                } else {
                    this.mFmConfig = new RadioManager.FmBandConfig.Builder(this.mFmDescriptor).setStereo(true).build();
                    this.mAmConfig = new RadioManager.AmBandConfig.Builder(this.mAmDescriptor).setStereo(true).build();
                    PFLog.m25d(TAG, "openTuner begin");
                    this.mRadioTuner = this.mRadioManager.openTuner(moduleProperties.getId(), (RadioManager.BandConfig) null, true, this.f278cb, this.hwHandler);
                    PFLog.m25d(TAG, "openTuner end");
                    RadioTuner radioTuner = this.mRadioTuner;
                    if (radioTuner != null) {
                        ProgramList dynamicProgramList = radioTuner.getDynamicProgramList((ProgramList.Filter) null);
                        ProgramList programList = this.mProgramList;
                        if (programList != null) {
                            programList.removeOnCompleteListener(this.mProgramListCompleteListener);
                        }
                        this.mProgramList = dynamicProgramList;
                        if (dynamicProgramList != null) {
                            dynamicProgramList.addOnCompleteListener(this.mProgramListCompleteListener);
                        }
                    }
                }
            }
        }
        return this.mRadioTuner;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openSignalReport() {
        if (getRadioTuner() == null) {
            return;
        }
        PFLog.m25d(TAG, "openSignalReport");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("signal_report", ParamsResValue.RainState.RAIN);
        getRadioTuner().setParameters(linkedHashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeSignalReport() {
        if (getRadioTuner() == null) {
            return;
        }
        PFLog.m25d(TAG, "closeSignalReport");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("signal_report", ParamsResValue.RainState.NO_RAIN);
        getRadioTuner().setParameters(linkedHashMap);
    }

    public int getSignalStrength() {
        return this.mSignalStrength;
    }

    public void setMute(boolean z) {
        PFLog.m25d(TAG, "SET MUTE :" + z);
        if (getRadioTuner() == null) {
            return;
        }
        if (this.handler.hasCallbacks(this.runSetMute)) {
            PFLog.m25d(TAG, "SET MUTE remove:" + z);
            this.handler.removeCallbacks(this.runSetMute);
        }
        if (z) {
            getRadioTuner().setMute(true);
        } else {
            this.handler.postDelayed(this.runSetMute, 500L);
        }
    }

    public boolean getMute() {
        if (getRadioTuner() == null) {
            return false;
        }
        return getRadioTuner().getMute();
    }

    private void initSource() {
        PFLog.m25d(TAG, "initSource");
        if (this.audioManager == null) {
            this.audioManager = (AudioManager) this.context.getSystemService(Car.AUDIO_SERVICE);
            Bundle bundle = new Bundle();
            bundle.putInt("key_car_source_type", 1);
            this.audioFocusRequestFm = new AudioFocusRequest.Builder(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).addBundle(bundle).build()).setOnAudioFocusChangeListener(this.fmAudioFocusChangeListener).build();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("key_car_source_type", 2);
            this.audioFocusRequestAm = new AudioFocusRequest.Builder(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).addBundle(bundle2).build()).setOnAudioFocusChangeListener(this.amAudioFocusChangeListener).build();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recoverSource() {
        if (this.audioManager == null) {
            initSource();
        }
        int currentSource = this.audioManager.getCurrentSource();
        int lastSource = this.audioManager.getLastSource();
        PFLog.m29i(TAG, "init recover radio currentSource: " + currentSource + ",lastSource:" + lastSource);
        if (currentSource == 0 || currentSource == 100) {
            if (lastSource == 1) {
                requestAudioFocus(1);
                return;
            } else {
                if (lastSource == 2) {
                    requestAudioFocus(0);
                    return;
                }
                return;
            }
        }
        if (currentSource == 1) {
            requestAudioFocus(1);
        } else if (currentSource == 2) {
            requestAudioFocus(0);
        }
    }

    public boolean isFmAudioFocus() {
        return this.fmAudioFocus == 1;
    }

    public void setFmAudioFocus(int r5) {
        if (r5 == this.fmAudioFocus) {
            return;
        }
        PFLog.m25d(TAG, "setFmAudioFocus " + r5);
        this.fmAudioFocus = r5;
        if (r5 != 1) {
            if (r5 == -1) {
                if (isAmAudioFocus()) {
                    return;
                }
                if (this.mCurrentTunerState.intValue() != 0) {
                    cancel();
                }
                this.mbPlayStatusRecover = true;
                setPlayingState(false);
                return;
            }
            if (this.mCurrentTunerState.intValue() == 0) {
                this.mbPlayStatusRecover = getPlayingState().getValue().booleanValue();
            } else {
                cancel();
            }
            setPlayingState(false);
            return;
        }
        if (this.mFrequencySave.FmFrequency != 0 && !this.mbRestoreFrequency) {
            this.mCurrentBand = 1;
            this.currentBand.setValue(1);
            updateList(1);
            tune(this.mFrequencySave.FmFrequency);
            getRadioTuner().setConfiguration(this.mFmConfig);
            return;
        }
        PFLog.m25d(TAG, "onAudioSourceChanged  fm " + this.mbPlayStatusRecover + " mbScanByVr " + this.mbScanByVr);
        if (!this.mbPlayStatusRecover) {
            setPlayingState(false);
            this.mbPlayStatusRecover = true;
            return;
        }
        if (this.mbScanByVr) {
            if (this.mCurrentTunerState.intValue() == 0) {
                setPlayingState(true);
            }
            this.mbScanByVr = false;
        } else {
            if (this.mCurrentBand == 1) {
                setPlayingState(true);
                return;
            }
            PFLog.m25d(TAG, "setFmAudioFocus setConfiguration FM");
            this.mbSettingBand = true;
            getRadioTuner().setConfiguration(this.mFmConfig);
        }
    }

    public boolean isAmAudioFocus() {
        return this.amAudioFocus == 1;
    }

    public void setAmAudioFocus(int r5) {
        if (r5 == this.amAudioFocus) {
            return;
        }
        PFLog.m25d(TAG, "setAmAudioFocus " + r5);
        this.amAudioFocus = r5;
        if (r5 != 1) {
            if (r5 == -1) {
                if (isFmAudioFocus()) {
                    return;
                }
                if (this.mCurrentTunerState.intValue() != 0) {
                    cancel();
                }
                this.mbPlayStatusRecover = true;
                setPlayingState(false);
                return;
            }
            if (this.mCurrentTunerState.intValue() == 0) {
                this.mbPlayStatusRecover = getPlayingState().getValue().booleanValue();
            } else {
                cancel();
            }
            setPlayingState(false);
            return;
        }
        if (this.mFrequencySave.AmFrequency != 0 && !this.mbRestoreFrequency) {
            this.mCurrentBand = 0;
            this.currentBand.setValue(0);
            updateList(0);
            tune(this.mFrequencySave.AmFrequency);
            getRadioTuner().setConfiguration(this.mAmConfig);
            return;
        }
        PFLog.m25d(TAG, "onAudioSourceChanged am " + this.mbPlayStatusRecover + " mbScanByVr " + this.mbScanByVr);
        if (!this.mbPlayStatusRecover) {
            setPlayingState(false);
            this.mbPlayStatusRecover = true;
            return;
        }
        if (this.mbScanByVr) {
            if (this.mCurrentTunerState.intValue() == 0) {
                setPlayingState(true);
            }
            this.mbScanByVr = false;
        } else {
            if (this.mCurrentBand == 0) {
                setPlayingState(true);
                return;
            }
            PFLog.m25d(TAG, "setAmAudioFocus setConfiguration AM");
            this.mbSettingBand = true;
            getRadioTuner().setConfiguration(this.mAmConfig);
        }
    }

    public boolean requestAudioFocus() {
        PFLog.m25d(TAG, "isFmAudioFocus:" + isFmAudioFocus() + " isAmAudioFocus:" + isAmAudioFocus());
        if (isFmAudioFocus() || isAmAudioFocus()) {
            return true;
        }
        if (getRadioTuner() == null) {
            return false;
        }
        if (this.mCurrentBand == 0) {
            return requestAudioFocus(0);
        }
        return requestAudioFocus(1);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean requestAudioFocus(int r6) {
        /*
            r5 = this;
            android.hardware.radio.RadioTuner r0 = r5.getRadioTuner()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L56
            if (r6 != 0) goto L30
            android.media.AudioManager r6 = r5.audioManager
            android.media.AudioFocusRequest r0 = r5.audioFocusRequestAm
            int r6 = r6.requestAudioFocus(r0)
            java.lang.String r0 = com.chery.media.model.business.RadioBusiness.TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "requestAudioFocus am result:"
            r3.append(r4)
            r3.append(r6)
            java.lang.String r3 = r3.toString()
            com.avn.tools.log.PFLog.m25d(r0, r3)
            if (r6 != r2) goto L2e
            r5.setAmAudioFocus(r2)
            goto L57
        L2e:
            r5 = 2
            goto L57
        L30:
            if (r6 != r2) goto L56
            android.media.AudioManager r6 = r5.audioManager
            android.media.AudioFocusRequest r0 = r5.audioFocusRequestFm
            int r6 = r6.requestAudioFocus(r0)
            java.lang.String r0 = com.chery.media.model.business.RadioBusiness.TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "requestAudioFocus fm result:"
            r3.append(r4)
            r3.append(r6)
            java.lang.String r3 = r3.toString()
            com.avn.tools.log.PFLog.m25d(r0, r3)
            if (r6 != r2) goto L57
            r5.setFmAudioFocus(r2)
            goto L57
        L56:
            r6 = r1
        L57:
            if (r6 != r2) goto L5a
            r1 = r2
        L5a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.RadioBusiness.requestAudioFocus(int):boolean");
    }

    public void close() {
        if (getRadioTuner() != null) {
            getRadioTuner().close();
        }
    }

    public void seek(int r3, boolean z) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("function", "seek");
        linkedHashMap.put("direction", String.valueOf(r3));
        if (getRadioTuner() == null) {
            return;
        }
        if (this.mCurrentTunerState.intValue() != 0) {
            cancel();
        } else {
            getRadioTuner().setParameters(linkedHashMap);
        }
    }

    public void step(int r2) {
        if (getRadioTuner() == null) {
            return;
        }
        if (this.mCurrentTunerState.intValue() != 0) {
            cancel();
        } else {
            getRadioTuner().step(r2, false);
        }
    }

    public int scan(int r3, boolean z) {
        Log.i(TAG, "auto store   ");
        if (getRadioTuner() == null) {
            return -1;
        }
        if (this.mCurrentTunerState.intValue() != 0) {
            cancel();
            return -1;
        }
        this.mbSettingBand = false;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("function", "auto_store");
        getRadioTuner().setParameters(linkedHashMap);
        return 0;
    }

    public void setArea(int r4) {
        Log.i(TAG, "setArea   " + r4);
        if (getRadioTuner() == null) {
            return;
        }
        if (r4 > 4 || r4 < 0) {
            Log.e(TAG, "setArea out of range !");
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("area", String.valueOf(r4));
        getRadioTuner().setParameters(linkedHashMap);
    }

    public int getAreaParam() throws NumberFormatException {
        if (getRadioTuner() == null) {
            return -1;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("area");
        int r3 = Integer.parseInt((String) getRadioTuner().getParameters(arrayList).get("area"));
        PFLog.m25d(TAG, "getAreaParam :" + r3);
        return r3;
    }

    public void setPlayingState(boolean z) {
        PFLog.m25d(TAG, "setPlayingState:" + z);
        this.playingState.postValue(Boolean.valueOf(z));
        if (z) {
            setMute(false);
            int volumeGroupIdForUsage = CarAdapterUse.getCarVolumeClient().getVolumeGroupIdForUsage(1);
            if (CarAdapterUse.getCarVolumeClient().getGroupMute(volumeGroupIdForUsage)) {
                CarAdapterUse.getCarVolumeClient().setGroupMute(volumeGroupIdForUsage, false, 0);
                return;
            }
            return;
        }
        if (this.audioManager != null) {
            if (isFmAudioFocus() || isAmAudioFocus()) {
                setMute(true);
            } else {
                setMute(false);
            }
        }
    }

    public void stop() {
        if (getRadioTuner() == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("function", ParamsResValue.MusicPlayState.STOP);
        getRadioTuner().setParameters(linkedHashMap);
    }

    public void setConfigure(int r5) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("setConfigure :");
        sb.append(r5 == 1 ? PackageConstants.Media.BAND_MEDIA_SESSION_FM : PackageConstants.Media.BAND_MEDIA_SESSION_AM);
        PFLog.m25d(str, sb.toString());
        if (this.mCurrentTunerState.intValue() == 2) {
            cancel();
        }
        if (r5 == 1) {
            requestAudioFocus(1);
        } else {
            requestAudioFocus(0);
        }
    }

    public void cancel() {
        if (getRadioTuner() == null || this.mCurrentTunerState.intValue() == 0) {
            return;
        }
        PFLog.m25d(TAG, "cancel");
        getRadioTuner().cancel();
    }

    public void tune(int r4) {
        if (getRadioTuner() != null) {
            Log.i(TAG, "tune  : " + r4);
            if (this.mCurrentTunerState.intValue() != 0) {
                cancel();
            }
            if (isAmAudioFocus() || isFmAudioFocus()) {
                setPlayingState(true);
            } else {
                this.mbPlayStatusRecover = true;
            }
            int r0 = r4 > FREQ_DIVIDE_BAND.intValue() ? 1 : 0;
            if (r0 == 1) {
                if (r4 < getScaleParam(this.mArea.intValue()).fmMinValue || r4 > getScaleParam(this.mArea.intValue()).fmMaxValue) {
                    return;
                }
            } else if (r4 < getScaleParam(this.mArea.intValue()).amMinValue || r4 > getScaleParam(this.mArea.intValue()).amMaxValue) {
                return;
            }
            getRadioTuner().tune(ProgramSelector.createAmFmSelector(r0, r4));
        }
    }

    public void tuneByList(int r6) {
        boolean z;
        int r2;
        if (getRadioTuner() != null) {
            if (this.mCurrentTunerState.intValue() != 0) {
                cancel();
                return;
            }
            if (this.listRadio.size() == 0) {
                return;
            }
            if (isAmAudioFocus() || isFmAudioFocus()) {
                setPlayingState(true);
            } else {
                this.mbPlayStatusRecover = true;
            }
            int r22 = 0;
            while (true) {
                if (r22 >= this.listRadio.size()) {
                    z = false;
                    break;
                }
                if (this.listRadio.get(r22).frequencyKhz == this.mCurrentChannel) {
                    if (r6 == 1) {
                        if (r22 == 0) {
                            List<RadioDef> list = this.listRadio;
                            r2 = list.get(list.size() - 1).frequencyKhz;
                        } else {
                            r2 = this.listRadio.get(r22 - 1).frequencyKhz;
                        }
                        tune(r2);
                    } else {
                        tune(r22 == this.listRadio.size() - 1 ? this.listRadio.get(0).frequencyKhz : this.listRadio.get(r22 + 1).frequencyKhz);
                    }
                    z = true;
                } else {
                    r22++;
                }
            }
            if (z) {
                return;
            }
            if (r6 == 0) {
                tune(this.listRadio.get(0).frequencyKhz);
            } else {
                List<RadioDef> list2 = this.listRadio;
                tune(list2.get(list2.size() - 1).frequencyKhz);
            }
        }
    }

    public LiveData<RadioDef> getCurrentChannel() {
        return this.currentChannel;
    }

    public LiveData<Integer> getCurrentBand() {
        return this.currentBand;
    }

    public LiveData<List<RadioDef>> getRadioList() {
        return this.list;
    }

    public LiveData<Integer> getTunerState() {
        return this.tunerState;
    }

    public Integer getCurrentState() {
        return this.mCurrentTunerState;
    }

    public LiveData<Boolean> getPlayingState() {
        return this.playingState;
    }

    public LiveData<Integer> getArea() {
        return this.m_LiveDateArea;
    }

    public /* synthetic */ void lambda$new$1$RadioBusiness() {
        Log.i(TAG, "OnCompleteListener : " + this.mProgramList.toList().size());
        this.mProgramListSnapshot = this.mProgramList.toList();
        this.listRadio_autoStore.clear();
        PFLog.m25d(TAG, "mbSettingBand:" + this.mbSettingBand);
        if (this.mCurrentTunerState.intValue() != 5 || this.mbSettingBand) {
            return;
        }
        if (this.mProgramListSnapshot.size() == 0) {
            this.runShowNoValidRadio.run();
        }
        for (RadioManager.ProgramInfo programInfo : this.mProgramListSnapshot) {
            Log.i(TAG, "ProgramList info = " + programInfo);
            RadioDef radioDef = new RadioDef();
            radioDef.frequencyKhz = (int) programInfo.getSelector().getPrimaryId().getValue();
            radioDef.band = radioDef.frequencyKhz > FREQ_DIVIDE_BAND.intValue() ? 1 : 0;
            radioDef.isCurrentFreq = false;
            radioDef.isCollection = false;
            radioDef.isValid = true;
            this.listRadio_autoStore.add(radioDef);
        }
        List<Integer> list = this.mCurrentBand == 1 ? this.fmScanList : this.amScanList;
        Collections.sort(this.listRadio_autoStore, new Comparator() { // from class: com.chery.media.model.business.-$$Lambda$RadioBusiness$VmvcACx1s_J7beo6Dyuo5SHgXH4
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.valueOf(((RadioDef) obj).frequencyKhz).compareTo(Integer.valueOf(((RadioDef) obj2).frequencyKhz));
            }
        });
        list.clear();
        Iterator<RadioDef> it = this.listRadio_autoStore.iterator();
        while (it.hasNext()) {
            list.add(Integer.valueOf(it.next().frequencyKhz));
        }
        saveCollection();
        updateList(this.mCurrentBand);
    }

    /* renamed from: com.chery.media.model.business.RadioBusiness$7 */
    class C07207 extends RadioTuner.Callback {
        C07207() {
        }

        public void onError(int r2) {
            super.onError(r2);
            PFLog.m25d(RadioBusiness.TAG, "onError");
            if (r2 == 2) {
                PFLog.m25d(RadioBusiness.TAG, "service is cancel!");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onProgramInfoChanged(RadioManager.ProgramInfo programInfo) {
            super.onProgramInfoChanged(programInfo);
            PFLog.m25d(RadioBusiness.TAG, "onProgramInfoChanged  :" + programInfo.toString());
            RadioBusiness.this.mCurrentChannel = programInfo.getChannel();
            RadioDef radioDef = new RadioDef();
            radioDef.frequencyKhz = (int) programInfo.getSelector().getPrimaryId().getValue();
            radioDef.band = radioDef.frequencyKhz > RadioBusiness.FREQ_DIVIDE_BAND.intValue() ? 1 : 0;
            radioDef.frequencyKhz = RadioBusiness.this.mCurrentChannel;
            
            // RDS (Radio Data System) - Kanal isimlerini al
            try {
                String programName = programInfo.getName();
                if (programName != null && !programName.isEmpty()) {
                    radioDef.title = programName;
                    PFLog.m25d(RadioBusiness.TAG, "RDS Kanal Adı: " + programName);
                }
            } catch (Exception e) {
                PFLog.m25d(RadioBusiness.TAG, "RDS getName hatası: " + e.getMessage());
            }
            
            if (programInfo.getSelector().getProgramType() == 1 && ((Integer) RadioBusiness.this.currentBand.getValue()).intValue() != 0) {
                RadioBusiness.this.requestAudioFocus(0);
            } else if (programInfo.getSelector().getProgramType() == 2 && ((Integer) RadioBusiness.this.currentBand.getValue()).intValue() != 1) {
                RadioBusiness.this.requestAudioFocus(1);
            }
            if (RadioBusiness.this.fmCollection.contains(Integer.valueOf(RadioBusiness.this.mCurrentChannel)) || RadioBusiness.this.amCollection.contains(Integer.valueOf(RadioBusiness.this.mCurrentChannel))) {
                radioDef.isCollection = true;
            }
            RadioBusiness.this.currentChannel.setValue(radioDef);
            Iterator it = RadioBusiness.this.tunerInfoListeners.iterator();
            while (it.hasNext()) {
                ((OnTunerInfoListener) it.next()).onChannelChanged(radioDef, RadioBusiness.this.mSignalStrength);
            }
            if (RadioBusiness.this.mCurrentTunerState.intValue() == 0) {
                for (int r6 = 0; r6 < RadioBusiness.this.listRadio.size(); r6++) {
                    if (((RadioDef) RadioBusiness.this.listRadio.get(r6)).frequencyKhz == RadioBusiness.this.mCurrentChannel) {
                        ((RadioDef) RadioBusiness.this.listRadio.get(r6)).isCurrentFreq = true;
                        ((RadioDef) RadioBusiness.this.listRadio.get(r6)).isPlaying = RadioBusiness.this.getPlayingState().getValue().booleanValue();
                    } else {
                        ((RadioDef) RadioBusiness.this.listRadio.get(r6)).isCurrentFreq = false;
                    }
                }
                RadioBusiness.this.list.setValue(RadioBusiness.this.listRadio);
            }
            if (radioDef.band == 1) {
                RadioBusiness.this.mFrequencySave.FmFrequency = RadioBusiness.this.mCurrentChannel;
            } else {
                RadioBusiness.this.mFrequencySave.AmFrequency = RadioBusiness.this.mCurrentChannel;
            }
            if (!RadioBusiness.this.mbRestoreFrequency) {
                RadioBusiness.this.mbRestoreFrequency = true;
            }
            RadioBusiness.this.saveRestoreInfo(false);
        }

        public void onParametersUpdated(Map<String, String> map) {
            super.onParametersUpdated(map);
            map.forEach(new BiConsumer() { // from class: com.chery.media.model.business.-$$Lambda$RadioBusiness$7$rNj2WjkEpgDvbHk0PkqI8Ry54dg
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    this.f$0.lambda$onParametersUpdated$0$RadioBusiness$7((String) obj, (String) obj2);
                }
            });
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0034  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void lambda$onParametersUpdated$0$RadioBusiness$7(java.lang.String r8, java.lang.String r9) {
            /*
                Method dump skipped, instructions count: 566
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.RadioBusiness.C07207.lambda$onParametersUpdated$0$RadioBusiness$7(java.lang.String, java.lang.String):void");
        }
    }

    private void recoverRadioList() {
        SharedPreferences sharedPreferences = this.context.getSharedPreferences("collectListSp", 0);
        this.mTunerListSp = sharedPreferences;
        this.mArea = Integer.valueOf(sharedPreferences.getInt("area", 0));
        String string = this.mTunerListSp.getString("fmCollect", null);
        if (string != null) {
            try {
                this.fmCollection.addAll((Collection) new Gson().fromJson(string, new TypeToken<List<Integer>>() { // from class: com.chery.media.model.business.RadioBusiness.10
                }.getType()));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        String string2 = this.mTunerListSp.getString("amCollect", null);
        if (string2 != null) {
            try {
                this.amCollection.addAll((Collection) new Gson().fromJson(string2, new TypeToken<List<Integer>>() { // from class: com.chery.media.model.business.RadioBusiness.11
                }.getType()));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        String string3 = this.mTunerListSp.getString("fmScan", null);
        if (string3 != null) {
            try {
                this.fmScanList.addAll((Collection) new Gson().fromJson(string3, new TypeToken<List<Integer>>() { // from class: com.chery.media.model.business.RadioBusiness.12
                }.getType()));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        String string4 = this.mTunerListSp.getString("amScan", null);
        if (string4 != null) {
            try {
                this.amScanList.addAll((Collection) new Gson().fromJson(string4, new TypeToken<List<Integer>>() { // from class: com.chery.media.model.business.RadioBusiness.13
                }.getType()));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCollection() {
        SharedPreferences.Editor editorEdit = this.mTunerListSp.edit();
        editorEdit.putInt("area", this.mArea.intValue());
        editorEdit.putString("fmCollect", new Gson().toJson(this.fmCollection));
        editorEdit.putString("amCollect", new Gson().toJson(this.amCollection));
        editorEdit.putString("fmScan", new Gson().toJson(this.fmScanList));
        editorEdit.putString("amScan", new Gson().toJson(this.amScanList));
        editorEdit.apply();
    }

    public String addCollection(int r11, boolean z) {
        PFLog.m25d(TAG, "collect: " + z + "  frequencyKhz: " + r11);
        if (this.mCurrentTunerState.intValue() != 0) {
            cancel();
            return "";
        }
        int r4 = 0;
        if (r11 > FREQ_DIVIDE_BAND.intValue()) {
            if (z) {
                if (this.fmCollection.size() >= 20) {
                    this.handler.postDelayed(this.runShowNoSpace, 0L);
                    return "FAIL_LIST_FULL";
                }
                if (!this.fmCollection.contains(Integer.valueOf(r11))) {
                    this.fmCollection.add(Integer.valueOf(r11));
                    this.handler.postDelayed(this.runMarkedSuccess, 0L);
                } else {
                    PFLog.m25d(TAG, "collect: ALREADY_SAVED");
                    return "ALREADY_SAVED";
                }
            } else {
                if (!this.fmCollection.contains(Integer.valueOf(r11))) {
                    PFLog.m25d(TAG, "collect: ALREADY_NO_SAVED");
                    return "ALREADY_NO_SAVED";
                }
                while (true) {
                    if (r4 >= this.fmCollection.size()) {
                        break;
                    }
                    if (this.fmCollection.get(r4).equals(Integer.valueOf(r11))) {
                        this.fmCollection.remove(r4);
                        this.handler.postDelayed(this.runCollectionCanceled, 0L);
                        break;
                    }
                    r4++;
                }
            }
        } else if (z) {
            if (this.amCollection.size() >= 20) {
                this.handler.postDelayed(this.runShowNoSpace, 0L);
                return "FAIL_LIST_FULL";
            }
            if (!this.amCollection.contains(Integer.valueOf(r11))) {
                this.amCollection.add(Integer.valueOf(r11));
                this.handler.postDelayed(this.runMarkedSuccess, 0L);
            } else {
                PFLog.m25d(TAG, "collect: ALREADY_SAVED");
                return "ALREADY_SAVED";
            }
        } else {
            if (!this.amCollection.contains(Integer.valueOf(r11))) {
                PFLog.m25d(TAG, "collect: ALREADY_NO_SAVED");
                return "ALREADY_NO_SAVED";
            }
            while (true) {
                if (r4 >= this.amCollection.size()) {
                    break;
                }
                if (this.amCollection.get(r4).equals(Integer.valueOf(r11))) {
                    this.amCollection.remove(r4);
                    this.handler.postDelayed(this.runCollectionCanceled, 0L);
                    break;
                }
                r4++;
            }
        }
        saveCollection();
        updateList(this.mCurrentBand);
        return "SUCCESS";
    }

    public int indexOfCollection(int r2) {
        int r1;
        if (r2 > FREQ_DIVIDE_BAND.intValue()) {
            r1 = this.fmCollection.indexOf(Integer.valueOf(r2));
        } else {
            r1 = this.amCollection.indexOf(Integer.valueOf(r2));
        }
        if (r1 < 0) {
            return 0;
        }
        return r1 + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateList(int r9) {
        boolean z;
        PFLog.m25d(TAG, "updateList:" + r9);
        this.listRadio.clear();
        List<Integer> list = r9 == 1 ? this.fmCollection : this.amCollection;
        List<Integer> list2 = r9 == 1 ? this.fmScanList : this.amScanList;
        for (int r4 = 0; r4 < list.size(); r4++) {
            RadioDef radioDef = new RadioDef();
            radioDef.band = r9;
            radioDef.frequencyKhz = list.get(r4).intValue();
            radioDef.isCollection = true;
            this.listRadio.add(radioDef);
        }
        for (int r42 = 0; r42 < list2.size() && this.listRadio.size() < 40; r42++) {
            Iterator<Integer> it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().intValue() == list2.get(r42).intValue()) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                RadioDef radioDef2 = new RadioDef();
                radioDef2.band = r9;
                radioDef2.frequencyKhz = list2.get(r42).intValue();
                radioDef2.isCollection = false;
                this.listRadio.add(radioDef2);
            }
        }
        if (this.mCurrentTunerState.intValue() == 0) {
            for (int r92 = 0; r92 < this.listRadio.size(); r92++) {
                if (this.listRadio.get(r92).frequencyKhz == this.mCurrentChannel) {
                    this.listRadio.get(r92).isCurrentFreq = true;
                    this.listRadio.get(r92).isPlaying = getPlayingState().getValue().booleanValue();
                } else {
                    this.listRadio.get(r92).isCurrentFreq = false;
                    this.listRadio.get(r92).isPlaying = false;
                }
            }
        }
        this.list.setValue(this.listRadio);
    }

    public void addTunerInfoListener(OnTunerInfoListener onTunerInfoListener) {
        if (this.tunerInfoListeners.contains(onTunerInfoListener)) {
            return;
        }
        this.tunerInfoListeners.add(onTunerInfoListener);
    }

    public void removeTunerInfoListener(OnTunerInfoListener onTunerInfoListener) {
        this.tunerInfoListeners.remove(onTunerInfoListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveRestoreInfo(boolean z) {
        PFLog.m25d(TAG, String.format("saveRestoreInfo force:%s", Boolean.valueOf(z)));
        Runnable runnable = this.runSaveRestoreInfo;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
        final String json = new Gson().toJson(this.mFrequencySave);
        Runnable runnable2 = new Runnable() { // from class: com.chery.media.model.business.RadioBusiness.16
            @Override // java.lang.Runnable
            public void run() {
                PFLog.m25d(RadioBusiness.TAG, String.format("do saveRestoreInfo", new Object[0]));
                PFLog.m25d(RadioBusiness.TAG, "restoreInfo : " + json);
                Utils.writeToInternalFile(RadioBusiness.this.context, "radio_frequency_save.txt", json.getBytes(), false);
            }
        };
        this.runSaveRestoreInfo = runnable2;
        this.handler.postDelayed(runnable2, 500L);
    }

    private void RestoreFrequence() {
        byte[] fromInternalFile = Utils.readFromInternalFile(this.context, "radio_frequency_save.txt");
        if (fromInternalFile == null || fromInternalFile.length <= 0) {
            this.mFrequencySave.FmFrequency = 87500;
            return;
        }
        String str = new String(fromInternalFile);
        PFLog.m25d(TAG, "RestoreFrequence : " + str);
        try {
            this.mFrequencySave = (FrequencySaved) new Gson().fromJson(str, new TypeToken<FrequencySaved>() { // from class: com.chery.media.model.business.RadioBusiness.17
            }.getType());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public class RadioScaleParam {
        public int amMaxValue;
        public int amMinValue;
        public int amStep;
        public int fmMaxValue;
        public int fmMinValue;
        public int fmStep;

        public RadioScaleParam() {
        }
    }

    public RadioScaleParam getScaleParam(int r11) {
        RadioScaleParam radioScaleParam = new RadioScaleParam();
        if (r11 == 0) {
            radioScaleParam.fmMinValue = 87500;
            radioScaleParam.fmMaxValue = 108000;
            radioScaleParam.fmStep = 100;
            radioScaleParam.amMinValue = 531;
            radioScaleParam.amMaxValue = 1629;
            radioScaleParam.amStep = 9;
        } else if (r11 == 2) {
            radioScaleParam.fmMinValue = 87500;
            radioScaleParam.fmMaxValue = 107900;
            radioScaleParam.fmStep = 200;
            radioScaleParam.amMinValue = CarIpcDisplay.AMRadioFrequanceValue.DEFAULT;
            radioScaleParam.amMaxValue = 1710;
            radioScaleParam.amStep = 10;
        } else if (r11 == 1) {
            radioScaleParam.fmMinValue = 87500;
            radioScaleParam.fmMaxValue = 108000;
            radioScaleParam.fmStep = 50;
            radioScaleParam.amMinValue = 531;
            radioScaleParam.amMaxValue = 1629;
            radioScaleParam.amStep = 9;
        } else if (r11 == 3) {
            radioScaleParam.fmMinValue = 87500;
            radioScaleParam.fmMaxValue = 108000;
            radioScaleParam.fmStep = 100;
            radioScaleParam.amMinValue = CarIpcDisplay.AMRadioFrequanceValue.DEFAULT;
            radioScaleParam.amMaxValue = 1710;
            radioScaleParam.amStep = 10;
        } else if (r11 == 4) {
            radioScaleParam.fmMinValue = 76000;
            radioScaleParam.fmMaxValue = 108000;
            radioScaleParam.fmStep = 100;
            radioScaleParam.amMinValue = CarIpcDisplay.AMRadioFrequanceValue.DEFAULT;
            radioScaleParam.amMaxValue = 1710;
            radioScaleParam.amStep = 10;
        } else {
            radioScaleParam.fmMinValue = 87500;
            radioScaleParam.fmMaxValue = 108000;
            radioScaleParam.fmStep = 100;
            radioScaleParam.amMinValue = 531;
            radioScaleParam.amMaxValue = 1629;
            radioScaleParam.amStep = 9;
        }
        return radioScaleParam;
    }

    public void tuneByVr(int r2, int r3) {
        if (r2 == 0) {
            requestAudioFocus(0);
        } else if (r2 == 1) {
            requestAudioFocus(1);
        } else {
            requestAudioFocus(this.mCurrentBand);
        }
        this.mbPlayStatusRecover = true;
        if (r3 != -1) {
            tune(r3);
        }
    }

    public String tuneByListByVr() {
        List<Integer> list = this.mCurrentBand == 1 ? this.fmCollection : this.amCollection;
        if (list.size() <= 0) {
            return "NO_DATA";
        }
        if (list.contains(Integer.valueOf(this.mCurrentChannel))) {
            return "SUCCESS";
        }
        tuneByList(1);
        return "SUCCESS";
    }

    public void scanByVr() {
        this.mbScanByVr = true;
        scan(1, true);
    }

    public void setPlayingStateByVr(boolean z) {
        PFLog.m25d(TAG, "setPlayingStateByVr " + z);
        this.mbPlayStatusRecover = z;
    }

    public int getChannel() {
        return this.mCurrentChannel;
    }
}
