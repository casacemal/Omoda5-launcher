package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;

/* loaded from: classes.dex */
public final class VideoPlayerCoverLayoutBinding implements ViewBinding {
    public final ImageView ivTouch;
    private final ConstraintLayout rootView;
    public final SeekBar sbTimeBar;
    public final TextView tvCoverHint;
    public final TextView tvMusicDuration;
    public final TextView tvMusicTime;
    public final TextView tvTimeInterval;
    public final TextView tvVideoName;

    private VideoPlayerCoverLayoutBinding(ConstraintLayout constraintLayout, ImageView imageView, SeekBar seekBar, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.ivTouch = imageView;
        this.sbTimeBar = seekBar;
        this.tvCoverHint = textView;
        this.tvMusicDuration = textView2;
        this.tvMusicTime = textView3;
        this.tvTimeInterval = textView4;
        this.tvVideoName = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static VideoPlayerCoverLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static VideoPlayerCoverLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.video_player_cover_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static VideoPlayerCoverLayoutBinding bind(View view) {
        int r0 = C0632R.id.iv_touch;
        ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_touch);
        if (imageView != null) {
            r0 = C0632R.id.sb_time_bar;
            SeekBar seekBar = (SeekBar) view.findViewById(C0632R.id.sb_time_bar);
            if (seekBar != null) {
                r0 = C0632R.id.tv_cover_hint;
                TextView textView = (TextView) view.findViewById(C0632R.id.tv_cover_hint);
                if (textView != null) {
                    r0 = C0632R.id.tv_music_duration;
                    TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_music_duration);
                    if (textView2 != null) {
                        r0 = C0632R.id.tv_music_time;
                        TextView textView3 = (TextView) view.findViewById(C0632R.id.tv_music_time);
                        if (textView3 != null) {
                            r0 = C0632R.id.tv_time_interval;
                            TextView textView4 = (TextView) view.findViewById(C0632R.id.tv_time_interval);
                            if (textView4 != null) {
                                r0 = C0632R.id.tv_video_name;
                                TextView textView5 = (TextView) view.findViewById(C0632R.id.tv_video_name);
                                if (textView5 != null) {
                                    return new VideoPlayerCoverLayoutBinding((ConstraintLayout) view, imageView, seekBar, textView, textView2, textView3, textView4, textView5);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
