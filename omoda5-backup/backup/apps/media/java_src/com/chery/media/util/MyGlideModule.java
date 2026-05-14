package com.chery.media.util;

import android.content.Context;
import android.graphics.Bitmap;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory;
import com.bumptech.glide.module.AppGlideModule;
import com.chery.media.util.GlideMediaFileLoader;

/* loaded from: classes.dex */
public class MyGlideModule extends AppGlideModule {
    private static final String TAG = CarLog.concatTag("MEDIA", MyGlideModule.class);

    @Override // com.bumptech.glide.module.AppGlideModule, com.bumptech.glide.module.AppliesOptions
    public void applyOptions(Context context, GlideBuilder glideBuilder) {
        PFLog.m25d(TAG, "applyOptions");
        glideBuilder.setDiskCache(new InternalCacheDiskCacheFactory(context, "GlideCache", 104857600L));
        glideBuilder.setLogLevel(6);
    }

    @Override // com.bumptech.glide.module.LibraryGlideModule, com.bumptech.glide.module.RegistersComponents
    public void registerComponents(Context context, Glide glide, Registry registry) {
        PFLog.m25d(TAG, "registerComponents");
        super.registerComponents(context, glide, registry);
        registry.prepend(GlideMediaFileData.class, Bitmap.class, new GlideMediaFileLoader.GlideMediaFileLoaderFactory());
    }
}
