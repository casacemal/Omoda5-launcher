package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class ChildHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "ChildrenHelper";
    final Callback mCallback;
    final Bucket mBucket = new Bucket();
    final List<View> mHiddenViews = new ArrayList();

    interface Callback {
        void addView(View view, int r2);

        void attachViewToParent(View view, int r2, ViewGroup.LayoutParams layoutParams);

        void detachViewFromParent(int r1);

        View getChildAt(int r1);

        int getChildCount();

        RecyclerView.ViewHolder getChildViewHolder(View view);

        int indexOfChild(View view);

        void onEnteredHiddenState(View view);

        void onLeftHiddenState(View view);

        void removeAllViews();

        void removeViewAt(int r1);
    }

    ChildHelper(Callback callback) {
        this.mCallback = callback;
    }

    private void hideViewInternal(View view) {
        this.mHiddenViews.add(view);
        this.mCallback.onEnteredHiddenState(view);
    }

    private boolean unhideViewInternal(View view) {
        if (!this.mHiddenViews.remove(view)) {
            return false;
        }
        this.mCallback.onLeftHiddenState(view);
        return true;
    }

    void addView(View view, boolean z) {
        addView(view, -1, z);
    }

    void addView(View view, int r3, boolean z) {
        int offset;
        if (r3 < 0) {
            offset = this.mCallback.getChildCount();
        } else {
            offset = getOffset(r3);
        }
        this.mBucket.insert(offset, z);
        if (z) {
            hideViewInternal(view);
        }
        this.mCallback.addView(view, offset);
    }

    private int getOffset(int r5) {
        if (r5 < 0) {
            return -1;
        }
        int childCount = this.mCallback.getChildCount();
        int r2 = r5;
        while (r2 < childCount) {
            int r3 = r5 - (r2 - this.mBucket.countOnesBefore(r2));
            if (r3 == 0) {
                while (this.mBucket.get(r2)) {
                    r2++;
                }
                return r2;
            }
            r2 += r3;
        }
        return -1;
    }

    void removeView(View view) {
        int r0 = this.mCallback.indexOfChild(view);
        if (r0 < 0) {
            return;
        }
        if (this.mBucket.remove(r0)) {
            unhideViewInternal(view);
        }
        this.mCallback.removeViewAt(r0);
    }

    void removeViewAt(int r3) {
        int offset = getOffset(r3);
        View childAt = this.mCallback.getChildAt(offset);
        if (childAt == null) {
            return;
        }
        if (this.mBucket.remove(offset)) {
            unhideViewInternal(childAt);
        }
        this.mCallback.removeViewAt(offset);
    }

    View getChildAt(int r1) {
        return this.mCallback.getChildAt(getOffset(r1));
    }

    void removeAllViewsUnfiltered() {
        this.mBucket.reset();
        for (int size = this.mHiddenViews.size() - 1; size >= 0; size--) {
            this.mCallback.onLeftHiddenState(this.mHiddenViews.get(size));
            this.mHiddenViews.remove(size);
        }
        this.mCallback.removeAllViews();
    }

    View findHiddenNonRemovedView(int r6) {
        int size = this.mHiddenViews.size();
        for (int r1 = 0; r1 < size; r1++) {
            View view = this.mHiddenViews.get(r1);
            RecyclerView.ViewHolder childViewHolder = this.mCallback.getChildViewHolder(view);
            if (childViewHolder.getLayoutPosition() == r6 && !childViewHolder.isInvalid() && !childViewHolder.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    void attachViewToParent(View view, int r3, ViewGroup.LayoutParams layoutParams, boolean z) {
        int offset;
        if (r3 < 0) {
            offset = this.mCallback.getChildCount();
        } else {
            offset = getOffset(r3);
        }
        this.mBucket.insert(offset, z);
        if (z) {
            hideViewInternal(view);
        }
        this.mCallback.attachViewToParent(view, offset, layoutParams);
    }

    int getChildCount() {
        return this.mCallback.getChildCount() - this.mHiddenViews.size();
    }

    int getUnfilteredChildCount() {
        return this.mCallback.getChildCount();
    }

    View getUnfilteredChildAt(int r1) {
        return this.mCallback.getChildAt(r1);
    }

    void detachViewFromParent(int r2) {
        int offset = getOffset(r2);
        this.mBucket.remove(offset);
        this.mCallback.detachViewFromParent(offset);
    }

    int indexOfChild(View view) {
        int r3 = this.mCallback.indexOfChild(view);
        if (r3 == -1 || this.mBucket.get(r3)) {
            return -1;
        }
        return r3 - this.mBucket.countOnesBefore(r3);
    }

    boolean isHidden(View view) {
        return this.mHiddenViews.contains(view);
    }

    void hide(View view) {
        int r0 = this.mCallback.indexOfChild(view);
        if (r0 < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        this.mBucket.set(r0);
        hideViewInternal(view);
    }

    void unhide(View view) {
        int r0 = this.mCallback.indexOfChild(view);
        if (r0 < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (!this.mBucket.get(r0)) {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
        this.mBucket.clear(r0);
        unhideViewInternal(view);
    }

    public String toString() {
        return this.mBucket.toString() + ", hidden list:" + this.mHiddenViews.size();
    }

    boolean removeViewIfHidden(View view) {
        int r0 = this.mCallback.indexOfChild(view);
        if (r0 == -1) {
            unhideViewInternal(view);
            return true;
        }
        if (!this.mBucket.get(r0)) {
            return false;
        }
        this.mBucket.remove(r0);
        unhideViewInternal(view);
        this.mCallback.removeViewAt(r0);
        return true;
    }

    static class Bucket {
        static final int BITS_PER_WORD = 64;
        static final long LAST_BIT = Long.MIN_VALUE;
        long mData = 0;
        Bucket mNext;

        Bucket() {
        }

        void set(int r5) {
            if (r5 >= 64) {
                ensureNext();
                this.mNext.set(r5 - 64);
            } else {
                this.mData |= 1 << r5;
            }
        }

        private void ensureNext() {
            if (this.mNext == null) {
                this.mNext = new Bucket();
            }
        }

        void clear(int r5) {
            if (r5 >= 64) {
                Bucket bucket = this.mNext;
                if (bucket != null) {
                    bucket.clear(r5 - 64);
                    return;
                }
                return;
            }
            this.mData &= ~(1 << r5);
        }

        boolean get(int r5) {
            if (r5 < 64) {
                return ((1 << r5) & this.mData) != 0;
            }
            ensureNext();
            return this.mNext.get(r5 - 64);
        }

        void reset() {
            this.mData = 0L;
            Bucket bucket = this.mNext;
            if (bucket != null) {
                bucket.reset();
            }
        }

        void insert(int r10, boolean z) {
            if (r10 >= 64) {
                ensureNext();
                this.mNext.insert(r10 - 64, z);
                return;
            }
            boolean z2 = (this.mData & LAST_BIT) != 0;
            long j = (1 << r10) - 1;
            long j2 = this.mData;
            this.mData = ((j2 & (~j)) << 1) | (j2 & j);
            if (z) {
                set(r10);
            } else {
                clear(r10);
            }
            if (z2 || this.mNext != null) {
                ensureNext();
                this.mNext.insert(0, z2);
            }
        }

        boolean remove(int r11) {
            if (r11 >= 64) {
                ensureNext();
                return this.mNext.remove(r11 - 64);
            }
            long j = 1 << r11;
            boolean z = (this.mData & j) != 0;
            long j2 = this.mData & (~j);
            this.mData = j2;
            long j3 = j - 1;
            this.mData = (j2 & j3) | Long.rotateRight((~j3) & j2, 1);
            Bucket bucket = this.mNext;
            if (bucket != null) {
                if (bucket.get(0)) {
                    set(63);
                }
                this.mNext.remove(0);
            }
            return z;
        }

        int countOnesBefore(int r5) {
            Bucket bucket = this.mNext;
            if (bucket == null) {
                if (r5 >= 64) {
                    return Long.bitCount(this.mData);
                }
                return Long.bitCount(((1 << r5) - 1) & this.mData);
            }
            if (r5 < 64) {
                return Long.bitCount(((1 << r5) - 1) & this.mData);
            }
            return bucket.countOnesBefore(r5 - 64) + Long.bitCount(this.mData);
        }

        public String toString() {
            if (this.mNext == null) {
                return Long.toBinaryString(this.mData);
            }
            return this.mNext.toString() + "xx" + Long.toBinaryString(this.mData);
        }
    }
}
