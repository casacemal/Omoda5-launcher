package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.PlayIconAnim;

/* loaded from: classes.dex */
public final class RadioListItemLayoutBinding implements ViewBinding {
    public final PlayIconAnim anPlayIcon;
    public final ConstraintLayout clItem;
    public final ImageView ivCollection;
    private final RelativeLayout rootView;
    public final TextView tvIndex;
    public final TextView tvMusicTitle;

    private RadioListItemLayoutBinding(RelativeLayout relativeLayout, PlayIconAnim playIconAnim, ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = relativeLayout;
        this.anPlayIcon = playIconAnim;
        this.clItem = constraintLayout;
        this.ivCollection = imageView;
        this.tvIndex = textView;
        this.tvMusicTitle = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static RadioListItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RadioListItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.radio_list_item_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static RadioListItemLayoutBinding bind(View view) {
        int r0 = C0632R.id.an_play_icon;
        PlayIconAnim playIconAnim = (PlayIconAnim) view.findViewById(C0632R.id.an_play_icon);
        if (playIconAnim != null) {
            r0 = C0632R.id.cl_item;
            ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(C0632R.id.cl_item);
            if (constraintLayout != null) {
                r0 = C0632R.id.iv_collection;
                ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_collection);
                if (imageView != null) {
                    r0 = C0632R.id.tv_index;
                    TextView textView = (TextView) view.findViewById(C0632R.id.tv_index);
                    if (textView != null) {
                        r0 = C0632R.id.tv_music_title;
                        TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_music_title);
                        if (textView2 != null) {
                            return new RadioListItemLayoutBinding((RelativeLayout) view, playIconAnim, constraintLayout, imageView, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
