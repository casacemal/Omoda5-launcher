package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;

/* loaded from: classes.dex */
public final class MediaPlayerTimeBarLayoutBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final SeekBar sbTimeBar;
    public final TextView tvMusicDuration;
    public final TextView tvMusicTime;

    private MediaPlayerTimeBarLayoutBinding(ConstraintLayout constraintLayout, SeekBar seekBar, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.sbTimeBar = seekBar;
        this.tvMusicDuration = textView;
        this.tvMusicTime = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static MediaPlayerTimeBarLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MediaPlayerTimeBarLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.media_player_time_bar_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static MediaPlayerTimeBarLayoutBinding bind(View view) {
        int r0 = C0632R.id.sb_time_bar;
        SeekBar seekBar = (SeekBar) view.findViewById(C0632R.id.sb_time_bar);
        if (seekBar != null) {
            r0 = C0632R.id.tv_music_duration;
            TextView textView = (TextView) view.findViewById(C0632R.id.tv_music_duration);
            if (textView != null) {
                r0 = C0632R.id.tv_music_time;
                TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_music_time);
                if (textView2 != null) {
                    return new MediaPlayerTimeBarLayoutBinding((ConstraintLayout) view, seekBar, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
