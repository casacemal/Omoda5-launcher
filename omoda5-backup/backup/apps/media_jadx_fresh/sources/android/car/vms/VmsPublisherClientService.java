package android.car.vms;

import android.annotation.SystemApi;
import android.app.Service;
import android.car.vms.IVmsPublisherClient;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.util.Preconditions;
import java.lang.ref.WeakReference;
import org.json.JSONException;

@SystemApi
/* loaded from: classes.dex */
public abstract class VmsPublisherClientService extends Service {
    private static final boolean DBG = false;
    private static final String TAG = "VmsPublisherClientService";
    private final Object mLock = new Object();
    private Handler mHandler = new VmsEventHandler(this);
    private final VmsPublisherClientBinder mVmsPublisherClient = new VmsPublisherClientBinder(this);
    private volatile IVmsPublisherService mVmsPublisherService = null;
    private IBinder mToken = null;

    protected abstract void onVmsPublisherServiceReady();

    public abstract void onVmsSubscriptionChange(VmsSubscriptionState vmsSubscriptionState);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mVmsPublisherClient.asBinder();
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        stopSelf();
        return super.onUnbind(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setToken(IBinder iBinder) {
        synchronized (this.mLock) {
            this.mToken = iBinder;
        }
    }

    public final void publish(VmsLayer vmsLayer, int r3, byte[] bArr) {
        Preconditions.checkNotNull(vmsLayer, "layer cannot be null");
        try {
            this.mVmsPublisherService.publish(getTokenForPublisherServiceThreadSafe(), vmsLayer, r3, bArr);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public final void setLayersOffering(VmsLayersOffering vmsLayersOffering) throws JSONException {
        Preconditions.checkNotNull(vmsLayersOffering, "offering cannot be null");
        try {
            this.mVmsPublisherService.setLayersOffering(getTokenForPublisherServiceThreadSafe(), vmsLayersOffering);
            VmsOperationRecorder.get().setLayersOffering(vmsLayersOffering);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    private IBinder getTokenForPublisherServiceThreadSafe() {
        IBinder iBinder;
        if (this.mVmsPublisherService == null) {
            throw new IllegalStateException("VmsPublisherService not set.");
        }
        synchronized (this.mLock) {
            iBinder = this.mToken;
        }
        if (iBinder != null) {
            return iBinder;
        }
        throw new IllegalStateException("VmsPublisherService does not have a valid token.");
    }

    public final int getPublisherId(byte[] bArr) {
        if (this.mVmsPublisherService == null) {
            throw new IllegalStateException("VmsPublisherService not set.");
        }
        try {
            int publisherId = this.mVmsPublisherService.getPublisherId(bArr);
            Log.i(TAG, "Assigned publisher ID: " + publisherId);
            VmsOperationRecorder.get().getPublisherId(publisherId);
            return publisherId;
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public final VmsSubscriptionState getSubscriptions() {
        if (this.mVmsPublisherService == null) {
            throw new IllegalStateException("VmsPublisherService not set.");
        }
        try {
            return this.mVmsPublisherService.getSubscriptions();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVmsPublisherService(IVmsPublisherService iVmsPublisherService) {
        this.mVmsPublisherService = iVmsPublisherService;
        onVmsPublisherServiceReady();
    }

    private static class VmsPublisherClientBinder extends IVmsPublisherClient.Stub {
        private long mSequence = -1;
        private final Object mSequenceLock = new Object();
        private final WeakReference<VmsPublisherClientService> mVmsPublisherClientService;

        VmsPublisherClientBinder(VmsPublisherClientService vmsPublisherClientService) {
            this.mVmsPublisherClientService = new WeakReference<>(vmsPublisherClientService);
        }

        @Override // android.car.vms.IVmsPublisherClient
        public void setVmsPublisherService(IBinder iBinder, IVmsPublisherService iVmsPublisherService) {
            assertSystemOrSelf();
            VmsPublisherClientService vmsPublisherClientService = this.mVmsPublisherClientService.get();
            if (vmsPublisherClientService == null) {
                return;
            }
            Handler handler = vmsPublisherClientService.mHandler;
            handler.sendMessage(handler.obtainMessage(1, iVmsPublisherService));
            vmsPublisherClientService.setToken(iBinder);
        }

        @Override // android.car.vms.IVmsPublisherClient
        public void onVmsSubscriptionChange(VmsSubscriptionState vmsSubscriptionState) {
            assertSystemOrSelf();
            VmsPublisherClientService vmsPublisherClientService = this.mVmsPublisherClientService.get();
            if (vmsPublisherClientService == null) {
                return;
            }
            synchronized (this.mSequenceLock) {
                if (vmsSubscriptionState.getSequenceNumber() <= this.mSequence) {
                    Log.w(VmsPublisherClientService.TAG, "Sequence out of order. Current sequence = " + this.mSequence + "; expected new sequence = " + vmsSubscriptionState.getSequenceNumber());
                    return;
                }
                this.mSequence = vmsSubscriptionState.getSequenceNumber();
                Handler handler = vmsPublisherClientService.mHandler;
                handler.sendMessage(handler.obtainMessage(0, vmsSubscriptionState));
            }
        }

        private void assertSystemOrSelf() {
            if (Build.VERSION.SDK_INT < 29 && Binder.getCallingUid() != 1000 && Binder.getCallingPid() != Process.myPid()) {
                throw new SecurityException("Caller must be system user or same process");
            }
        }
    }

    private static final class VmsEventHandler extends Handler {
        private static final int ON_SUBSCRIPTION_CHANGE_EVENT = 0;
        private static final int SET_SERVICE_CALLBACK = 1;
        private final WeakReference<VmsPublisherClientService> mVmsPublisherClientService;

        VmsEventHandler(VmsPublisherClientService vmsPublisherClientService) {
            super(Looper.getMainLooper());
            this.mVmsPublisherClientService = new WeakReference<>(vmsPublisherClientService);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            VmsPublisherClientService vmsPublisherClientService = this.mVmsPublisherClientService.get();
            if (vmsPublisherClientService == null) {
                return;
            }
            int r0 = message.what;
            if (r0 == 0) {
                vmsPublisherClientService.onVmsSubscriptionChange((VmsSubscriptionState) message.obj);
                return;
            }
            if (r0 == 1) {
                vmsPublisherClientService.setVmsPublisherService((IVmsPublisherService) message.obj);
                return;
            }
            Log.e(VmsPublisherClientService.TAG, "Event type not handled:  " + message.what);
        }
    }
}
