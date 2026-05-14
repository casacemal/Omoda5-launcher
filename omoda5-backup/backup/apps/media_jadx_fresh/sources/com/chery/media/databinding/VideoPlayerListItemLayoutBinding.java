package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.PlayIconAnim;

/* loaded from: classes.dex */
public final class VideoPlayerListItemLayoutBinding implements ViewBinding {
    public final PlayIconAnim anPlayIcon;
    public final ImageView ivPic;
    private final ConstraintLayout rootView;
    public final TextView tvTitle;

    private VideoPlayerListItemLayoutBinding(ConstraintLayout constraintLayout, PlayIconAnim playIconAnim, ImageView imageView, TextView textView) {
        this.rootView = constraintLayout;
        this.anPlayIcon = playIconAnim;
        this.ivPic = imageView;
        this.tvTitle = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static VideoPlayerListItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static VideoPlayerListItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.video_player_list_item_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static VideoPlayerListItemLayoutBinding bind(View view) {
        int r0 = C0632R.id.an_play_icon;
        PlayIconAnim playIconAnim = (PlayIconAnim) view.findViewById(C0632R.id.an_play_icon);
        if (playIconAnim != null) {
            r0 = C0632R.id.iv_pic;
            ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_pic);
            if (imageView != null) {
                r0 = C0632R.id.tv_title;
                TextView textView = (TextView) view.findViewById(C0632R.id.tv_title);
                if (textView != null) {
                    return new VideoPlayerListItemLayoutBinding((ConstraintLayout) view, playIconAnim, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
