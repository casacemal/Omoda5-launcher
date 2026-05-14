package com.chery.libvr.manager.funtionmanager;

import android.os.IBinder;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.libvr.apps.media.IVrMedia;
import com.chery.libvr.apps.media.IVrMediaCallback;
import com.chery.libvr.bean.INoProguard;
import com.chery.libvr.manager.platformmanager.VrPlatformService;
import com.chery.libvr.manager.platformmanager.VrRequestManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class VrMediaManager {
    private static final String TAG = CarLog.concatTag("VR", VrMediaManager.class);
    private static volatile VrMediaManager mInstance;
    private IVrMedia mService = null;
    private List<MediaTool> mMediaToolCallbackList = new ArrayList();
    private IVrMediaCallback mIVrMeidaCallback = new IVrMediaCallback.Stub() { // from class: com.chery.libvr.manager.funtionmanager.VrMediaManager.1
        @Override // com.chery.libvr.apps.media.IVrMediaCallback
        public int onRequest(String str, String str2, String str3) throws RemoteException {
            Iterator it = VrMediaManager.this.mMediaToolCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    return ((MediaTool) it.next()).onRequest(str, str2, str3);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return 0;
        }
    };

    public interface MediaTool extends INoProguard {
        int onRequest(String str, String str2, String str3);
    }

    public static VrMediaManager getInstance() {
        if (mInstance == null) {
            synchronized (VrMediaManager.class) {
                if (mInstance == null) {
                    mInstance = new VrMediaManager();
                }
            }
        }
        return mInstance;
    }

    public void init() {
        try {
            this.mService = null;
            ((IVrMedia) Objects.requireNonNull(getIVrMedia())).registerVrMediaCallback(this.mIVrMeidaCallback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void setMediaTool(MediaTool mediaTool) {
        addCallback(mediaTool);
    }

    public void releaseMediaTool(MediaTool mediaTool) {
        removeCallback(mediaTool);
    }

    private void addCallback(MediaTool mediaTool) {
        this.mMediaToolCallbackList.add(mediaTool);
    }

    private void removeCallback(MediaTool mediaTool) {
        this.mMediaToolCallbackList.remove(mediaTool);
    }

    private VrMediaManager() {
        PFLog.m25d(TAG, "VrMediaManager");
    }

    public void onResponse(String str, String str2, String str3) {
        if (getIVrMedia() != null) {
            try {
                getIVrMedia().onResponse(VrPlatformService.getInstance().getPkgName(), str, str2, str3);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private IVrMedia getIVrMedia() {
        IVrMedia iVrMedia = this.mService;
        if (iVrMedia != null) {
            return iVrMedia;
        }
        IBinder service = VrRequestManager.getInstance().getService(3);
        if (service == null) {
            PFLog.m27e(TAG, "getIVrMedia binder = null return!");
            return null;
        }
        IVrMedia iVrMediaAsInterface = IVrMedia.Stub.asInterface(service);
        this.mService = iVrMediaAsInterface;
        if (iVrMediaAsInterface != null) {
            PFLog.m25d(TAG, "getIVrMedia mService = OK!");
            return this.mService;
        }
        PFLog.m27e(TAG, "getIVrMedia mService = null return!");
        return null;
    }
}
