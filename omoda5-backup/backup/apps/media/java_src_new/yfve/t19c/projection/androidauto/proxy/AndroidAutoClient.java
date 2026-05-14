package com.yfve.t19c.projection.androidauto.proxy;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.session.MediaSession;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.chery.common.PackageConstants;
import com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient;
import com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener;
import com.yfve.t19c.projection.androidauto.proxy.ICallStatusListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class AndroidAutoClient {
    public static final int MEDIA_SOURCE_AV_ALL = 3;
    public static final int MEDIA_SOURCE_ONLY_AUDIO = 1;
    public static final int MEDIA_SOURCE_ONLY_VIDEO = 2;
    public static final int PREPARE_HFP_FAILURE = 3;
    public static final int PREPARE_HFP_READY_IDLE = 2;
    public static final int PREPARE_HFP_READY_PAIRED = 1;
    private static final int RETRY_BIND_MILLI_SECOND = 2000;
    private static final String TAG = "AndroidAutoClient";
    private static int mVoiceSessionState = AAProxyListener.VOICE_SESSION_END;
    private long mElapseTime;
    private Context mContext = null;
    private boolean bRetryEnable = false;
    private IAndroidAutoClient mIPCServiceProxy = null;
    private List<AAProxyListener> mCallbackList = new ArrayList();
    private List<AAPhoneCallListener> mPhoneCallListener = new ArrayList();
    private List<AABindServiceStatusListener> mCBAABindList = new ArrayList();
    private IAndroidAutoListener mIPCListenerStub = new IAndroidAutoListener.Stub() { // from class: com.yfve.t19c.projection.androidauto.proxy.AndroidAutoClient.1
        public static final int FocusMode_Native = 2;
        public static final int FocusMode_Project = 1;
        public static final int FocusMode_Transient = 3;
        private static final String TAG = "IAndroidAutoListener";

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onNotifyDevTransport(String str, String str2) {
            Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onNotifyDevTransport");
            Iterator it = AndroidAutoClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((AAProxyListener) it.next()).onNotifyDevTransport(str, str2);
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onSetVideoFocus(int r4) {
            Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onSetVideoFocus");
            Iterator it = AndroidAutoClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((AAProxyListener) it.next()).onSetVideoFocus(r4);
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onSessionStatusUpdate(int r8, String str, String str2) {
            Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onSessionStatusUpdate");
            for (AAProxyListener aAProxyListener : AndroidAutoClient.this.mCallbackList) {
                Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onSessionStatusUpdate cb listener");
                try {
                    aAProxyListener.onSessionStatusUpdate(r8, str, str2);
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onNotification(String str) {
            Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onNotification");
            Iterator it = AndroidAutoClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((AAProxyListener) it.next()).onNotification(str);
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onUpdateMediaToken(MediaSession.Token token) {
            Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onUpdateMediaToken");
            Iterator it = AndroidAutoClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((AAProxyListener) it.next()).onUpdateMediaToken(token);
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onShowPermissionPrompt() {
            Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onShowPermissionPrompt");
            Iterator it = AndroidAutoClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((AAProxyListener) it.next()).onShowPermissionPrompt();
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onHidePermissionPrompt() {
            Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onHidePermissionPrompt");
            Iterator it = AndroidAutoClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((AAProxyListener) it.next()).onHidePermissionPrompt();
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onUpdateVoiceSessionState(int r8) {
            Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onUpdateVoiceSessionState in");
            int unused = AndroidAutoClient.mVoiceSessionState = r8;
            for (AAProxyListener aAProxyListener : AndroidAutoClient.this.mCallbackList) {
                try {
                    aAProxyListener.onUpdateVoiceSessionState(r8);
                    Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onUpdateVoiceSessionState notify " + aAProxyListener);
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onResizeSurfaceView(int r8, int r9, int r10) {
            Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onResizeSurfaceView in");
            for (AAProxyListener aAProxyListener : AndroidAutoClient.this.mCallbackList) {
                try {
                    aAProxyListener.onResizeSurfaceView(r8, r9, r10);
                    Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onResizeSurfaceView notify " + aAProxyListener);
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void OnPrepareRemoteHfpDevice(String str) {
            Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " OnPrepareRemoteHfpDevice in");
            for (AAProxyListener aAProxyListener : AndroidAutoClient.this.mCallbackList) {
                try {
                    aAProxyListener.OnPrepareRemoteHfpDevice(str);
                    Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " OnPrepareRemoteHfpDevice notify " + aAProxyListener);
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onAuthenticationResult(int r8) {
            Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onAuthenticationResult in");
            for (AAProxyListener aAProxyListener : AndroidAutoClient.this.mCallbackList) {
                try {
                    aAProxyListener.onAuthenticationResult(r8);
                    Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onAuthenticationResult notify " + aAProxyListener);
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onTakeOverDilarPage(boolean z) {
            Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onTakeOverDilarPage in");
            for (AAProxyListener aAProxyListener : AndroidAutoClient.this.mCallbackList) {
                try {
                    aAProxyListener.onTakeOverDilarPage(z);
                    Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onTakeOverDilarPage notify " + aAProxyListener);
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onAAMediaSourceResponse(int r8) {
            Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onAAMediaSourceResponse in");
            for (AAProxyListener aAProxyListener : AndroidAutoClient.this.mCallbackList) {
                try {
                    aAProxyListener.onAAMediaSourceResponse(r8);
                    Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onAAMediaSourceResponse notify " + aAProxyListener);
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onUpdateActivityState(int r8) {
            Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onUpdateActivityState state:" + r8);
            for (AAProxyListener aAProxyListener : AndroidAutoClient.this.mCallbackList) {
                try {
                    aAProxyListener.onUpdateActivityState(r8);
                    Log.i(TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onUpdateActivityState notify " + aAProxyListener);
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
        }
    };
    private ICallStatusListener mCallStatusListener = new ICallStatusListener.Stub() { // from class: com.yfve.t19c.projection.androidauto.proxy.AndroidAutoClient.2
        @Override // com.yfve.t19c.projection.androidauto.proxy.ICallStatusListener
        public void onUpdateCallStatus(ICallStatus iCallStatus) {
            Log.i(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onUpdateCallStatus in");
            if (iCallStatus == null) {
                Log.e(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onUpdateCallStatus status is null");
                return;
            }
            Call call = null;
            Iterator<Call> it = iCallStatus.getCallStatus().mCallData.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Call next = it.next();
                if (next.status != 0 && 3 != next.status) {
                    call = next;
                    break;
                }
            }
            if (call != null) {
                Log.i(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onUpdateCallStatus state:" + call.status + " duration:" + call.call_duration_seconds + " number:" + call.caller_number + " id:" + call.caller_id + " number:" + call.caller_number_type + " thumbnail not output.");
                for (AAPhoneCallListener aAPhoneCallListener : AndroidAutoClient.this.mPhoneCallListener) {
                    try {
                        aAPhoneCallListener.onUpdateOneCurrentCall(call);
                        Log.i(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onUpdateCallStatus notify " + aAPhoneCallListener);
                    } catch (Exception e) {
                        Log.e(AndroidAutoClient.TAG, e.toString());
                    }
                }
                Log.i(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onUpdateCallStatus end");
                return;
            }
            Log.w(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onUpdateCallStatus no active call");
        }
    };
    private DevConnection connection = new DevConnection();

    public interface AABindServiceStatusListener {
        void onBindServiceConnected();

        void onBindServiceDisConnected();
    }

    public AndroidAutoClient(String str) {
        this.mElapseTime = 0L;
        if (!AAUserManager.checkClientLegality(str)) {
            throw new IllegalArgumentException("client name should register firstly, please contact the owner of this interface");
        }
        this.mElapseTime = SystemClock.elapsedRealtimeNanos();
    }

    private void setBindServiceStatusListener(AABindServiceStatusListener aABindServiceStatusListener) {
        Log.i(TAG, "id:" + this.mElapseTime + " setBindServiceStatusListener");
        if (aABindServiceStatusListener == null) {
            Log.i(TAG, "id:" + this.mElapseTime + " setBindServiceStatusListener listener is null");
            return;
        }
        Log.i(TAG, "id:" + this.mElapseTime + " setBindServiceStatusListener listener: " + aABindServiceStatusListener);
        if (!this.mCBAABindList.contains(aABindServiceStatusListener)) {
            Log.i(TAG, "id:" + this.mElapseTime + " setBindServiceStatusListener add a listener.");
            this.mCBAABindList.add(aABindServiceStatusListener);
            return;
        }
        Log.i(TAG, "id:" + this.mElapseTime + " setBindServiceStatusListener already contain this listener.");
    }

    private void clearBindServiceStatusListener(AABindServiceStatusListener aABindServiceStatusListener) {
        Log.i(TAG, "id:" + this.mElapseTime + " clearBindServiceStatusListener");
        if (aABindServiceStatusListener == null) {
            return;
        }
        Log.d(TAG, "id:" + this.mElapseTime + " clearBindServiceStatusListener listener: " + aABindServiceStatusListener);
        if (this.mCBAABindList.contains(aABindServiceStatusListener)) {
            this.mCBAABindList.remove(aABindServiceStatusListener);
            return;
        }
        Log.i(TAG, "id:" + this.mElapseTime + " clearBindServiceStatusListener clear it before. ");
    }

    private final class DevConnection implements ServiceConnection {
        private DevConnection() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            AndroidAutoClient.this.bRetryEnable = false;
            AndroidAutoClient.this.mIPCServiceProxy = IAndroidAutoClient.Stub.asInterface(iBinder);
            Log.i(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onServiceConnected called, ComponentName= " + componentName);
            try {
                AndroidAutoClient.this.mIPCServiceProxy.registerListener(AndroidAutoClient.this.mIPCListenerStub);
                AndroidAutoClient.this.mIPCServiceProxy.registerCallStatusListener(AndroidAutoClient.this.mCallStatusListener);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            Log.i(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onServiceConnected notify bind state");
            for (AABindServiceStatusListener aABindServiceStatusListener : AndroidAutoClient.this.mCBAABindList) {
                try {
                    aABindServiceStatusListener.onBindServiceConnected();
                    Log.i(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onBindServiceConnected " + aABindServiceStatusListener);
                } catch (Exception e2) {
                    Log.e(AndroidAutoClient.TAG, e2.toString());
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            AndroidAutoClient.this.mIPCServiceProxy = null;
            Log.i(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onServiceDisconnected called, ComponentName= " + componentName);
            for (AABindServiceStatusListener aABindServiceStatusListener : AndroidAutoClient.this.mCBAABindList) {
                try {
                    aABindServiceStatusListener.onBindServiceDisConnected();
                    Log.i(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " onBindServiceDisConnected " + aABindServiceStatusListener);
                } catch (Exception e) {
                    Log.e(AndroidAutoClient.TAG, e.toString());
                }
            }
        }
    }

    public void initialise(Context context, AABindServiceStatusListener aABindServiceStatusListener) {
        Log.i(TAG, "id:" + this.mElapseTime + " initialise");
        this.mCBAABindList.clear();
        this.mCallbackList.clear();
        this.mPhoneCallListener.clear();
        this.mContext = context;
        this.bRetryEnable = true;
        setBindServiceStatusListener(aABindServiceStatusListener);
        bindProxyService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.yfve.t19c.projection.androidauto.proxy.AndroidAutoClient$3] */
    public void bindProxyService() {
        Log.i(TAG, "id:" + this.mElapseTime + " bindProxyService");
        if (!this.bRetryEnable) {
            Log.w(TAG, "id:" + this.mElapseTime + " bindProxyService canceled.");
            return;
        }
        new Thread() { // from class: com.yfve.t19c.projection.androidauto.proxy.AndroidAutoClient.3
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws InterruptedException {
                Intent intent = new Intent();
                intent.setPackage(PackageConstants.AndroidAuto.PACKAGE_NAME_SOURCE);
                intent.setAction("com.yfve.t19c.projection.androidauto.uiproxy.uiproxyservice");
                try {
                    Log.d(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " bind androidauto ui java service");
                    if (AndroidAutoClient.this.mContext.bindService(intent, AndroidAutoClient.this.connection, 1)) {
                        return;
                    }
                    try {
                        Thread.sleep(2000L);
                        AndroidAutoClient.this.bindProxyService();
                    } catch (InterruptedException e) {
                        Log.e(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " InterruptedException:" + e);
                    }
                } catch (SecurityException e2) {
                    Log.e(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " SecurityException:" + e2);
                    try {
                        Thread.sleep(2000L);
                        AndroidAutoClient.this.bindProxyService();
                    } catch (InterruptedException e3) {
                        Log.e(AndroidAutoClient.TAG, "id:" + AndroidAutoClient.this.mElapseTime + " InterruptedException:" + e3);
                    }
                }
            }
        }.start();
    }

    public void uninitialise(Context context) {
        Log.i(TAG, "id:" + this.mElapseTime + " uninitialise");
        this.bRetryEnable = false;
        IAndroidAutoClient iAndroidAutoClient = this.mIPCServiceProxy;
        if (iAndroidAutoClient != null) {
            try {
                iAndroidAutoClient.unregisterListener(this.mIPCListenerStub);
                this.mIPCServiceProxy.unregisterCallStatusListener(this.mCallStatusListener);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        context.unbindService(this.connection);
        this.mCBAABindList.clear();
        this.mCallbackList.clear();
        this.mPhoneCallListener.clear();
    }

    public void registerListener(AAProxyListener aAProxyListener) {
        Log.i(TAG, "id:" + this.mElapseTime + " registerListener");
        if (aAProxyListener == null) {
            Log.i(TAG, "id:" + this.mElapseTime + " registerListener listener is null");
            return;
        }
        Log.i(TAG, "id:" + this.mElapseTime + " registerListener listener: " + aAProxyListener);
        if (!this.mCallbackList.contains(aAProxyListener)) {
            Log.i(TAG, "id:" + this.mElapseTime + " registerListener add a listener.");
            this.mCallbackList.add(aAProxyListener);
            return;
        }
        Log.i(TAG, "id:" + this.mElapseTime + " registerListener already contain this listener.");
    }

    public void unregisterListener(AAProxyListener aAProxyListener) {
        Log.i(TAG, "id:" + this.mElapseTime + " unregisterListener");
        if (this.mCallbackList.contains(aAProxyListener)) {
            this.mCallbackList.remove(aAProxyListener);
        }
    }

    public void registerPhoneCallListener(AAPhoneCallListener aAPhoneCallListener) {
        Log.i(TAG, "id:" + this.mElapseTime + " registerPhoneCallListener");
        if (aAPhoneCallListener == null) {
            Log.i(TAG, "id:" + this.mElapseTime + " registerPhoneCallListener listener is null");
            return;
        }
        Log.i(TAG, "id:" + this.mElapseTime + " registerPhoneCallListener listener: " + aAPhoneCallListener);
        if (!this.mPhoneCallListener.contains(aAPhoneCallListener)) {
            this.mPhoneCallListener.add(aAPhoneCallListener);
        } else {
            Log.i(TAG, "registerListener already contain this listener.");
        }
    }

    public void unregisterPhoneCallListener(AAPhoneCallListener aAPhoneCallListener) {
        Log.i(TAG, "id:" + this.mElapseTime + " unregisterPhoneCallListener");
        if (this.mPhoneCallListener.contains(aAPhoneCallListener)) {
            this.mPhoneCallListener.remove(aAPhoneCallListener);
        }
    }

    public void exitActivity() {
        Log.i(TAG, "id:" + this.mElapseTime + " exitActivity");
        IAndroidAutoClient iAndroidAutoClient = this.mIPCServiceProxy;
        if (iAndroidAutoClient != null) {
            try {
                iAndroidAutoClient.exitActivity();
            } catch (RemoteException unused) {
                Log.e(TAG, "id:" + this.mElapseTime + " exitActivity failed");
            }
        }
    }

    public void requestUI(String str) {
        Log.i(TAG, "id:" + this.mElapseTime + " requestUI");
        IAndroidAutoClient iAndroidAutoClient = this.mIPCServiceProxy;
        if (iAndroidAutoClient != null) {
            try {
                iAndroidAutoClient.requestUI(str);
            } catch (RemoteException unused) {
                Log.e(TAG, "id:" + this.mElapseTime + " requestUI failed");
            }
        }
    }

    public void startSession(String str, boolean z) {
        Log.i(TAG, "id:" + this.mElapseTime + " startSession");
        IAndroidAutoClient iAndroidAutoClient = this.mIPCServiceProxy;
        if (iAndroidAutoClient != null) {
            try {
                iAndroidAutoClient.startSession(str, z);
            } catch (RemoteException unused) {
                Log.e(TAG, "id:" + this.mElapseTime + " startSession failed");
            }
        }
    }

    public void stopSession() {
        Log.i(TAG, "id:" + this.mElapseTime + " stopSession");
        IAndroidAutoClient iAndroidAutoClient = this.mIPCServiceProxy;
        if (iAndroidAutoClient != null) {
            try {
                iAndroidAutoClient.stopSession();
            } catch (RemoteException unused) {
                Log.e(TAG, "id:" + this.mElapseTime + " stopSession failed");
            }
        }
    }

    public void lunchApp(String str) {
        Log.i(TAG, "id:" + this.mElapseTime + " lunchApp");
        IAndroidAutoClient iAndroidAutoClient = this.mIPCServiceProxy;
        if (iAndroidAutoClient != null) {
            try {
                iAndroidAutoClient.lunchApp(str);
            } catch (RemoteException unused) {
                Log.e(TAG, "id:" + this.mElapseTime + " lunchApp failed");
            }
        }
    }

    public void setSurface(Surface surface) {
        Log.i(TAG, "id:" + this.mElapseTime + " setSurface");
        IAndroidAutoClient iAndroidAutoClient = this.mIPCServiceProxy;
        if (iAndroidAutoClient != null) {
            try {
                iAndroidAutoClient.setSurface(surface);
            } catch (RemoteException unused) {
                Log.e(TAG, "id:" + this.mElapseTime + " setSurface failed");
            }
        }
    }

    public void userInputTouch(long j, int[] r15, int[] r16, int[] r17, int r18, int r19) {
        Log.i(TAG, "id:" + this.mElapseTime + " userInputTouch");
        IAndroidAutoClient iAndroidAutoClient = this.mIPCServiceProxy;
        if (iAndroidAutoClient != null) {
            try {
                iAndroidAutoClient.userInputTouch(j, r15, r16, r17, r18, r19);
            } catch (RemoteException unused) {
                Log.e(TAG, "id:" + this.mElapseTime + " userInputTouch failed");
            }
        }
    }

    public MediaSession.Token getMediaToken() {
        Log.i(TAG, "id:" + this.mElapseTime + " getMediaToken");
        IAndroidAutoClient iAndroidAutoClient = this.mIPCServiceProxy;
        if (iAndroidAutoClient != null) {
            try {
                return iAndroidAutoClient.getMediaToken();
            } catch (RemoteException e) {
                Log.e(TAG, "id:" + this.mElapseTime + " RemoteException" + e);
            }
        }
        return null;
    }

    public int getSessionState() {
        Log.i(TAG, "id:" + this.mElapseTime + " getSessionState");
        IAndroidAutoClient iAndroidAutoClient = this.mIPCServiceProxy;
        if (iAndroidAutoClient != null) {
            try {
                return iAndroidAutoClient.getSessionState();
            } catch (RemoteException e) {
                Log.e(TAG, "id:" + this.mElapseTime + " RemoteException" + e);
            }
        }
        return 0;
    }

    public int getVoiceSessionState() {
        Log.i(TAG, "id:" + this.mElapseTime + " getVoiceSessionState");
        return mVoiceSessionState;
    }

    public void responsePrepareHfpDevice(int r6) {
        Log.i(TAG, "id:" + this.mElapseTime + " responsePrepareHfpDevice");
        IAndroidAutoClient iAndroidAutoClient = this.mIPCServiceProxy;
        if (iAndroidAutoClient != null) {
            try {
                iAndroidAutoClient.responsePrepareHfpDevice(r6);
            } catch (RemoteException e) {
                Log.e(TAG, "id:" + this.mElapseTime + " RemoteException" + e);
            }
        }
    }

    public boolean getWhetherTakeOverPage() {
        boolean whetherTakeOverPage;
        IAndroidAutoClient iAndroidAutoClient = this.mIPCServiceProxy;
        if (iAndroidAutoClient != null) {
            try {
                whetherTakeOverPage = iAndroidAutoClient.getWhetherTakeOverPage();
            } catch (RemoteException e) {
                Log.e(TAG, "id:" + this.mElapseTime + " RemoteException" + e);
            }
        } else {
            whetherTakeOverPage = false;
        }
        Log.i(TAG, "id:" + this.mElapseTime + " getWhetherTakeOverPage check result:" + whetherTakeOverPage);
        return whetherTakeOverPage;
    }

    public void switchMediaSource(int r6) {
        Log.i(TAG, "id:" + this.mElapseTime + " switchMediaSource()");
        IAndroidAutoClient iAndroidAutoClient = this.mIPCServiceProxy;
        if (iAndroidAutoClient != null) {
            try {
                iAndroidAutoClient.switchMediaSource(r6);
            } catch (RemoteException e) {
                Log.e(TAG, "id:" + this.mElapseTime + " RemoteException" + e);
            }
        }
    }

    public int getActivityState() {
        IAndroidAutoClient iAndroidAutoClient = this.mIPCServiceProxy;
        if (iAndroidAutoClient != null) {
            try {
                return iAndroidAutoClient.getActivityState();
            } catch (RemoteException e) {
                Log.e(TAG, "id:" + this.mElapseTime + " RemoteException" + e);
            }
        }
        return -1;
    }
}
