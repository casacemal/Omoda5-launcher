package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SortedList;

/* loaded from: classes.dex */
public abstract class SortedListAdapterCallback<T2> extends SortedList.Callback<T2> {
    final RecyclerView.Adapter mAdapter;

    public SortedListAdapterCallback(RecyclerView.Adapter adapter) {
        this.mAdapter = adapter;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int r1, int r2) {
        this.mAdapter.notifyItemRangeInserted(r1, r2);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int r1, int r2) {
        this.mAdapter.notifyItemRangeRemoved(r1, r2);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int r1, int r2) {
        this.mAdapter.notifyItemMoved(r1, r2);
    }

    @Override // androidx.recyclerview.widget.SortedList.Callback
    public void onChanged(int r1, int r2) {
        this.mAdapter.notifyItemRangeChanged(r1, r2);
    }

    @Override // androidx.recyclerview.widget.SortedList.Callback, androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int r1, int r2, Object obj) {
        this.mAdapter.notifyItemRangeChanged(r1, r2, obj);
    }
}
