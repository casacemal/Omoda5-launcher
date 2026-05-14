package com.chery.carplay;

import android.content.Context;
import android.media.session.MediaSession;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.carplay.CPCommon;
import com.yfve.t19c.projection.carplay.proxy.CarPlayClient;
import com.yfve.t19c.projection.carplay.proxy.CarPlayListener;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public class CarplayModel {
    private static final String BT_MAC = "btMac";
    private static final String CONNECTTYPE = "connecttype";
    private static final String DEVICE_ATTACHED = "deviceAttached";
    private static final String DEVICE_NAME = "deviceName";
    private static final String EXTRA_CALLED_NUMBER = "calledNumber";
    private static final String EXTRA_CALLER_NAME = "callerName";
    private static final String EXTRA_START_TIME = "startTime";
    private static final String EXTRA_TEL_STS = "telSts";
    private static final String IS_SUPPORT_CARPLAY = "isSupportCarplay";
    private static final int MSG_BINDER_STS = 8;
    private static final int MSG_CALL_INFO = 19;
    private static final int MSG_CP_AUTH = 17;
    private static final int MSG_DISABLE_BT = 16;
    private static final int MSG_MEDIASESSION_TOKEN = 7;
    private static final int MSG_NOTFICATION = 6;
    private static final int MSG_NOTIFY_DEV_TRANSPORT = 1;
    private static final int MSG_NOTIFY_LAUNCHER_POP = 20;
    private static final int MSG_SESSION_STS_UPDATE = 5;
    private static final int MSG_SET_VIDEO_FOCUS = 4;
    private static final int MSG_SIRI = 9;
    private static final int MSG_UPDATE_CALL_INFO = 3;
    private static final int MSG_UPDATE_NOW_PLAYING_INFO = 2;
    private static final int MSG_USB_ATTACHED = 18;
    private static final String SERIAL_NUM = "serialNum";
    private static final String SESSION_STS = "sessionSts";
    private static final String TAG = CarLog.concatTag(CarLog.TAG_COMMON, CarplayModel.class);
    private static final String UNIQUEINFO = "uniqueInfo";
    private HandlerThread handlerThread;
    private CarPlayClient mCarPlayClient;
    private Context mContext;
    private CarplayListenerCallback mCpCallback;
    private CPHandler mHandler;
    private ProxyCarPlayListener mCarPlayListener = new ProxyCarPlayListener();
    private String mBtMacAddress = "";
    private boolean videoStarted = false;
    private boolean borrowStarted = false;

    public interface CarplayListenerCallback {
        void onNotification(String str);

        void onNotifyCPReadyToAuth(String str, int r2);

        void onNotifyDevTransport(String str, String str2, boolean z);

        void onNotifyDisableBt(String str);

        void onNotifyLauncherPop(int r1, String str);

        void onNotifyVideoChange(boolean z);

        void onSessionStsUpdate(int r1, String str, String str2);

        void onSetVideoFocus(boolean z);

        void onUSBIAP2DeviceStsChanged(boolean z, String str);

        void onUpdateCallInfo(int r1, String str, String str2, long j);

        void onUpdateClientSts(boolean z);

        void onUpdateMediaToken(MediaSession.Token token);

        void onUpdateSiriSts(boolean z);
    }

    private class CPHandler extends Handler {
        public CPHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (CarplayModel.this.mCpCallback == null) {
                PFLog.m33w(CarplayModel.TAG, "carplayListenerCallback = null not handle");
                return;
            }
            int r0 = message.what;
            if (r0 == 1) {
                Bundle data = message.getData();
                if (data == null) {
                    return;
                }
                CarplayModel.this.mCpCallback.onNotifyDevTransport(data.getString(CarplayModel.BT_MAC), data.getString(CarplayModel.SERIAL_NUM), data.getBoolean(CarplayModel.IS_SUPPORT_CARPLAY));
            } else {
                switch (r0) {
                    case 4:
                        CarplayModel.this.mCpCallback.onSetVideoFocus(((Boolean) message.obj).booleanValue());
                        break;
                    case 5:
                        Bundle data2 = message.getData();
                        if (data2 != null) {
                            int r2 = data2.getInt(CarplayModel.SESSION_STS);
                            if (r2 != 0) {
                                CarplayModel.this.mBtMacAddress = "";
                                CarplayModel.this.videoStarted = false;
                                CarplayModel.this.borrowStarted = false;
                            }
                            CarplayModel.this.mCpCallback.onSessionStsUpdate(r2, data2.getString(CarplayModel.BT_MAC), data2.getString(CarplayModel.DEVICE_NAME));
                            break;
                        } else {
                            return;
                        }
                    case 6:
                        CarplayModel.this.mCpCallback.onNotification((String) message.obj);
                        break;
                    case 7:
                        CarplayModel.this.mCpCallback.onUpdateMediaToken((MediaSession.Token) message.obj);
                        break;
                    case 8:
                        CarplayModel.this.mCpCallback.onUpdateClientSts(((Boolean) message.obj).booleanValue());
                        break;
                    case 9:
                        CarplayModel.this.mCpCallback.onUpdateSiriSts(((Boolean) message.obj).booleanValue());
                        break;
                    default:
                        switch (r0) {
                            case 16:
                                CarplayModel.this.mBtMacAddress = ((String) message.obj).toUpperCase();
                                CarplayModel.this.mCpCallback.onNotifyDisableBt(CarplayModel.this.mBtMacAddress);
                                break;
                            case 17:
                                Bundle data3 = message.getData();
                                if (data3 != null) {
                                    CarplayModel.this.mCpCallback.onNotifyCPReadyToAuth(data3.getString(CarplayModel.UNIQUEINFO), data3.getInt(CarplayModel.CONNECTTYPE));
                                    break;
                                } else {
                                    return;
                                }
                            case 18:
                                Bundle data4 = message.getData();
                                if (data4 != null) {
                                    String string = data4.getString(CarplayModel.SERIAL_NUM);
                                    boolean z = data4.getBoolean(CarplayModel.DEVICE_ATTACHED);
                                    if (!z) {
                                        CarplayModel.this.videoStarted = false;
                                        CarplayModel.this.borrowStarted = false;
                                    }
                                    CarplayModel.this.mCpCallback.onUSBIAP2DeviceStsChanged(z, string);
                                    break;
                                } else {
                                    return;
                                }
                            case 19:
                                Bundle data5 = message.getData();
                                if (data5 != null) {
                                    CarplayModel.this.mCpCallback.onUpdateCallInfo(data5.getInt(CarplayModel.EXTRA_TEL_STS), data5.getString(CarplayModel.EXTRA_CALLED_NUMBER), data5.getString(CarplayModel.EXTRA_CALLER_NAME), data5.getLong(CarplayModel.EXTRA_START_TIME));
                                    break;
                                } else {
                                    return;
                                }
                            case 20:
                                CarplayModel.this.mCpCallback.onNotifyLauncherPop(message.arg1, (String) message.obj);
                                break;
                        }
                }
            }
            super.handleMessage(message);
        }
    }

    public CarplayModel(Context context) {
        PFLog.m29i(TAG, "CarplayModel: getCallingPid: " + Binder.getCallingPid());
        this.mContext = context;
        CarPlayClient carPlayClient = new CarPlayClient();
        this.mCarPlayClient = carPlayClient;
        carPlayClient.initialise(this.mContext);
        this.handlerThread = new HandlerThread(TAG);
    }

    public void init() {
        PFLog.m29i(TAG, "init: ");
        this.handlerThread.start();
        this.mHandler = new CPHandler(this.handlerThread.getLooper());
    }

    public void destroy() {
        PFLog.m29i(TAG, "destroy: getCallingPid: " + Binder.getCallingPid());
        this.mCarPlayClient.uninitialise(this.mContext);
    }

    public void registerListener(CarplayListenerCallback carplayListenerCallback) {
        PFLog.m29i(TAG, "registerListener: getCallingPid: " + Binder.getCallingPid());
        this.mCarPlayClient.registerListener(this.mCarPlayListener);
        this.mCpCallback = carplayListenerCallback;
    }

    public void unRegisterListener() {
        PFLog.m29i(TAG, "unRegisterListener: getCallingPid: " + Binder.getCallingPid());
        this.mCarPlayClient.unregisterListener(this.mCarPlayListener);
        this.mCpCallback = null;
    }

    public void exitActivity() {
        this.mCarPlayClient.exitActivity();
    }

    public void requestUI(String str) throws UnsupportedEncodingException {
        this.mCarPlayClient.requestUI(str);
    }

    public void startSession(String str, boolean z) {
        this.mCarPlayClient.startSession(str, z);
    }

    public void stopSession() {
        this.mCarPlayClient.stopSession();
    }

    public void lunchApp(String str) {
        this.mCarPlayClient.lunchApp(str);
    }

    public void setSurface(Surface surface) {
        this.mCarPlayClient.setSurface(surface);
    }

    public void roleSwitchComplete(String str) {
        this.mCarPlayClient.roleSwitchComplete(str);
    }

    public String getConnectedMacAddress() {
        return isCPStarted() ? this.mBtMacAddress : "";
    }

    public boolean isVideoStarted() {
        return this.videoStarted;
    }

    public boolean getCarPlayVideoState() {
        return this.mCarPlayClient.getCarPlayVideoState();
    }

    public void setCarPlayConnect(boolean z) {
        this.mCarPlayClient.setCarPlayConnect();
    }

    public boolean isBorrowStarted() {
        return this.borrowStarted;
    }

    public void sendBorrowStart() {
        if (getCarPlayVideoState()) {
            PFLog.m29i(TAG, "sendBorrowStart.");
            this.mCarPlayClient.requestResource(true, true, true, 1);
            this.borrowStarted = true;
            return;
        }
        PFLog.m33w(TAG, "sendBorrowStart:Carplay is not on top. Do nothing. ");
    }

    public void sendBorrowEnd() {
        if (this.borrowStarted) {
            PFLog.m29i(TAG, "sendBorrowEnd.");
            this.mCarPlayClient.requestResource(true, true, false, 1);
            this.borrowStarted = false;
            return;
        }
        PFLog.m33w(TAG, "sendBorrowEnd:Borrow unSend. Do nothing. ");
    }

    public void sendNotShowBorrowEnd() throws UnsupportedEncodingException {
        if (this.borrowStarted) {
            PFLog.m25d(TAG, "requestVideoResource: true");
            this.mCarPlayClient.requestVideoResource(true);
            this.borrowStarted = false;
            return;
        }
        PFLog.m33w(TAG, "sendBorrowEnd:[Not Show CP]Borrow unSend. Do nothing. ");
    }

    public void requestVideoResource(boolean z) throws UnsupportedEncodingException {
        PFLog.m25d(TAG, "requestVideoResource " + z);
        this.mCarPlayClient.requestVideoResource(z ^ true);
    }

    public void requestCPMedia() {
        PFLog.m25d(TAG, "requestCPMedia");
        this.mCarPlayClient.requestCPMedia();
    }

    public boolean isCPStarted() {
        return this.mCarPlayClient.isCPStarted();
    }

    private class ProxyCarPlayListener extends CarPlayListener {
        private ProxyCarPlayListener() {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.CarPlayListener
        public void onNotifyDevTransport(String str, String str2, boolean z) {
            PFLog.m25d(CarplayModel.TAG, "onNotifyDevTransport: btMac:" + str + ",serialNum:" + str2 + ",isSupportCarPlay:" + z);
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            Bundle bundle = new Bundle();
            bundle.putString(CarplayModel.BT_MAC, str);
            bundle.putString(CarplayModel.SERIAL_NUM, str2);
            bundle.putBoolean(CarplayModel.IS_SUPPORT_CARPLAY, z);
            messageObtain.setData(bundle);
            CarplayModel.this.mHandler.sendMessage(messageObtain);
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.CarPlayListener
        public void onSessionStsUpdate(int r4, String str, String str2) {
            PFLog.m25d(CarplayModel.TAG, "onSessionStsUpdate: sts:" + r4 + ",btMac:" + str + ",deviceName:" + str2);
            Message messageObtain = Message.obtain();
            messageObtain.what = 5;
            Bundle bundle = new Bundle();
            bundle.putInt(CarplayModel.SESSION_STS, r4);
            bundle.putString(CarplayModel.BT_MAC, str);
            bundle.putString(CarplayModel.DEVICE_NAME, str2);
            messageObtain.setData(bundle);
            CarplayModel.this.mHandler.sendMessage(messageObtain);
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.CarPlayListener
        public void onSetVideoFocus(boolean z) {
            PFLog.m25d(CarplayModel.TAG, "onSetVideoFocus: isExitActivity = " + z);
            CarplayModel.this.mHandler.obtainMessage(4, Boolean.valueOf(z)).sendToTarget();
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.CarPlayListener
        public void onNotification(String str) {
            PFLog.m25d(CarplayModel.TAG, "onNotification: " + str);
            CarplayModel.this.mHandler.obtainMessage(6, str).sendToTarget();
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.CarPlayListener
        public void onUpdateMediaToken(MediaSession.Token token) {
            if (token != null) {
                PFLog.m25d(CarplayModel.TAG, "onUpdateMediaToken: " + token.toString());
                CarplayModel.this.mHandler.obtainMessage(7, token).sendToTarget();
                return;
            }
            PFLog.m27e(CarplayModel.TAG, "onUpdateMediaToken: token is null !");
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.CarPlayListener
        public void onUpdateNaviInfo(String str, int r2, int r3, int r4, String str2) {
            super.onUpdateNaviInfo(str, r2, r3, r4, str2);
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.CarPlayListener
        public void onUpdateCallInfo(int r4, String str, String str2, long j) {
            super.onUpdateCallInfo(r4, str, str2, j);
            PFLog.m25d(CarplayModel.TAG, "onUpdateCallInfo: telSts:" + r4 + ",callerNumber:" + str + ",callerName:" + str2 + ",startTime:" + j);
            Message messageObtain = Message.obtain();
            messageObtain.what = 19;
            Bundle bundle = new Bundle();
            bundle.putInt(CarplayModel.EXTRA_TEL_STS, r4);
            bundle.putString(CarplayModel.EXTRA_CALLED_NUMBER, str);
            bundle.putString(CarplayModel.EXTRA_CALLER_NAME, str2);
            bundle.putLong(CarplayModel.EXTRA_START_TIME, j);
            messageObtain.setData(bundle);
            CarplayModel.this.mHandler.sendMessage(messageObtain);
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.CarPlayListener
        public void onUpdateClientSts(boolean z) {
            String str = CarplayModel.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onUpdateClientSts: ");
            sb.append(z ? "CONNECTED" : "DISCONNECTED");
            PFLog.m25d(str, sb.toString());
            CarplayModel.this.mHandler.obtainMessage(8, Boolean.valueOf(z)).sendToTarget();
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.CarPlayListener
        public void onUpdateSiriSts(boolean z) {
            String str = CarplayModel.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onUpdateSiriSts: ");
            sb.append(z ? "ON" : "OFF");
            PFLog.m25d(str, sb.toString());
            CarplayModel.this.mHandler.obtainMessage(9, Boolean.valueOf(z)).sendToTarget();
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.CarPlayListener
        public void onNotifyDisableBt(String str) {
            PFLog.m25d(CarplayModel.TAG, "onNotifyDisableBt: btMacAddress: " + str);
            CarplayModel.this.mHandler.obtainMessage(16, str).sendToTarget();
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.CarPlayListener
        public void onNotifyCPReadyToAuth(String str, int r5) {
            PFLog.m25d(CarplayModel.TAG, "onNotifyCPReadyToAuth: uniqueInfo:" + str + ",connectType:" + CPCommon.ConnectType.toString(r5));
            Message messageObtain = Message.obtain();
            messageObtain.what = 17;
            Bundle bundle = new Bundle();
            bundle.putString(CarplayModel.UNIQUEINFO, str);
            bundle.putInt(CarplayModel.CONNECTTYPE, r5);
            messageObtain.setData(bundle);
            CarplayModel.this.mHandler.sendMessage(messageObtain);
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.CarPlayListener
        public void onUSBIAP2DeviceStsChanged(boolean z, String str) {
            PFLog.m25d(CarplayModel.TAG, "onUSBIAP2DeviceStsChanged: isDeviceAttatched:" + z + ",serialNum:" + str);
            Message messageObtain = Message.obtain();
            messageObtain.what = 18;
            Bundle bundle = new Bundle();
            bundle.putBoolean(CarplayModel.DEVICE_ATTACHED, z);
            bundle.putString(CarplayModel.SERIAL_NUM, str);
            messageObtain.setData(bundle);
            CarplayModel.this.mHandler.sendMessage(messageObtain);
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.CarPlayListener
        public void onNotifyLauncherPop(int r4, String str, String str2) {
            PFLog.m25d(CarplayModel.TAG, "onNotifyLauncherPop: popType:" + r4 + ",popMsg:" + str + ",deviceName:" + str2);
            CarplayModel.this.mHandler.obtainMessage(20, r4, 0, str2).sendToTarget();
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.CarPlayListener
        public void onNotifyVideoChange(final boolean z) {
            PFLog.m25d(CarplayModel.TAG, "onNotifyVideoChange: isStart:" + z);
            super.onNotifyVideoChange(z);
            CarplayModel.this.mHandler.post(new Runnable() { // from class: com.chery.carplay.CarplayModel.ProxyCarPlayListener.1
                @Override // java.lang.Runnable
                public void run() {
                    if (z == CarplayModel.this.videoStarted) {
                        return;
                    }
                    CarplayModel.this.videoStarted = z;
                    if (CarplayModel.this.mCpCallback != null) {
                        CarplayModel.this.mCpCallback.onNotifyVideoChange(z);
                    }
                }
            });
        }
    }
}
