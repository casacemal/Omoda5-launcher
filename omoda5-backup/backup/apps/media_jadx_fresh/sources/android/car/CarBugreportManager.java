package android.car;

import android.car.ICarBugreportCallback;
import android.car.ICarBugreportService;
import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.Objects;
import libcore.io.IoUtils;

/* loaded from: classes.dex */
public final class CarBugreportManager implements CarManagerBase {
    private Handler mHandler;
    private final ICarBugreportService mService;

    public static abstract class CarBugreportManagerCallback {
        public static final int CAR_BUGREPORT_DUMPSTATE_CONNECTION_FAILED = 3;
        public static final int CAR_BUGREPORT_DUMPSTATE_FAILED = 1;
        public static final int CAR_BUGREPORT_IN_PROGRESS = 2;
        public static final int CAR_BUGREPORT_SERVICE_NOT_AVAILABLE = 4;

        @Retention(RetentionPolicy.SOURCE)
        public @interface CarBugreportErrorCode {
        }

        public void onError(int r1) {
        }

        public void onFinished() {
        }

        public void onProgress(float f) {
        }
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class CarBugreportManagerCallbackWrapper extends ICarBugreportCallback.Stub {
        private final WeakReference<CarBugreportManagerCallback> mWeakCallback;
        private final WeakReference<Handler> mWeakHandler;

        CarBugreportManagerCallbackWrapper(CarBugreportManagerCallback carBugreportManagerCallback, Handler handler) {
            this.mWeakCallback = new WeakReference<>(carBugreportManagerCallback);
            this.mWeakHandler = new WeakReference<>(handler);
        }

        @Override // android.car.ICarBugreportCallback
        public void onProgress(final float f) {
            final CarBugreportManagerCallback carBugreportManagerCallback = this.mWeakCallback.get();
            Handler handler = this.mWeakHandler.get();
            if (handler == null || carBugreportManagerCallback == null) {
                return;
            }
            handler.post(new Runnable() { // from class: android.car.-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$SKlkbH2yc5GbUZezB8cF5ckvnkk
                @Override // java.lang.Runnable
                public final void run() {
                    carBugreportManagerCallback.onProgress(f);
                }
            });
        }

        @Override // android.car.ICarBugreportCallback
        public void onError(final int r3) {
            final CarBugreportManagerCallback carBugreportManagerCallback = this.mWeakCallback.get();
            Handler handler = this.mWeakHandler.get();
            if (handler == null || carBugreportManagerCallback == null) {
                return;
            }
            handler.post(new Runnable() { // from class: android.car.-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$6ynqvb6TW8a-N8urXMTzbjfrmsk
                @Override // java.lang.Runnable
                public final void run() {
                    carBugreportManagerCallback.onError(r3);
                }
            });
        }

        @Override // android.car.ICarBugreportCallback
        public void onFinished() {
            final CarBugreportManagerCallback carBugreportManagerCallback = this.mWeakCallback.get();
            Handler handler = this.mWeakHandler.get();
            if (handler == null || carBugreportManagerCallback == null) {
                return;
            }
            Objects.requireNonNull(carBugreportManagerCallback);
            handler.post(new Runnable() { // from class: android.car.-$$Lambda$xrCRTzZqIh_Vz-aS3bmIqYgze-s
                @Override // java.lang.Runnable
                public final void run() {
                    carBugreportManagerCallback.onFinished();
                }
            });
        }
    }

    public CarBugreportManager(IBinder iBinder, Context context) {
        this.mService = ICarBugreportService.Stub.asInterface(iBinder);
        this.mHandler = new Handler(context.getMainLooper());
    }

    public void requestBugreport(ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, CarBugreportManagerCallback carBugreportManagerCallback) {
        Preconditions.checkNotNull(parcelFileDescriptor);
        Preconditions.checkNotNull(parcelFileDescriptor2);
        Preconditions.checkNotNull(carBugreportManagerCallback);
        try {
            try {
                this.mService.requestBugreport(parcelFileDescriptor, parcelFileDescriptor2, new CarBugreportManagerCallbackWrapper(carBugreportManagerCallback, this.mHandler));
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        } finally {
            IoUtils.closeQuietly(parcelFileDescriptor);
            IoUtils.closeQuietly(parcelFileDescriptor2);
        }
    }
}
