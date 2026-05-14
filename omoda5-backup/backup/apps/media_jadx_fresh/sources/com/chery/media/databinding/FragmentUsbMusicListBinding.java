package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.RecycleViewSb;

/* loaded from: classes.dex */
public final class FragmentUsbMusicListBinding implements ViewBinding {
    public final ImageView ivBack;
    public final ImageView ivListMask;
    public final ImageView ivTabInterval;
    public final LinearLayout llMusicListBar;
    public final RelativeLayout rlList;
    private final ConstraintLayout rootView;
    public final RecycleViewSb rvFolderList;
    public final RecycleViewSb rvMusicList;
    public final SeekBar sbMusicListBar;
    public final TextView tvBigIconTitle;
    public final TextView tvMusicCount;
    public final TextView tvTabFolders;
    public final TextView tvTabSongs;
    public final TextView tvTitle;

    private FragmentUsbMusicListBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, LinearLayout linearLayout, RelativeLayout relativeLayout, RecycleViewSb recycleViewSb, RecycleViewSb recycleViewSb2, SeekBar seekBar, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.ivBack = imageView;
        this.ivListMask = imageView2;
        this.ivTabInterval = imageView3;
        this.llMusicListBar = linearLayout;
        this.rlList = relativeLayout;
        this.rvFolderList = recycleViewSb;
        this.rvMusicList = recycleViewSb2;
        this.sbMusicListBar = seekBar;
        this.tvBigIconTitle = textView;
        this.tvMusicCount = textView2;
        this.tvTabFolders = textView3;
        this.tvTabSongs = textView4;
        this.tvTitle = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentUsbMusicListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentUsbMusicListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.fragment_usb_music_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentUsbMusicListBinding bind(View view) {
        int r1 = C0632R.id.iv_back;
        ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_back);
        if (imageView != null) {
            r1 = C0632R.id.iv_list_mask;
            ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_list_mask);
            if (imageView2 != null) {
                r1 = C0632R.id.iv_tab_interval;
                ImageView imageView3 = (ImageView) view.findViewById(C0632R.id.iv_tab_interval);
                if (imageView3 != null) {
                    r1 = C0632R.id.ll_music_list_bar;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(C0632R.id.ll_music_list_bar);
                    if (linearLayout != null) {
                        r1 = C0632R.id.rl_list;
                        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(C0632R.id.rl_list);
                        if (relativeLayout != null) {
                            r1 = C0632R.id.rv_folder_list;
                            RecycleViewSb recycleViewSb = (RecycleViewSb) view.findViewById(C0632R.id.rv_folder_list);
                            if (recycleViewSb != null) {
                                r1 = C0632R.id.rv_music_list;
                                RecycleViewSb recycleViewSb2 = (RecycleViewSb) view.findViewById(C0632R.id.rv_music_list);
                                if (recycleViewSb2 != null) {
                                    r1 = C0632R.id.sb_music_list_bar;
                                    SeekBar seekBar = (SeekBar) view.findViewById(C0632R.id.sb_music_list_bar);
                                    if (seekBar != null) {
                                        r1 = C0632R.id.tv_big_icon_title;
                                        TextView textView = (TextView) view.findViewById(C0632R.id.tv_big_icon_title);
                                        if (textView != null) {
                                            r1 = C0632R.id.tv_music_count;
                                            TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_music_count);
                                            if (textView2 != null) {
                                                r1 = C0632R.id.tv_tab_folders;
                                                TextView textView3 = (TextView) view.findViewById(C0632R.id.tv_tab_folders);
                                                if (textView3 != null) {
                                                    r1 = C0632R.id.tv_tab_songs;
                                                    TextView textView4 = (TextView) view.findViewById(C0632R.id.tv_tab_songs);
                                                    if (textView4 != null) {
                                                        r1 = C0632R.id.tv_title;
                                                        TextView textView5 = (TextView) view.findViewById(C0632R.id.tv_title);
                                                        if (textView5 != null) {
                                                            return new FragmentUsbMusicListBinding((ConstraintLayout) view, imageView, imageView2, imageView3, linearLayout, relativeLayout, recycleViewSb, recycleViewSb2, seekBar, textView, textView2, textView3, textView4, textView5);
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
