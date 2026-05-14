package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;

/* loaded from: classes.dex */
public final class MediaPlayerAlbumCoverAnimBinding implements ViewBinding {
    public final ImageView ivAlbumCover;
    public final ImageView ivAlbumCoverBg;
    private final ConstraintLayout rootView;

    private MediaPlayerAlbumCoverAnimBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2) {
        this.rootView = constraintLayout;
        this.ivAlbumCover = imageView;
        this.ivAlbumCoverBg = imageView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static MediaPlayerAlbumCoverAnimBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MediaPlayerAlbumCoverAnimBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.media_player_album_cover_anim, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static MediaPlayerAlbumCoverAnimBinding bind(View view) {
        int r0 = C0632R.id.iv_album_cover;
        ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_album_cover);
        if (imageView != null) {
            r0 = C0632R.id.iv_album_cover_bg;
            ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_album_cover_bg);
            if (imageView2 != null) {
                return new MediaPlayerAlbumCoverAnimBinding((ConstraintLayout) view, imageView, imageView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
