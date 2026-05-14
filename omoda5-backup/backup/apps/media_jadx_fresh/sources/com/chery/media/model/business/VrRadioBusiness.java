package com.chery.media.model.business;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import androidx.lifecycle.LifecycleService;
import androidx.lifecycle.Observer;
import com.avn.tools.activity.ActivityUtils;
import com.avn.tools.json.JsonUtil;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.common.PackageConstants;
import com.chery.common.PageConstants;
import com.chery.common.PageManager;
import com.chery.libvr.bean.action.ActionCommon;
import com.chery.libvr.bean.action.ActionRadio;
import com.chery.libvr.bean.action.Response;
import com.chery.libvr.bean.params.ParamsResValue;
import com.chery.libvr.bean.params.ParamsType;
import com.chery.libvr.bean.responsedetail.RadioResDetail;
import com.chery.libvr.bean.responsekey.RadioResKey;
import com.chery.libvr.manager.funtionmanager.VrRadioManager;

/* loaded from: classes.dex */
public class VrRadioBusiness {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_TUNER, VrRadioBusiness.class);
    private static VrRadioBusiness instance;
    private Context context;
    DabInfo mDabInfo;
    Boolean mDabPlaying;
    private VrRadioManager mVrRadioManager;
    Boolean m_bPlaying;
    RadioDef m_radioInfo;
    Integer m_tunerState;
    Integer m_lastTunerState = 0;
    private Handler mHandler = new Handler(new Handler.Callback() { // from class: com.chery.media.model.business.VrRadioBusiness.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            Bundle data = message.getData();
            VrRadioBusiness.this.handleRequest(data.getString("key"), data.getString("value"), data.getString("id"));
            return true;
        }
    });
    private VrRadioManager.RadioTool mRadioTool = new VrRadioManager.RadioTool() { // from class: com.chery.media.model.business.VrRadioBusiness.2
        @Override // com.chery.libvr.manager.funtionmanager.VrRadioManager.RadioTool
        public int onRequest(String str, String str2, String str3) {
            Message messageObtainMessage = VrRadioBusiness.this.mHandler.obtainMessage(1);
            Bundle data = messageObtainMessage.getData();
            data.putString("key", str);
            data.putString("value", str2);
            data.putString("id", str3);
            messageObtainMessage.setData(data);
            VrRadioBusiness.this.mHandler.sendMessage(messageObtainMessage);
            return 1;
        }
    };

    public static VrRadioBusiness getInstance() {
        if (instance == null) {
            instance = new VrRadioBusiness();
        }
        return instance;
    }

    public void init(Context context) {
        this.context = context;
        VrRadioManager vrRadioManager = VrRadioManager.getInstance();
        this.mVrRadioManager = vrRadioManager;
        vrRadioManager.setRadioTool(this.mRadioTool);
        this.mVrRadioManager.init();
        this.m_radioInfo = RadioBusiness.getInstance().getCurrentChannel().getValue();
        this.m_bPlaying = RadioBusiness.getInstance().getPlayingState().getValue();
        this.m_tunerState = RadioBusiness.getInstance().getTunerState().getValue();
        this.mDabInfo = DabBusiness.getInstance().getCurPlayInfo().getValue();
        this.mDabPlaying = DabBusiness.getInstance().getPlayingState().getValue();
        DabBusiness.getInstance().getCurPlayInfo().observe((LifecycleService) this.context, new Observer<DabInfo>() { // from class: com.chery.media.model.business.VrRadioBusiness.3
            @Override // androidx.lifecycle.Observer
            public void onChanged(DabInfo dabInfo) {
                VrRadioBusiness.this.mDabInfo = dabInfo;
                VrRadioBusiness.this.uploadDabStatus();
            }
        });
        DabBusiness.getInstance().getPlayingState().observe((LifecycleService) this.context, new Observer<Boolean>() { // from class: com.chery.media.model.business.VrRadioBusiness.4
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                PFLog.m25d(VrRadioBusiness.TAG, "mDabPlaying onChanged:" + bool);
                VrRadioBusiness.this.mDabPlaying = bool;
                VrRadioBusiness.this.uploadDabStatus();
            }
        });
        RadioBusiness.getInstance().getCurrentChannel().observe((LifecycleService) this.context, new Observer<RadioDef>() { // from class: com.chery.media.model.business.VrRadioBusiness.5
            @Override // androidx.lifecycle.Observer
            public void onChanged(RadioDef radioDef) {
                VrRadioBusiness.this.m_radioInfo = radioDef;
                VrRadioBusiness.this.uploadStatus();
            }
        });
        RadioBusiness.getInstance().getPlayingState().observe((LifecycleService) this.context, new Observer<Boolean>() { // from class: com.chery.media.model.business.VrRadioBusiness.6
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                PFLog.m25d(VrRadioBusiness.TAG, "m_bPlaying onChanged:" + bool);
                VrRadioBusiness.this.m_bPlaying = bool;
                VrRadioBusiness.this.uploadStatus();
            }
        });
        RadioBusiness.getInstance().getTunerState().observe((LifecycleService) this.context, new Observer<Integer>() { // from class: com.chery.media.model.business.VrRadioBusiness.7
            @Override // androidx.lifecycle.Observer
            public void onChanged(Integer num) {
                VrRadioBusiness.this.m_tunerState = num;
                VrRadioBusiness.this.uploadStatus();
            }
        });
        uploadStatus();
    }

    public void uploadDabStatus() {
        if (this.mDabPlaying.booleanValue() || !this.m_bPlaying.booleanValue()) {
            DabInfo dabInfo = this.mDabInfo;
            uploadStatus("DAB", dabInfo == null ? "" : dabInfo.serviceName, this.mDabPlaying.booleanValue() ? ParamsResValue.RadioPlayState.PLAYING : ParamsResValue.RadioPlayState.STOP);
        }
    }

    public void uploadStatus() {
        if (this.m_bPlaying.booleanValue() || !this.mDabPlaying.booleanValue()) {
            String str = this.m_radioInfo.band == 1 ? ParamsType.RadioBand.f246FM : "AM";
            String strValueOf = String.valueOf(this.m_radioInfo.frequencyKhz);
            Integer num = this.m_lastTunerState;
            Integer num2 = this.m_tunerState;
            String str2 = ParamsResValue.RadioPlayState.PLAYING;
            if (num == num2) {
                if (num2.intValue() == 0) {
                    if (!this.m_bPlaying.booleanValue()) {
                        str2 = ParamsResValue.RadioPlayState.STOP;
                    }
                    uploadStatus(str, strValueOf, str2);
                    return;
                }
                return;
            }
            if (num2.intValue() == 2 || this.m_tunerState.intValue() == 5) {
                str2 = ParamsResValue.RadioPlayState.SCANING;
            } else if (!this.m_bPlaying.booleanValue()) {
                str2 = ParamsResValue.RadioPlayState.STOP;
            }
            this.m_lastTunerState = this.m_tunerState;
            uploadStatus(str, strValueOf, str2);
        }
    }

    public void unInit() {
        this.mVrRadioManager.releaseRadioTool(this.mRadioTool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int handleRequest(java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            r5 = this;
            java.lang.String r0 = com.chery.media.model.business.VrRadioBusiness.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "handleRequest key -> "
            r1.append(r2)
            r1.append(r6)
            java.lang.String r2 = " ; value -> "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r1 = r1.toString()
            com.avn.tools.log.PFLog.m33w(r0, r1)
            int r0 = r6.hashCode()
            r1 = 4
            r2 = 3
            r3 = 2
            r4 = 1
            switch(r0) {
                case -891045294: goto L52;
                case 846423119: goto L48;
                case 1099744128: goto L3e;
                case 1620680667: goto L34;
                case 1683528928: goto L2a;
                default: goto L29;
            }
        L29:
            goto L5c
        L2a:
            java.lang.String r0 = "controlPlayState"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L5c
            r0 = r4
            goto L5d
        L34:
            java.lang.String r0 = "controlCollection"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L5c
            r0 = r2
            goto L5d
        L3e:
            java.lang.String r0 = "playByBand"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L5c
            r0 = 0
            goto L5d
        L48:
            java.lang.String r0 = "controlPlayingList"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L5c
            r0 = r1
            goto L5d
        L52:
            java.lang.String r0 = "scanBand"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L5c
            r0 = r3
            goto L5d
        L5c:
            r0 = -1
        L5d:
            if (r0 == 0) goto L78
            if (r0 == r4) goto L74
            if (r0 == r3) goto L70
            if (r0 == r2) goto L6c
            if (r0 == r1) goto L68
            goto L7b
        L68:
            r5.handleControlPlayingList(r6, r7, r8)
            goto L7b
        L6c:
            r5.handleControlCollection(r6, r7, r8)
            goto L7b
        L70:
            r5.handleScanBand(r6, r7, r8)
            goto L7b
        L74:
            r5.handleControlPlayState(r6, r7, r8)
            goto L7b
        L78:
            r5.handlePlayByBand(r6, r7, r8)
        L7b:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.VrRadioBusiness.handleRequest(java.lang.String, java.lang.String, java.lang.String):int");
    }

    private void handleControlPlayingList(String str, String str2, String str3) {
        String action = ((ActionRadio) JsonUtil.parseObject(str2, ActionRadio.class)).getSemantic().getAction();
        if (((action.hashCode() == 2432586 && action.equals("OPEN")) ? (char) 0 : (char) 65535) != 0) {
            return;
        }
        mockShowRadioListResponse(str, action, str3);
    }

    private void mockShowRadioListResponse(String str, String str2, String str3) {
        String str4 = moveToRadio() ? "SUCCESS" : ParamsResValue.RadioControlListResult.ALREADY_SHOWN;
        ActionCommon actionCommon = new ActionCommon();
        ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
        semanticBean.setAction(str2);
        semanticBean.setValue(str4);
        actionCommon.setSemantic(semanticBean);
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handleControlCollection(java.lang.String r5, java.lang.String r6, java.lang.String r7) {
        /*
            r4 = this;
            java.lang.Class<com.chery.libvr.bean.action.ActionRadio> r0 = com.chery.libvr.bean.action.ActionRadio.class
            java.lang.Object r6 = com.avn.tools.json.JsonUtil.parseObject(r6, r0)
            com.chery.libvr.bean.action.ActionRadio r6 = (com.chery.libvr.bean.action.ActionRadio) r6
            com.chery.libvr.bean.action.ActionRadio$SemanticBean r6 = r6.getSemantic()
            java.lang.String r6 = r6.getAction()
            int r0 = r6.hashCode()
            r1 = -933585851(0xffffffffc85a9c45, float:-223857.08)
            r2 = 2
            r3 = 1
            if (r0 == r1) goto L3a
            r1 = 2458420(0x258334, float:3.44498E-39)
            if (r0 == r1) goto L30
            r1 = 1667427594(0x6362ed0a, float:4.1860446E21)
            if (r0 == r1) goto L26
            goto L44
        L26:
            java.lang.String r0 = "COLLECT"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L44
            r0 = 0
            goto L45
        L30:
            java.lang.String r0 = "PLAY"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L44
            r0 = r2
            goto L45
        L3a:
            java.lang.String r0 = "CANCEL_COLLECT"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L44
            r0 = r3
            goto L45
        L44:
            r0 = -1
        L45:
            if (r0 == 0) goto L54
            if (r0 == r3) goto L50
            if (r0 == r2) goto L4c
            goto L57
        L4c:
            r4.mockPlayCollectResponse(r5, r6, r7)
            goto L57
        L50:
            r4.mockCancelCollectResponse(r5, r6, r7)
            goto L57
        L54:
            r4.mockCollectResponse(r5, r6, r7)
        L57:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.VrRadioBusiness.handleControlCollection(java.lang.String, java.lang.String, java.lang.String):void");
    }

    private void mockPlayCollectResponse(String str, String str2, String str3) {
        String strTuneByListByVr = RadioBusiness.getInstance().tuneByListByVr();
        moveToRadio();
        ActionCommon actionCommon = new ActionCommon();
        ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
        semanticBean.setAction(str2);
        semanticBean.setValue(strTuneByListByVr);
        actionCommon.setSemantic(semanticBean);
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
    }

    private void mockCancelCollectResponse(String str, String str2, String str3) {
        String strAddCollection;
        if (MediaBusiness.getInstance().isDabLastPlayed()) {
            if (DabBusiness.getInstance().isFavor(this.mDabInfo)) {
                DabBusiness.getInstance().cancelFavor(this.mDabInfo);
                strAddCollection = "SUCCESS";
            } else {
                strAddCollection = "ALREADY_NO_SAVED";
            }
        } else {
            strAddCollection = RadioBusiness.getInstance().addCollection(this.m_radioInfo.frequencyKhz, false);
        }
        ActionCommon actionCommon = new ActionCommon();
        ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
        semanticBean.setAction(str2);
        semanticBean.setValue(strAddCollection);
        actionCommon.setSemantic(semanticBean);
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
    }

    private void mockCollectResponse(String str, String str2, String str3) {
        String strAddCollection;
        if (MediaBusiness.getInstance().isDabLastPlayed()) {
            if (DabBusiness.getInstance().isFavor(this.mDabInfo)) {
                strAddCollection = "ALREADY_SAVED";
            } else if (DabBusiness.getInstance().getFavorList().size() >= 20) {
                strAddCollection = "FAIL_LIST_FULL";
            } else {
                DabBusiness.getInstance().addFavor(this.mDabInfo);
                strAddCollection = "SUCCESS";
            }
        } else {
            strAddCollection = RadioBusiness.getInstance().addCollection(this.m_radioInfo.frequencyKhz, true);
        }
        ActionCommon actionCommon = new ActionCommon();
        ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
        semanticBean.setAction(str2);
        semanticBean.setValue(strAddCollection);
        actionCommon.setSemantic(semanticBean);
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handleScanBand(java.lang.String r4, java.lang.String r5, java.lang.String r6) {
        /*
            r3 = this;
            java.lang.Class<com.chery.libvr.bean.action.ActionRadio> r0 = com.chery.libvr.bean.action.ActionRadio.class
            java.lang.Object r5 = com.avn.tools.json.JsonUtil.parseObject(r5, r0)
            com.chery.libvr.bean.action.ActionRadio r5 = (com.chery.libvr.bean.action.ActionRadio) r5
            com.chery.libvr.bean.action.ActionRadio$SemanticBean r5 = r5.getSemantic()
            java.lang.String r5 = r5.getAction()
            int r0 = r5.hashCode()
            r1 = 2432586(0x251e4a, float:3.408779E-39)
            r2 = 1
            if (r0 == r1) goto L2a
            r1 = 64218584(0x3d3e5d8, float:1.2454235E-36)
            if (r0 == r1) goto L20
            goto L34
        L20:
            java.lang.String r0 = "CLOSE"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L34
            r0 = r2
            goto L35
        L2a:
            java.lang.String r0 = "OPEN"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L34
            r0 = 0
            goto L35
        L34:
            r0 = -1
        L35:
            if (r0 == 0) goto L3e
            if (r0 == r2) goto L3a
            goto L41
        L3a:
            r3.mockStopScanResponse(r4, r5, r6)
            goto L41
        L3e:
            r3.mockScanResponse(r4, r5, r6)
        L41:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.VrRadioBusiness.handleScanBand(java.lang.String, java.lang.String, java.lang.String):void");
    }

    private void mockScanResponse(String str, String str2, String str3) {
        RadioBusiness.getInstance().scanByVr();
        moveToRadio();
        ActionCommon actionCommon = new ActionCommon();
        ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
        semanticBean.setAction(str2);
        semanticBean.setValue("SUCCESS");
        actionCommon.setSemantic(semanticBean);
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
    }

    private void mockStopScanResponse(String str, String str2, String str3) {
        RadioBusiness.getInstance().cancel();
        ActionCommon actionCommon = new ActionCommon();
        ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
        semanticBean.setAction(str2);
        semanticBean.setValue("SUCCESS");
        actionCommon.setSemantic(semanticBean);
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handleControlPlayState(java.lang.String r5, java.lang.String r6, java.lang.String r7) {
        /*
            r4 = this;
            java.lang.Class<com.chery.libvr.bean.action.ActionRadio> r0 = com.chery.libvr.bean.action.ActionRadio.class
            java.lang.Object r6 = com.avn.tools.json.JsonUtil.parseObject(r6, r0)
            com.chery.libvr.bean.action.ActionRadio r6 = (com.chery.libvr.bean.action.ActionRadio) r6
            com.chery.libvr.bean.action.ActionRadio$SemanticBean r6 = r6.getSemantic()
            java.lang.String r6 = r6.getAction()
            int r0 = r6.hashCode()
            r1 = 3
            r2 = 2
            r3 = 1
            switch(r0) {
                case -491148553: goto L39;
                case 2392819: goto L2f;
                case 2458420: goto L25;
                case 75902422: goto L1b;
                default: goto L1a;
            }
        L1a:
            goto L43
        L1b:
            java.lang.String r0 = "PAUSE"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L43
            r0 = 0
            goto L44
        L25:
            java.lang.String r0 = "PLAY"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L43
            r0 = r3
            goto L44
        L2f:
            java.lang.String r0 = "NEXT"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L43
            r0 = r1
            goto L44
        L39:
            java.lang.String r0 = "PREVIOUS"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L43
            r0 = r2
            goto L44
        L43:
            r0 = -1
        L44:
            if (r0 == 0) goto L59
            if (r0 == r3) goto L55
            if (r0 == r2) goto L51
            if (r0 == r1) goto L4d
            goto L5c
        L4d:
            r4.mockRadioNextResponse(r5, r6, r7)
            goto L5c
        L51:
            r4.mockRadioPreviousResponse(r5, r6, r7)
            goto L5c
        L55:
            r4.mockRadioResumePlayResponse(r5, r6, r7)
            goto L5c
        L59:
            r4.mockRadioStopResponse(r5, r6, r7)
        L5c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.VrRadioBusiness.handleControlPlayState(java.lang.String, java.lang.String, java.lang.String):void");
    }

    private void mockRadioNextResponse(String str, String str2, String str3) {
        if (MediaBusiness.getInstance().isDabLastPlayed()) {
            DabBusiness.getInstance().setPlayStateByVr(true);
            DabBusiness.getInstance().playNext();
        } else {
            RadioBusiness.getInstance().setPlayingStateByVr(true);
            RadioBusiness.getInstance().seek(0, true);
        }
        ActionCommon actionCommon = new ActionCommon();
        ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
        semanticBean.setAction(str2);
        semanticBean.setValue("SUCCESS");
        actionCommon.setSemantic(semanticBean);
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
    }

    private void mockRadioPreviousResponse(String str, String str2, String str3) {
        if (MediaBusiness.getInstance().isDabLastPlayed()) {
            DabBusiness.getInstance().setPlayStateByVr(true);
            DabBusiness.getInstance().playPrevious();
        } else {
            RadioBusiness.getInstance().setPlayingStateByVr(true);
            RadioBusiness.getInstance().seek(1, true);
        }
        ActionCommon actionCommon = new ActionCommon();
        ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
        semanticBean.setAction(str2);
        semanticBean.setValue("SUCCESS");
        actionCommon.setSemantic(semanticBean);
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
    }

    private void mockRadioResumePlayResponse(String str, String str2, String str3) {
        String str4 = "ALREADY_EXPECT";
        if (MediaBusiness.getInstance().isDabLastPlayed()) {
            if (!this.mDabPlaying.booleanValue()) {
                DabBusiness.getInstance().setPlayStateByVr(true);
                str4 = "SUCCESS";
            }
        } else if (!this.m_bPlaying.booleanValue()) {
            RadioBusiness.getInstance().setPlayingStateByVr(true);
            str4 = "SUCCESS";
        }
        ActionCommon actionCommon = new ActionCommon();
        ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
        semanticBean.setAction(str2);
        semanticBean.setValue(str4);
        actionCommon.setSemantic(semanticBean);
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
    }

    private void mockRadioStopResponse(String str, String str2, String str3) {
        PFLog.m25d(TAG, "mockRadioStopResponse");
        if (MediaBusiness.getInstance().isDabLastPlayed()) {
            DabBusiness.getInstance().setPlayStateByVr(false);
        } else {
            RadioBusiness.getInstance().setPlayingStateByVr(false);
        }
        ActionCommon actionCommon = new ActionCommon();
        ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
        semanticBean.setAction(str2);
        semanticBean.setValue("SUCCESS");
        actionCommon.setSemantic(semanticBean);
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
    }

    private void handlePlayByBand(String str, String str2, String str3) {
        ActionRadio actionRadio = (ActionRadio) JsonUtil.parseObject(str2, ActionRadio.class);
        String type = actionRadio.getSemantic().getType();
        String value = actionRadio.getSemantic().getValue();
        String action = actionRadio.getSemantic().getAction();
        if (((action.hashCode() == 2458420 && action.equals("PLAY")) ? (char) 0 : (char) 65535) != 0) {
            return;
        }
        mockRadioPlayResponse(str, action, value, type, str3);
    }

    private void mockDabPlayResponse(String str, String str2, String str3, String str4, String str5) {
        if (TextUtils.equals("DAB", str4)) {
            DabBusiness.getInstance().requestAudioFocus();
            DabBusiness.getInstance().setPlayStateByVr(true);
            moveToDab();
        }
        ActionCommon actionCommon = new ActionCommon();
        ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
        semanticBean.setAction(str2);
        semanticBean.setValue("SUCCESS");
        actionCommon.setSemantic(semanticBean);
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str5);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0040 A[PHI: r1
      0x0040: PHI (r1v23 int) = (r1v5 int), (r1v24 int) binds: [B:28:0x0092, B:9:0x003e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void mockRadioPlayResponse(java.lang.String r12, java.lang.String r13, java.lang.String r14, java.lang.String r15, java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.VrRadioBusiness.mockRadioPlayResponse(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    private void uploadStatus(String str, String str2, String str3) {
        RadioResDetail radioResDetail = new RadioResDetail();
        radioResDetail.setBand(str);
        radioResDetail.setFrequency(str2);
        radioResDetail.setPlayState(str3);
        sendUploadResponse(RadioResKey.NOTIFY_RADIO_PLAY_INFO, JsonUtil.toJSONString(radioResDetail));
    }

    private void sendUploadResponse(String str, String str2) {
        Response response = new Response();
        response.setResultCode(4);
        response.setDetail(str2);
        response.setPkgName("com.chery.media");
        String jSONString = JsonUtil.toJSONString(response);
        PFLog.m33w(TAG, "sendUploadResponse value -> " + jSONString);
        this.mVrRadioManager.onResponse(str, jSONString, "");
    }

    private void sendResponse(String str, String str2, String str3) {
        Response response = new Response();
        response.setResultCode(0);
        response.setDetail(str2);
        response.setPkgName("com.chery.media");
        String jSONString = JsonUtil.toJSONString(response);
        PFLog.m33w(TAG, "sendResponse value -> " + jSONString);
        this.mVrRadioManager.onResponse(str, jSONString, str3);
    }

    private boolean moveToRadio() {
        PageManager pageManager = new PageManager(this.context);
        if (pageManager.isPageShown("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_RADIO_PLAYER) || duringNaviActivity()) {
            return false;
        }
        pageManager.openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_RADIO_PLAYER);
        return true;
    }

    private boolean moveToDab() {
        PageManager pageManager = new PageManager(this.context);
        if (pageManager.isPageShown("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_DAB_PLAYER) || duringNaviActivity()) {
            return false;
        }
        pageManager.openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_DAB_PLAYER);
        return true;
    }

    private boolean duringNaviActivity() throws SecurityException {
        ComponentName topActivityComponentName = ActivityUtils.getTopActivityComponentName(this.context);
        if (topActivityComponentName == null) {
            return false;
        }
        return PackageConstants.TurboDog.PACKAGE_NAME.equals(topActivityComponentName.getPackageName());
    }
}
