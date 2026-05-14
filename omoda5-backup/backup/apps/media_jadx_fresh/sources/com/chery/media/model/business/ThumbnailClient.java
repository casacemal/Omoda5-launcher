package com.chery.media.model.business;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.media.IThumbnailServiceAidlInterface;

/* loaded from: classes.dex */
public class ThumbnailClient {
    private static final String TAG = CarLog.concatTag("MEDIA", ThumbnailClient.class);
    private static ThumbnailClient instance = null;
    private Context context;
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.chery.media.model.business.ThumbnailClient.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            PFLog.m25d(ThumbnailClient.TAG, "onServiceConnected");
            ThumbnailClient.this.thumbnailServiceAidlInterface = IThumbnailServiceAidlInterface.Stub.asInterface(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            PFLog.m25d(ThumbnailClient.TAG, "onServiceDisconnected");
            ThumbnailClient.this.thumbnailServiceAidlInterface = null;
        }
    };
    private IThumbnailServiceAidlInterface thumbnailServiceAidlInterface;

    public static ThumbnailClient getInstance() {
        if (instance == null) {
            instance = new ThumbnailClient();
        }
        return instance;
    }

    public void init(Context context) {
        this.context = context;
        bindThumbnailService();
    }

    private void bindThumbnailService() {
        PFLog.m25d(TAG, "bindThumbnailService");
        Intent intent = new Intent();
        intent.setClassName(this.context, "com.chery.media.model.service.ThumbnailService");
        this.context.bindService(intent, this.serviceConnection, 1);
    }

    public Bitmap createAudioThumbnail(String str) {
        IThumbnailServiceAidlInterface iThumbnailServiceAidlInterface = this.thumbnailServiceAidlInterface;
        if (iThumbnailServiceAidlInterface != null) {
            try {
                return iThumbnailServiceAidlInterface.createAudioThumbnail(str);
            } catch (RemoteException unused) {
            }
        }
        return null;
    }

    public Bitmap createVideoThumbnail(String str) {
        IThumbnailServiceAidlInterface iThumbnailServiceAidlInterface = this.thumbnailServiceAidlInterface;
        if (iThumbnailServiceAidlInterface != null) {
            try {
                return iThumbnailServiceAidlInterface.createVideoThumbnail(str);
            } catch (RemoteException unused) {
            }
        }
        return null;
    }

    public Bitmap createImageThumbnail(String str) {
        IThumbnailServiceAidlInterface iThumbnailServiceAidlInterface = this.thumbnailServiceAidlInterface;
        if (iThumbnailServiceAidlInterface != null) {
            try {
                return iThumbnailServiceAidlInterface.createImageThumbnail(str);
            } catch (RemoteException unused) {
            }
        }
        return null;
    }
}
