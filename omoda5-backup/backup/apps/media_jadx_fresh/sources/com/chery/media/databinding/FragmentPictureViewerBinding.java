package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.HackyViewPager;

/* loaded from: classes.dex */
public final class FragmentPictureViewerBinding implements ViewBinding {
    public final ConstraintLayout clControl;
    public final ConstraintLayout clSubControl;
    public final PicturePlayerCoverLayoutBinding inPictureCover;
    public final ImageView ivAutoChangePaused;
    public final ImageView ivAutoPlay;
    public final ImageView ivBack;
    public final ImageView ivPlayNext;
    public final ImageView ivPlayPrior;
    public final ImageView ivRotate;
    public final ImageView ivZoomIn;
    public final ImageView ivZoomOut;
    private final ConstraintLayout rootView;
    public final TextView tvLeftDuration;
    public final HackyViewPager viewPager;

    private FragmentPictureViewerBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ConstraintLayout constraintLayout3, PicturePlayerCoverLayoutBinding picturePlayerCoverLayoutBinding, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7, ImageView imageView8, TextView textView, HackyViewPager hackyViewPager) {
        this.rootView = constraintLayout;
        this.clControl = constraintLayout2;
        this.clSubControl = constraintLayout3;
        this.inPictureCover = picturePlayerCoverLayoutBinding;
        this.ivAutoChangePaused = imageView;
        this.ivAutoPlay = imageView2;
        this.ivBack = imageView3;
        this.ivPlayNext = imageView4;
        this.ivPlayPrior = imageView5;
        this.ivRotate = imageView6;
        this.ivZoomIn = imageView7;
        this.ivZoomOut = imageView8;
        this.tvLeftDuration = textView;
        this.viewPager = hackyViewPager;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPictureViewerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentPictureViewerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.fragment_picture_viewer, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentPictureViewerBinding bind(View view) {
        int r1 = C0632R.id.cl_control;
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(C0632R.id.cl_control);
        if (constraintLayout != null) {
            r1 = C0632R.id.cl_sub_control;
            ConstraintLayout constraintLayout2 = (ConstraintLayout) view.findViewById(C0632R.id.cl_sub_control);
            if (constraintLayout2 != null) {
                r1 = C0632R.id.in_picture_cover;
                View viewFindViewById = view.findViewById(C0632R.id.in_picture_cover);
                if (viewFindViewById != null) {
                    PicturePlayerCoverLayoutBinding picturePlayerCoverLayoutBindingBind = PicturePlayerCoverLayoutBinding.bind(viewFindViewById);
                    r1 = C0632R.id.iv_auto_change_paused;
                    ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_auto_change_paused);
                    if (imageView != null) {
                        r1 = C0632R.id.iv_auto_play;
                        ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_auto_play);
                        if (imageView2 != null) {
                            r1 = C0632R.id.iv_back;
                            ImageView imageView3 = (ImageView) view.findViewById(C0632R.id.iv_back);
                            if (imageView3 != null) {
                                r1 = C0632R.id.iv_play_next;
                                ImageView imageView4 = (ImageView) view.findViewById(C0632R.id.iv_play_next);
                                if (imageView4 != null) {
                                    r1 = C0632R.id.iv_play_prior;
                                    ImageView imageView5 = (ImageView) view.findViewById(C0632R.id.iv_play_prior);
                                    if (imageView5 != null) {
                                        r1 = C0632R.id.iv_rotate;
                                        ImageView imageView6 = (ImageView) view.findViewById(C0632R.id.iv_rotate);
                                        if (imageView6 != null) {
                                            r1 = C0632R.id.iv_zoom_in;
                                            ImageView imageView7 = (ImageView) view.findViewById(C0632R.id.iv_zoom_in);
                                            if (imageView7 != null) {
                                                r1 = C0632R.id.iv_zoom_out;
                                                ImageView imageView8 = (ImageView) view.findViewById(C0632R.id.iv_zoom_out);
                                                if (imageView8 != null) {
                                                    r1 = C0632R.id.tv_left_duration;
                                                    TextView textView = (TextView) view.findViewById(C0632R.id.tv_left_duration);
                                                    if (textView != null) {
                                                        r1 = C0632R.id.viewPager;
                                                        HackyViewPager hackyViewPager = (HackyViewPager) view.findViewById(C0632R.id.viewPager);
                                                        if (hackyViewPager != null) {
                                                            return new FragmentPictureViewerBinding((ConstraintLayout) view, constraintLayout, constraintLayout2, picturePlayerCoverLayoutBindingBind, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, textView, hackyViewPager);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r1)));
    }
}
