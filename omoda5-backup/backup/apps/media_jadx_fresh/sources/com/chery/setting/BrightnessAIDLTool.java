package com.chery.setting;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.common.PackageConstants;
import com.chery.settings.IBrightnessCallback;
import com.chery.settings.IBrightnessInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class BrightnessAIDLTool {
    private static final String TAG = CarLog.concatTag("SET", BrightnessAIDLTool.class);
    private static BrightnessAIDLTool instance;
    private IBrightnessInterface brightnessInterface;
    private Context context;
    private boolean isInit = false;
    private List<BrightnessListener> brightnessListeners = new ArrayList();
    ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.chery.setting.BrightnessAIDLTool.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            PFLog.m25d(BrightnessAIDLTool.TAG, "onServiceConnected");
            BrightnessAIDLTool.this.brightnessInterface = IBrightnessInterface.Stub.asInterface(iBinder);
            try {
                BrightnessAIDLTool.this.brightnessInterface.registerCallBack(BrightnessAIDLTool.this.callback);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            Iterator it = BrightnessAIDLTool.this.brightnessListeners.iterator();
            while (it.hasNext()) {
                ((BrightnessListener) it.next()).onConnected();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            PFLog.m25d(BrightnessAIDLTool.TAG, "onServiceDisconnected");
            BrightnessAIDLTool.this.brightnessInterface = null;
        }
    };
    protected IBrightnessCallback.Stub callback = new IBrightnessCallback.Stub() { // from class: com.chery.setting.BrightnessAIDLTool.2
        @Override // com.chery.settings.IBrightnessCallback
        public void onBrightnessChanged(int r2) throws RemoteException {
            Iterator it = BrightnessAIDLTool.this.brightnessListeners.iterator();
            while (it.hasNext()) {
                ((BrightnessListener) it.next()).onBrightnessChanged(r2);
            }
        }
    };

    public interface BrightnessListener {
        void onBrightnessChanged(int r1);

        void onConnected();
    }

    public static BrightnessAIDLTool getInstance() {
        if (instance == null) {
            instance = new BrightnessAIDLTool();
        }
        return instance;
    }

    public void addBrightnessListener(BrightnessListener brightnessListener) {
        if (this.brightnessListeners.contains(brightnessListener)) {
            return;
        }
        this.brightnessListeners.add(brightnessListener);
    }

    public void removeBrightnessListener(BrightnessListener brightnessListener) {
        this.brightnessListeners.remove(brightnessListener);
    }

    public void init(Context context) {
        if (this.isInit) {
            return;
        }
        this.context = context;
        bindService();
        this.isInit = true;
    }

    private void bindService() {
        if (this.context == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setPackage(PackageConstants.Settings.PACKAGE_NAME);
        intent.setAction("com.chery.settings.model.service.BrightnessServer");
        this.context.bindService(intent, this.serviceConnection, 1);
    }

    public void setBrightness(int r2) {
        IBrightnessInterface iBrightnessInterface = this.brightnessInterface;
        if (iBrightnessInterface == null) {
            if (this.isInit) {
                bindService();
            }
        } else {
            try {
                iBrightnessInterface.setBrightness(r2);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public int getBrightness() {
        IBrightnessInterface iBrightnessInterface = this.brightnessInterface;
        if (iBrightnessInterface == null) {
            if (this.isInit) {
                bindService();
            }
            return 6;
        }
        try {
            return iBrightnessInterface.getBrightness();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 6;
        }
    }
}
