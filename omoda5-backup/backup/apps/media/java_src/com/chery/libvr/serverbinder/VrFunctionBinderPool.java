package com.chery.libvr.serverbinder;

import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.libvr.apps.IVrFunctionBinderPool;
import com.chery.libvr.apps.IVrInitStatusCallback;
import com.chery.libvr.serverbinder.component.VrMediaBinder;
import com.chery.libvr.serverbinder.component.VrNaviBinder;
import com.chery.libvr.serverbinder.component.VrRadioBinder;
import com.chery.libvr.serverbinder.component.VrSettingBinder;

/* loaded from: classes.dex */
public class VrFunctionBinderPool extends IVrFunctionBinderPool.Stub {
    private static final String TAG = CarLog.concatTag("VR", VrFunctionBinderPool.class);
    private RemoteCallbackList<IVrInitStatusCallback> mCbs;
    private int mInitStatus;

    private VrFunctionBinderPool() {
        this.mCbs = new RemoteCallbackList<>();
    }

    private static class SingleTonHolder {
        private static VrFunctionBinderPool INSTANCE = new VrFunctionBinderPool();

        private SingleTonHolder() {
        }
    }

    public static VrFunctionBinderPool getInstance() {
        return SingleTonHolder.INSTANCE;
    }

    @Override // com.chery.libvr.apps.IVrFunctionBinderPool
    public IBinder queryFunctionToolBinder(int r3) throws RemoteException {
        PFLog.m29i(TAG, "queryFunctionToolBinder pid:" + Binder.getCallingPid());
        if (r3 == 3) {
            return VrMediaBinder.getInstance();
        }
        if (r3 == 4) {
            return VrNaviBinder.getInstance();
        }
        if (r3 == 7) {
            return VrRadioBinder.getInstance();
        }
        if (r3 == 8) {
            return VrSettingBinder.getInstance();
        }
        PFLog.m33w(TAG, "queryFunctionToolBinder no match functionCode -> " + r3);
        return null;
    }

    @Override // com.chery.libvr.apps.IVrFunctionBinderPool
    public void registerVrInitStatusCallback(IVrInitStatusCallback iVrInitStatusCallback) throws RemoteException {
        if (PFLog.isDebugLogging()) {
            PFLog.m29i(TAG, "registerVrInitStatusCallback pid:" + Binder.getCallingPid() + " ; cb -> " + iVrInitStatusCallback);
        }
        if (iVrInitStatusCallback != null) {
            this.mCbs.register(iVrInitStatusCallback);
        }
    }

    @Override // com.chery.libvr.apps.IVrFunctionBinderPool
    public void unregisterVrInitStatusCallback(IVrInitStatusCallback iVrInitStatusCallback) throws RemoteException {
        if (PFLog.isDebugLogging()) {
            PFLog.m29i(TAG, "unregisterVrInitStatusCallback pid:" + Binder.getCallingPid() + " ; cb -> " + iVrInitStatusCallback);
        }
        if (iVrInitStatusCallback != null) {
            this.mCbs.unregister(iVrInitStatusCallback);
        }
    }

    @Override // com.chery.libvr.apps.IVrFunctionBinderPool
    public boolean getVrInitStatus() throws RemoteException {
        PFLog.m29i(TAG, "getVrInitStatus pid:" + Binder.getCallingPid());
        return this.mInitStatus == 1;
    }

    public boolean notifyVrInitStatus(int r4) {
        this.mInitStatus = r4;
        int r0 = this.mCbs.beginBroadcast();
        if (r0 == 0) {
            return false;
        }
        for (int r1 = 0; r1 < r0; r1++) {
            IVrInitStatusCallback iVrInitStatusCallback = (IVrInitStatusCallback) this.mCbs.getBroadcastItem(r1);
            if (iVrInitStatusCallback != null) {
                try {
                    iVrInitStatusCallback.onVrInitStatus(r4);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
        this.mCbs.finishBroadcast();
        return true;
    }
}
