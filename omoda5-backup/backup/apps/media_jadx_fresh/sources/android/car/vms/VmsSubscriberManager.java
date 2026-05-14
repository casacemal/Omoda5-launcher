package android.car.vms;

import android.annotation.SystemApi;
import android.car.CarManagerBase;
import android.car.vms.IVmsSubscriberClient;
import android.car.vms.IVmsSubscriberService;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.util.Preconditions;
import java.util.concurrent.Executor;

@SystemApi
/* loaded from: classes.dex */
public final class VmsSubscriberManager implements CarManagerBase {
    private static final String TAG = "VmsSubscriberManager";
    private VmsSubscriberClientCallback mClientCallback;
    private Executor mExecutor;
    private final IVmsSubscriberService mVmsSubscriberService;
    private final Object mClientCallbackLock = new Object();
    private final IVmsSubscriberClient mSubscriberManagerClient = new BinderC00651();

    public interface VmsSubscriberClientCallback {
        void onLayersAvailabilityChanged(VmsAvailableLayers vmsAvailableLayers);

        void onVmsMessageReceived(VmsLayer vmsLayer, byte[] bArr);
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
    }

    public VmsSubscriberManager(IBinder iBinder) {
        this.mVmsSubscriberService = IVmsSubscriberService.Stub.asInterface(iBinder);
    }

    /* renamed from: android.car.vms.VmsSubscriberManager$1 */
    class BinderC00651 extends IVmsSubscriberClient.Stub {
        BinderC00651() {
        }

        @Override // android.car.vms.IVmsSubscriberClient
        public void onVmsMessageReceived(final VmsLayer vmsLayer, final byte[] bArr) {
            Executor executor;
            synchronized (VmsSubscriberManager.this.mClientCallbackLock) {
                executor = VmsSubscriberManager.this.mExecutor;
            }
            if (executor == null) {
                Log.w(VmsSubscriberManager.TAG, "Executor is unset in onVmsMessageReceived");
            } else {
                Binder.clearCallingIdentity();
                executor.execute(new Runnable() { // from class: android.car.vms.-$$Lambda$VmsSubscriberManager$1$afqRUqICTW_Bv-9KKLr-b1VHpUA
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onVmsMessageReceived$0$VmsSubscriberManager$1(vmsLayer, bArr);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onVmsMessageReceived$0$VmsSubscriberManager$1(VmsLayer vmsLayer, byte[] bArr) {
            VmsSubscriberManager.this.dispatchOnReceiveMessage(vmsLayer, bArr);
        }

        @Override // android.car.vms.IVmsSubscriberClient
        public void onLayersAvailabilityChanged(final VmsAvailableLayers vmsAvailableLayers) {
            Executor executor;
            synchronized (VmsSubscriberManager.this.mClientCallbackLock) {
                executor = VmsSubscriberManager.this.mExecutor;
            }
            if (executor == null) {
                Log.w(VmsSubscriberManager.TAG, "Executor is unset in onLayersAvailabilityChanged");
            } else {
                Binder.clearCallingIdentity();
                executor.execute(new Runnable() { // from class: android.car.vms.-$$Lambda$VmsSubscriberManager$1$YFkXlCwCneVvMYfeu4olB3-8X0o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onLayersAvailabilityChanged$1$VmsSubscriberManager$1(vmsAvailableLayers);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onLayersAvailabilityChanged$1$VmsSubscriberManager$1(VmsAvailableLayers vmsAvailableLayers) {
            VmsSubscriberManager.this.dispatchOnAvailabilityChangeMessage(vmsAvailableLayers);
        }
    }

    public void setVmsSubscriberClientCallback(Executor executor, VmsSubscriberClientCallback vmsSubscriberClientCallback) {
        synchronized (this.mClientCallbackLock) {
            if (this.mClientCallback != null) {
                throw new IllegalStateException("Client callback is already configured.");
            }
            this.mClientCallback = (VmsSubscriberClientCallback) Preconditions.checkNotNull(vmsSubscriberClientCallback, "clientCallback cannot be null");
            this.mExecutor = (Executor) Preconditions.checkNotNull(executor, "executor cannot be null");
        }
        try {
            this.mVmsSubscriberService.addVmsSubscriberToNotifications(this.mSubscriberManagerClient);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void clearVmsSubscriberClientCallback() {
        synchronized (this.mClientCallbackLock) {
            if (this.mExecutor == null) {
                return;
            }
            try {
                try {
                    this.mVmsSubscriberService.removeVmsSubscriberToNotifications(this.mSubscriberManagerClient);
                    synchronized (this.mClientCallbackLock) {
                        this.mClientCallback = null;
                        this.mExecutor = null;
                    }
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                synchronized (this.mClientCallbackLock) {
                    this.mClientCallback = null;
                    this.mExecutor = null;
                    throw th;
                }
            }
        }
    }

    public byte[] getPublisherInfo(int r1) {
        try {
            return this.mVmsSubscriberService.getPublisherInfo(r1);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public VmsAvailableLayers getAvailableLayers() {
        try {
            return this.mVmsSubscriberService.getAvailableLayers();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void subscribe(VmsLayer vmsLayer) {
        verifySubscriptionIsAllowed();
        try {
            this.mVmsSubscriberService.addVmsSubscriber(this.mSubscriberManagerClient, vmsLayer);
            VmsOperationRecorder.get().subscribe(vmsLayer);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void subscribe(VmsLayer vmsLayer, int r3) {
        verifySubscriptionIsAllowed();
        try {
            this.mVmsSubscriberService.addVmsSubscriberToPublisher(this.mSubscriberManagerClient, vmsLayer, r3);
            VmsOperationRecorder.get().subscribe(vmsLayer, r3);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void startMonitoring() {
        verifySubscriptionIsAllowed();
        try {
            this.mVmsSubscriberService.addVmsSubscriberPassive(this.mSubscriberManagerClient);
            VmsOperationRecorder.get().startMonitoring();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void unsubscribe(VmsLayer vmsLayer) {
        verifySubscriptionIsAllowed();
        try {
            this.mVmsSubscriberService.removeVmsSubscriber(this.mSubscriberManagerClient, vmsLayer);
            VmsOperationRecorder.get().unsubscribe(vmsLayer);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void unsubscribe(VmsLayer vmsLayer, int r3) {
        try {
            this.mVmsSubscriberService.removeVmsSubscriberToPublisher(this.mSubscriberManagerClient, vmsLayer, r3);
            VmsOperationRecorder.get().unsubscribe(vmsLayer, r3);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void stopMonitoring() {
        try {
            this.mVmsSubscriberService.removeVmsSubscriberPassive(this.mSubscriberManagerClient);
            VmsOperationRecorder.get().stopMonitoring();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchOnReceiveMessage(VmsLayer vmsLayer, byte[] bArr) {
        VmsSubscriberClientCallback clientCallbackThreadSafe = getClientCallbackThreadSafe();
        if (clientCallbackThreadSafe == null) {
            Log.e(TAG, "Cannot dispatch received message.");
        } else {
            clientCallbackThreadSafe.onVmsMessageReceived(vmsLayer, bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchOnAvailabilityChangeMessage(VmsAvailableLayers vmsAvailableLayers) {
        VmsSubscriberClientCallback clientCallbackThreadSafe = getClientCallbackThreadSafe();
        if (clientCallbackThreadSafe == null) {
            Log.e(TAG, "Cannot dispatch availability change message.");
        } else {
            clientCallbackThreadSafe.onLayersAvailabilityChanged(vmsAvailableLayers);
        }
    }

    private VmsSubscriberClientCallback getClientCallbackThreadSafe() {
        VmsSubscriberClientCallback vmsSubscriberClientCallback;
        synchronized (this.mClientCallbackLock) {
            vmsSubscriberClientCallback = this.mClientCallback;
        }
        if (vmsSubscriberClientCallback == null) {
            Log.e(TAG, "client callback not set.");
        }
        return vmsSubscriberClientCallback;
    }

    private void verifySubscriptionIsAllowed() {
        if (getClientCallbackThreadSafe() == null) {
            throw new IllegalStateException("Cannot subscribe.");
        }
    }
}
