package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.MediaPlayerAlbumCoverAnim;

/* loaded from: classes.dex */
public final class MediaPlayerLayoutBinding implements ViewBinding {
    public final MediaPlayerAlbumCoverAnim anAlbumCover;
    public final ImageView ivLast;
    public final ImageView ivNext;
    public final ImageView ivPlaypause;
    private final ConstraintLayout rootView;

    private MediaPlayerLayoutBinding(ConstraintLayout constraintLayout, MediaPlayerAlbumCoverAnim mediaPlayerAlbumCoverAnim, ImageView imageView, ImageView imageView2, ImageView imageView3) {
        this.rootView = constraintLayout;
        this.anAlbumCover = mediaPlayerAlbumCoverAnim;
        this.ivLast = imageView;
        this.ivNext = imageView2;
        this.ivPlaypause = imageView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static MediaPlayerLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MediaPlayerLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.media_player_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static MediaPlayerLayoutBinding bind(View view) {
        int r0 = C0632R.id.an_album_cover;
        MediaPlayerAlbumCoverAnim mediaPlayerAlbumCoverAnim = (MediaPlayerAlbumCoverAnim) view.findViewById(C0632R.id.an_album_cover);
        if (mediaPlayerAlbumCoverAnim != null) {
            r0 = C0632R.id.iv_last;
            ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_last);
            if (imageView != null) {
                r0 = C0632R.id.iv_next;
                ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_next);
                if (imageView2 != null) {
                    r0 = C0632R.id.iv_playpause;
                    ImageView imageView3 = (ImageView) view.findViewById(C0632R.id.iv_playpause);
                    if (imageView3 != null) {
                        return new MediaPlayerLayoutBinding((ConstraintLayout) view, mediaPlayerAlbumCoverAnim, imageView, imageView2, imageView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
