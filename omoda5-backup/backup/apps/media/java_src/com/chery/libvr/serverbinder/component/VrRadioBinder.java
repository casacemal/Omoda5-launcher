package com.chery.libvr.serverbinder.component;

import android.os.Binder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.libvr.apps.radio.IVrRadio;
import com.chery.libvr.apps.radio.IVrRadioCallback;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class VrRadioBinder extends IVrRadio.Stub {
    private static final String TAG = CarLog.concatTag("VR", VrRadioBinder.class);
    private RemoteCallbackList<IVrRadioCallback> mCbs;
    private ArrayList<Listener> mListeners;

    public interface Listener {
        void onTunerAppResponse(String str, String str2, String str3, String str4);
    }

    private VrRadioBinder() {
        this.mCbs = new RemoteCallbackList<>();
        this.mListeners = new ArrayList<>();
    }

    private static class SingleTonHolder {
        private static VrRadioBinder INSTANCE = new VrRadioBinder();

        private SingleTonHolder() {
        }
    }

    public static VrRadioBinder getInstance() {
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

    @Override // com.chery.libvr.apps.radio.IVrRadio
    public void registerVrRadioCallback(IVrRadioCallback iVrRadioCallback) throws RemoteException {
        if (PFLog.isDebugLogging()) {
            PFLog.m29i(TAG, "registerVrRadioCallback pid:" + Binder.getCallingPid() + " ; cb -> " + iVrRadioCallback);
        }
        if (iVrRadioCallback == null) {
            return;
        }
        this.mCbs.register(iVrRadioCallback);
    }

    @Override // com.chery.libvr.apps.radio.IVrRadio
    public void unregisterVrRadioCallback(IVrRadioCallback iVrRadioCallback) throws RemoteException {
        if (PFLog.isDebugLogging()) {
            PFLog.m29i(TAG, "unregisterVrRadioCallback pid:" + Binder.getCallingPid() + " ; cb -> " + iVrRadioCallback);
        }
        if (iVrRadioCallback == null) {
            return;
        }
        this.mCbs.unregister(iVrRadioCallback);
    }

    @Override // com.chery.libvr.apps.radio.IVrRadio
    public int onResponse(String str, String str2, String str3, String str4) throws RemoteException {
        PFLog.m25d(TAG, "onResponse pid:" + Binder.getCallingPid() + " pkgName -> " + str + " key -> " + str2 + " value -> " + str3 + " id -> " + str4);
        if (this.mListeners.isEmpty()) {
            return 1;
        }
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onTunerAppResponse(str, str2, str3, str4);
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
            IVrRadioCallback iVrRadioCallback = (IVrRadioCallback) this.mCbs.getBroadcastItem(r2);
            if (iVrRadioCallback != null) {
                try {
                    if (iVrRadioCallback.onRequest(str, str2, str3) == 1) {
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
