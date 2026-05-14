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
public final class MediaLocalMusicListItemLayoutBinding implements ViewBinding {
    public final PlayIconAnim anPlayIcon;
    public final ImageView ivChooseBox;
    private final ConstraintLayout rootView;
    public final TextView tvIndex;
    public final TextView tvMusicArtist;
    public final TextView tvMusicTitle;

    private MediaLocalMusicListItemLayoutBinding(ConstraintLayout constraintLayout, PlayIconAnim playIconAnim, ImageView imageView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.anPlayIcon = playIconAnim;
        this.ivChooseBox = imageView;
        this.tvIndex = textView;
        this.tvMusicArtist = textView2;
        this.tvMusicTitle = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static MediaLocalMusicListItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MediaLocalMusicListItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.media_local_music_list_item_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static MediaLocalMusicListItemLayoutBinding bind(View view) {
        int r0 = C0632R.id.an_play_icon;
        PlayIconAnim playIconAnim = (PlayIconAnim) view.findViewById(C0632R.id.an_play_icon);
        if (playIconAnim != null) {
            r0 = C0632R.id.iv_choose_box;
            ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_choose_box);
            if (imageView != null) {
                r0 = C0632R.id.tv_index;
                TextView textView = (TextView) view.findViewById(C0632R.id.tv_index);
                if (textView != null) {
                    r0 = C0632R.id.tv_music_artist;
                    TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_music_artist);
                    if (textView2 != null) {
                        r0 = C0632R.id.tv_music_title;
                        TextView textView3 = (TextView) view.findViewById(C0632R.id.tv_music_title);
                        if (textView3 != null) {
                            return new MediaLocalMusicListItemLayoutBinding((ConstraintLayout) view, playIconAnim, imageView, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
