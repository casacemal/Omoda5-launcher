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
public final class FragmentDabAllListBinding implements ViewBinding {
    public final RecycleViewSb dabAllListRv;
    public final ImageView ivListMask;
    public final LinearLayout llListBar;
    private final ConstraintLayout rootView;
    public final SeekBar sbListBar;
    public final TextView tvNoFavor;

    private FragmentDabAllListBinding(ConstraintLayout constraintLayout, RecycleViewSb recycleViewSb, ImageView imageView, LinearLayout linearLayout, SeekBar seekBar, TextView textView) {
        this.rootView = constraintLayout;
        this.dabAllListRv = recycleViewSb;
        this.ivListMask = imageView;
        this.llListBar = linearLayout;
        this.sbListBar = seekBar;
        this.tvNoFavor = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentDabAllListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentDabAllListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.fragment_dab_all_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentDabAllListBinding bind(View view) {
        int r0 = C0632R.id.dab_all_list_rv;
        RecycleViewSb recycleViewSb = (RecycleViewSb) view.findViewById(C0632R.id.dab_all_list_rv);
        if (recycleViewSb != null) {
            r0 = C0632R.id.iv_list_mask;
            ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_list_mask);
            if (imageView != null) {
                r0 = C0632R.id.ll_list_bar;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(C0632R.id.ll_list_bar);
                if (linearLayout != null) {
                    r0 = C0632R.id.sb_list_bar;
                    SeekBar seekBar = (SeekBar) view.findViewById(C0632R.id.sb_list_bar);
                    if (seekBar != null) {
                        r0 = C0632R.id.tv_no_favor;
                        TextView textView = (TextView) view.findViewById(C0632R.id.tv_no_favor);
                        if (textView != null) {
                            return new FragmentDabAllListBinding((ConstraintLayout) view, recycleViewSb, imageView, linearLayout, seekBar, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
