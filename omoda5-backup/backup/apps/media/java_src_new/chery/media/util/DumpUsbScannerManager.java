package com.chery.media.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.IUsbScannerEventListener;
import android.media.IUsbScannerService;
import android.media.UsbScannerResult;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import com.avn.tools.log.PFLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DumpUsbScannerManager {
    private static final String TAG = "DumpUsbScannerManager";
    private Context mContext;
    private UsbScannerConnection mUsbConnection;
    private List<UsbServiceListener> usbServiceListenerList = new ArrayList();
    private List<UsbScannerListener> usbScannerListeners = new ArrayList();
    private Handler handler = new Handler();

    public interface UsbScannerListener {
        void onMediaSyncCompleted(int r1, String str, int r3);

        void onMediaSyncInProgress(int r1, String str, int r3, UsbScannerResult usbScannerResult);

        void onMediaSyncStarted(int r1, String str, int r3);

        void onMountReceived(int r1, String str, int r3);

        void onUnMountReceived(int r1, String str, int r3);
    }

    public interface UsbServiceListener {
        void onConnected();

        void onDisconnected();
    }

    public void addServiceListener(UsbServiceListener usbServiceListener) {
        if (this.usbServiceListenerList.contains(usbServiceListener)) {
            return;
        }
        this.usbServiceListenerList.add(usbServiceListener);
    }

    public void removeServiceListener(UsbServiceListener usbServiceListener) {
        this.usbServiceListenerList.remove(usbServiceListener);
    }

    public void addUsbScannerListener(UsbScannerListener usbScannerListener) {
        if (this.usbScannerListeners.contains(usbScannerListener)) {
            return;
        }
        this.usbScannerListeners.add(usbScannerListener);
    }

    public void removeScanListener(UsbScannerListener usbScannerListener) {
        this.usbScannerListeners.remove(usbScannerListener);
    }

    public DumpUsbScannerManager(Context context) {
        this.mContext = context;
        this.mUsbConnection = new UsbScannerConnection(this.mContext);
    }

    public void connect() {
        if (this.mUsbConnection.isConnected()) {
            return;
        }
        this.mUsbConnection.connect();
    }

    public void disconnect() {
        if (this.mUsbConnection.isConnected()) {
            this.mUsbConnection.disconnect();
        }
    }

    public void setPriority(int r3, int r4, int r5) {
        PFLog.m25d(TAG, "setPriority, type " + r3 + "scanType " + r5);
        if (r3 != 1) {
            return;
        }
        this.mUsbConnection.setPriority(r3, r4, r5);
    }

    public int getPriority(int r3, int r4) {
        PFLog.m25d(TAG, "getPriority, type " + r3 + "id " + r4);
        if (r3 != 1) {
            return 0;
        }
        return this.mUsbConnection.getPriority(r3, r4);
    }

    public int getScanStatus(int r3, int r4) {
        PFLog.m25d(TAG, "getScanStatus, type " + r3 + " id " + r4);
        if (r3 != 1) {
            return 32;
        }
        return this.mUsbConnection.getScanStatus(r3, r4);
    }

    public boolean isUsbServiceConnected() {
        return this.mUsbConnection.isConnected();
    }

    public class UsbScannerConnection implements ServiceConnection {
        private boolean mConnected;
        private Context mContext;
        private IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: com.chery.media.util.DumpUsbScannerManager.UsbScannerConnection.1
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                PFLog.m25d(DumpUsbScannerManager.TAG, "onBindingDied(): ");
                if (UsbScannerConnection.this.mUsbService != null) {
                    synchronized (this) {
                        UsbScannerConnection.this.mUsbService.asBinder().unlinkToDeath(UsbScannerConnection.this.mDeathRecipient, 0);
                        UsbScannerConnection.this.disconnect();
                        UsbScannerConnection.this.connect();
                    }
                }
            }
        };
        private IUsbScannerEventListener mUsbScannerListener;
        private IUsbScannerService mUsbService;

        UsbScannerConnection(Context context) {
            this.mContext = context;
            this.mUsbScannerListener = new IUsbScannerEventListener.Stub() { // from class: com.chery.media.util.DumpUsbScannerManager.UsbScannerConnection.2
                public void onMountReceived(final int r4, final String str, final int r6) throws RemoteException {
                    PFLog.m25d(DumpUsbScannerManager.TAG, String.format("onMountReceived %s %s %s", Integer.valueOf(r4), str, Integer.valueOf(r6)));
                    DumpUsbScannerManager.this.handler.post(new Runnable() { // from class: com.chery.media.util.DumpUsbScannerManager.UsbScannerConnection.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Iterator it = DumpUsbScannerManager.this.usbScannerListeners.iterator();
                            while (it.hasNext()) {
                                ((UsbScannerListener) it.next()).onMountReceived(r4, str, r6);
                            }
                        }
                    });
                }

                public void onUnMountReceived(final int r4, final String str, final int r6) throws RemoteException {
                    PFLog.m25d(DumpUsbScannerManager.TAG, String.format("onUnMountReceived %s %s %s", Integer.valueOf(r4), str, Integer.valueOf(r6)));
                    DumpUsbScannerManager.this.handler.post(new Runnable() { // from class: com.chery.media.util.DumpUsbScannerManager.UsbScannerConnection.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            Iterator it = DumpUsbScannerManager.this.usbScannerListeners.iterator();
                            while (it.hasNext()) {
                                ((UsbScannerListener) it.next()).onUnMountReceived(r4, str, r6);
                            }
                        }
                    });
                }

                public void onMediaSyncStarted(final int r4, final String str, final int r6) throws RemoteException {
                    PFLog.m25d(DumpUsbScannerManager.TAG, String.format("onMediaSyncStarted %s %s %s", Integer.valueOf(r4), str, Integer.valueOf(r6)));
                    DumpUsbScannerManager.this.handler.post(new Runnable() { // from class: com.chery.media.util.DumpUsbScannerManager.UsbScannerConnection.2.3
                        @Override // java.lang.Runnable
                        public void run() {
                            Iterator it = DumpUsbScannerManager.this.usbScannerListeners.iterator();
                            while (it.hasNext()) {
                                ((UsbScannerListener) it.next()).onMediaSyncStarted(r4, str, r6);
                            }
                        }
                    });
                }

                public void onMediaSyncInProgress(final int r9, final String str, final int r11, final UsbScannerResult usbScannerResult) throws RemoteException {
                    PFLog.m25d(DumpUsbScannerManager.TAG, String.format("onMediaSyncInProgress %s %s %s %s", Integer.valueOf(r9), str, Integer.valueOf(r11), usbScannerResult));
                    DumpUsbScannerManager.this.handler.post(new Runnable() { // from class: com.chery.media.util.DumpUsbScannerManager.UsbScannerConnection.2.4
                        @Override // java.lang.Runnable
                        public void run() {
                            Iterator it = DumpUsbScannerManager.this.usbScannerListeners.iterator();
                            while (it.hasNext()) {
                                ((UsbScannerListener) it.next()).onMediaSyncInProgress(r9, str, r11, usbScannerResult);
                            }
                        }
                    });
                }

                public void onMediaSyncCompleted(final int r4, final String str, final int r6) throws RemoteException {
                    PFLog.m25d(DumpUsbScannerManager.TAG, String.format("onMediaSyncCompleted %s %s %s", Integer.valueOf(r4), str, Integer.valueOf(r6)));
                    DumpUsbScannerManager.this.handler.post(new Runnable() { // from class: com.chery.media.util.DumpUsbScannerManager.UsbScannerConnection.2.5
                        @Override // java.lang.Runnable
                        public void run() {
                            Iterator it = DumpUsbScannerManager.this.usbScannerListeners.iterator();
                            while (it.hasNext()) {
                                ((UsbScannerListener) it.next()).onMediaSyncCompleted(r4, str, r6);
                            }
                        }
                    });
                }
            };
        }

        public void connect() {
            synchronized (this) {
                if (!this.mConnected) {
                    final Intent intent = new Intent(IUsbScannerService.class.getName());
                    intent.setComponent(new ComponentName("com.android.providers.media", "com.android.providers.media.UsbScannerService"));
                    this.mContext.bindService(intent, this, 1);
                    DumpUsbScannerManager.this.handler.postDelayed(new Runnable() { // from class: com.chery.media.util.DumpUsbScannerManager.UsbScannerConnection.3
                        @Override // java.lang.Runnable
                        public void run() {
                            if (UsbScannerConnection.this.mConnected) {
                                return;
                            }
                            PFLog.m25d(DumpUsbScannerManager.TAG, "Service not connected yet, to retry!");
                            UsbScannerConnection.this.mContext.bindService(intent, UsbScannerConnection.this, 1);
                            DumpUsbScannerManager.this.handler.postDelayed(this, 100L);
                        }
                    }, 100L);
                }
            }
        }

        public void disconnect() {
            synchronized (this) {
                if (this.mConnected) {
                    unregisterListener(this.mUsbScannerListener);
                    this.mContext.unbindService(this);
                    this.mUsbService = null;
                    this.mConnected = false;
                }
            }
        }

        public void registerListener(IUsbScannerEventListener iUsbScannerEventListener) {
            if (!this.mConnected) {
                PFLog.m27e(DumpUsbScannerManager.TAG, "registerListener(), null service");
                return;
            }
            try {
                this.mUsbService.registerListener(iUsbScannerEventListener);
            } catch (RemoteException e) {
                PFLog.m27e(DumpUsbScannerManager.TAG, "exception in registerListener " + e);
            }
        }

        public void unregisterListener(IUsbScannerEventListener iUsbScannerEventListener) {
            if (!this.mConnected) {
                PFLog.m27e(DumpUsbScannerManager.TAG, "unregisterListener(), null service");
                return;
            }
            try {
                this.mUsbService.unregisterListener(iUsbScannerEventListener);
            } catch (RemoteException e) {
                PFLog.m27e(DumpUsbScannerManager.TAG, "exception in unregisterListener " + e);
            }
        }

        public void setPriority(int r3, int r4, int r5) {
            if (!this.mConnected) {
                PFLog.m27e(DumpUsbScannerManager.TAG, "can't set priority, null service");
                return;
            }
            try {
                this.mUsbService.setPriority(r3, r4, r5);
            } catch (RemoteException e) {
                PFLog.m27e(DumpUsbScannerManager.TAG, "exception in setPriority " + e);
            }
        }

        public int getPriority(int r4, int r5) {
            if (!this.mConnected) {
                PFLog.m27e(DumpUsbScannerManager.TAG, "can't get priority, null service");
                return 0;
            }
            try {
                return this.mUsbService.getPriority(r4, r5);
            } catch (RemoteException e) {
                PFLog.m27e(DumpUsbScannerManager.TAG, "exception in getPriority " + e);
                return 0;
            }
        }

        public int getScanStatus(int r4, int r5) {
            if (!this.mConnected) {
                PFLog.m27e(DumpUsbScannerManager.TAG, "can't get scan status(), null service");
                return 32;
            }
            try {
                return this.mUsbService.getScanStatus(r4, r5);
            } catch (RemoteException e) {
                PFLog.m27e(DumpUsbScannerManager.TAG, "exception in getScanStatus " + e);
                return 32;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x000b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public synchronized boolean isConnected() {
            /*
                r1 = this;
                monitor-enter(r1)
                android.media.IUsbScannerService r0 = r1.mUsbService     // Catch: java.lang.Throwable -> Le
                if (r0 == 0) goto Lb
                boolean r0 = r1.mConnected     // Catch: java.lang.Throwable -> Le
                if (r0 == 0) goto Lb
                r0 = 1
                goto Lc
            Lb:
                r0 = 0
            Lc:
                monitor-exit(r1)
                return r0
            Le:
                r0 = move-exception
                monitor-exit(r1)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.chery.media.util.DumpUsbScannerManager.UsbScannerConnection.isConnected():boolean");
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            PFLog.m25d(DumpUsbScannerManager.TAG, "onServiceConnected(): " + componentName);
            synchronized (this) {
                try {
                    iBinder.linkToDeath(this.mDeathRecipient, 0);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
                this.mConnected = true;
                this.mUsbService = IUsbScannerService.Stub.asInterface(iBinder);
                registerListener(this.mUsbScannerListener);
                Iterator it = DumpUsbScannerManager.this.usbServiceListenerList.iterator();
                while (it.hasNext()) {
                    ((UsbServiceListener) it.next()).onConnected();
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            PFLog.m25d(DumpUsbScannerManager.TAG, "onServiceDisconnected(): " + componentName);
            this.mConnected = false;
            Iterator it = DumpUsbScannerManager.this.usbServiceListenerList.iterator();
            while (it.hasNext()) {
                ((UsbServiceListener) it.next()).onDisconnected();
            }
        }
    }
}
