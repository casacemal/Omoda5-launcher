package android.car.storagemonitoring;

import android.annotation.SystemApi;
import android.car.CarManagerBase;
import android.car.storagemonitoring.ICarStorageMonitoring;
import android.car.storagemonitoring.IIoStatsListener;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.car.internal.SingleMessageHandler;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@SystemApi
/* loaded from: classes.dex */
public final class CarStorageMonitoringManager implements CarManagerBase {
    public static final String INTENT_EXCESSIVE_IO = "android.car.storagemonitoring.EXCESSIVE_IO";
    private static final int MSG_IO_STATS_EVENT = 0;
    public static final int PRE_EOL_INFO_NORMAL = 1;
    public static final int PRE_EOL_INFO_UNKNOWN = 0;
    public static final int PRE_EOL_INFO_URGENT = 3;
    public static final int PRE_EOL_INFO_WARNING = 2;
    public static final long SHUTDOWN_COST_INFO_MISSING = -1;
    private static final String TAG = CarStorageMonitoringManager.class.getSimpleName();
    private ListenerToService mListenerToService;
    private final Set<IoStatsListener> mListeners = new HashSet();
    private final SingleMessageHandler<IoStats> mMessageHandler;
    private final ICarStorageMonitoring mService;

    public interface IoStatsListener {
        void onSnapshot(IoStats ioStats);
    }

    private static final class ListenerToService extends IIoStatsListener.Stub {
        private final WeakReference<CarStorageMonitoringManager> mManager;

        ListenerToService(CarStorageMonitoringManager carStorageMonitoringManager) {
            this.mManager = new WeakReference<>(carStorageMonitoringManager);
        }

        @Override // android.car.storagemonitoring.IIoStatsListener
        public void onSnapshot(IoStats ioStats) {
            CarStorageMonitoringManager carStorageMonitoringManager = this.mManager.get();
            if (carStorageMonitoringManager != null) {
                carStorageMonitoringManager.mMessageHandler.sendEvents(Collections.singletonList(ioStats));
            }
        }
    }

    public CarStorageMonitoringManager(IBinder iBinder, Handler handler) {
        this.mService = ICarStorageMonitoring.Stub.asInterface(iBinder);
        this.mMessageHandler = new SingleMessageHandler<IoStats>(handler, 0) { // from class: android.car.storagemonitoring.CarStorageMonitoringManager.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.car.internal.SingleMessageHandler
            public void handleEvent(IoStats ioStats) {
                Iterator it = CarStorageMonitoringManager.this.mListeners.iterator();
                while (it.hasNext()) {
                    ((IoStatsListener) it.next()).onSnapshot(ioStats);
                }
            }
        };
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
        this.mListeners.clear();
        this.mListenerToService = null;
    }

    public int getPreEolIndicatorStatus() {
        try {
            return this.mService.getPreEolIndicatorStatus();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public WearEstimate getWearEstimate() {
        try {
            return this.mService.getWearEstimate();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public List<WearEstimateChange> getWearEstimateHistory() {
        try {
            return this.mService.getWearEstimateHistory();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public List<IoStatsEntry> getBootIoStats() {
        try {
            return this.mService.getBootIoStats();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public long getShutdownDiskWriteAmount() {
        try {
            return this.mService.getShutdownDiskWriteAmount();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public List<IoStatsEntry> getAggregateIoStats() {
        try {
            return this.mService.getAggregateIoStats();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public List<IoStats> getIoStatsDeltas() {
        try {
            return this.mService.getIoStatsDeltas();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void registerListener(IoStatsListener ioStatsListener) {
        try {
            if (this.mListeners.isEmpty()) {
                if (this.mListenerToService == null) {
                    this.mListenerToService = new ListenerToService(this);
                }
                this.mService.registerListener(this.mListenerToService);
            }
            this.mListeners.add(ioStatsListener);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void unregisterListener(IoStatsListener ioStatsListener) {
        try {
            if (this.mListeners.remove(ioStatsListener) && this.mListeners.isEmpty()) {
                this.mService.unregisterListener(this.mListenerToService);
                this.mListenerToService = null;
            }
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }
}
