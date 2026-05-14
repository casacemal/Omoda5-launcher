package com.bumptech.glide;

import android.graphics.drawable.Drawable;
import android.widget.AbsListView;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.util.List;
import java.util.Queue;

/* loaded from: classes.dex */
public class ListPreloader<T> implements AbsListView.OnScrollListener {
    private int lastEnd;
    private int lastStart;
    private final int maxPreload;
    private final PreloadSizeProvider<T> preloadDimensionProvider;
    private final PreloadModelProvider<T> preloadModelProvider;
    private final PreloadTargetQueue preloadTargetQueue;
    private final RequestManager requestManager;
    private int totalItemCount;
    private int lastFirstVisible = -1;
    private boolean isIncreasing = true;

    public interface PreloadModelProvider<U> {
        List<U> getPreloadItems(int r1);

        RequestBuilder<?> getPreloadRequestBuilder(U u);
    }

    public interface PreloadSizeProvider<T> {
        int[] getPreloadSize(T t, int r2, int r3);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int r2) {
    }

    public ListPreloader(RequestManager requestManager, PreloadModelProvider<T> preloadModelProvider, PreloadSizeProvider<T> preloadSizeProvider, int r5) {
        this.requestManager = requestManager;
        this.preloadModelProvider = preloadModelProvider;
        this.preloadDimensionProvider = preloadSizeProvider;
        this.maxPreload = r5;
        this.preloadTargetQueue = new PreloadTargetQueue(r5 + 1);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int r2, int r3, int r4) {
        this.totalItemCount = r4;
        int r1 = this.lastFirstVisible;
        if (r2 > r1) {
            preload(r3 + r2, true);
        } else if (r2 < r1) {
            preload(r2, false);
        }
        this.lastFirstVisible = r2;
    }

    private void preload(int r2, boolean z) {
        if (this.isIncreasing != z) {
            this.isIncreasing = z;
            cancelAll();
        }
        preload(r2, (z ? this.maxPreload : -this.maxPreload) + r2);
    }

    private void preload(int r5, int r6) {
        int r0;
        int r1;
        if (r5 < r6) {
            r1 = Math.max(this.lastEnd, r5);
            r0 = r6;
        } else {
            r0 = Math.min(this.lastStart, r5);
            r1 = r6;
        }
        int r02 = Math.min(this.totalItemCount, r0);
        int r12 = Math.min(this.totalItemCount, Math.max(0, r1));
        if (r5 < r6) {
            for (int r52 = r12; r52 < r02; r52++) {
                preloadAdapterPosition(this.preloadModelProvider.getPreloadItems(r52), r52, true);
            }
        } else {
            for (int r53 = r02 - 1; r53 >= r12; r53--) {
                preloadAdapterPosition(this.preloadModelProvider.getPreloadItems(r53), r53, false);
            }
        }
        this.lastStart = r12;
        this.lastEnd = r02;
    }

    private void preloadAdapterPosition(List<T> list, int r4, boolean z) {
        int size = list.size();
        if (z) {
            for (int r5 = 0; r5 < size; r5++) {
                preloadItem(list.get(r5), r4, r5);
            }
            return;
        }
        for (int r0 = size - 1; r0 >= 0; r0--) {
            preloadItem(list.get(r0), r4, r0);
        }
    }

    private void preloadItem(T t, int r3, int r4) {
        int[] preloadSize;
        RequestBuilder<?> preloadRequestBuilder;
        if (t == null || (preloadSize = this.preloadDimensionProvider.getPreloadSize(t, r3, r4)) == null || (preloadRequestBuilder = this.preloadModelProvider.getPreloadRequestBuilder(t)) == null) {
            return;
        }
        preloadRequestBuilder.into((RequestBuilder<?>) this.preloadTargetQueue.next(preloadSize[0], preloadSize[1]));
    }

    private void cancelAll() {
        for (int r1 = 0; r1 < this.preloadTargetQueue.queue.size(); r1++) {
            this.requestManager.clear(this.preloadTargetQueue.next(0, 0));
        }
    }

    private static final class PreloadTargetQueue {
        final Queue<PreloadTarget> queue;

        PreloadTargetQueue(int r4) {
            this.queue = Util.createQueue(r4);
            for (int r0 = 0; r0 < r4; r0++) {
                this.queue.offer(new PreloadTarget());
            }
        }

        public PreloadTarget next(int r2, int r3) {
            PreloadTarget preloadTargetPoll = this.queue.poll();
            this.queue.offer(preloadTargetPoll);
            preloadTargetPoll.photoWidth = r2;
            preloadTargetPoll.photoHeight = r3;
            return preloadTargetPoll;
        }
    }

    private static final class PreloadTarget implements Target<Object> {
        int photoHeight;
        int photoWidth;
        private Request request;

        @Override // com.bumptech.glide.manager.LifecycleListener
        public void onDestroy() {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadFailed(Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadStarted(Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(Object obj, Transition<? super Object> transition) {
        }

        @Override // com.bumptech.glide.manager.LifecycleListener
        public void onStart() {
        }

        @Override // com.bumptech.glide.manager.LifecycleListener
        public void onStop() {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void removeCallback(SizeReadyCallback sizeReadyCallback) {
        }

        PreloadTarget() {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void getSize(SizeReadyCallback sizeReadyCallback) {
            sizeReadyCallback.onSizeReady(this.photoWidth, this.photoHeight);
        }

        @Override // com.bumptech.glide.request.target.Target
        public void setRequest(Request request) {
            this.request = request;
        }

        @Override // com.bumptech.glide.request.target.Target
        public Request getRequest() {
            return this.request;
        }
    }
}
