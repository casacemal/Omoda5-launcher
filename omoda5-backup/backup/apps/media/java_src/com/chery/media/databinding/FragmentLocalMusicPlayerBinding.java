package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.MarqueeTextView;
import com.chery.media.view.component.RecycleViewSb;

/* loaded from: classes.dex */
public final class FragmentLocalMusicPlayerBinding implements ViewBinding {
    public final MediaPlayerLayoutBinding inPlayerControl;
    public final MediaPlayerTimeBarLayoutBinding inPlayerTimeBar;
    public final ImageView ivListMask;
    public final ImageView ivMusicMode;
    public final ImageView ivRetract;
    public final ImageView ivSoundEffects;
    public final LinearLayout llMusicListBar;
    private final ConstraintLayout rootView;
    public final RecycleViewSb rvMusicList;
    public final SeekBar sbMusicListBar;
    public final TextView tvMusicArtist;
    public final TextView tvMusicListTitle;
    public final MarqueeTextView tvMusicTitle;

    private FragmentLocalMusicPlayerBinding(ConstraintLayout constraintLayout, MediaPlayerLayoutBinding mediaPlayerLayoutBinding, MediaPlayerTimeBarLayoutBinding mediaPlayerTimeBarLayoutBinding, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, LinearLayout linearLayout, RecycleViewSb recycleViewSb, SeekBar seekBar, TextView textView, TextView textView2, MarqueeTextView marqueeTextView) {
        this.rootView = constraintLayout;
        this.inPlayerControl = mediaPlayerLayoutBinding;
        this.inPlayerTimeBar = mediaPlayerTimeBarLayoutBinding;
        this.ivListMask = imageView;
        this.ivMusicMode = imageView2;
        this.ivRetract = imageView3;
        this.ivSoundEffects = imageView4;
        this.llMusicListBar = linearLayout;
        this.rvMusicList = recycleViewSb;
        this.sbMusicListBar = seekBar;
        this.tvMusicArtist = textView;
        this.tvMusicListTitle = textView2;
        this.tvMusicTitle = marqueeTextView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentLocalMusicPlayerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentLocalMusicPlayerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.fragment_local_music_player, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentLocalMusicPlayerBinding bind(View view) {
        int r1 = C0632R.id.in_player_control;
        View viewFindViewById = view.findViewById(C0632R.id.in_player_control);
        if (viewFindViewById != null) {
            MediaPlayerLayoutBinding mediaPlayerLayoutBindingBind = MediaPlayerLayoutBinding.bind(viewFindViewById);
            r1 = C0632R.id.in_player_time_bar;
            View viewFindViewById2 = view.findViewById(C0632R.id.in_player_time_bar);
            if (viewFindViewById2 != null) {
                MediaPlayerTimeBarLayoutBinding mediaPlayerTimeBarLayoutBindingBind = MediaPlayerTimeBarLayoutBinding.bind(viewFindViewById2);
                r1 = C0632R.id.iv_list_mask;
                ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_list_mask);
                if (imageView != null) {
                    r1 = C0632R.id.iv_music_mode;
                    ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_music_mode);
                    if (imageView2 != null) {
                        r1 = C0632R.id.iv_retract;
                        ImageView imageView3 = (ImageView) view.findViewById(C0632R.id.iv_retract);
                        if (imageView3 != null) {
                            r1 = C0632R.id.iv_sound_effects;
                            ImageView imageView4 = (ImageView) view.findViewById(C0632R.id.iv_sound_effects);
                            if (imageView4 != null) {
                                r1 = C0632R.id.ll_music_list_bar;
                                LinearLayout linearLayout = (LinearLayout) view.findViewById(C0632R.id.ll_music_list_bar);
                                if (linearLayout != null) {
                                    r1 = C0632R.id.rv_music_list;
                                    RecycleViewSb recycleViewSb = (RecycleViewSb) view.findViewById(C0632R.id.rv_music_list);
                                    if (recycleViewSb != null) {
                                        r1 = C0632R.id.sb_music_list_bar;
                                        SeekBar seekBar = (SeekBar) view.findViewById(C0632R.id.sb_music_list_bar);
                                        if (seekBar != null) {
                                            r1 = C0632R.id.tv_music_artist;
                                            TextView textView = (TextView) view.findViewById(C0632R.id.tv_music_artist);
                                            if (textView != null) {
                                                r1 = C0632R.id.tv_music_list_title;
                                                TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_music_list_title);
                                                if (textView2 != null) {
                                                    r1 = C0632R.id.tv_music_title;
                                                    MarqueeTextView marqueeTextView = (MarqueeTextView) view.findViewById(C0632R.id.tv_music_title);
                                                    if (marqueeTextView != null) {
                                                        return new FragmentLocalMusicPlayerBinding((ConstraintLayout) view, mediaPlayerLayoutBindingBind, mediaPlayerTimeBarLayoutBindingBind, imageView, imageView2, imageView3, imageView4, linearLayout, recycleViewSb, seekBar, textView, textView2, marqueeTextView);
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
