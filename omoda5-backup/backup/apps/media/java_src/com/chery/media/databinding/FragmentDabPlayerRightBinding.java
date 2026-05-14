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
public final class FragmentDabPlayerRightBinding implements ViewBinding {
    public final MediaPlayerLayoutBinding inPlayerControl;
    public final ImageView ivCollection;
    public final ImageView ivDabScan;
    public final ImageView ivEpg;
    public final ImageView ivLabelClose;
    public final ImageView ivLabelLongBg;
    public final ImageView ivLabelOpen;
    public final ImageView ivListBtn;
    public final ImageView ivListMask;
    public final ImageView ivRadioSwitch;
    public final ImageView ivRetract;
    public final ImageView ivSetting;
    public final ImageView ivSoundEffects;
    public final ImageView ivTa;
    public final LinearLayout llDabListBar;
    private final ConstraintLayout rootView;
    public final RecycleViewSb rvDabList;
    public final SeekBar sbDabListBar;
    public final MarqueeTextView tvChannelName;
    public final TextView tvDabEmptyList;
    public final TextView tvDabList;
    public final TextView tvDabScaning;
    public final TextView tvLabelLong;
    public final TextView tvLabelShort;
    public final MarqueeTextView tvProgramName;
    public final View vDabSwitchAm;
    public final View vDabSwitchDab;
    public final View vDabSwitchFm;

    private FragmentDabPlayerRightBinding(ConstraintLayout constraintLayout, MediaPlayerLayoutBinding mediaPlayerLayoutBinding, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7, ImageView imageView8, ImageView imageView9, ImageView imageView10, ImageView imageView11, ImageView imageView12, ImageView imageView13, LinearLayout linearLayout, RecycleViewSb recycleViewSb, SeekBar seekBar, MarqueeTextView marqueeTextView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, MarqueeTextView marqueeTextView2, View view, View view2, View view3) {
        this.rootView = constraintLayout;
        this.inPlayerControl = mediaPlayerLayoutBinding;
        this.ivCollection = imageView;
        this.ivDabScan = imageView2;
        this.ivEpg = imageView3;
        this.ivLabelClose = imageView4;
        this.ivLabelLongBg = imageView5;
        this.ivLabelOpen = imageView6;
        this.ivListBtn = imageView7;
        this.ivListMask = imageView8;
        this.ivRadioSwitch = imageView9;
        this.ivRetract = imageView10;
        this.ivSetting = imageView11;
        this.ivSoundEffects = imageView12;
        this.ivTa = imageView13;
        this.llDabListBar = linearLayout;
        this.rvDabList = recycleViewSb;
        this.sbDabListBar = seekBar;
        this.tvChannelName = marqueeTextView;
        this.tvDabEmptyList = textView;
        this.tvDabList = textView2;
        this.tvDabScaning = textView3;
        this.tvLabelLong = textView4;
        this.tvLabelShort = textView5;
        this.tvProgramName = marqueeTextView2;
        this.vDabSwitchAm = view;
        this.vDabSwitchDab = view2;
        this.vDabSwitchFm = view3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentDabPlayerRightBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentDabPlayerRightBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.fragment_dab_player_right, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentDabPlayerRightBinding bind(View view) {
        int r1 = C0632R.id.in_player_control;
        View viewFindViewById = view.findViewById(C0632R.id.in_player_control);
        if (viewFindViewById != null) {
            MediaPlayerLayoutBinding mediaPlayerLayoutBindingBind = MediaPlayerLayoutBinding.bind(viewFindViewById);
            r1 = C0632R.id.iv_collection;
            ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_collection);
            if (imageView != null) {
                r1 = C0632R.id.iv_dab_scan;
                ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_dab_scan);
                if (imageView2 != null) {
                    r1 = C0632R.id.iv_epg;
                    ImageView imageView3 = (ImageView) view.findViewById(C0632R.id.iv_epg);
                    if (imageView3 != null) {
                        r1 = C0632R.id.iv_label_close;
                        ImageView imageView4 = (ImageView) view.findViewById(C0632R.id.iv_label_close);
                        if (imageView4 != null) {
                            r1 = C0632R.id.iv_label_long_bg;
                            ImageView imageView5 = (ImageView) view.findViewById(C0632R.id.iv_label_long_bg);
                            if (imageView5 != null) {
                                r1 = C0632R.id.iv_label_open;
                                ImageView imageView6 = (ImageView) view.findViewById(C0632R.id.iv_label_open);
                                if (imageView6 != null) {
                                    r1 = C0632R.id.iv_list_btn;
                                    ImageView imageView7 = (ImageView) view.findViewById(C0632R.id.iv_list_btn);
                                    if (imageView7 != null) {
                                        r1 = C0632R.id.iv_list_mask;
                                        ImageView imageView8 = (ImageView) view.findViewById(C0632R.id.iv_list_mask);
                                        if (imageView8 != null) {
                                            r1 = C0632R.id.iv_radio_switch;
                                            ImageView imageView9 = (ImageView) view.findViewById(C0632R.id.iv_radio_switch);
                                            if (imageView9 != null) {
                                                r1 = C0632R.id.iv_retract;
                                                ImageView imageView10 = (ImageView) view.findViewById(C0632R.id.iv_retract);
                                                if (imageView10 != null) {
                                                    r1 = C0632R.id.iv_setting;
                                                    ImageView imageView11 = (ImageView) view.findViewById(C0632R.id.iv_setting);
                                                    if (imageView11 != null) {
                                                        r1 = C0632R.id.iv_sound_effects;
                                                        ImageView imageView12 = (ImageView) view.findViewById(C0632R.id.iv_sound_effects);
                                                        if (imageView12 != null) {
                                                            r1 = C0632R.id.iv_ta;
                                                            ImageView imageView13 = (ImageView) view.findViewById(C0632R.id.iv_ta);
                                                            if (imageView13 != null) {
                                                                r1 = C0632R.id.ll_dab_list_bar;
                                                                LinearLayout linearLayout = (LinearLayout) view.findViewById(C0632R.id.ll_dab_list_bar);
                                                                if (linearLayout != null) {
                                                                    r1 = C0632R.id.rv_dab_list;
                                                                    RecycleViewSb recycleViewSb = (RecycleViewSb) view.findViewById(C0632R.id.rv_dab_list);
                                                                    if (recycleViewSb != null) {
                                                                        r1 = C0632R.id.sb_dab_list_bar;
                                                                        SeekBar seekBar = (SeekBar) view.findViewById(C0632R.id.sb_dab_list_bar);
                                                                        if (seekBar != null) {
                                                                            r1 = C0632R.id.tv_channel_name;
                                                                            MarqueeTextView marqueeTextView = (MarqueeTextView) view.findViewById(C0632R.id.tv_channel_name);
                                                                            if (marqueeTextView != null) {
                                                                                r1 = C0632R.id.tv_dab_empty_list;
                                                                                TextView textView = (TextView) view.findViewById(C0632R.id.tv_dab_empty_list);
                                                                                if (textView != null) {
                                                                                    r1 = C0632R.id.tv_dab_list;
                                                                                    TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_dab_list);
                                                                                    if (textView2 != null) {
                                                                                        r1 = C0632R.id.tv_dab_scaning;
                                                                                        TextView textView3 = (TextView) view.findViewById(C0632R.id.tv_dab_scaning);
                                                                                        if (textView3 != null) {
                                                                                            r1 = C0632R.id.tv_label_long;
                                                                                            TextView textView4 = (TextView) view.findViewById(C0632R.id.tv_label_long);
                                                                                            if (textView4 != null) {
                                                                                                r1 = C0632R.id.tv_label_short;
                                                                                                TextView textView5 = (TextView) view.findViewById(C0632R.id.tv_label_short);
                                                                                                if (textView5 != null) {
                                                                                                    r1 = C0632R.id.tv_program_name;
                                                                                                    MarqueeTextView marqueeTextView2 = (MarqueeTextView) view.findViewById(C0632R.id.tv_program_name);
                                                                                                    if (marqueeTextView2 != null) {
                                                                                                        r1 = C0632R.id.v_dab_switch_am;
                                                                                                        View viewFindViewById2 = view.findViewById(C0632R.id.v_dab_switch_am);
                                                                                                        if (viewFindViewById2 != null) {
                                                                                                            r1 = C0632R.id.v_dab_switch_dab;
                                                                                                            View viewFindViewById3 = view.findViewById(C0632R.id.v_dab_switch_dab);
                                                                                                            if (viewFindViewById3 != null) {
                                                                                                                r1 = C0632R.id.v_dab_switch_fm;
                                                                                                                View viewFindViewById4 = view.findViewById(C0632R.id.v_dab_switch_fm);
                                                                                                                if (viewFindViewById4 != null) {
                                                                                                                    return new FragmentDabPlayerRightBinding((ConstraintLayout) view, mediaPlayerLayoutBindingBind, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, imageView10, imageView11, imageView12, imageView13, linearLayout, recycleViewSb, seekBar, marqueeTextView, textView, textView2, textView3, textView4, textView5, marqueeTextView2, viewFindViewById2, viewFindViewById3, viewFindViewById4);
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
