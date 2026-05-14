package com.chery.media.model.business;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.util.Size;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class ThumbnailCache {
    private static final String TAG = CarLog.concatTag("MEDIA", ThumbnailCache.class);
    private static Map<Integer, ThumbnailCache> thumbnailCacheMap = new HashMap();
    private int key;
    private List<ThumbnailTask> thumbnailTaskList = new ArrayList();
    private Executor executor = Executors.newFixedThreadPool(5);
    private Map<String, byte[]> thumbnailBitmapList = new HashMap();
    private ReentrantLock reentrantLock = new ReentrantLock();
    private long cacheMemSize = 0;

    public interface ThumbnailResponse {
        void onThumbnailReady(Bitmap bitmap, Object obj);
    }

    private ThumbnailCache(int r3) {
        this.key = r3;
    }

    public static ThumbnailCache getThumbnailCache(int r3) {
        if (!thumbnailCacheMap.containsKey(Integer.valueOf(r3))) {
            thumbnailCacheMap.put(Integer.valueOf(r3), new ThumbnailCache(r3));
        }
        return thumbnailCacheMap.get(Integer.valueOf(r3));
    }

    public static class ThumbnailRequest {
        public Object opt;
        public String path;
        public ThumbnailResponse response;
        public Size size;

        public ThumbnailRequest(String str, ThumbnailResponse thumbnailResponse) {
            this(str, thumbnailResponse, null);
        }

        public ThumbnailRequest(String str, ThumbnailResponse thumbnailResponse, Size size) {
            this(str, thumbnailResponse, size, null);
        }

        public ThumbnailRequest(String str, ThumbnailResponse thumbnailResponse, Size size, Object obj) {
            this.path = str;
            this.response = thumbnailResponse;
            this.size = size;
            this.opt = obj;
        }
    }

    public void requestThumbnail(ThumbnailRequest thumbnailRequest) {
        if (thumbnailRequest == null || thumbnailRequest.path == null || thumbnailRequest.response == null) {
            return;
        }
        ThumbnailTask thumbnailTask = new ThumbnailTask(thumbnailRequest);
        this.thumbnailTaskList.add(thumbnailTask);
        thumbnailTask.executeOnExecutor(this.executor, new Void[0]);
    }

    public void removeThumbnail(ThumbnailRequest thumbnailRequest) {
        for (ThumbnailTask thumbnailTask : this.thumbnailTaskList) {
            if (thumbnailTask.thumbnailRequest == thumbnailRequest) {
                this.thumbnailTaskList.remove(thumbnailTask);
                thumbnailTask.abort = true;
                return;
            }
        }
    }

    public boolean hasCacheThumbnail(String str) {
        this.reentrantLock.lock();
        boolean zContainsKey = this.thumbnailBitmapList.containsKey(str);
        this.reentrantLock.unlock();
        return zContainsKey;
    }

    public Bitmap getThumbnail(String str, Size size) {
        byte[] bArr;
        this.reentrantLock.lock();
        Bitmap bitmapDecodeByteArray = (!this.thumbnailBitmapList.containsKey(str) || (bArr = this.thumbnailBitmapList.get(str)) == null || bArr.length <= 0) ? null : BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        this.reentrantLock.unlock();
        return bitmapDecodeByteArray;
    }

    public void clear() {
        Iterator<ThumbnailTask> it = this.thumbnailTaskList.iterator();
        while (it.hasNext()) {
            it.next().abort = true;
        }
        this.thumbnailTaskList.clear();
        this.reentrantLock.lock();
        this.thumbnailBitmapList.clear();
        this.cacheMemSize = 0L;
        this.reentrantLock.unlock();
    }

    private class ThumbnailTask extends AsyncTask<Void, Void, Bitmap> {
        private boolean abort = false;
        private ThumbnailRequest thumbnailRequest;

        public ThumbnailTask(ThumbnailRequest thumbnailRequest) {
            this.thumbnailRequest = thumbnailRequest;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Void... voidArr) throws IOException {
            Bitmap bitmapCreateVideoThumbnail;
            byte[] byteArray;
            if (this.abort) {
                return null;
            }
            ThumbnailCache.this.reentrantLock.lock();
            if (ThumbnailCache.this.thumbnailBitmapList.containsKey(this.thumbnailRequest.path)) {
                byte[] bArr = (byte[]) ThumbnailCache.this.thumbnailBitmapList.get(this.thumbnailRequest.path);
                ThumbnailCache.this.reentrantLock.unlock();
                bitmapCreateVideoThumbnail = (bArr == null || bArr.length <= 0) ? null : BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            } else {
                ThumbnailCache.this.reentrantLock.unlock();
                bitmapCreateVideoThumbnail = ThumbnailClient.getInstance().createVideoThumbnail(this.thumbnailRequest.path);
                if (bitmapCreateVideoThumbnail != null) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmapCreateVideoThumbnail.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                    byteArray = byteArrayOutputStream.toByteArray();
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                } else {
                    byteArray = null;
                }
                ThumbnailCache.this.reentrantLock.lock();
                ThumbnailCache.this.thumbnailBitmapList.put(this.thumbnailRequest.path, byteArray);
                if (byteArray != null && byteArray.length > 0) {
                    ThumbnailCache.this.cacheMemSize += byteArray.length;
                    PFLog.m25d(ThumbnailCache.TAG, String.format("[key%s] cache mem size : %s", Integer.valueOf(ThumbnailCache.this.key), Long.valueOf(ThumbnailCache.this.cacheMemSize)));
                }
                ThumbnailCache.this.reentrantLock.unlock();
            }
            if (this.abort) {
                return null;
            }
            return (bitmapCreateVideoThumbnail == null || this.thumbnailRequest.size == null || this.thumbnailRequest.size.getWidth() <= 0 || this.thumbnailRequest.size.getHeight() <= 0) ? bitmapCreateVideoThumbnail : Bitmap.createScaledBitmap(bitmapCreateVideoThumbnail, this.thumbnailRequest.size.getWidth(), this.thumbnailRequest.size.getHeight(), true);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            if (!this.abort && this.thumbnailRequest.response != null) {
                this.thumbnailRequest.response.onThumbnailReady(bitmap, this.thumbnailRequest.opt);
            }
            ThumbnailCache.this.thumbnailTaskList.remove(this);
        }
    }
}
