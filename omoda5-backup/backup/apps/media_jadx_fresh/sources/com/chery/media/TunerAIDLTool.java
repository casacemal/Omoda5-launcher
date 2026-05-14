package com.chery.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.avn.tools.log.CarLog;
import com.chery.media.ITunerInterface;
import com.chery.media.ITunerListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class TunerAIDLTool {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_TUNER, TunerAIDLTool.class);
    private static TunerAIDLTool instance;
    private Context context;
    private Handler handler;
    private ITunerInterface tunerService;
    private int m_area = 0;
    private List<Listener> listenerList = new ArrayList();
    private ServiceConnection serviceConnection = new ServiceConnectionC06331();

    public interface Listener {
        void callback(int r1, boolean z, int r3);

        void onConnected();

        void regionCallback(int r1);
    }

    public static TunerAIDLTool getInstance() {
        if (instance == null) {
            instance = new TunerAIDLTool();
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

    /* renamed from: com.chery.media.TunerAIDLTool$1 */
    class ServiceConnectionC06331 implements ServiceConnection {
        ServiceConnectionC06331() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.i(TunerAIDLTool.TAG, "onServiceConnected   ");
            TunerAIDLTool.this.tunerService = ITunerInterface.Stub.asInterface(iBinder);
            try {
                TunerAIDLTool.this.setRegion(TunerAIDLTool.this.tunerService.getArea());
                Iterator it = TunerAIDLTool.this.listenerList.iterator();
                while (it.hasNext()) {
                    ((Listener) it.next()).onConnected();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                TunerAIDLTool.this.tunerService.registerCallback(new ITunerListener.Stub() { // from class: com.chery.media.TunerAIDLTool.1.1
                    @Override // com.chery.media.ITunerListener
                    public void basicTypes(int r1, long j, boolean z, float f, double d, String str) throws RemoteException {
                    }

                    @Override // com.chery.media.ITunerListener
                    public void callback(int r2, boolean z, int r4) throws RemoteException {
                        Iterator it2 = TunerAIDLTool.this.listenerList.iterator();
                        while (it2.hasNext()) {
                            ((Listener) it2.next()).callback(r2, z, r4);
                        }
                    }

                    @Override // com.chery.media.ITunerListener
                    public void regionCallback(final int r3) throws RemoteException {
                        TunerAIDLTool.this.setRegion(r3);
                        TunerAIDLTool.this.handler.post(new Runnable() { // from class: com.chery.media.TunerAIDLTool.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Iterator it2 = TunerAIDLTool.this.listenerList.iterator();
                                while (it2.hasNext()) {
                                    ((Listener) it2.next()).regionCallback(r3);
                                }
                            }
                        });
                    }
                });
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(TunerAIDLTool.TAG, "onServiceDisconnected");
            TunerAIDLTool.this.tunerService = null;
            TunerAIDLTool.this.connService();
        }
    }

    public void init(Context context) {
        this.context = context;
        this.handler = new Handler();
        connService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connService() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.chery.media", "com.chery.media.model.service.RadioAIDLService"));
        this.context.bindService(intent, this.serviceConnection, 1);
    }

    public void setAera(int r1) {
        try {
            this.tunerService.setAera(r1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRegion(int r1) {
        this.m_area = r1;
    }

    public int getArea() {
        return this.m_area;
    }

    public void setBand(int r1) {
        try {
            this.tunerService.setBand(r1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getBand() {
        try {
            return this.tunerService.getBand();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public void scanbackward() {
        try {
            this.tunerService.scanbackward();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void scanforward() {
        try {
            this.tunerService.scanforward();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
