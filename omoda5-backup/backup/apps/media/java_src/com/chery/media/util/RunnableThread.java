package com.chery.media.util;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.avn.tools.log.CarLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class RunnableThread {
    private static final String TAG = CarLog.concatTag("MEDIA", RunnableThread.class);
    private Thread mThread;
    private Handler mThreadHandler;
    private ArrayList<Runnable> mRunnables = new ArrayList<>();
    private ReentrantLock mThreadRunnableLock = new ReentrantLock();

    public void init() {
        Log.d(TAG, "init");
        Thread thread = new Thread() { // from class: com.chery.media.util.RunnableThread.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Log.d(RunnableThread.TAG, this + " run ...");
                Looper.prepare();
                RunnableThread.this.mThreadRunnableLock.lock();
                RunnableThread.this.mThreadHandler = new Handler();
                Iterator it = RunnableThread.this.mRunnables.iterator();
                while (it.hasNext()) {
                    RunnableThread.this.mThreadHandler.post((Runnable) it.next());
                }
                RunnableThread.this.mRunnables.clear();
                RunnableThread.this.mThreadRunnableLock.unlock();
                Looper.loop();
                Log.d(RunnableThread.TAG, this + " run finished!");
            }
        };
        this.mThread = thread;
        thread.start();
    }

    protected void finalize() throws Throwable {
        super.finalize();
        this.mThreadRunnableLock.lock();
        Handler handler = this.mThreadHandler;
        if (handler != null) {
            handler.getLooper().quit();
            this.mThreadHandler = null;
        }
        this.mThreadRunnableLock.unlock();
    }

    public void addRunnable(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        this.mThreadRunnableLock.lock();
        Handler handler = this.mThreadHandler;
        if (handler != null) {
            handler.post(runnable);
        } else {
            this.mRunnables.add(runnable);
        }
        this.mThreadRunnableLock.unlock();
    }
}
