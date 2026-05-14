package com.chery.media.model.service;

import android.content.Intent;
import android.os.IBinder;
import androidx.lifecycle.LifecycleService;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.libvr.bean.InitListener;
import com.chery.libvr.manager.platformmanager.VrRequestManager;
import com.chery.media.model.business.BtMusicBusiness;
import com.chery.media.model.business.DabBusiness;
import com.chery.media.model.business.HardKeyBusiness;
import com.chery.media.model.business.LocalMusicBusiness;
import com.chery.media.model.business.MediaBusiness;
import com.chery.media.model.business.PictureBusiness;
import com.chery.media.model.business.RadioBusiness;
import com.chery.media.model.business.ThumbnailClient;
import com.chery.media.model.business.UsbMusicBusiness;
import com.chery.media.model.business.UsbScannerBusiness;
import com.chery.media.model.business.UtilsClient;
import com.chery.media.model.business.VideoBusiness;
import com.chery.media.model.business.VrMediaBusiness;
import com.chery.media.model.business.VrRadioBusiness;
import com.chery.media.util.PowerWakeLockUse;

/* loaded from: classes.dex */
public class MediaService extends LifecycleService {
    private static final String TAG = CarLog.concatTag("MEDIA", MediaService.class);

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        PowerWakeLockUse.getInstance().init(this);
        ThumbnailClient.getInstance().init(this);
        UtilsClient.getInstance().init(this);
        MediaBusiness.getInstance().init(this);
        UsbScannerBusiness.getInstance().init(this);
        RadioBusiness.getInstance().init(this);
        UsbMusicBusiness.getInstance().init(this);
        LocalMusicBusiness.getInstance().init(this);
        BtMusicBusiness.getInstance().init(this);
        VideoBusiness.getInstance().init(this);
        PictureBusiness.getInstance().init(this);
        HardKeyBusiness.getInstance().init(this);
        DabBusiness.getInstance().init(this);
        VrRequestManager.getInstance().initVr(this, new InitListener() { // from class: com.chery.media.model.service.MediaService.1
            @Override // com.chery.libvr.bean.InitListener
            public void onConnectedToRemote() {
                PFLog.m25d(MediaService.TAG, "onConnectedToRemote");
                VrMediaBusiness.getInstance().init(MediaService.this);
                VrRadioBusiness.getInstance().init(MediaService.this);
            }

            @Override // com.chery.libvr.bean.InitListener
            public void onDisconnectedToRemote() {
                PFLog.m25d(MediaService.TAG, "onDisconnectedToRemote");
            }
        });
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public IBinder onBind(Intent intent) {
        super.onBind(intent);
        return null;
    }
}
