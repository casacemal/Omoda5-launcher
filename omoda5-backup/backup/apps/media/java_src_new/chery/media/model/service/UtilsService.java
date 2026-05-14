package com.chery.media.model.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.chery.media.IUtilsServiceAidlInterface;
import com.chery.media.util.Utils;

/* loaded from: classes.dex */
public class UtilsService extends Service {
    private IUtilsServiceAidlInterface.Stub stub = new IUtilsServiceAidlInterface.Stub() { // from class: com.chery.media.model.service.UtilsService.1
        @Override // com.chery.media.IUtilsServiceAidlInterface
        public void basicTypes(int r1, long j, boolean z, float f, double d, String str) throws RemoteException {
        }

        @Override // com.chery.media.IUtilsServiceAidlInterface
        public boolean copyFile(String str, String str2) throws RemoteException {
            return Utils.copyFile(str, str2);
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.stub;
    }
}
