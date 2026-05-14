package com.chery.libvr.manager.funtionmanager;

import android.os.IBinder;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.libvr.apps.navi.IVrNavi;
import com.chery.libvr.apps.navi.IVrNaviCallback;
import com.chery.libvr.bean.INoProguard;
import com.chery.libvr.manager.platformmanager.VrPlatformService;
import com.chery.libvr.manager.platformmanager.VrRequestManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class VrNaviManager {
    private static volatile VrNaviManager mInstance;
    private final String TAG = CarLog.concatTag("VR", VrNaviManager.class);
    private IVrNavi mService = null;
    private List<NaviTool> mNaviToolCallbackList = new ArrayList();
    private IVrNaviCallback mIVrNaviCallback = new IVrNaviCallback.Stub() { // from class: com.chery.libvr.manager.funtionmanager.VrNaviManager.1
        @Override // com.chery.libvr.apps.navi.IVrNaviCallback
        public int onRequest(String str, String str2, String str3) throws RemoteException {
            Iterator it = VrNaviManager.this.mNaviToolCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    return ((NaviTool) it.next()).onRequest(str, str2, str3);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return 0;
        }
    };

    public interface NaviTool extends INoProguard {
        int onRequest(String str, String str2, String str3);
    }

    public static VrNaviManager getInstance() {
        if (mInstance == null) {
            synchronized (VrNaviManager.class) {
                if (mInstance == null) {
                    mInstance = new VrNaviManager();
                }
            }
        }
        return mInstance;
    }

    public void init() {
        try {
            this.mService = null;
            ((IVrNavi) Objects.requireNonNull(getIVrNavi())).registerVrNaviCallback(this.mIVrNaviCallback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void setNaviTool(NaviTool naviTool) {
        addCallback(naviTool);
    }

    public void releaseNaviTool(NaviTool naviTool) {
        removeCallback(naviTool);
    }

    private void addCallback(NaviTool naviTool) {
        this.mNaviToolCallbackList.add(naviTool);
    }

    private void removeCallback(NaviTool naviTool) {
        this.mNaviToolCallbackList.remove(naviTool);
    }

    private VrNaviManager() {
        PFLog.m25d(this.TAG, "VrNaviManager");
    }

    public void onResponse(String str, String str2, String str3) {
        if (getIVrNavi() != null) {
            try {
                getIVrNavi().onResponse(VrPlatformService.getInstance().getPkgName(), str, str2, str3);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private IVrNavi getIVrNavi() {
        if (this.mService != null) {
            PFLog.m25d(this.TAG, "getIVrNavi mService != null retrun");
            return this.mService;
        }
        IBinder service = VrRequestManager.getInstance().getService(4);
        if (service == null) {
            PFLog.m27e(this.TAG, "getIVrNavi binder = null return!");
            return null;
        }
        IVrNavi iVrNaviAsInterface = IVrNavi.Stub.asInterface(service);
        this.mService = iVrNaviAsInterface;
        if (iVrNaviAsInterface != null) {
            PFLog.m25d(this.TAG, "getIVrNavi mService = OK!");
            return this.mService;
        }
        PFLog.m27e(this.TAG, "getIVrNavi mService = null return!");
        return null;
    }
}
