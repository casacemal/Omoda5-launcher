package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.github.chrisbanes.photoview.PhotoView;

/* loaded from: classes.dex */
public final class PictureFullscreenLayoutBinding implements ViewBinding {
    public final ConstraintLayout clLoadFailed;
    public final ImageView ivLoadFailed;
    public final PhotoView ivPic;
    private final ConstraintLayout rootView;

    private PictureFullscreenLayoutBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ImageView imageView, PhotoView photoView) {
        this.rootView = constraintLayout;
        this.clLoadFailed = constraintLayout2;
        this.ivLoadFailed = imageView;
        this.ivPic = photoView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static PictureFullscreenLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PictureFullscreenLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.picture_fullscreen_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PictureFullscreenLayoutBinding bind(View view) {
        int r0 = C0632R.id.cl_load_failed;
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(C0632R.id.cl_load_failed);
        if (constraintLayout != null) {
            r0 = C0632R.id.iv_load_failed;
            ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_load_failed);
            if (imageView != null) {
                r0 = C0632R.id.iv_pic;
                PhotoView photoView = (PhotoView) view.findViewById(C0632R.id.iv_pic);
                if (photoView != null) {
                    return new PictureFullscreenLayoutBinding((ConstraintLayout) view, constraintLayout, imageView, photoView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
