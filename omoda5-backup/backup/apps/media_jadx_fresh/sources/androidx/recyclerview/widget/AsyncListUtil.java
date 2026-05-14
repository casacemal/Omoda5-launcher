package androidx.recyclerview.widget;

import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.recyclerview.widget.ThreadUtil;
import androidx.recyclerview.widget.TileList;

/* loaded from: classes.dex */
public class AsyncListUtil<T> {
    static final boolean DEBUG = false;
    static final String TAG = "AsyncListUtil";
    boolean mAllowScrollHints;
    final ThreadUtil.BackgroundCallback<T> mBackgroundProxy;
    final DataCallback<T> mDataCallback;
    final ThreadUtil.MainThreadCallback<T> mMainThreadProxy;
    final Class<T> mTClass;
    final TileList<T> mTileList;
    final int mTileSize;
    final ViewCallback mViewCallback;
    final int[] mTmpRange = new int[2];
    final int[] mPrevRange = new int[2];
    final int[] mTmpRangeExtended = new int[2];
    private int mScrollHint = 0;
    int mItemCount = 0;
    int mDisplayedGeneration = 0;
    int mRequestedGeneration = 0;
    final SparseIntArray mMissingPositions = new SparseIntArray();
    private final ThreadUtil.MainThreadCallback<T> mMainThreadCallback = new ThreadUtil.MainThreadCallback<T>() { // from class: androidx.recyclerview.widget.AsyncListUtil.1
        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void updateItemCount(int r1, int r2) {
            if (isRequestedGeneration(r1)) {
                AsyncListUtil.this.mItemCount = r2;
                AsyncListUtil.this.mViewCallback.onDataRefresh();
                AsyncListUtil asyncListUtil = AsyncListUtil.this;
                asyncListUtil.mDisplayedGeneration = asyncListUtil.mRequestedGeneration;
                recycleAllTiles();
                AsyncListUtil.this.mAllowScrollHints = false;
                AsyncListUtil.this.updateRange();
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void addTile(int r4, TileList.Tile<T> tile) {
            if (!isRequestedGeneration(r4)) {
                AsyncListUtil.this.mBackgroundProxy.recycleTile(tile);
                return;
            }
            TileList.Tile<T> tileAddOrReplace = AsyncListUtil.this.mTileList.addOrReplace(tile);
            if (tileAddOrReplace != null) {
                Log.e(AsyncListUtil.TAG, "duplicate tile @" + tileAddOrReplace.mStartPosition);
                AsyncListUtil.this.mBackgroundProxy.recycleTile(tileAddOrReplace);
            }
            int r42 = tile.mStartPosition + tile.mItemCount;
            int r0 = 0;
            while (r0 < AsyncListUtil.this.mMissingPositions.size()) {
                int r1 = AsyncListUtil.this.mMissingPositions.keyAt(r0);
                if (tile.mStartPosition > r1 || r1 >= r42) {
                    r0++;
                } else {
                    AsyncListUtil.this.mMissingPositions.removeAt(r0);
                    AsyncListUtil.this.mViewCallback.onItemLoaded(r1);
                }
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void removeTile(int r1, int r2) {
            if (isRequestedGeneration(r1)) {
                TileList.Tile<T> tileRemoveAtPos = AsyncListUtil.this.mTileList.removeAtPos(r2);
                if (tileRemoveAtPos == null) {
                    Log.e(AsyncListUtil.TAG, "tile not found @" + r2);
                    return;
                }
                AsyncListUtil.this.mBackgroundProxy.recycleTile(tileRemoveAtPos);
            }
        }

        private void recycleAllTiles() {
            for (int r0 = 0; r0 < AsyncListUtil.this.mTileList.size(); r0++) {
                AsyncListUtil.this.mBackgroundProxy.recycleTile(AsyncListUtil.this.mTileList.getAtIndex(r0));
            }
            AsyncListUtil.this.mTileList.clear();
        }

        private boolean isRequestedGeneration(int r1) {
            return r1 == AsyncListUtil.this.mRequestedGeneration;
        }
    };
    private final ThreadUtil.BackgroundCallback<T> mBackgroundCallback = new ThreadUtil.BackgroundCallback<T>() { // from class: androidx.recyclerview.widget.AsyncListUtil.2
        private int mFirstRequiredTileStart;
        private int mGeneration;
        private int mItemCount;
        private int mLastRequiredTileStart;
        final SparseBooleanArray mLoadedTiles = new SparseBooleanArray();
        private TileList.Tile<T> mRecycledRoot;

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void refresh(int r2) {
            this.mGeneration = r2;
            this.mLoadedTiles.clear();
            this.mItemCount = AsyncListUtil.this.mDataCallback.refreshData();
            AsyncListUtil.this.mMainThreadProxy.updateItemCount(this.mGeneration, this.mItemCount);
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void updateRange(int r2, int r3, int r4, int r5, int r6) {
            if (r2 > r3) {
                return;
            }
            int tileStart = getTileStart(r2);
            int tileStart2 = getTileStart(r3);
            this.mFirstRequiredTileStart = getTileStart(r4);
            int tileStart3 = getTileStart(r5);
            this.mLastRequiredTileStart = tileStart3;
            if (r6 == 1) {
                requestTiles(this.mFirstRequiredTileStart, tileStart2, r6, true);
                requestTiles(tileStart2 + AsyncListUtil.this.mTileSize, this.mLastRequiredTileStart, r6, false);
            } else {
                requestTiles(tileStart, tileStart3, r6, false);
                requestTiles(this.mFirstRequiredTileStart, tileStart - AsyncListUtil.this.mTileSize, r6, true);
            }
        }

        private int getTileStart(int r1) {
            return r1 - (r1 % AsyncListUtil.this.mTileSize);
        }

        private void requestTiles(int r4, int r5, int r6, boolean z) {
            int r0 = r4;
            while (r0 <= r5) {
                AsyncListUtil.this.mBackgroundProxy.loadTile(z ? (r5 + r4) - r0 : r0, r6);
                r0 += AsyncListUtil.this.mTileSize;
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void loadTile(int r5, int r6) {
            if (isTileLoaded(r5)) {
                return;
            }
            TileList.Tile<T> tileAcquireTile = acquireTile();
            tileAcquireTile.mStartPosition = r5;
            tileAcquireTile.mItemCount = Math.min(AsyncListUtil.this.mTileSize, this.mItemCount - tileAcquireTile.mStartPosition);
            AsyncListUtil.this.mDataCallback.fillData(tileAcquireTile.mItems, tileAcquireTile.mStartPosition, tileAcquireTile.mItemCount);
            flushTileCache(r6);
            addTile(tileAcquireTile);
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void recycleTile(TileList.Tile<T> tile) {
            AsyncListUtil.this.mDataCallback.recycleData(tile.mItems, tile.mItemCount);
            tile.mNext = this.mRecycledRoot;
            this.mRecycledRoot = tile;
        }

        private TileList.Tile<T> acquireTile() {
            TileList.Tile<T> tile = this.mRecycledRoot;
            if (tile != null) {
                this.mRecycledRoot = tile.mNext;
                return tile;
            }
            return new TileList.Tile<>(AsyncListUtil.this.mTClass, AsyncListUtil.this.mTileSize);
        }

        private boolean isTileLoaded(int r1) {
            return this.mLoadedTiles.get(r1);
        }

        private void addTile(TileList.Tile<T> tile) {
            this.mLoadedTiles.put(tile.mStartPosition, true);
            AsyncListUtil.this.mMainThreadProxy.addTile(this.mGeneration, tile);
        }

        private void removeTile(int r2) {
            this.mLoadedTiles.delete(r2);
            AsyncListUtil.this.mMainThreadProxy.removeTile(this.mGeneration, r2);
        }

        private void flushTileCache(int r8) {
            int maxCachedTiles = AsyncListUtil.this.mDataCallback.getMaxCachedTiles();
            while (this.mLoadedTiles.size() >= maxCachedTiles) {
                int r1 = this.mLoadedTiles.keyAt(0);
                SparseBooleanArray sparseBooleanArray = this.mLoadedTiles;
                int r2 = sparseBooleanArray.keyAt(sparseBooleanArray.size() - 1);
                int r3 = this.mFirstRequiredTileStart - r1;
                int r5 = r2 - this.mLastRequiredTileStart;
                if (r3 > 0 && (r3 >= r5 || r8 == 2)) {
                    removeTile(r1);
                } else {
                    if (r5 <= 0) {
                        return;
                    }
                    if (r3 >= r5 && r8 != 1) {
                        return;
                    } else {
                        removeTile(r2);
                    }
                }
            }
        }

        private void log(String str, Object... objArr) {
            Log.d(AsyncListUtil.TAG, "[BKGR] " + String.format(str, objArr));
        }
    };

    public static abstract class DataCallback<T> {
        public abstract void fillData(T[] tArr, int r2, int r3);

        public int getMaxCachedTiles() {
            return 10;
        }

        public void recycleData(T[] tArr, int r2) {
        }

        public abstract int refreshData();
    }

    void log(String str, Object... objArr) {
        Log.d(TAG, "[MAIN] " + String.format(str, objArr));
    }

    public AsyncListUtil(Class<T> cls, int r4, DataCallback<T> dataCallback, ViewCallback viewCallback) {
        this.mTClass = cls;
        this.mTileSize = r4;
        this.mDataCallback = dataCallback;
        this.mViewCallback = viewCallback;
        this.mTileList = new TileList<>(this.mTileSize);
        MessageThreadUtil messageThreadUtil = new MessageThreadUtil();
        this.mMainThreadProxy = messageThreadUtil.getMainThreadProxy(this.mMainThreadCallback);
        this.mBackgroundProxy = messageThreadUtil.getBackgroundProxy(this.mBackgroundCallback);
        refresh();
    }

    private boolean isRefreshPending() {
        return this.mRequestedGeneration != this.mDisplayedGeneration;
    }

    public void onRangeChanged() {
        if (isRefreshPending()) {
            return;
        }
        updateRange();
        this.mAllowScrollHints = true;
    }

    public void refresh() {
        this.mMissingPositions.clear();
        ThreadUtil.BackgroundCallback<T> backgroundCallback = this.mBackgroundProxy;
        int r1 = this.mRequestedGeneration + 1;
        this.mRequestedGeneration = r1;
        backgroundCallback.refresh(r1);
    }

    public T getItem(int r3) {
        if (r3 < 0 || r3 >= this.mItemCount) {
            throw new IndexOutOfBoundsException(r3 + " is not within 0 and " + this.mItemCount);
        }
        T itemAt = this.mTileList.getItemAt(r3);
        if (itemAt == null && !isRefreshPending()) {
            this.mMissingPositions.put(r3, 0);
        }
        return itemAt;
    }

    public int getItemCount() {
        return this.mItemCount;
    }

    void updateRange() {
        this.mViewCallback.getItemRangeInto(this.mTmpRange);
        int[] r0 = this.mTmpRange;
        if (r0[0] > r0[1] || r0[0] < 0 || r0[1] >= this.mItemCount) {
            return;
        }
        if (!this.mAllowScrollHints) {
            this.mScrollHint = 0;
        } else {
            int r2 = r0[0];
            int[] r4 = this.mPrevRange;
            if (r2 > r4[1] || r4[0] > r0[1]) {
                this.mScrollHint = 0;
            } else if (r0[0] < r4[0]) {
                this.mScrollHint = 1;
            } else if (r0[0] > r4[0]) {
                this.mScrollHint = 2;
            }
        }
        int[] r02 = this.mPrevRange;
        int[] r22 = this.mTmpRange;
        r02[0] = r22[0];
        r02[1] = r22[1];
        this.mViewCallback.extendRangeInto(r22, this.mTmpRangeExtended, this.mScrollHint);
        int[] r03 = this.mTmpRangeExtended;
        r03[0] = Math.min(this.mTmpRange[0], Math.max(r03[0], 0));
        int[] r04 = this.mTmpRangeExtended;
        r04[1] = Math.max(this.mTmpRange[1], Math.min(r04[1], this.mItemCount - 1));
        ThreadUtil.BackgroundCallback<T> backgroundCallback = this.mBackgroundProxy;
        int[] r05 = this.mTmpRange;
        int r5 = r05[0];
        int r6 = r05[1];
        int[] r06 = this.mTmpRangeExtended;
        backgroundCallback.updateRange(r5, r6, r06[0], r06[1], this.mScrollHint);
    }

    public static abstract class ViewCallback {
        public static final int HINT_SCROLL_ASC = 2;
        public static final int HINT_SCROLL_DESC = 1;
        public static final int HINT_SCROLL_NONE = 0;

        public abstract void getItemRangeInto(int[] r1);

        public abstract void onDataRefresh();

        public abstract void onItemLoaded(int r1);

        public void extendRangeInto(int[] r6, int[] r7, int r8) {
            int r0 = (r6[1] - r6[0]) + 1;
            int r2 = r0 / 2;
            r7[0] = r6[0] - (r8 == 1 ? r0 : r2);
            int r62 = r6[1];
            if (r8 != 2) {
                r0 = r2;
            }
            r7[1] = r62 + r0;
        }
    }
}
