package com.chery.media.model.business;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.media.IUtilsServiceAidlInterface;

/* loaded from: classes.dex */
public class UtilsClient {
    private static final String TAG = CarLog.concatTag("MEDIA", UtilsClient.class);
    private static UtilsClient instance = null;
    private Context context;
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.chery.media.model.business.UtilsClient.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            PFLog.m25d(UtilsClient.TAG, "onServiceConnected");
            UtilsClient.this.serviceInterface = IUtilsServiceAidlInterface.Stub.asInterface(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            PFLog.m25d(UtilsClient.TAG, "onServiceDisconnected");
            UtilsClient.this.serviceInterface = null;
        }
    };
    private IUtilsServiceAidlInterface serviceInterface;

    public static UtilsClient getInstance() {
        if (instance == null) {
            instance = new UtilsClient();
        }
        return instance;
    }

    public void init(Context context) {
        this.context = context;
        bindService();
    }

    private void bindService() {
        PFLog.m25d(TAG, "bindService");
        Intent intent = new Intent();
        intent.setClassName(this.context, "com.chery.media.model.service.UtilsService");
        this.context.bindService(intent, this.serviceConnection, 1);
    }

    public boolean copyFile(String str, String str2) {
        IUtilsServiceAidlInterface iUtilsServiceAidlInterface = this.serviceInterface;
        if (iUtilsServiceAidlInterface == null) {
            return false;
        }
        try {
            return iUtilsServiceAidlInterface.copyFile(str, str2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }
}
