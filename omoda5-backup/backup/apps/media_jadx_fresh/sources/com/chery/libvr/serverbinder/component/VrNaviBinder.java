package com.chery.libvr.serverbinder.component;

import android.os.Binder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.libvr.apps.navi.IVrNavi;
import com.chery.libvr.apps.navi.IVrNaviCallback;

/* loaded from: classes.dex */
public class VrNaviBinder extends IVrNavi.Stub {
    private static final String TAG = CarLog.concatTag("VR", VrNaviBinder.class);
    private RemoteCallbackList<IVrNaviCallback> mCbs;
    private Listener mListener;

    public interface Listener {
        void onNaviResponse(String str, String str2, String str3, String str4);
    }

    private VrNaviBinder() {
        this.mCbs = new RemoteCallbackList<>();
    }

    public void setListener(Listener listener) {
        this.mListener = listener;
    }

    private static class SingleTonHolder {
        private static VrNaviBinder INSTANCE = new VrNaviBinder();

        private SingleTonHolder() {
        }
    }

    public static VrNaviBinder getInstance() {
        return SingleTonHolder.INSTANCE;
    }

    @Override // com.chery.libvr.apps.navi.IVrNavi
    public void registerVrNaviCallback(IVrNaviCallback iVrNaviCallback) throws RemoteException {
        if (PFLog.isDebugLogging()) {
            PFLog.m29i(TAG, "registerVrNaviCallback pid:" + Binder.getCallingPid() + " ; cb -> " + iVrNaviCallback);
        }
        if (iVrNaviCallback == null) {
            return;
        }
        this.mCbs.register(iVrNaviCallback);
    }

    @Override // com.chery.libvr.apps.navi.IVrNavi
    public void unregisterVrNaviCallback(IVrNaviCallback iVrNaviCallback) throws RemoteException {
        if (PFLog.isDebugLogging()) {
            PFLog.m29i(TAG, "unregisterVrNaviCallback pid:" + Binder.getCallingPid() + " ; cb -> " + iVrNaviCallback);
        }
        if (iVrNaviCallback == null) {
            return;
        }
        this.mCbs.unregister(iVrNaviCallback);
    }

    @Override // com.chery.libvr.apps.navi.IVrNavi
    public int onResponse(String str, String str2, String str3, String str4) throws RemoteException {
        PFLog.m25d(TAG, "onResponse pid:" + Binder.getCallingPid() + " pkgName -> " + str + " key -> " + str2 + " value -> " + str3 + " id -> " + str4);
        Listener listener = this.mListener;
        if (listener == null) {
            return 0;
        }
        listener.onNaviResponse(str, str2, str3, str4);
        return 0;
    }

    public int request(String str, String str2, String str3) {
        PFLog.m25d(TAG, "request key -> " + str + " ;value -> " + str2 + " ;id -> " + str3);
        int r0 = this.mCbs.beginBroadcast();
        int r1 = -1;
        if (r0 == 0) {
            return -1;
        }
        for (int r2 = 0; r2 < r0; r2++) {
            IVrNaviCallback iVrNaviCallback = (IVrNaviCallback) this.mCbs.getBroadcastItem(r2);
            if (iVrNaviCallback != null) {
                try {
                    if (iVrNaviCallback.onRequest(str, str2, str3) == 1) {
                        r1 = 1;
                    }
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
        this.mCbs.finishBroadcast();
        return r1;
    }
}
