package com.chery.androidauto;

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
import com.yfve.t19c.projection.androidauto.proxy.AAPhoneCallListener;
import com.yfve.t19c.projection.androidauto.proxy.AAProxyListener;
import com.yfve.t19c.projection.androidauto.proxy.AAUserManager;
import com.yfve.t19c.projection.androidauto.proxy.AndroidAutoClient;
import com.yfve.t19c.projection.androidauto.proxy.Call;

/* loaded from: classes.dex */
public class AAModel {
    private static final String BT_MAC = "btMac";
    private static final String DEVICE_NAME = "deviceName";
    private static final String IS_SUPPORT_CARPLAY = "isSupportCarplay";
    private static final int MSG_AA_SERVICE_CONNECTED = 16;
    private static final int MSG_AA_SERVICE_DISCONNECTED = 17;
    private static final int MSG_AUTHENTICATION_RESULT = 10;
    private static final int MSG_MEDIASESSION_TOKEN = 7;
    private static final int MSG_NOTFICATION = 6;
    private static final int MSG_NOTIFY_DEV_TRANSPORT = 1;
    private static final int MSG_PREPARE_REMOTE_DEVICE = 9;
    private static final int MSG_SESSION_STS_UPDATE = 5;
    private static final int MSG_SET_VIDEO_FOCUS = 4;
    private static final int MSG_UPDATE_ACTIVITY_STATE = 11;
    private static final int MSG_UPDATE_CALL_INFO = 3;
    private static final int MSG_UPDATE_NOW_PLAYING_INFO = 2;
    private static final int MSG_VRSESSION_STATE = 8;
    private static final String SERIAL_NUM = "serialNum";
    private static final String SESSION_STS = "sessionSts";
    private static final String TAG = CarLog.concatTag(CarLog.TAG_COMMON, AAModel.class);
    private HandlerThread handlerThread;
    private boolean isAABindSuccess = false;
    private ProxyAABindServiceStatusListener mAABindListener;
    private AABindServiceCallback mAABindServiceCallback;
    private AAListenerCallback mAACallback;
    private AndroidAutoClient mAAClient;
    private ProxyAAListener mAAListener;
    private Context mContext;
    private AAHandler mHandler;
    private String mMacAddress;
    private ProxyAAPhoneListener mPhoneListener;

    public interface AABindServiceCallback {
        void onBindServiceConnected();

        void onBindServiceDisConnected();
    }

    public interface AAListenerCallback {
        void OnPrepareRemoteHfpDevice(String str);

        void onAuthenticationResult(int r1);

        void onNotification(String str);

        void onNotifyDevTransport(String str, String str2);

        void onSessionStsUpdate(int r1, String str, String str2);

        void onSetVideoFocus(int r1);

        void onUpdateActivityState(int r1);

        void onUpdateMediaToken(MediaSession.Token token);

        void onUpdateVoiceSessionState(int r1);
    }

    private class AAHandler extends Handler {
        public AAHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int r0 = message.what;
            if (r0 != 1) {
                if (r0 != 16) {
                    if (r0 != 17) {
                        switch (r0) {
                            case 4:
                                if (AAModel.this.mAACallback == null) {
                                    PFLog.m33w(AAModel.TAG, "aaListenerCallback = null MSG_SET_VIDEO_FOCUS not handle");
                                    return;
                                } else {
                                    AAModel.this.mAACallback.onSetVideoFocus(message.arg1);
                                    break;
                                }
                            case 5:
                                if (AAModel.this.mAACallback == null) {
                                    PFLog.m33w(AAModel.TAG, "aaListenerCallback = null MSG_SESSION_STS_UPDATE not handle");
                                    return;
                                }
                                Bundle data = message.getData();
                                if (data != null) {
                                    AAModel.this.mAACallback.onSessionStsUpdate(data.getInt(AAModel.SESSION_STS), data.getString(AAModel.BT_MAC), data.getString(AAModel.DEVICE_NAME));
                                    break;
                                } else {
                                    return;
                                }
                            case 6:
                                if (AAModel.this.mAACallback == null) {
                                    PFLog.m33w(AAModel.TAG, "aaListenerCallback = null MSG_NOTFICATION not handle");
                                    return;
                                } else {
                                    AAModel.this.mAACallback.onNotification((String) message.obj);
                                    break;
                                }
                            case 7:
                                if (AAModel.this.mAACallback == null) {
                                    PFLog.m33w(AAModel.TAG, "aaListenerCallback = null MSG_MEDIASESSION_TOKEN not handle");
                                    return;
                                } else {
                                    AAModel.this.mAACallback.onUpdateMediaToken((MediaSession.Token) message.obj);
                                    break;
                                }
                            case 8:
                                if (AAModel.this.mAACallback == null) {
                                    PFLog.m33w(AAModel.TAG, "aaListenerCallback = null MSG_VRSESSION_STATE not handle");
                                    return;
                                } else {
                                    AAModel.this.mAACallback.onUpdateVoiceSessionState(message.arg1);
                                    break;
                                }
                            case 9:
                                if (AAModel.this.mAACallback == null) {
                                    PFLog.m33w(AAModel.TAG, "aaListenerCallback = null MSG_PREPARE_REMOTE_DEVICE not handle");
                                    return;
                                }
                                AAModel.this.mMacAddress = (String) message.obj;
                                AAModel.this.mAACallback.OnPrepareRemoteHfpDevice(AAModel.this.mMacAddress);
                                break;
                            case 10:
                                if (AAModel.this.mAACallback == null) {
                                    PFLog.m33w(AAModel.TAG, "aaListenerCallback = null MSG_AUTHENTICATION_RESULT not handle");
                                    return;
                                } else {
                                    AAModel.this.mAACallback.onAuthenticationResult(message.arg1);
                                    break;
                                }
                            case 11:
                                if (AAModel.this.mAACallback == null) {
                                    PFLog.m33w(AAModel.TAG, "aaListenerCallback = null MSG_UPDATE_ACTIVITY_STATE not handle");
                                    return;
                                } else {
                                    AAModel.this.mAACallback.onUpdateActivityState(message.arg1);
                                    break;
                                }
                        }
                    } else if (AAModel.this.mAABindServiceCallback != null) {
                        AAModel.this.mAABindServiceCallback.onBindServiceDisConnected();
                    }
                } else if (AAModel.this.mAABindServiceCallback != null) {
                    AAModel.this.mAABindServiceCallback.onBindServiceConnected();
                }
            } else {
                if (AAModel.this.mAACallback == null) {
                    PFLog.m33w(AAModel.TAG, "aaListenerCallback=null MSG_NOTIFY_DEV_TRANSPORT not handle");
                    return;
                }
                Bundle data2 = message.getData();
                if (data2 == null) {
                    return;
                }
                AAModel.this.mAACallback.onNotifyDevTransport(data2.getString(AAModel.BT_MAC), data2.getString(AAModel.SERIAL_NUM));
            }
            super.handleMessage(message);
        }
    }

    public AAModel(Context context, AABindServiceCallback aABindServiceCallback) {
        this.mAAListener = new ProxyAAListener();
        this.mPhoneListener = new ProxyAAPhoneListener();
        this.mAABindListener = new ProxyAABindServiceStatusListener();
        PFLog.m29i(TAG, "AAModel: getCallingPid: " + Binder.getCallingPid());
        this.mContext = context;
        this.mAABindServiceCallback = aABindServiceCallback;
        this.mAAClient = new AndroidAutoClient(AAUserManager.CLIENT_LAUNCH_UI);
        this.handlerThread = new HandlerThread(TAG);
    }

    public void init() {
        PFLog.m29i(TAG, "init: getCallingPid: " + Binder.getCallingPid() + "--initialise");
        this.handlerThread.start();
        this.mHandler = new AAHandler(this.handlerThread.getLooper());
        this.mAAClient.initialise(this.mContext, this.mAABindListener);
    }

    public void registPhoneListener() {
        this.mAAClient.registerPhoneCallListener(this.mPhoneListener);
    }

    public void destroy() {
        PFLog.m29i(TAG, "destroy: getCallingPid: " + Binder.getCallingPid());
        this.mAAClient.uninitialise(this.mContext);
    }

    public void registerListener(AAListenerCallback aAListenerCallback) {
        PFLog.m29i(TAG, "registerListener: getCallingPid: " + Binder.getCallingPid());
        this.mAAClient.registerListener(this.mAAListener);
        this.mAACallback = aAListenerCallback;
    }

    public void unRegisterListener() {
        PFLog.m29i(TAG, "unRegisterListener: getCallingPid: " + Binder.getCallingPid());
        this.mAAClient.unregisterListener(this.mAAListener);
        this.mAACallback = null;
    }

    public void exitActivity() {
        this.mAAClient.exitActivity();
    }

    public void requestUI(String str) {
        this.mAAClient.requestUI(str);
    }

    public void startSession(String str, boolean z) {
        this.mAAClient.startSession(str, z);
    }

    public void stopSession() {
        this.mAAClient.stopSession();
    }

    public void lunchApp(String str) {
        this.mAAClient.lunchApp(str);
    }

    public void setSurface(Surface surface) {
        this.mAAClient.setSurface(surface);
    }

    public int getSessionState() {
        return this.mAAClient.getSessionState();
    }

    public int getVoiceSessionState() {
        return this.mAAClient.getVoiceSessionState();
    }

    public void responsePrepareHfpDevice(int r1) {
        this.mAAClient.responsePrepareHfpDevice(r1);
    }

    public String getConnectedMacAddress() {
        PFLog.m29i(TAG, "getConnectedMacAddress SessionState = " + getSessionState() + ", mMacAddress: " + this.mMacAddress);
        return getSessionState() == 1 ? this.mMacAddress : "";
    }

    public void switchAAMediaSource(int r3) {
        PFLog.m29i(TAG, "switchAAMediaSource");
        this.mAAClient.switchMediaSource(r3);
    }

    private class ProxyAAListener extends AAProxyListener {
        @Override // com.yfve.t19c.projection.androidauto.proxy.AAProxyListener
        public void onHidePermissionPrompt() {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AAProxyListener
        public void onShowPermissionPrompt() {
        }

        private ProxyAAListener() {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AAProxyListener
        public void onNotifyDevTransport(String str, String str2) {
            PFLog.m25d(AAModel.TAG, "onNotifyDevTransport: btMac:" + str + ",serialNum:" + str2);
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            Bundle bundle = new Bundle();
            bundle.putString(AAModel.BT_MAC, str);
            bundle.putString(AAModel.SERIAL_NUM, str2);
            messageObtain.setData(bundle);
            AAModel.this.mHandler.sendMessage(messageObtain);
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AAProxyListener
        public void onSetVideoFocus(int r4) {
            PFLog.m25d(AAModel.TAG, "onSetVideoFocus: focusMode = " + r4);
            AAModel.this.mHandler.obtainMessage(4, r4, 0).sendToTarget();
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AAProxyListener
        public void onSessionStatusUpdate(int r4, String str, String str2) {
            PFLog.m25d(AAModel.TAG, "onSessionStatusUpdate sessionSts:" + r4 + ",btMac:" + str + ",deviceName:" + str2);
            Message messageObtain = Message.obtain();
            messageObtain.what = 5;
            Bundle bundle = new Bundle();
            bundle.putInt(AAModel.SESSION_STS, r4);
            bundle.putString(AAModel.BT_MAC, str);
            bundle.putString(AAModel.DEVICE_NAME, str2);
            messageObtain.setData(bundle);
            AAModel.this.mHandler.sendMessage(messageObtain);
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AAProxyListener
        public void onNotification(String str) {
            PFLog.m25d(AAModel.TAG, "onNotification: " + str);
            AAModel.this.mHandler.obtainMessage(6, str).sendToTarget();
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AAProxyListener
        public void onUpdateMediaToken(MediaSession.Token token) {
            if (token != null) {
                PFLog.m25d(AAModel.TAG, "onUpdateMediaToken: " + token.toString());
                AAModel.this.mHandler.obtainMessage(7, token).sendToTarget();
                return;
            }
            PFLog.m27e(AAModel.TAG, "onUpdateMediaToken: token is null !");
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AAProxyListener
        public void onUpdateVoiceSessionState(int r4) {
            PFLog.m29i(AAModel.TAG, "onUpdateVoiceSessionState [1:START,2:END]: " + r4);
            AAModel.this.mHandler.obtainMessage(8, r4, 0).sendToTarget();
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AAProxyListener
        public void OnPrepareRemoteHfpDevice(String str) {
            PFLog.m29i(AAModel.TAG, "OnPrepareRemoteHfpDevice btMac: " + str);
            AAModel.this.mHandler.obtainMessage(9, str).sendToTarget();
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AAProxyListener
        public void onAuthenticationResult(int r4) {
            PFLog.m29i(AAModel.TAG, "onAuthenticationResult state = " + r4);
            AAModel.this.mHandler.obtainMessage(10, r4, -1).sendToTarget();
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AAProxyListener
        public void onUpdateActivityState(int r4) {
            PFLog.m29i(AAModel.TAG, "onUpdateActivityState state = " + r4);
            AAModel.this.mHandler.obtainMessage(11, r4, -1).sendToTarget();
        }
    }

    private class ProxyAABindServiceStatusListener implements AndroidAutoClient.AABindServiceStatusListener {
        private ProxyAABindServiceStatusListener() {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AndroidAutoClient.AABindServiceStatusListener
        public void onBindServiceConnected() {
            PFLog.m29i(AAModel.TAG, "onBindServiceConnected: ");
            AAModel.this.isAABindSuccess = true;
            AAModel.this.mHandler.sendEmptyMessage(16);
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AndroidAutoClient.AABindServiceStatusListener
        public void onBindServiceDisConnected() {
            PFLog.m29i(AAModel.TAG, "onBindServiceDisConnected: ");
            AAModel.this.isAABindSuccess = false;
            AAModel.this.mHandler.sendEmptyMessage(17);
        }
    }

    private class ProxyAAPhoneListener extends AAPhoneCallListener {
        private ProxyAAPhoneListener() {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AAPhoneCallListener
        public void onUpdateOneCurrentCall(Call call) {
            super.onUpdateOneCurrentCall(call);
            PFLog.m29i(AAModel.TAG, "onUpdateOneCurrentCall: caller_id:" + call.caller_id + ",caller_number:" + call.caller_number + ",caller_number_type:" + call.caller_number_type + ",caller_thumbnail:" + call.caller_thumbnail + ",call_duration_seconds:" + call.call_duration_seconds + ",status:" + call.status);
        }
    }
}
