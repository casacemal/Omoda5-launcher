package com.chery.libvr.manager.funtionmanager;

import android.os.IBinder;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.libvr.apps.setting.IVrSetting;
import com.chery.libvr.apps.setting.IVrSettingCallback;
import com.chery.libvr.bean.INoProguard;
import com.chery.libvr.manager.platformmanager.VrPlatformService;
import com.chery.libvr.manager.platformmanager.VrRequestManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class VrSettingManager {
    private static volatile VrSettingManager mInstance;
    private final String TAG = CarLog.concatTag("VR", VrRadioManager.class);
    private IVrSetting mService = null;
    private List<SettingTool> mSettingToolCallbackList = new ArrayList();
    private IVrSettingCallback mIVrSettingCallback = new IVrSettingCallback.Stub() { // from class: com.chery.libvr.manager.funtionmanager.VrSettingManager.1
        @Override // com.chery.libvr.apps.setting.IVrSettingCallback
        public int onRequest(String str, String str2, String str3) throws RemoteException {
            Iterator it = VrSettingManager.this.mSettingToolCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    return ((SettingTool) it.next()).onRequest(str, str2, str3);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return 0;
        }
    };

    public interface SettingTool extends INoProguard {
        int onRequest(String str, String str2, String str3);
    }

    public static VrSettingManager getInstance() {
        if (mInstance == null) {
            synchronized (VrSettingManager.class) {
                if (mInstance == null) {
                    mInstance = new VrSettingManager();
                }
            }
        }
        return mInstance;
    }

    public void init() {
        try {
            this.mService = null;
            ((IVrSetting) Objects.requireNonNull(getIVrSetting())).registerVrSettingCallback(this.mIVrSettingCallback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void setSettingTool(SettingTool settingTool) {
        addCallback(settingTool);
    }

    public void releaseSettingTool(SettingTool settingTool) {
        removeCallback(settingTool);
    }

    private void addCallback(SettingTool settingTool) {
        this.mSettingToolCallbackList.add(settingTool);
    }

    private void removeCallback(SettingTool settingTool) {
        this.mSettingToolCallbackList.remove(settingTool);
    }

    private VrSettingManager() {
        PFLog.m25d(this.TAG, "VrSettingManager");
    }

    public void onResponse(String str, String str2, String str3) {
        if (getIVrSetting() != null) {
            try {
                getIVrSetting().onResponse(VrPlatformService.getInstance().getPkgName(), str, str2, str3);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private IVrSetting getIVrSetting() {
        if (this.mService != null) {
            PFLog.m25d(this.TAG, "getIVrSetting mService != null retrun");
            return this.mService;
        }
        IBinder service = VrRequestManager.getInstance().getService(8);
        if (service == null) {
            PFLog.m27e(this.TAG, "getIVrSetting binder = null return!");
            return null;
        }
        IVrSetting iVrSettingAsInterface = IVrSetting.Stub.asInterface(service);
        this.mService = iVrSettingAsInterface;
        if (iVrSettingAsInterface != null) {
            PFLog.m25d(this.TAG, "getIVrSetting mService = OK!");
            return this.mService;
        }
        PFLog.m27e(this.TAG, "getIVrSetting mService = null return!");
        return null;
    }
}
