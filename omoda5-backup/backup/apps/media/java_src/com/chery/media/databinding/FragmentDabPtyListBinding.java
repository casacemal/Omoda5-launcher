package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.RecycleViewDabSb;

/* loaded from: classes.dex */
public final class FragmentDabPtyListBinding implements ViewBinding {
    public final RecyclerView dabPtyNameListRv;
    public final RecycleViewDabSb dabPtyStationListRv;
    public final ImageView ivListMask;
    public final LinearLayout llListBar;
    private final ConstraintLayout rootView;
    public final SeekBar sbListBar;
    public final TextView tvEmptyList;

    private FragmentDabPtyListBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView, RecycleViewDabSb recycleViewDabSb, ImageView imageView, LinearLayout linearLayout, SeekBar seekBar, TextView textView) {
        this.rootView = constraintLayout;
        this.dabPtyNameListRv = recyclerView;
        this.dabPtyStationListRv = recycleViewDabSb;
        this.ivListMask = imageView;
        this.llListBar = linearLayout;
        this.sbListBar = seekBar;
        this.tvEmptyList = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentDabPtyListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentDabPtyListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.fragment_dab_pty_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentDabPtyListBinding bind(View view) {
        int r0 = C0632R.id.dab_pty_name_list_rv;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(C0632R.id.dab_pty_name_list_rv);
        if (recyclerView != null) {
            r0 = C0632R.id.dab_pty_station_list_rv;
            RecycleViewDabSb recycleViewDabSb = (RecycleViewDabSb) view.findViewById(C0632R.id.dab_pty_station_list_rv);
            if (recycleViewDabSb != null) {
                r0 = C0632R.id.iv_list_mask;
                ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_list_mask);
                if (imageView != null) {
                    r0 = C0632R.id.ll_list_bar;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(C0632R.id.ll_list_bar);
                    if (linearLayout != null) {
                        r0 = C0632R.id.sb_list_bar;
                        SeekBar seekBar = (SeekBar) view.findViewById(C0632R.id.sb_list_bar);
                        if (seekBar != null) {
                            r0 = C0632R.id.tv_empty_list;
                            TextView textView = (TextView) view.findViewById(C0632R.id.tv_empty_list);
                            if (textView != null) {
                                return new FragmentDabPtyListBinding((ConstraintLayout) view, recyclerView, recycleViewDabSb, imageView, linearLayout, seekBar, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
