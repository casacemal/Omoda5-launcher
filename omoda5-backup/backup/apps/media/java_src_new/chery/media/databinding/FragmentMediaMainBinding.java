package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.MarqueeTextView;
import com.chery.media.view.component.PlayIconAnim;

/* loaded from: classes.dex */
public final class FragmentMediaMainBinding implements ViewBinding {
    public final PlayIconAnim anBtMusicPlayIcon;
    public final PlayIconAnim anLocalMusicPlayIcon;
    public final PlayIconAnim anRadioPlayIcon;
    public final PlayIconAnim anUsb1MusicPlayIcon;
    public final ImageView ivBtMusic;
    public final ImageView ivBtMusicPlaypause;
    public final ImageView ivLocalMusic;
    public final ImageView ivRadio;
    public final ImageView ivRadioPlaypause;
    public final ImageView ivUsb1Music;
    public final View localMusicTitleVerticalCenter;
    private final ConstraintLayout rootView;
    public final TextView tvBtConnect;
    public final TextView tvBtDeviceName;
    public final MarqueeTextView tvBtMusicTitle;
    public final TextView tvLocalMusicCount;
    public final TextView tvLocalMusicCountSuffix;
    public final TextView tvLocalMusicTitle;
    public final TextView tvUsb1MusicCount;
    public final TextView tvUsb1MusicCountSuffix;
    public final TextView tvUsb1MusicTitle;
    public final View usb1MusicTitleVerticalCenter;

    private FragmentMediaMainBinding(ConstraintLayout constraintLayout, PlayIconAnim playIconAnim, PlayIconAnim playIconAnim2, PlayIconAnim playIconAnim3, PlayIconAnim playIconAnim4, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, View view, TextView textView, TextView textView2, MarqueeTextView marqueeTextView, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, View view2) {
        this.rootView = constraintLayout;
        this.anBtMusicPlayIcon = playIconAnim;
        this.anLocalMusicPlayIcon = playIconAnim2;
        this.anRadioPlayIcon = playIconAnim3;
        this.anUsb1MusicPlayIcon = playIconAnim4;
        this.ivBtMusic = imageView;
        this.ivBtMusicPlaypause = imageView2;
        this.ivLocalMusic = imageView3;
        this.ivRadio = imageView4;
        this.ivRadioPlaypause = imageView5;
        this.ivUsb1Music = imageView6;
        this.localMusicTitleVerticalCenter = view;
        this.tvBtConnect = textView;
        this.tvBtDeviceName = textView2;
        this.tvBtMusicTitle = marqueeTextView;
        this.tvLocalMusicCount = textView3;
        this.tvLocalMusicCountSuffix = textView4;
        this.tvLocalMusicTitle = textView5;
        this.tvUsb1MusicCount = textView6;
        this.tvUsb1MusicCountSuffix = textView7;
        this.tvUsb1MusicTitle = textView8;
        this.usb1MusicTitleVerticalCenter = view2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentMediaMainBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentMediaMainBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.fragment_media_main, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentMediaMainBinding bind(View view) {
        int r1 = C0632R.id.an_bt_music_play_icon;
        PlayIconAnim playIconAnim = (PlayIconAnim) view.findViewById(C0632R.id.an_bt_music_play_icon);
        if (playIconAnim != null) {
            r1 = C0632R.id.an_local_music_play_icon;
            PlayIconAnim playIconAnim2 = (PlayIconAnim) view.findViewById(C0632R.id.an_local_music_play_icon);
            if (playIconAnim2 != null) {
                r1 = C0632R.id.an_radio_play_icon;
                PlayIconAnim playIconAnim3 = (PlayIconAnim) view.findViewById(C0632R.id.an_radio_play_icon);
                if (playIconAnim3 != null) {
                    r1 = C0632R.id.an_usb1_music_play_icon;
                    PlayIconAnim playIconAnim4 = (PlayIconAnim) view.findViewById(C0632R.id.an_usb1_music_play_icon);
                    if (playIconAnim4 != null) {
                        r1 = C0632R.id.iv_bt_music;
                        ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_bt_music);
                        if (imageView != null) {
                            r1 = C0632R.id.iv_bt_music_playpause;
                            ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_bt_music_playpause);
                            if (imageView2 != null) {
                                r1 = C0632R.id.iv_local_music;
                                ImageView imageView3 = (ImageView) view.findViewById(C0632R.id.iv_local_music);
                                if (imageView3 != null) {
                                    r1 = C0632R.id.iv_radio;
                                    ImageView imageView4 = (ImageView) view.findViewById(C0632R.id.iv_radio);
                                    if (imageView4 != null) {
                                        r1 = C0632R.id.iv_radio_playpause;
                                        ImageView imageView5 = (ImageView) view.findViewById(C0632R.id.iv_radio_playpause);
                                        if (imageView5 != null) {
                                            r1 = C0632R.id.iv_usb1_music;
                                            ImageView imageView6 = (ImageView) view.findViewById(C0632R.id.iv_usb1_music);
                                            if (imageView6 != null) {
                                                r1 = C0632R.id.local_music_title_vertical_center;
                                                View viewFindViewById = view.findViewById(C0632R.id.local_music_title_vertical_center);
                                                if (viewFindViewById != null) {
                                                    r1 = C0632R.id.tv_bt_connect;
                                                    TextView textView = (TextView) view.findViewById(C0632R.id.tv_bt_connect);
                                                    if (textView != null) {
                                                        r1 = C0632R.id.tv_bt_device_name;
                                                        TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_bt_device_name);
                                                        if (textView2 != null) {
                                                            r1 = C0632R.id.tv_bt_music_title;
                                                            MarqueeTextView marqueeTextView = (MarqueeTextView) view.findViewById(C0632R.id.tv_bt_music_title);
                                                            if (marqueeTextView != null) {
                                                                r1 = C0632R.id.tv_local_music_count;
                                                                TextView textView3 = (TextView) view.findViewById(C0632R.id.tv_local_music_count);
                                                                if (textView3 != null) {
                                                                    r1 = C0632R.id.tv_local_music_count_suffix;
                                                                    TextView textView4 = (TextView) view.findViewById(C0632R.id.tv_local_music_count_suffix);
                                                                    if (textView4 != null) {
                                                                        r1 = C0632R.id.tv_local_music_title;
                                                                        TextView textView5 = (TextView) view.findViewById(C0632R.id.tv_local_music_title);
                                                                        if (textView5 != null) {
                                                                            r1 = C0632R.id.tv_usb1_music_count;
                                                                            TextView textView6 = (TextView) view.findViewById(C0632R.id.tv_usb1_music_count);
                                                                            if (textView6 != null) {
                                                                                r1 = C0632R.id.tv_usb1_music_count_suffix;
                                                                                TextView textView7 = (TextView) view.findViewById(C0632R.id.tv_usb1_music_count_suffix);
                                                                                if (textView7 != null) {
                                                                                    r1 = C0632R.id.tv_usb1_music_title;
                                                                                    TextView textView8 = (TextView) view.findViewById(C0632R.id.tv_usb1_music_title);
                                                                                    if (textView8 != null) {
                                                                                        r1 = C0632R.id.usb1_music_title_vertical_center;
                                                                                        View viewFindViewById2 = view.findViewById(C0632R.id.usb1_music_title_vertical_center);
                                                                                        if (viewFindViewById2 != null) {
                                                                                            return new FragmentMediaMainBinding((ConstraintLayout) view, playIconAnim, playIconAnim2, playIconAnim3, playIconAnim4, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, viewFindViewById, textView, textView2, marqueeTextView, textView3, textView4, textView5, textView6, textView7, textView8, viewFindViewById2);
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
