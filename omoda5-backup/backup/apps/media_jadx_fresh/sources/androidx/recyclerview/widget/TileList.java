package androidx.recyclerview.widget;

import android.util.SparseArray;
import java.lang.reflect.Array;

/* loaded from: classes.dex */
class TileList<T> {
    Tile<T> mLastAccessedTile;
    final int mTileSize;
    private final SparseArray<Tile<T>> mTiles = new SparseArray<>(10);

    public TileList(int r3) {
        this.mTileSize = r3;
    }

    public T getItemAt(int r3) {
        Tile<T> tile = this.mLastAccessedTile;
        if (tile == null || !tile.containsPosition(r3)) {
            int r0 = this.mTiles.indexOfKey(r3 - (r3 % this.mTileSize));
            if (r0 < 0) {
                return null;
            }
            this.mLastAccessedTile = this.mTiles.valueAt(r0);
        }
        return this.mLastAccessedTile.getByPosition(r3);
    }

    public int size() {
        return this.mTiles.size();
    }

    public void clear() {
        this.mTiles.clear();
    }

    public Tile<T> getAtIndex(int r1) {
        return this.mTiles.valueAt(r1);
    }

    public Tile<T> addOrReplace(Tile<T> tile) {
        int r0 = this.mTiles.indexOfKey(tile.mStartPosition);
        if (r0 < 0) {
            this.mTiles.put(tile.mStartPosition, tile);
            return null;
        }
        Tile<T> tileValueAt = this.mTiles.valueAt(r0);
        this.mTiles.setValueAt(r0, tile);
        if (this.mLastAccessedTile == tileValueAt) {
            this.mLastAccessedTile = tile;
        }
        return tileValueAt;
    }

    public Tile<T> removeAtPos(int r3) {
        Tile<T> tile = this.mTiles.get(r3);
        if (this.mLastAccessedTile == tile) {
            this.mLastAccessedTile = null;
        }
        this.mTiles.delete(r3);
        return tile;
    }

    public static class Tile<T> {
        public int mItemCount;
        public final T[] mItems;
        Tile<T> mNext;
        public int mStartPosition;

        public Tile(Class<T> cls, int r2) {
            this.mItems = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, r2));
        }

        boolean containsPosition(int r2) {
            int r0 = this.mStartPosition;
            return r0 <= r2 && r2 < r0 + this.mItemCount;
        }

        T getByPosition(int r2) {
            return this.mItems[r2 - this.mStartPosition];
        }
    }
}
