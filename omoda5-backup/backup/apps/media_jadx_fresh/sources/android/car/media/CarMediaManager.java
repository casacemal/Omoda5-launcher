package android.car.media;

import android.car.CarManagerBase;
import android.car.media.ICarMedia;
import android.car.media.ICarMediaSourceListener;
import android.content.ComponentName;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class CarMediaManager implements CarManagerBase {
    private Map<MediaSourceChangedListener, ICarMediaSourceListener> mCallbackMap = new HashMap();
    private final ICarMedia mService;

    public interface MediaSourceChangedListener {
        void onMediaSourceChanged(ComponentName componentName);
    }

    public CarMediaManager(IBinder iBinder) {
        this.mService = ICarMedia.Stub.asInterface(iBinder);
    }

    public synchronized ComponentName getMediaSource() {
        try {
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
        return this.mService.getMediaSource();
    }

    public synchronized void setMediaSource(ComponentName componentName) {
        try {
            this.mService.setMediaSource(componentName);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public synchronized void registerMediaSourceListener(final MediaSourceChangedListener mediaSourceChangedListener) {
        try {
            ICarMediaSourceListener.Stub stub = new ICarMediaSourceListener.Stub() { // from class: android.car.media.CarMediaManager.1
                @Override // android.car.media.ICarMediaSourceListener
                public void onMediaSourceChanged(ComponentName componentName) {
                    mediaSourceChangedListener.onMediaSourceChanged(componentName);
                }
            };
            this.mCallbackMap.put(mediaSourceChangedListener, stub);
            this.mService.registerMediaSourceListener(stub);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public synchronized void unregisterMediaSourceListener(MediaSourceChangedListener mediaSourceChangedListener) {
        try {
            this.mService.unregisterMediaSourceListener(this.mCallbackMap.remove(mediaSourceChangedListener));
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @Override // android.car.CarManagerBase
    public synchronized void onCarDisconnected() {
    }
}
