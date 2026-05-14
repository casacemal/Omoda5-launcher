package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.MarqueeTextView;

/* loaded from: classes.dex */
public final class ActivityMediaRightBinding implements ViewBinding {
    public final ConstraintLayout clTopPlaying;
    public final ImageView ivTopPlayingCover;
    public final FrameLayout mediaFragmentContainer;
    private final ConstraintLayout rootView;
    public final MarqueeTextView tvTopPlayingTitle;

    private ActivityMediaRightBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ImageView imageView, FrameLayout frameLayout, MarqueeTextView marqueeTextView) {
        this.rootView = constraintLayout;
        this.clTopPlaying = constraintLayout2;
        this.ivTopPlayingCover = imageView;
        this.mediaFragmentContainer = frameLayout;
        this.tvTopPlayingTitle = marqueeTextView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityMediaRightBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityMediaRightBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.activity_media_right, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityMediaRightBinding bind(View view) {
        int r0 = C0632R.id.cl_top_playing;
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(C0632R.id.cl_top_playing);
        if (constraintLayout != null) {
            r0 = C0632R.id.iv_top_playing_cover;
            ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_top_playing_cover);
            if (imageView != null) {
                r0 = C0632R.id.media_fragment_container;
                FrameLayout frameLayout = (FrameLayout) view.findViewById(C0632R.id.media_fragment_container);
                if (frameLayout != null) {
                    r0 = C0632R.id.tv_top_playing_title;
                    MarqueeTextView marqueeTextView = (MarqueeTextView) view.findViewById(C0632R.id.tv_top_playing_title);
                    if (marqueeTextView != null) {
                        return new ActivityMediaRightBinding((ConstraintLayout) view, constraintLayout, imageView, frameLayout, marqueeTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
