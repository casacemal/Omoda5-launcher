package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.MarqueeTextView;

/* loaded from: classes.dex */
public final class DabListPtyItemLayoutBinding implements ViewBinding {
    public final ImageView highLight;
    private final RelativeLayout rootView;
    public final TextView tvTitle;
    public final MarqueeTextView tvTitleMarquee;

    private DabListPtyItemLayoutBinding(RelativeLayout relativeLayout, ImageView imageView, TextView textView, MarqueeTextView marqueeTextView) {
        this.rootView = relativeLayout;
        this.highLight = imageView;
        this.tvTitle = textView;
        this.tvTitleMarquee = marqueeTextView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DabListPtyItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DabListPtyItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.dab_list_pty_item_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DabListPtyItemLayoutBinding bind(View view) {
        int r0 = C0632R.id.high_light;
        ImageView imageView = (ImageView) view.findViewById(C0632R.id.high_light);
        if (imageView != null) {
            r0 = C0632R.id.tv_title;
            TextView textView = (TextView) view.findViewById(C0632R.id.tv_title);
            if (textView != null) {
                r0 = C0632R.id.tv_title_marquee;
                MarqueeTextView marqueeTextView = (MarqueeTextView) view.findViewById(C0632R.id.tv_title_marquee);
                if (marqueeTextView != null) {
                    return new DabListPtyItemLayoutBinding((RelativeLayout) view, imageView, textView, marqueeTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
