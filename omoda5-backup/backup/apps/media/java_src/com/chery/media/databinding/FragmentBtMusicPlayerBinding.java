package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;

/* loaded from: classes.dex */
public final class FragmentBtMusicPlayerBinding implements ViewBinding {
    public final MediaPlayerLayoutBinding inPlayerControl;
    public final MediaPlayerTimeBarLayoutBinding inPlayerTimeBar;
    public final ImageButton ivDeviceNameBg;
    public final ImageView ivMediaBigIconBtConnected;
    public final ImageView ivRetract;
    public final ImageView ivSoundEffects;
    private final ConstraintLayout rootView;
    public final TextView tvDeviceName;
    public final TextView tvMusicArtist;
    public final TextView tvMusicTitle;

    private FragmentBtMusicPlayerBinding(ConstraintLayout constraintLayout, MediaPlayerLayoutBinding mediaPlayerLayoutBinding, MediaPlayerTimeBarLayoutBinding mediaPlayerTimeBarLayoutBinding, ImageButton imageButton, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.inPlayerControl = mediaPlayerLayoutBinding;
        this.inPlayerTimeBar = mediaPlayerTimeBarLayoutBinding;
        this.ivDeviceNameBg = imageButton;
        this.ivMediaBigIconBtConnected = imageView;
        this.ivRetract = imageView2;
        this.ivSoundEffects = imageView3;
        this.tvDeviceName = textView;
        this.tvMusicArtist = textView2;
        this.tvMusicTitle = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentBtMusicPlayerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentBtMusicPlayerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.fragment_bt_music_player, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentBtMusicPlayerBinding bind(View view) {
        int r0 = C0632R.id.in_player_control;
        View viewFindViewById = view.findViewById(C0632R.id.in_player_control);
        if (viewFindViewById != null) {
            MediaPlayerLayoutBinding mediaPlayerLayoutBindingBind = MediaPlayerLayoutBinding.bind(viewFindViewById);
            r0 = C0632R.id.in_player_time_bar;
            View viewFindViewById2 = view.findViewById(C0632R.id.in_player_time_bar);
            if (viewFindViewById2 != null) {
                MediaPlayerTimeBarLayoutBinding mediaPlayerTimeBarLayoutBindingBind = MediaPlayerTimeBarLayoutBinding.bind(viewFindViewById2);
                r0 = C0632R.id.iv_device_name_bg;
                ImageButton imageButton = (ImageButton) view.findViewById(C0632R.id.iv_device_name_bg);
                if (imageButton != null) {
                    r0 = C0632R.id.iv_media_big_icon_bt_connected;
                    ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_media_big_icon_bt_connected);
                    if (imageView != null) {
                        r0 = C0632R.id.iv_retract;
                        ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_retract);
                        if (imageView2 != null) {
                            r0 = C0632R.id.iv_sound_effects;
                            ImageView imageView3 = (ImageView) view.findViewById(C0632R.id.iv_sound_effects);
                            if (imageView3 != null) {
                                r0 = C0632R.id.tv_device_name;
                                TextView textView = (TextView) view.findViewById(C0632R.id.tv_device_name);
                                if (textView != null) {
                                    r0 = C0632R.id.tv_music_artist;
                                    TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_music_artist);
                                    if (textView2 != null) {
                                        r0 = C0632R.id.tv_music_title;
                                        TextView textView3 = (TextView) view.findViewById(C0632R.id.tv_music_title);
                                        if (textView3 != null) {
                                            return new FragmentBtMusicPlayerBinding((ConstraintLayout) view, mediaPlayerLayoutBindingBind, mediaPlayerTimeBarLayoutBindingBind, imageButton, imageView, imageView2, imageView3, textView, textView2, textView3);
                                        }
                                    }
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
