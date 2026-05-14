package com.chery.libvr.manager.platformmanager;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.libvr.apps.IVrFunctionBinderPool;
import com.chery.libvr.apps.IVrInitStatusCallback;
import com.chery.libvr.bean.InitListener;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class VrPlatformService {
    private static volatile VrPlatformService mInstance;
    private IVrFunctionBinderPool mBinderPoolInterface;
    private Context mContext;
    private InitListener mInitListener;
    private ScheduledExecutorService scheduler;
    private final String TAG = CarLog.concatTag("VR", VrPlatformService.class);
    private boolean mVrInitStatus = false;
    private ServiceConnection connetVrService = new ServiceConnection() { // from class: com.chery.libvr.manager.platformmanager.VrPlatformService.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws RemoteException {
            PFLog.m25d(VrPlatformService.this.TAG, "onServiceConnected lib version: 103");
            if (VrPlatformService.this.isVrInitStatusOk()) {
                PFLog.m25d(VrPlatformService.this.TAG, "onServiceConnected isVrInitStatusOk()");
                if (VrPlatformService.this.mInitListener != null) {
                    VrPlatformService.this.mInitListener.onConnectedToRemote();
                    return;
                } else {
                    PFLog.m27e(VrPlatformService.this.TAG, "onServiceConnected mInitListener == null");
                    return;
                }
            }
            VrPlatformService.this.mBinderPoolInterface = IVrFunctionBinderPool.Stub.asInterface(iBinder);
            if (VrPlatformService.this.mBinderPoolInterface == null) {
                PFLog.m27e(VrPlatformService.this.TAG, "onServiceConnected mBinderPoolInterface == null");
                if (VrPlatformService.this.mInitListener != null) {
                    VrPlatformService.this.mInitListener.onDisconnectedToRemote();
                    return;
                } else {
                    PFLog.m27e(VrPlatformService.this.TAG, "onServiceConnected mInitListener == null");
                    return;
                }
            }
            PFLog.m25d(VrPlatformService.this.TAG, "mBinderPoolInterface OK");
            try {
                VrPlatformService.this.mBinderPoolInterface.registerVrInitStatusCallback(VrPlatformService.this.mVrInitStatusCallback);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            if (VrPlatformService.this.isVrInitStatusOk()) {
                PFLog.m25d(VrPlatformService.this.TAG, "onServiceConnected isVrInitStatusOk()");
                if (VrPlatformService.this.mInitListener != null) {
                    VrPlatformService.this.mInitListener.onConnectedToRemote();
                } else {
                    PFLog.m27e(VrPlatformService.this.TAG, "onServiceConnected mInitListener == null");
                }
            }
            try {
                VrPlatformService.this.mBinderPoolInterface.asBinder().linkToDeath(VrPlatformService.this.mDeathRecipient, 0);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            PFLog.m33w(VrPlatformService.this.TAG, "onServiceDisconnected");
            VrPlatformService.this.mBinderPoolInterface = null;
            VrPlatformService.this.connectPlatformService();
            VrPlatformService.this.mInitListener.onDisconnectedToRemote();
        }
    };
    private IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: com.chery.libvr.manager.platformmanager.VrPlatformService.3
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            PFLog.m27e(VrPlatformService.this.TAG, "mDeathRecipient binderDied");
            if (VrPlatformService.this.mBinderPoolInterface != null) {
                VrPlatformService.this.mBinderPoolInterface.asBinder().unlinkToDeath(VrPlatformService.this.mDeathRecipient, 0);
            }
            VrPlatformService.this.mBinderPoolInterface = null;
            VrPlatformService.this.connectPlatformService();
        }
    };
    private IVrInitStatusCallback mVrInitStatusCallback = new IVrInitStatusCallback.Stub() { // from class: com.chery.libvr.manager.platformmanager.VrPlatformService.4
        @Override // com.chery.libvr.apps.IVrInitStatusCallback
        public void onVrInitStatus(int r4) throws RemoteException {
            PFLog.m25d(VrPlatformService.this.TAG, "onDuOsInitStatus status = " + r4);
            if (r4 == 1) {
                VrPlatformService.this.mVrInitStatus = true;
                if (VrPlatformService.this.mInitListener != null) {
                    VrPlatformService.this.mInitListener.onConnectedToRemote();
                    return;
                } else {
                    PFLog.m27e(VrPlatformService.this.TAG, "onDuOsInitStatus mInitListener == null");
                    return;
                }
            }
            VrPlatformService.this.mVrInitStatus = false;
            if (VrPlatformService.this.mInitListener != null) {
                VrPlatformService.this.mInitListener.onDisconnectedToRemote();
            } else {
                PFLog.m27e(VrPlatformService.this.TAG, "onDuOsInitStatus mInitListener == null");
            }
        }
    };

    public static VrPlatformService getInstance() {
        if (mInstance == null) {
            synchronized (VrPlatformService.class) {
                if (mInstance == null) {
                    mInstance = new VrPlatformService();
                }
            }
        }
        return mInstance;
    }

    public void init(Context context, InitListener initListener) {
        this.mInitListener = initListener;
        this.mContext = context;
        startThreadToConnectPlatformService();
    }

    public void startThreadToConnectPlatformService() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.scheduler = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleAtFixedRate(new Runnable() { // from class: com.chery.libvr.manager.platformmanager.VrPlatformService.1
            @Override // java.lang.Runnable
            public void run() {
                if (VrPlatformService.this.mBinderPoolInterface == null) {
                    VrPlatformService.this.connectPlatformService();
                }
            }
        }, 0L, 10000L, TimeUnit.MILLISECONDS);
    }

    public IBinder getPlatformService(int r4) {
        PFLog.m25d(this.TAG, "getPlatformService serviceTypeCode = " + r4);
        IBinder iBinderQueryFunctionToolBinder = null;
        try {
            if (this.mBinderPoolInterface != null) {
                iBinderQueryFunctionToolBinder = this.mBinderPoolInterface.queryFunctionToolBinder(r4);
            } else {
                PFLog.m27e(this.TAG, "getPlatformService mBinderPoolInterface == null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        return iBinderQueryFunctionToolBinder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void connectPlatformService() {
        PFLog.m29i(this.TAG, "connectPlatformService lib version: 103");
        try {
            Intent intent = new Intent();
            intent.setClassName("com.chery.cerence", "com.chery.cerence.VrService");
            this.mContext.bindService(intent, this.connetVrService, 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void disconnectPlatformService() {
        PFLog.m25d(this.TAG, "disconnectPlatformService()");
        this.mContext.unbindService(this.connetVrService);
        try {
            this.mBinderPoolInterface.unregisterVrInitStatusCallback(this.mVrInitStatusCallback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        this.mBinderPoolInterface = null;
        InitListener initListener = this.mInitListener;
        if (initListener != null) {
            initListener.onDisconnectedToRemote();
        } else {
            PFLog.m27e(this.TAG, "disconnectPlatformService mInitListener == null");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVrInitStatusOk() {
        IVrFunctionBinderPool iVrFunctionBinderPool = this.mBinderPoolInterface;
        boolean z = false;
        if (iVrFunctionBinderPool != null) {
            try {
                boolean vrInitStatus = iVrFunctionBinderPool.getVrInitStatus();
                if (this.mVrInitStatus || vrInitStatus) {
                    z = true;
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        PFLog.m25d(this.TAG, "isVrInitStatusOk() value = " + z);
        return z;
    }

    public String getPkgName() {
        return this.mContext.getPackageName();
    }
}
