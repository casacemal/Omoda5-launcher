package com.chery.media.view.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.SeekBar;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class RecycleViewSb extends RecyclerView {
    private RecyclerView.OnScrollListener scrollChangeListener;
    private SeekBar seekBar;
    private View seekBarArea;
    private AlphaAnimation seekBarFadeOutAnim;

    public RecycleViewSb(Context context) {
        super(context);
    }

    public RecycleViewSb(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RecycleViewSb(Context context, AttributeSet attributeSet, int r3) {
        super(context, attributeSet, r3);
    }

    public void setSeekBar(SeekBar seekBar, View view) {
        if (seekBar == null || view == null) {
            return;
        }
        this.seekBar = seekBar;
        seekBar.setMax(1000);
        this.seekBarArea = view;
        setUp();
    }

    private void setUp() {
        RecyclerView.OnScrollListener onScrollListener = this.scrollChangeListener;
        if (onScrollListener != null) {
            removeOnScrollListener(onScrollListener);
        }
        RecyclerView.OnScrollListener onScrollListener2 = new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.component.RecycleViewSb.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int r4) {
                super.onScrollStateChanged(recyclerView, r4);
                if (r4 == 0 && RecycleViewSb.this.seekBarArea.getVisibility() == 0) {
                    RecycleViewSb.this.seekBarFadeOutAnim = new AlphaAnimation(RecycleViewSb.this.seekBarArea.getAlpha(), 0.0f);
                    RecycleViewSb.this.seekBarFadeOutAnim.setDuration(1000L);
                    RecycleViewSb.this.seekBarArea.startAnimation(RecycleViewSb.this.seekBarFadeOutAnim);
                    RecycleViewSb.this.seekBarArea.setVisibility(4);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                RecycleViewSb.this.updateScrollbar();
                if (r3 != 0) {
                    if (RecycleViewSb.this.seekBarArea.getAlpha() < 1.0f) {
                        RecycleViewSb.this.seekBarArea.clearAnimation();
                    }
                    RecycleViewSb.this.seekBarArea.setAlpha(1.0f);
                    RecycleViewSb.this.seekBarArea.setVisibility(0);
                }
            }
        };
        this.scrollChangeListener = onScrollListener2;
        addOnScrollListener(onScrollListener2);
        updateScrollbar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateScrollbar() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            updateScrollbarOfGridLayoutManager();
        } else if (layoutManager instanceof LinearLayoutManager) {
            updateScrollbarOfLineLayoutManager();
        }
    }

    private void updateScrollbarOfLineLayoutManager() {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) getLayoutManager();
        int r1 = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
        int r0 = linearLayoutManager.findLastCompletelyVisibleItemPosition();
        if (r1 < 0 || r0 < 0) {
            this.seekBar.setProgress(0);
            return;
        }
        int itemCount = getAdapter().getItemCount();
        if (itemCount <= 1) {
            this.seekBar.setProgress(0);
            return;
        }
        int r3 = (itemCount - 1) - (r0 - r1);
        if (r3 <= 0) {
            this.seekBar.setProgress(0);
        } else {
            this.seekBar.setProgress((r1 * 1000) / r3);
        }
    }

    private void updateScrollbarOfGridLayoutManager() {
        GridLayoutManager gridLayoutManager = (GridLayoutManager) getLayoutManager();
        int r1 = gridLayoutManager.findFirstCompletelyVisibleItemPosition();
        int r0 = gridLayoutManager.findLastCompletelyVisibleItemPosition();
        if (r1 <= 0 || r0 < 0) {
            this.seekBar.setProgress(0);
            return;
        }
        int r12 = r1 / 5;
        int r02 = r0 / 5;
        int itemCount = (getAdapter().getItemCount() + 4) / 5;
        if (itemCount <= 1) {
            this.seekBar.setProgress(0);
            return;
        }
        int r3 = (itemCount - 1) - (r02 - r12);
        if (r3 <= 0) {
            this.seekBar.setProgress(0);
        } else {
            this.seekBar.setProgress((r12 * 1000) / r3);
        }
    }
}
