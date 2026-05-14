package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;

/* loaded from: classes.dex */
public final class DialogUsbConnectLayoutBinding implements ViewBinding {
    public final ImageView ivBg;
    public final ImageView ivClose;
    public final ImageView ivGotoMusic;
    public final ImageView ivGotoPic;
    public final ImageView ivGotoVideo;
    public final ImageView ivMusicIcon;
    public final ImageView ivPicIcon;
    public final ImageView ivVideoIcon;
    private final ConstraintLayout rootView;
    public final TextView tvMusicInfo;
    public final TextView tvPicInfo;
    public final TextView tvTitle1;
    public final TextView tvTitle2;
    public final TextView tvVideoInfo;

    private DialogUsbConnectLayoutBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7, ImageView imageView8, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.ivBg = imageView;
        this.ivClose = imageView2;
        this.ivGotoMusic = imageView3;
        this.ivGotoPic = imageView4;
        this.ivGotoVideo = imageView5;
        this.ivMusicIcon = imageView6;
        this.ivPicIcon = imageView7;
        this.ivVideoIcon = imageView8;
        this.tvMusicInfo = textView;
        this.tvPicInfo = textView2;
        this.tvTitle1 = textView3;
        this.tvTitle2 = textView4;
        this.tvVideoInfo = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogUsbConnectLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogUsbConnectLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.dialog_usb_connect_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogUsbConnectLayoutBinding bind(View view) {
        int r1 = C0632R.id.iv_bg;
        ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_bg);
        if (imageView != null) {
            r1 = C0632R.id.iv_close;
            ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_close);
            if (imageView2 != null) {
                r1 = C0632R.id.iv_goto_music;
                ImageView imageView3 = (ImageView) view.findViewById(C0632R.id.iv_goto_music);
                if (imageView3 != null) {
                    r1 = C0632R.id.iv_goto_pic;
                    ImageView imageView4 = (ImageView) view.findViewById(C0632R.id.iv_goto_pic);
                    if (imageView4 != null) {
                        r1 = C0632R.id.iv_goto_video;
                        ImageView imageView5 = (ImageView) view.findViewById(C0632R.id.iv_goto_video);
                        if (imageView5 != null) {
                            r1 = C0632R.id.iv_music_icon;
                            ImageView imageView6 = (ImageView) view.findViewById(C0632R.id.iv_music_icon);
                            if (imageView6 != null) {
                                r1 = C0632R.id.iv_pic_icon;
                                ImageView imageView7 = (ImageView) view.findViewById(C0632R.id.iv_pic_icon);
                                if (imageView7 != null) {
                                    r1 = C0632R.id.iv_video_icon;
                                    ImageView imageView8 = (ImageView) view.findViewById(C0632R.id.iv_video_icon);
                                    if (imageView8 != null) {
                                        r1 = C0632R.id.tv_music_info;
                                        TextView textView = (TextView) view.findViewById(C0632R.id.tv_music_info);
                                        if (textView != null) {
                                            r1 = C0632R.id.tv_pic_info;
                                            TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_pic_info);
                                            if (textView2 != null) {
                                                r1 = C0632R.id.tv_title1;
                                                TextView textView3 = (TextView) view.findViewById(C0632R.id.tv_title1);
                                                if (textView3 != null) {
                                                    r1 = C0632R.id.tv_title2;
                                                    TextView textView4 = (TextView) view.findViewById(C0632R.id.tv_title2);
                                                    if (textView4 != null) {
                                                        r1 = C0632R.id.tv_video_info;
                                                        TextView textView5 = (TextView) view.findViewById(C0632R.id.tv_video_info);
                                                        if (textView5 != null) {
                                                            return new DialogUsbConnectLayoutBinding((ConstraintLayout) view, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, textView, textView2, textView3, textView4, textView5);
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
