package android.car;

import android.annotation.SystemApi;
import android.app.Service;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.util.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;

@SystemApi
/* loaded from: classes.dex */
public abstract class AoapService extends Service {
    public static final String KEY_DEVICE = "usb-device";
    public static final String KEY_RESULT = "result";
    public static final int MSG_CAN_SWITCH_TO_AOAP = 3;
    public static final int MSG_CAN_SWITCH_TO_AOAP_RESPONSE = 4;
    public static final int MSG_NEW_DEVICE_ATTACHED = 1;
    public static final int MSG_NEW_DEVICE_ATTACHED_RESPONSE = 2;
    public static final int RESULT_DEVICE_NOT_SUPPORTED = 1;
    public static final int RESULT_DO_NOT_SWITCH_TO_AOAP = 2;
    public static final int RESULT_OK = 0;
    private static final String TAG = AoapService.class.getSimpleName();
    private boolean mBound;
    private Messenger mMessenger;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Result {
    }

    public int canSwitchToAoap(UsbDevice usbDevice) {
        return 0;
    }

    public abstract int isDeviceSupported(UsbDevice usbDevice);

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mMessenger = new Messenger(new IncomingHandler(this));
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (this.mBound) {
            Log.w(TAG, "Received onBind event when the service was already bound");
        }
        this.mBound = true;
        return this.mMessenger.getBinder();
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        this.mBound = false;
        return super.onUnbind(intent);
    }

    @Override // android.app.Service
    protected void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.write("Bound: " + this.mBound);
    }

    private static class IncomingHandler extends Handler {
        private final WeakReference<AoapService> mServiceRef;

        IncomingHandler(AoapService aoapService) {
            super(Looper.getMainLooper());
            this.mServiceRef = new WeakReference<>(aoapService);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws RemoteException {
            AoapService aoapService = this.mServiceRef.get();
            if (aoapService == null) {
                return;
            }
            Bundle data = message.getData();
            if (data == null) {
                Log.e(AoapService.TAG, "Ignoring message " + message.what + " without data");
                return;
            }
            Log.i(AoapService.TAG, "Message received: " + message.what);
            int r2 = message.what;
            if (r2 == 1) {
                int r0 = aoapService.isDeviceSupported((UsbDevice) Preconditions.checkNotNull((UsbDevice) data.getParcelable(AoapService.KEY_DEVICE)));
                if (r0 != 0 && r0 != 1) {
                    throw new IllegalArgumentException("Result can not be " + r0);
                }
                sendResponse(message.replyTo, 2, r0);
                return;
            }
            if (r2 != 3) {
                Log.e(AoapService.TAG, "Unknown message received: " + message.what);
                return;
            }
            int r02 = aoapService.canSwitchToAoap((UsbDevice) Preconditions.checkNotNull((UsbDevice) data.getParcelable(AoapService.KEY_DEVICE)));
            if (r02 != 0 && r02 != 1 && r02 != 2) {
                throw new IllegalArgumentException("Result can not be " + r02);
            }
            sendResponse(message.replyTo, 4, r02);
        }

        private void sendResponse(Messenger messenger, int r2, int r3) throws RemoteException {
            try {
                messenger.send(createResponseMessage(r2, r3));
            } catch (RemoteException e) {
                Log.e(AoapService.TAG, "Failed to send message", e);
            }
        }

        private Message createResponseMessage(int r2, int r3) {
            Message messageObtain = Message.obtain((Handler) null, r2);
            Bundle bundle = new Bundle();
            bundle.putInt(AoapService.KEY_RESULT, r3);
            messageObtain.setData(bundle);
            return messageObtain;
        }
    }
}
