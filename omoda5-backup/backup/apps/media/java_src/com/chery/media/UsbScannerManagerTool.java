package com.chery.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.media.IMediaService;
import com.chery.media.IMediaServiceListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class UsbScannerManagerTool {
    private static final String TAG = CarLog.concatTag("MEDIA", UsbScannerManagerTool.class);
    private static UsbScannerManagerTool instance;
    private Context context;
    private Handler handler;
    private IMediaService mediaService;
    private String mountPath;
    private List<Listener> listenerList = new ArrayList();
    private boolean isMounted = false;
    private int scanStatus = 32;
    private ServiceConnection serviceConnection = new ServiceConnectionC06341();

    public interface Listener {
        void onMounted(String str, boolean z);

        void onReady();

        void onScanStatusChanged(int r1);

        void onUnMounted();
    }

    public static UsbScannerManagerTool getInstance() {
        if (instance == null) {
            instance = new UsbScannerManagerTool();
        }
        return instance;
    }

    public void addListener(Listener listener) {
        if (this.listenerList.contains(listener)) {
            return;
        }
        this.listenerList.add(listener);
    }

    public void removeListener(Listener listener) {
        this.listenerList.remove(listener);
    }

    /* renamed from: com.chery.media.UsbScannerManagerTool$1 */
    class ServiceConnectionC06341 implements ServiceConnection {
        ServiceConnectionC06341() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws RemoteException {
            PFLog.m25d(UsbScannerManagerTool.TAG, "onServiceConnected");
            try {
                iBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.chery.media.UsbScannerManagerTool.1.1
                    @Override // android.os.IBinder.DeathRecipient
                    public void binderDied() {
                        PFLog.m25d(UsbScannerManagerTool.TAG, "binderDied");
                        if (UsbScannerManagerTool.this.mediaService != null) {
                            UsbScannerManagerTool.this.mediaService.asBinder().unlinkToDeath(this, 0);
                            UsbScannerManagerTool.this.disconnect();
                            UsbScannerManagerTool.this.connect();
                        }
                    }
                }, 0);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            UsbScannerManagerTool.this.mediaService = IMediaService.Stub.asInterface(iBinder);
            try {
                UsbScannerManagerTool.this.setMounted(UsbScannerManagerTool.this.mediaService.isUsbMounted(), UsbScannerManagerTool.this.mediaService.getUsbMountPath());
                UsbScannerManagerTool.this.setScanStatus(UsbScannerManagerTool.this.mediaService.getUsbScanStatus());
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
            UsbScannerManagerTool.this.handler.post(new Runnable() { // from class: com.chery.media.UsbScannerManagerTool.1.2
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = UsbScannerManagerTool.this.listenerList.iterator();
                    while (it.hasNext()) {
                        ((Listener) it.next()).onReady();
                    }
                }
            });
            try {
                UsbScannerManagerTool.this.mediaService.addListener(new IMediaServiceListener.Stub() { // from class: com.chery.media.UsbScannerManagerTool.1.3
                    @Override // com.chery.media.IMediaServiceListener
                    public void onUsbMounted(final String str, final boolean z) throws RemoteException {
                        PFLog.m25d(UsbScannerManagerTool.TAG, "onUsbMounted " + str);
                        UsbScannerManagerTool.this.setMounted(true, str);
                        UsbScannerManagerTool.this.handler.post(new Runnable() { // from class: com.chery.media.UsbScannerManagerTool.1.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Iterator it = UsbScannerManagerTool.this.listenerList.iterator();
                                while (it.hasNext()) {
                                    ((Listener) it.next()).onMounted(str, z);
                                }
                            }
                        });
                    }

                    @Override // com.chery.media.IMediaServiceListener
                    public void onUsbUnMounted() throws RemoteException {
                        PFLog.m25d(UsbScannerManagerTool.TAG, "onUsbUnMounted");
                        UsbScannerManagerTool.this.setMounted(false, null);
                        UsbScannerManagerTool.this.handler.post(new Runnable() { // from class: com.chery.media.UsbScannerManagerTool.1.3.2
                            @Override // java.lang.Runnable
                            public void run() {
                                Iterator it = UsbScannerManagerTool.this.listenerList.iterator();
                                while (it.hasNext()) {
                                    ((Listener) it.next()).onUnMounted();
                                }
                            }
                        });
                    }

                    @Override // com.chery.media.IMediaServiceListener
                    public void onUSbScanStatusChanged(final int r4) throws RemoteException {
                        PFLog.m25d(UsbScannerManagerTool.TAG, "onUSbScanStatusChanged " + r4);
                        UsbScannerManagerTool.this.setScanStatus(r4);
                        UsbScannerManagerTool.this.handler.post(new Runnable() { // from class: com.chery.media.UsbScannerManagerTool.1.3.3
                            @Override // java.lang.Runnable
                            public void run() {
                                Iterator it = UsbScannerManagerTool.this.listenerList.iterator();
                                while (it.hasNext()) {
                                    ((Listener) it.next()).onScanStatusChanged(r4);
                                }
                            }
                        });
                    }
                });
            } catch (RemoteException e3) {
                e3.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            PFLog.m25d(UsbScannerManagerTool.TAG, "onServiceDisconnected");
        }
    }

    public void init(Context context) {
        PFLog.m25d(TAG, "init");
        this.context = context;
        this.handler = new Handler();
        connect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connect() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.chery.media", "com.chery.media.model.service.UsbScannerManagerService"));
        this.context.bindService(intent, this.serviceConnection, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnect() {
        this.context.unbindService(this.serviceConnection);
        this.mediaService = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMounted(boolean z, String str) {
        if (z == this.isMounted) {
            return;
        }
        this.isMounted = z;
        this.mountPath = str;
    }

    public boolean isMounted() {
        return this.isMounted;
    }

    public String getMountPath() {
        return this.mountPath;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScanStatus(int r2) {
        if (r2 == this.scanStatus) {
            return;
        }
        this.scanStatus = r2;
    }

    public int getScanStatus() {
        return this.scanStatus;
    }
}
