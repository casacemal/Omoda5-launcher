package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.PlayIconAnim;

/* loaded from: classes.dex */
public final class DabListAllItemLayoutBinding implements ViewBinding {
    public final PlayIconAnim anPlayIcon;
    public final ImageView ivDabCover;
    public final ImageView ivDabFavor;
    private final RelativeLayout rootView;
    public final TextView tvTitle;

    private DabListAllItemLayoutBinding(RelativeLayout relativeLayout, PlayIconAnim playIconAnim, ImageView imageView, ImageView imageView2, TextView textView) {
        this.rootView = relativeLayout;
        this.anPlayIcon = playIconAnim;
        this.ivDabCover = imageView;
        this.ivDabFavor = imageView2;
        this.tvTitle = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DabListAllItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DabListAllItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.dab_list_all_item_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DabListAllItemLayoutBinding bind(View view) {
        int r0 = C0632R.id.an_play_icon;
        PlayIconAnim playIconAnim = (PlayIconAnim) view.findViewById(C0632R.id.an_play_icon);
        if (playIconAnim != null) {
            r0 = C0632R.id.iv_dab_cover;
            ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_dab_cover);
            if (imageView != null) {
                r0 = C0632R.id.iv_dab_favor;
                ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_dab_favor);
                if (imageView2 != null) {
                    r0 = C0632R.id.tv_title;
                    TextView textView = (TextView) view.findViewById(C0632R.id.tv_title);
                    if (textView != null) {
                        return new DabListAllItemLayoutBinding((RelativeLayout) view, playIconAnim, imageView, imageView2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
