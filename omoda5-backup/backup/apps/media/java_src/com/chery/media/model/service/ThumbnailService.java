package com.chery.media.model.service;

import android.app.Service;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.chery.media.IThumbnailServiceAidlInterface;
import com.chery.media.util.GlideApp;
import com.chery.media.util.GlideMediaFileData;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public class ThumbnailService extends Service {
    private static final String TAG = CarLog.concatTag("MEDIA", ThumbnailService.class);
    private IThumbnailServiceAidlInterface.Stub stub = new IThumbnailServiceAidlInterface.Stub() { // from class: com.chery.media.model.service.ThumbnailService.1
        @Override // com.chery.media.IThumbnailServiceAidlInterface
        public void basicTypes(int r1, long j, boolean z, float f, double d, String str) throws RemoteException {
        }

        @Override // com.chery.media.IThumbnailServiceAidlInterface
        public Bitmap createAudioThumbnail(String str) throws RemoteException {
            try {
                return GlideApp.with(ThumbnailService.this).asBitmap().load((Object) new GlideMediaFileData(str, 1)).diskCacheStrategy(DiskCacheStrategy.RESOURCE).skipMemoryCache(true).submit().get();
            } catch (InterruptedException | ExecutionException e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // com.chery.media.IThumbnailServiceAidlInterface
        public Bitmap createVideoThumbnail(String str) throws RemoteException {
            try {
                return GlideApp.with(ThumbnailService.this).asBitmap().load((Object) new GlideMediaFileData(str, 2)).diskCacheStrategy(DiskCacheStrategy.RESOURCE).skipMemoryCache(true).submit().get();
            } catch (InterruptedException | ExecutionException e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // com.chery.media.IThumbnailServiceAidlInterface
        public Bitmap createImageThumbnail(String str) throws RemoteException {
            try {
                return GlideApp.with(ThumbnailService.this).asBitmap().load((Object) new GlideMediaFileData(str, 3)).diskCacheStrategy(DiskCacheStrategy.RESOURCE).skipMemoryCache(true).submit().get();
            } catch (InterruptedException | ExecutionException e) {
                e.printStackTrace();
                return null;
            }
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.stub;
    }
}
