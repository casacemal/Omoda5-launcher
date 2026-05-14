package com.chery.libvr.serverbinder.component;

import android.os.Binder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.libvr.apps.setting.IVrSetting;
import com.chery.libvr.apps.setting.IVrSettingCallback;
import com.chery.libvr.serverbinder.component.VrMediaBinder;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class VrSettingBinder extends IVrSetting.Stub {
    private static final String TAG = CarLog.concatTag("VR", VrSettingBinder.class);
    private RemoteCallbackList<IVrSettingCallback> mCbs;
    private ArrayList<Listener> mListeners;

    public interface Listener {
        void onSettingResponse(String str, String str2, String str3, String str4);
    }

    public void setListener(Listener listener) {
        if (this.mListeners.contains(listener)) {
            return;
        }
        this.mListeners.add(listener);
    }

    public void removeListener(VrMediaBinder.Listener listener) {
        if (this.mListeners.contains(listener)) {
            this.mListeners.remove(listener);
        }
    }

    private VrSettingBinder() {
        this.mCbs = new RemoteCallbackList<>();
        this.mListeners = new ArrayList<>();
    }

    private static class SingleTonHolder {
        private static VrSettingBinder INSTANCE = new VrSettingBinder();

        private SingleTonHolder() {
        }
    }

    public static VrSettingBinder getInstance() {
        return SingleTonHolder.INSTANCE;
    }

    @Override // com.chery.libvr.apps.setting.IVrSetting
    public void registerVrSettingCallback(IVrSettingCallback iVrSettingCallback) throws RemoteException {
        if (PFLog.isDebugLogging()) {
            PFLog.m29i(TAG, "registerVrSettingCallback pid:" + Binder.getCallingPid() + " ; cb -> " + iVrSettingCallback);
        }
        if (iVrSettingCallback == null) {
            return;
        }
        this.mCbs.register(iVrSettingCallback);
    }

    @Override // com.chery.libvr.apps.setting.IVrSetting
    public void unregisterVrSettingCallback(IVrSettingCallback iVrSettingCallback) throws RemoteException {
        if (PFLog.isDebugLogging()) {
            PFLog.m29i(TAG, "unregisterVrSettingCallback pid:" + Binder.getCallingPid() + " ; cb -> " + iVrSettingCallback);
        }
        if (iVrSettingCallback == null) {
            return;
        }
        this.mCbs.unregister(iVrSettingCallback);
    }

    @Override // com.chery.libvr.apps.setting.IVrSetting
    public int onResponse(String str, String str2, String str3, String str4) throws RemoteException {
        PFLog.m25d(TAG, "onResponse pid:" + Binder.getCallingPid() + " ;pkgName -> " + str + " ;key -> " + str2 + " ;value -> " + str3 + " ;id -> " + str4);
        if (this.mListeners.isEmpty()) {
            return 1;
        }
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onSettingResponse(str, str2, str3, str4);
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
            IVrSettingCallback iVrSettingCallback = (IVrSettingCallback) this.mCbs.getBroadcastItem(r2);
            if (iVrSettingCallback != null) {
                try {
                    if (iVrSettingCallback.onRequest(str, str2, str3) == 1) {
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
