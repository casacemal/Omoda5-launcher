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
import com.chery.media.view.component.ArcScaleView;
import com.chery.media.view.component.RecycleViewSb;

/* loaded from: classes.dex */
public final class FragmentRadioPlayerRightBinding implements ViewBinding {
    public final ArcScaleView arcScaleview;
    public final MediaPlayerLayoutBinding inPlayerControl;
    public final ImageView ivCollection;
    public final ImageView ivDabRadioSwitch;
    public final ImageView ivListMask;
    public final ImageView ivRadioScan;
    public final ImageView ivRadioSwitch;
    public final ImageView ivRetract;
    public final ImageView ivScan;
    public final ImageView ivSoundEffects;
    public final LinearLayout llMusicListBar;
    private final ConstraintLayout rootView;
    public final RecycleViewSb rvRadioList;
    public final SeekBar sbMusicListBar;
    public final TextView tvRadioList;
    public final TextView tvRadioScaning;
    public final TextView tvTitle;
    public final View vDabRadioSwitchAm;
    public final View vDabRadioSwitchDab;
    public final View vDabRadioSwitchFm;
    public final View vRadioSwitchAm;
    public final View vRadioSwitchFm;

    private FragmentRadioPlayerRightBinding(ConstraintLayout constraintLayout, ArcScaleView arcScaleView, MediaPlayerLayoutBinding mediaPlayerLayoutBinding, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7, ImageView imageView8, LinearLayout linearLayout, RecycleViewSb recycleViewSb, SeekBar seekBar, TextView textView, TextView textView2, TextView textView3, View view, View view2, View view3, View view4, View view5) {
        this.rootView = constraintLayout;
        this.arcScaleview = arcScaleView;
        this.inPlayerControl = mediaPlayerLayoutBinding;
        this.ivCollection = imageView;
        this.ivDabRadioSwitch = imageView2;
        this.ivListMask = imageView3;
        this.ivRadioScan = imageView4;
        this.ivRadioSwitch = imageView5;
        this.ivRetract = imageView6;
        this.ivScan = imageView7;
        this.ivSoundEffects = imageView8;
        this.llMusicListBar = linearLayout;
        this.rvRadioList = recycleViewSb;
        this.sbMusicListBar = seekBar;
        this.tvRadioList = textView;
        this.tvRadioScaning = textView2;
        this.tvTitle = textView3;
        this.vDabRadioSwitchAm = view;
        this.vDabRadioSwitchDab = view2;
        this.vDabRadioSwitchFm = view3;
        this.vRadioSwitchAm = view4;
        this.vRadioSwitchFm = view5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentRadioPlayerRightBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentRadioPlayerRightBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.fragment_radio_player_right, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentRadioPlayerRightBinding bind(View view) {
        int r1 = C0632R.id.arc_scaleview;
        ArcScaleView arcScaleView = (ArcScaleView) view.findViewById(C0632R.id.arc_scaleview);
        if (arcScaleView != null) {
            r1 = C0632R.id.in_player_control;
            View viewFindViewById = view.findViewById(C0632R.id.in_player_control);
            if (viewFindViewById != null) {
                MediaPlayerLayoutBinding mediaPlayerLayoutBindingBind = MediaPlayerLayoutBinding.bind(viewFindViewById);
                r1 = C0632R.id.iv_collection;
                ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_collection);
                if (imageView != null) {
                    r1 = C0632R.id.iv_dab_radio_switch;
                    ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_dab_radio_switch);
                    if (imageView2 != null) {
                        r1 = C0632R.id.iv_list_mask;
                        ImageView imageView3 = (ImageView) view.findViewById(C0632R.id.iv_list_mask);
                        if (imageView3 != null) {
                            r1 = C0632R.id.iv_radio_scan;
                            ImageView imageView4 = (ImageView) view.findViewById(C0632R.id.iv_radio_scan);
                            if (imageView4 != null) {
                                r1 = C0632R.id.iv_radio_switch;
                                ImageView imageView5 = (ImageView) view.findViewById(C0632R.id.iv_radio_switch);
                                if (imageView5 != null) {
                                    r1 = C0632R.id.iv_retract;
                                    ImageView imageView6 = (ImageView) view.findViewById(C0632R.id.iv_retract);
                                    if (imageView6 != null) {
                                        r1 = C0632R.id.iv_scan;
                                        ImageView imageView7 = (ImageView) view.findViewById(C0632R.id.iv_scan);
                                        if (imageView7 != null) {
                                            r1 = C0632R.id.iv_sound_effects;
                                            ImageView imageView8 = (ImageView) view.findViewById(C0632R.id.iv_sound_effects);
                                            if (imageView8 != null) {
                                                r1 = C0632R.id.ll_music_list_bar;
                                                LinearLayout linearLayout = (LinearLayout) view.findViewById(C0632R.id.ll_music_list_bar);
                                                if (linearLayout != null) {
                                                    r1 = C0632R.id.rv_radio_list;
                                                    RecycleViewSb recycleViewSb = (RecycleViewSb) view.findViewById(C0632R.id.rv_radio_list);
                                                    if (recycleViewSb != null) {
                                                        r1 = C0632R.id.sb_music_list_bar;
                                                        SeekBar seekBar = (SeekBar) view.findViewById(C0632R.id.sb_music_list_bar);
                                                        if (seekBar != null) {
                                                            r1 = C0632R.id.tv_radio_list;
                                                            TextView textView = (TextView) view.findViewById(C0632R.id.tv_radio_list);
                                                            if (textView != null) {
                                                                r1 = C0632R.id.tv_radio_scaning;
                                                                TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_radio_scaning);
                                                                if (textView2 != null) {
                                                                    r1 = C0632R.id.tv_title;
                                                                    TextView textView3 = (TextView) view.findViewById(C0632R.id.tv_title);
                                                                    if (textView3 != null) {
                                                                        r1 = C0632R.id.v_dab_radio_switch_am;
                                                                        View viewFindViewById2 = view.findViewById(C0632R.id.v_dab_radio_switch_am);
                                                                        if (viewFindViewById2 != null) {
                                                                            r1 = C0632R.id.v_dab_radio_switch_dab;
                                                                            View viewFindViewById3 = view.findViewById(C0632R.id.v_dab_radio_switch_dab);
                                                                            if (viewFindViewById3 != null) {
                                                                                r1 = C0632R.id.v_dab_radio_switch_fm;
                                                                                View viewFindViewById4 = view.findViewById(C0632R.id.v_dab_radio_switch_fm);
                                                                                if (viewFindViewById4 != null) {
                                                                                    r1 = C0632R.id.v_radio_switch_am;
                                                                                    View viewFindViewById5 = view.findViewById(C0632R.id.v_radio_switch_am);
                                                                                    if (viewFindViewById5 != null) {
                                                                                        r1 = C0632R.id.v_radio_switch_fm;
                                                                                        View viewFindViewById6 = view.findViewById(C0632R.id.v_radio_switch_fm);
                                                                                        if (viewFindViewById6 != null) {
                                                                                            return new FragmentRadioPlayerRightBinding((ConstraintLayout) view, arcScaleView, mediaPlayerLayoutBindingBind, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, linearLayout, recycleViewSb, seekBar, textView, textView2, textView3, viewFindViewById2, viewFindViewById3, viewFindViewById4, viewFindViewById5, viewFindViewById6);
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
