package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.RecycleViewSb;

/* loaded from: classes.dex */
public final class ActivityDabEpgListBinding implements ViewBinding {
    public final RecycleViewSb dabListEpgRv;
    public final ImageView ivBack;
    public final ImageView ivListMask;
    public final ImageView ivNext;
    public final ImageView ivPrev;
    public final LinearLayout llListBar;
    private final ConstraintLayout rootView;
    public final SeekBar sbListBar;
    public final TextView tvDate;
    public final TextView tvEmptyList;

    private ActivityDabEpgListBinding(ConstraintLayout constraintLayout, RecycleViewSb recycleViewSb, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, LinearLayout linearLayout, SeekBar seekBar, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.dabListEpgRv = recycleViewSb;
        this.ivBack = imageView;
        this.ivListMask = imageView2;
        this.ivNext = imageView3;
        this.ivPrev = imageView4;
        this.llListBar = linearLayout;
        this.sbListBar = seekBar;
        this.tvDate = textView;
        this.tvEmptyList = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityDabEpgListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityDabEpgListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.activity_dab_epg_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityDabEpgListBinding bind(View view) {
        int r0 = C0632R.id.dab_list_epg_rv;
        RecycleViewSb recycleViewSb = (RecycleViewSb) view.findViewById(C0632R.id.dab_list_epg_rv);
        if (recycleViewSb != null) {
            r0 = C0632R.id.iv_back;
            ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_back);
            if (imageView != null) {
                r0 = C0632R.id.iv_list_mask;
                ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_list_mask);
                if (imageView2 != null) {
                    r0 = C0632R.id.iv_next;
                    ImageView imageView3 = (ImageView) view.findViewById(C0632R.id.iv_next);
                    if (imageView3 != null) {
                        r0 = C0632R.id.iv_prev;
                        ImageView imageView4 = (ImageView) view.findViewById(C0632R.id.iv_prev);
                        if (imageView4 != null) {
                            r0 = C0632R.id.ll_list_bar;
                            LinearLayout linearLayout = (LinearLayout) view.findViewById(C0632R.id.ll_list_bar);
                            if (linearLayout != null) {
                                r0 = C0632R.id.sb_list_bar;
                                SeekBar seekBar = (SeekBar) view.findViewById(C0632R.id.sb_list_bar);
                                if (seekBar != null) {
                                    r0 = C0632R.id.tv_date;
                                    TextView textView = (TextView) view.findViewById(C0632R.id.tv_date);
                                    if (textView != null) {
                                        r0 = C0632R.id.tv_empty_list;
                                        TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_empty_list);
                                        if (textView2 != null) {
                                            return new ActivityDabEpgListBinding((ConstraintLayout) view, recycleViewSb, imageView, imageView2, imageView3, imageView4, linearLayout, seekBar, textView, textView2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
