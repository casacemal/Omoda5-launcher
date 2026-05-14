package com.chery.media.model.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.chery.media.ITunerInterface;
import com.chery.media.ITunerListener;
import com.chery.media.model.business.RadioBusiness;
import com.chery.media.model.business.RadioDef;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class RadioAIDLService extends Service {
    private RadioBusiness.OnTunerInfoListener tunerInfoListener;
    private Lock mLock = new ReentrantLock();
    ITunerInterface.Stub mBinder = new ITunerInterface.Stub() { // from class: com.chery.media.model.service.RadioAIDLService.2
        @Override // com.chery.media.ITunerInterface
        public void basicTypes(int r1, long j, boolean z, float f, double d, String str) throws RemoteException {
        }

        @Override // com.chery.media.ITunerInterface
        public void setAera(int r1) throws RemoteException {
            RadioBusiness.getInstance().setArea(r1);
        }

        @Override // com.chery.media.ITunerInterface
        public int getArea() throws RemoteException {
            return RadioBusiness.getInstance().getArea().getValue().intValue();
        }

        @Override // com.chery.media.ITunerInterface
        public void setBand(int r1) throws RemoteException {
            RadioBusiness.getInstance().setConfigure(r1);
        }

        @Override // com.chery.media.ITunerInterface
        public int getBand() throws RemoteException {
            return RadioBusiness.getInstance().getCurrentBand().getValue().intValue();
        }

        @Override // com.chery.media.ITunerInterface
        public void scanbackward() throws RemoteException {
            RadioBusiness.getInstance().seek(0, true);
        }

        @Override // com.chery.media.ITunerInterface
        public void scanforward() throws RemoteException {
            RadioBusiness.getInstance().seek(1, true);
        }

        @Override // com.chery.media.ITunerInterface
        public int getRadioSignal() throws RemoteException {
            return RadioBusiness.getInstance().getSignalStrength();
        }

        @Override // com.chery.media.ITunerInterface
        public int getFreq() throws RemoteException {
            return RadioBusiness.getInstance().getCurrentChannel().getValue().frequencyKhz;
        }

        @Override // com.chery.media.ITunerInterface
        public void registerCallback(ITunerListener iTunerListener) throws RemoteException {
            RadioAIDLService.this.mCallbacks.register(iTunerListener);
        }

        @Override // com.chery.media.ITunerInterface
        public void unregisterCallback(ITunerListener iTunerListener) throws RemoteException {
            RadioAIDLService.this.mCallbacks.unregister(iTunerListener);
        }
    };
    final RemoteCallbackList<ITunerListener> mCallbacks = new RemoteCallbackList<>();

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.tunerInfoListener = new RadioBusiness.OnTunerInfoListener() { // from class: com.chery.media.model.service.RadioAIDLService.1
            @Override // com.chery.media.model.business.RadioBusiness.OnTunerInfoListener
            public void onStateChanged(int r1) {
            }

            @Override // com.chery.media.model.business.RadioBusiness.OnTunerInfoListener
            public void onChannelChanged(RadioDef radioDef, int r7) {
                RadioAIDLService.this.mLock.lock();
                int r0 = RadioAIDLService.this.mCallbacks.beginBroadcast();
                for (int r1 = 0; r1 < r0; r1++) {
                    try {
                        if (RadioAIDLService.this.mCallbacks != null && RadioAIDLService.this.mCallbacks.getBroadcastItem(r1) != null) {
                            ((ITunerListener) RadioAIDLService.this.mCallbacks.getBroadcastItem(r1)).callback(radioDef.frequencyKhz, radioDef.isValid, r7);
                        }
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                RadioAIDLService.this.mCallbacks.finishBroadcast();
                RadioAIDLService.this.mLock.unlock();
            }

            @Override // com.chery.media.model.business.RadioBusiness.OnTunerInfoListener
            public void onAreaChanged(int r4) {
                RadioAIDLService.this.mLock.lock();
                int r0 = RadioAIDLService.this.mCallbacks.beginBroadcast();
                for (int r1 = 0; r1 < r0; r1++) {
                    try {
                        if (RadioAIDLService.this.mCallbacks != null && RadioAIDLService.this.mCallbacks.getBroadcastItem(r1) != null) {
                            ((ITunerListener) RadioAIDLService.this.mCallbacks.getBroadcastItem(r1)).regionCallback(r4);
                        }
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                RadioAIDLService.this.mCallbacks.finishBroadcast();
                RadioAIDLService.this.mLock.unlock();
            }
        };
        RadioBusiness.getInstance().addTunerInfoListener(this.tunerInfoListener);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }
}
