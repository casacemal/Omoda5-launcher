package com.chery.libvr.manager.funtionmanager;

import android.os.IBinder;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.libvr.apps.radio.IVrRadio;
import com.chery.libvr.apps.radio.IVrRadioCallback;
import com.chery.libvr.bean.INoProguard;
import com.chery.libvr.manager.platformmanager.VrPlatformService;
import com.chery.libvr.manager.platformmanager.VrRequestManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class VrRadioManager {
    private static volatile VrRadioManager mInstance;
    private final String TAG = CarLog.concatTag("VR", VrRadioManager.class);
    private IVrRadio mService = null;
    private List<RadioTool> mRadioToolCallbackList = new ArrayList();
    private IVrRadioCallback mIVrRadioCallback = new IVrRadioCallback.Stub() { // from class: com.chery.libvr.manager.funtionmanager.VrRadioManager.1
        @Override // com.chery.libvr.apps.radio.IVrRadioCallback
        public int onRequest(String str, String str2, String str3) throws RemoteException {
            Iterator it = VrRadioManager.this.mRadioToolCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    return ((RadioTool) it.next()).onRequest(str, str2, str3);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return 0;
        }
    };

    public interface RadioTool extends INoProguard {
        int onRequest(String str, String str2, String str3);
    }

    public static VrRadioManager getInstance() {
        if (mInstance == null) {
            synchronized (VrRadioManager.class) {
                if (mInstance == null) {
                    mInstance = new VrRadioManager();
                }
            }
        }
        return mInstance;
    }

    public void init() {
        try {
            this.mService = null;
            ((IVrRadio) Objects.requireNonNull(getIVrRadio())).registerVrRadioCallback(this.mIVrRadioCallback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void setRadioTool(RadioTool radioTool) {
        addCallback(radioTool);
    }

    public void releaseRadioTool(RadioTool radioTool) {
        removeCallback(radioTool);
    }

    private void addCallback(RadioTool radioTool) {
        this.mRadioToolCallbackList.add(radioTool);
    }

    private void removeCallback(RadioTool radioTool) {
        this.mRadioToolCallbackList.remove(radioTool);
    }

    private VrRadioManager() {
        PFLog.m25d(this.TAG, "VrRadioManager");
    }

    public void onResponse(String str, String str2, String str3) {
        if (getIVrRadio() != null) {
            try {
                getIVrRadio().onResponse(VrPlatformService.getInstance().getPkgName(), str, str2, str3);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private IVrRadio getIVrRadio() {
        if (this.mService != null) {
            PFLog.m25d(this.TAG, "getIVrRadio mService != null retrun");
            return this.mService;
        }
        IBinder service = VrRequestManager.getInstance().getService(7);
        if (service == null) {
            PFLog.m27e(this.TAG, "getIVrRadio binder = null return!");
            return null;
        }
        IVrRadio iVrRadioAsInterface = IVrRadio.Stub.asInterface(service);
        this.mService = iVrRadioAsInterface;
        if (iVrRadioAsInterface != null) {
            PFLog.m25d(this.TAG, "getIVrRadio mService = OK!");
            return this.mService;
        }
        PFLog.m27e(this.TAG, "getIVrRadio mService = null return!");
        return null;
    }
}
