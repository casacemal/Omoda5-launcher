package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.SurfaceView;
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
public final class FragmentVideoPlayerBinding implements ViewBinding {
    public final ConstraintLayout clBrightnessSetting;
    public final ConstraintLayout clControl;
    public final ConstraintLayout clLoadFailed;
    public final ConstraintLayout clPlayControl;
    public final ConstraintLayout clVideoList;
    public final ConstraintLayout clVolSetting;
    public final VideoPlayerCoverLayoutBinding inVideoCover;
    public final ImageView ivBack;
    public final ImageView ivBrightnessSetting;
    public final ImageView ivList;
    public final ImageView ivLoadFailed;
    public final ImageView ivPlayNext;
    public final ImageView ivPlayPause;
    public final ImageView ivPlayPrior;
    public final ImageView ivPopupVolIcon;
    public final ImageView ivTouch;
    public final ImageView ivVolSetting;
    public final LinearLayout llFastTime;
    public final LinearLayout llListBar;
    public final LinearLayout llTime;
    private final ConstraintLayout rootView;
    public final RecycleViewSb rvVideoList;
    public final SeekBar sbBrightness;
    public final SeekBar sbListBar;
    public final SeekBar sbTimeBar;
    public final SeekBar sbVolume;
    public final SurfaceView surface;
    public final TextView tvFastMusicDuration;
    public final TextView tvFastMusicTime;
    public final TextView tvFastTimeInterval;
    public final TextView tvMusicDuration;
    public final TextView tvMusicTime;
    public final TextView tvTimeInterval;
    public final MarqueeTextView tvVideoName;

    private FragmentVideoPlayerBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ConstraintLayout constraintLayout3, ConstraintLayout constraintLayout4, ConstraintLayout constraintLayout5, ConstraintLayout constraintLayout6, ConstraintLayout constraintLayout7, VideoPlayerCoverLayoutBinding videoPlayerCoverLayoutBinding, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7, ImageView imageView8, ImageView imageView9, ImageView imageView10, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, RecycleViewSb recycleViewSb, SeekBar seekBar, SeekBar seekBar2, SeekBar seekBar3, SeekBar seekBar4, SurfaceView surfaceView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, MarqueeTextView marqueeTextView) {
        this.rootView = constraintLayout;
        this.clBrightnessSetting = constraintLayout2;
        this.clControl = constraintLayout3;
        this.clLoadFailed = constraintLayout4;
        this.clPlayControl = constraintLayout5;
        this.clVideoList = constraintLayout6;
        this.clVolSetting = constraintLayout7;
        this.inVideoCover = videoPlayerCoverLayoutBinding;
        this.ivBack = imageView;
        this.ivBrightnessSetting = imageView2;
        this.ivList = imageView3;
        this.ivLoadFailed = imageView4;
        this.ivPlayNext = imageView5;
        this.ivPlayPause = imageView6;
        this.ivPlayPrior = imageView7;
        this.ivPopupVolIcon = imageView8;
        this.ivTouch = imageView9;
        this.ivVolSetting = imageView10;
        this.llFastTime = linearLayout;
        this.llListBar = linearLayout2;
        this.llTime = linearLayout3;
        this.rvVideoList = recycleViewSb;
        this.sbBrightness = seekBar;
        this.sbListBar = seekBar2;
        this.sbTimeBar = seekBar3;
        this.sbVolume = seekBar4;
        this.surface = surfaceView;
        this.tvFastMusicDuration = textView;
        this.tvFastMusicTime = textView2;
        this.tvFastTimeInterval = textView3;
        this.tvMusicDuration = textView4;
        this.tvMusicTime = textView5;
        this.tvTimeInterval = textView6;
        this.tvVideoName = marqueeTextView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentVideoPlayerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentVideoPlayerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.fragment_video_player, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentVideoPlayerBinding bind(View view) {
        int r1 = C0632R.id.cl_brightness_setting;
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(C0632R.id.cl_brightness_setting);
        if (constraintLayout != null) {
            r1 = C0632R.id.cl_control;
            ConstraintLayout constraintLayout2 = (ConstraintLayout) view.findViewById(C0632R.id.cl_control);
            if (constraintLayout2 != null) {
                r1 = C0632R.id.cl_load_failed;
                ConstraintLayout constraintLayout3 = (ConstraintLayout) view.findViewById(C0632R.id.cl_load_failed);
                if (constraintLayout3 != null) {
                    r1 = C0632R.id.cl_play_control;
                    ConstraintLayout constraintLayout4 = (ConstraintLayout) view.findViewById(C0632R.id.cl_play_control);
                    if (constraintLayout4 != null) {
                        r1 = C0632R.id.cl_video_list;
                        ConstraintLayout constraintLayout5 = (ConstraintLayout) view.findViewById(C0632R.id.cl_video_list);
                        if (constraintLayout5 != null) {
                            r1 = C0632R.id.cl_vol_setting;
                            ConstraintLayout constraintLayout6 = (ConstraintLayout) view.findViewById(C0632R.id.cl_vol_setting);
                            if (constraintLayout6 != null) {
                                r1 = C0632R.id.in_video_cover;
                                View viewFindViewById = view.findViewById(C0632R.id.in_video_cover);
                                if (viewFindViewById != null) {
                                    VideoPlayerCoverLayoutBinding videoPlayerCoverLayoutBindingBind = VideoPlayerCoverLayoutBinding.bind(viewFindViewById);
                                    r1 = C0632R.id.iv_back;
                                    ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_back);
                                    if (imageView != null) {
                                        r1 = C0632R.id.iv_brightness_setting;
                                        ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_brightness_setting);
                                        if (imageView2 != null) {
                                            r1 = C0632R.id.iv_list;
                                            ImageView imageView3 = (ImageView) view.findViewById(C0632R.id.iv_list);
                                            if (imageView3 != null) {
                                                r1 = C0632R.id.iv_load_failed;
                                                ImageView imageView4 = (ImageView) view.findViewById(C0632R.id.iv_load_failed);
                                                if (imageView4 != null) {
                                                    r1 = C0632R.id.iv_play_next;
                                                    ImageView imageView5 = (ImageView) view.findViewById(C0632R.id.iv_play_next);
                                                    if (imageView5 != null) {
                                                        r1 = C0632R.id.iv_play_pause;
                                                        ImageView imageView6 = (ImageView) view.findViewById(C0632R.id.iv_play_pause);
                                                        if (imageView6 != null) {
                                                            r1 = C0632R.id.iv_play_prior;
                                                            ImageView imageView7 = (ImageView) view.findViewById(C0632R.id.iv_play_prior);
                                                            if (imageView7 != null) {
                                                                r1 = C0632R.id.iv_popup_vol_icon;
                                                                ImageView imageView8 = (ImageView) view.findViewById(C0632R.id.iv_popup_vol_icon);
                                                                if (imageView8 != null) {
                                                                    r1 = C0632R.id.iv_touch;
                                                                    ImageView imageView9 = (ImageView) view.findViewById(C0632R.id.iv_touch);
                                                                    if (imageView9 != null) {
                                                                        r1 = C0632R.id.iv_vol_setting;
                                                                        ImageView imageView10 = (ImageView) view.findViewById(C0632R.id.iv_vol_setting);
                                                                        if (imageView10 != null) {
                                                                            r1 = C0632R.id.ll_fast_time;
                                                                            LinearLayout linearLayout = (LinearLayout) view.findViewById(C0632R.id.ll_fast_time);
                                                                            if (linearLayout != null) {
                                                                                r1 = C0632R.id.ll_list_bar;
                                                                                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(C0632R.id.ll_list_bar);
                                                                                if (linearLayout2 != null) {
                                                                                    r1 = C0632R.id.ll_time;
                                                                                    LinearLayout linearLayout3 = (LinearLayout) view.findViewById(C0632R.id.ll_time);
                                                                                    if (linearLayout3 != null) {
                                                                                        r1 = C0632R.id.rv_video_list;
                                                                                        RecycleViewSb recycleViewSb = (RecycleViewSb) view.findViewById(C0632R.id.rv_video_list);
                                                                                        if (recycleViewSb != null) {
                                                                                            r1 = C0632R.id.sb_brightness;
                                                                                            SeekBar seekBar = (SeekBar) view.findViewById(C0632R.id.sb_brightness);
                                                                                            if (seekBar != null) {
                                                                                                r1 = C0632R.id.sb_list_bar;
                                                                                                SeekBar seekBar2 = (SeekBar) view.findViewById(C0632R.id.sb_list_bar);
                                                                                                if (seekBar2 != null) {
                                                                                                    r1 = C0632R.id.sb_time_bar;
                                                                                                    SeekBar seekBar3 = (SeekBar) view.findViewById(C0632R.id.sb_time_bar);
                                                                                                    if (seekBar3 != null) {
                                                                                                        r1 = C0632R.id.sb_volume;
                                                                                                        SeekBar seekBar4 = (SeekBar) view.findViewById(C0632R.id.sb_volume);
                                                                                                        if (seekBar4 != null) {
                                                                                                            r1 = C0632R.id.surface;
                                                                                                            SurfaceView surfaceView = (SurfaceView) view.findViewById(C0632R.id.surface);
                                                                                                            if (surfaceView != null) {
                                                                                                                r1 = C0632R.id.tv_fast__music_duration;
                                                                                                                TextView textView = (TextView) view.findViewById(C0632R.id.tv_fast__music_duration);
                                                                                                                if (textView != null) {
                                                                                                                    r1 = C0632R.id.tv_fast_music_time;
                                                                                                                    TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_fast_music_time);
                                                                                                                    if (textView2 != null) {
                                                                                                                        r1 = C0632R.id.tv_fast__time_interval;
                                                                                                                        TextView textView3 = (TextView) view.findViewById(C0632R.id.tv_fast__time_interval);
                                                                                                                        if (textView3 != null) {
                                                                                                                            r1 = C0632R.id.tv_music_duration;
                                                                                                                            TextView textView4 = (TextView) view.findViewById(C0632R.id.tv_music_duration);
                                                                                                                            if (textView4 != null) {
                                                                                                                                r1 = C0632R.id.tv_music_time;
                                                                                                                                TextView textView5 = (TextView) view.findViewById(C0632R.id.tv_music_time);
                                                                                                                                if (textView5 != null) {
                                                                                                                                    r1 = C0632R.id.tv_time_interval;
                                                                                                                                    TextView textView6 = (TextView) view.findViewById(C0632R.id.tv_time_interval);
                                                                                                                                    if (textView6 != null) {
                                                                                                                                        r1 = C0632R.id.tv_video_name;
                                                                                                                                        MarqueeTextView marqueeTextView = (MarqueeTextView) view.findViewById(C0632R.id.tv_video_name);
                                                                                                                                        if (marqueeTextView != null) {
                                                                                                                                            return new FragmentVideoPlayerBinding((ConstraintLayout) view, constraintLayout, constraintLayout2, constraintLayout3, constraintLayout4, constraintLayout5, constraintLayout6, videoPlayerCoverLayoutBindingBind, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, imageView10, linearLayout, linearLayout2, linearLayout3, recycleViewSb, seekBar, seekBar2, seekBar3, seekBar4, surfaceView, textView, textView2, textView3, textView4, textView5, textView6, marqueeTextView);
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
