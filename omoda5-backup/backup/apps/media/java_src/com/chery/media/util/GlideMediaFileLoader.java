package com.chery.media.util;

import android.graphics.Bitmap;
import android.media.ThumbnailUtils;
import com.avn.tools.log.CarLog;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.signature.ObjectKey;

/* loaded from: classes.dex */
public class GlideMediaFileLoader implements ModelLoader<GlideMediaFileData, Bitmap> {
    private static final String TAG = CarLog.concatTag("MEDIA", GlideMediaFileLoader.class);

    public static class GlideMediaFileLoaderFactory implements ModelLoaderFactory<GlideMediaFileData, Bitmap> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<GlideMediaFileData, Bitmap> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new GlideMediaFileLoader();
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.LoadData<Bitmap> buildLoadData(GlideMediaFileData glideMediaFileData, int r2, int r3, Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(glideMediaFileData.getPath()), new UriFetcher(glideMediaFileData));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean handles(GlideMediaFileData glideMediaFileData) {
        int type = glideMediaFileData.getType();
        return type == 1 || type == 2 || type == 3;
    }

    private static class UriFetcher implements DataFetcher<Bitmap> {
        private final GlideMediaFileData data;

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cleanup() {
        }

        private UriFetcher(GlideMediaFileData glideMediaFileData) {
            this.data = glideMediaFileData;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void loadData(Priority priority, DataFetcher.DataCallback<? super Bitmap> dataCallback) {
            Bitmap bitmapCreateAudioThumbnail;
            int type = this.data.getType();
            if (type == 1) {
                bitmapCreateAudioThumbnail = ThumbnailUtils.createAudioThumbnail(this.data.getPath(), 2);
            } else if (type == 2) {
                bitmapCreateAudioThumbnail = ThumbnailUtils.createVideoThumbnail(this.data.getPath(), 2);
            } else {
                bitmapCreateAudioThumbnail = type != 3 ? null : ThumbnailUtils.createImageThumbnail(this.data.getPath(), 2);
            }
            if (bitmapCreateAudioThumbnail != null) {
                dataCallback.onDataReady(bitmapCreateAudioThumbnail);
                return;
            }
            int type2 = this.data.getType();
            if (type2 == 1) {
                dataCallback.onLoadFailed(new Exception("failed to create audio thumbnail for " + this.data.getPath()));
                return;
            }
            if (type2 == 2) {
                dataCallback.onLoadFailed(new Exception("failed to create video thumbnail for " + this.data.getPath()));
                return;
            }
            if (type2 != 3) {
                return;
            }
            dataCallback.onLoadFailed(new Exception("failed to create image thumbnail for " + this.data.getPath()));
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public Class<Bitmap> getDataClass() {
            return Bitmap.class;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }
    }
}
