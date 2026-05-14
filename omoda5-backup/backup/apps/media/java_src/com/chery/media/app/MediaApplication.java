package com.chery.media.app;

import android.app.Application;
import android.content.Intent;
import com.chery.media.model.service.MediaService;
import com.chery.media.model.service.ThumbnailService;
import com.chery.media.model.service.UsbScannerManagerService;
import com.chery.media.model.service.UtilsService;
import com.chery.media.util.CarAdapterUse;

/* loaded from: classes.dex */
public class MediaApplication extends Application {
    private static MediaApplication application;

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        application = this;
        if (getProcessName().equals(getPackageName())) {
            CarAdapterUse.init(this);
            startService(new Intent(this, (Class<?>) UsbScannerManagerService.class));
            startService(new Intent(this, (Class<?>) MediaService.class));
            startService(new Intent(this, (Class<?>) ThumbnailService.class));
            startService(new Intent(this, (Class<?>) UtilsService.class));
        }
    }

    public static MediaApplication getApplication() {
        return application;
    }
}
