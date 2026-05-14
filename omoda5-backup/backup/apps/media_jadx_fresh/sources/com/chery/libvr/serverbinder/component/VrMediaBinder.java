package com.chery.libvr.serverbinder.component;

import android.os.Binder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.libvr.apps.media.IVrMedia;
import com.chery.libvr.apps.media.IVrMediaCallback;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class VrMediaBinder extends IVrMedia.Stub {
    private static final String TAG = CarLog.concatTag("VR", VrMediaBinder.class);
    private RemoteCallbackList<IVrMediaCallback> mCbs;
    private ArrayList<Listener> mListeners;

    public interface Listener {
        void onMediaAppResponse(String str, String str2, String str3, String str4);
    }

    private VrMediaBinder() {
        this.mCbs = new RemoteCallbackList<>();
        this.mListeners = new ArrayList<>();
    }

    private static class SingleTonHolder {
        private static VrMediaBinder INSTANCE = new VrMediaBinder();

        private SingleTonHolder() {
        }
    }

    public static VrMediaBinder getInstance() {
        return SingleTonHolder.INSTANCE;
    }

    public void setListener(Listener listener) {
        if (this.mListeners.contains(listener)) {
            return;
        }
        this.mListeners.add(listener);
    }

    public void removeListener(Listener listener) {
        if (this.mListeners.contains(listener)) {
            this.mListeners.remove(listener);
        }
    }

    @Override // com.chery.libvr.apps.media.IVrMedia
    public void registerVrMediaCallback(IVrMediaCallback iVrMediaCallback) throws RemoteException {
        if (PFLog.isDebugLogging()) {
            PFLog.m29i(TAG, "registerVrMediaCallback pid:" + Binder.getCallingPid() + " ; cb -> " + iVrMediaCallback);
        }
        if (iVrMediaCallback == null) {
            return;
        }
        this.mCbs.register(iVrMediaCallback);
    }

    @Override // com.chery.libvr.apps.media.IVrMedia
    public void unregisterVrMediaCallback(IVrMediaCallback iVrMediaCallback) throws RemoteException {
        if (PFLog.isDebugLogging()) {
            PFLog.m29i(TAG, "unregisterVrMediaCallback pid:" + Binder.getCallingPid() + " ; cb -> " + iVrMediaCallback);
        }
        if (iVrMediaCallback == null) {
            return;
        }
        this.mCbs.unregister(iVrMediaCallback);
    }

    @Override // com.chery.libvr.apps.media.IVrMedia
    public int onResponse(String str, String str2, String str3, String str4) throws RemoteException {
        PFLog.m25d(TAG, "onResponse pid:" + Binder.getCallingPid() + " pkgName -> " + str + " key -> " + str2 + " value -> " + str3 + " id -> " + str4);
        if (this.mListeners.isEmpty()) {
            return 1;
        }
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onMediaAppResponse(str, str2, str3, str4);
        }
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
            IVrMediaCallback iVrMediaCallback = (IVrMediaCallback) this.mCbs.getBroadcastItem(r2);
            if (iVrMediaCallback != null) {
                try {
                    if (iVrMediaCallback.onRequest(str, str2, str3) == 1) {
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
