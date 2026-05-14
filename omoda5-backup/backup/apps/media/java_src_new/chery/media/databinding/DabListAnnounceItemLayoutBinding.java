package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;

/* loaded from: classes.dex */
public final class DabListAnnounceItemLayoutBinding implements ViewBinding {
    public final ImageView ivSelect;
    private final RelativeLayout rootView;
    public final TextView tvTitle;

    private DabListAnnounceItemLayoutBinding(RelativeLayout relativeLayout, ImageView imageView, TextView textView) {
        this.rootView = relativeLayout;
        this.ivSelect = imageView;
        this.tvTitle = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DabListAnnounceItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DabListAnnounceItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.dab_list_announce_item_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DabListAnnounceItemLayoutBinding bind(View view) {
        int r0 = C0632R.id.iv_select;
        ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_select);
        if (imageView != null) {
            r0 = C0632R.id.tv_title;
            TextView textView = (TextView) view.findViewById(C0632R.id.tv_title);
            if (textView != null) {
                return new DabListAnnounceItemLayoutBinding((RelativeLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
