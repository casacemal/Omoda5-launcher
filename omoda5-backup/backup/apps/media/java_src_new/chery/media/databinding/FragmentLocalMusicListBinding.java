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
import com.chery.media.view.component.RecycleViewSb;

/* loaded from: classes.dex */
public final class FragmentLocalMusicListBinding implements ViewBinding {
    public final ImageView ivBack;
    public final ImageView ivBigIcon;
    public final ImageView ivEdit;
    public final ImageView ivListMask;
    public final ImageView ivTabInterval;
    public final LinearLayout llMusicListBar;
    private final ConstraintLayout rootView;
    public final RecycleViewSb rvMusicList;
    public final SeekBar sbMusicListBar;
    public final TextView tvEditAll;
    public final TextView tvEditCancel;
    public final TextView tvEditDelete;
    public final TextView tvLocalMusicLabel;
    public final TextView tvMusicCount;
    public final TextView tvTitle;

    private FragmentLocalMusicListBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, LinearLayout linearLayout, RecycleViewSb recycleViewSb, SeekBar seekBar, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = constraintLayout;
        this.ivBack = imageView;
        this.ivBigIcon = imageView2;
        this.ivEdit = imageView3;
        this.ivListMask = imageView4;
        this.ivTabInterval = imageView5;
        this.llMusicListBar = linearLayout;
        this.rvMusicList = recycleViewSb;
        this.sbMusicListBar = seekBar;
        this.tvEditAll = textView;
        this.tvEditCancel = textView2;
        this.tvEditDelete = textView3;
        this.tvLocalMusicLabel = textView4;
        this.tvMusicCount = textView5;
        this.tvTitle = textView6;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentLocalMusicListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentLocalMusicListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.fragment_local_music_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentLocalMusicListBinding bind(View view) {
        int r1 = C0632R.id.iv_back;
        ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_back);
        if (imageView != null) {
            r1 = C0632R.id.iv_big_icon;
            ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_big_icon);
            if (imageView2 != null) {
                r1 = C0632R.id.iv_edit;
                ImageView imageView3 = (ImageView) view.findViewById(C0632R.id.iv_edit);
                if (imageView3 != null) {
                    r1 = C0632R.id.iv_list_mask;
                    ImageView imageView4 = (ImageView) view.findViewById(C0632R.id.iv_list_mask);
                    if (imageView4 != null) {
                        r1 = C0632R.id.iv_tab_interval;
                        ImageView imageView5 = (ImageView) view.findViewById(C0632R.id.iv_tab_interval);
                        if (imageView5 != null) {
                            r1 = C0632R.id.ll_music_list_bar;
                            LinearLayout linearLayout = (LinearLayout) view.findViewById(C0632R.id.ll_music_list_bar);
                            if (linearLayout != null) {
                                r1 = C0632R.id.rv_music_list;
                                RecycleViewSb recycleViewSb = (RecycleViewSb) view.findViewById(C0632R.id.rv_music_list);
                                if (recycleViewSb != null) {
                                    r1 = C0632R.id.sb_music_list_bar;
                                    SeekBar seekBar = (SeekBar) view.findViewById(C0632R.id.sb_music_list_bar);
                                    if (seekBar != null) {
                                        r1 = C0632R.id.tv_edit_all;
                                        TextView textView = (TextView) view.findViewById(C0632R.id.tv_edit_all);
                                        if (textView != null) {
                                            r1 = C0632R.id.tv_edit_cancel;
                                            TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_edit_cancel);
                                            if (textView2 != null) {
                                                r1 = C0632R.id.tv_edit_delete;
                                                TextView textView3 = (TextView) view.findViewById(C0632R.id.tv_edit_delete);
                                                if (textView3 != null) {
                                                    r1 = C0632R.id.tv_local_music_label;
                                                    TextView textView4 = (TextView) view.findViewById(C0632R.id.tv_local_music_label);
                                                    if (textView4 != null) {
                                                        r1 = C0632R.id.tv_music_count;
                                                        TextView textView5 = (TextView) view.findViewById(C0632R.id.tv_music_count);
                                                        if (textView5 != null) {
                                                            r1 = C0632R.id.tv_title;
                                                            TextView textView6 = (TextView) view.findViewById(C0632R.id.tv_title);
                                                            if (textView6 != null) {
                                                                return new FragmentLocalMusicListBinding((ConstraintLayout) view, imageView, imageView2, imageView3, imageView4, imageView5, linearLayout, recycleViewSb, seekBar, textView, textView2, textView3, textView4, textView5, textView6);
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
