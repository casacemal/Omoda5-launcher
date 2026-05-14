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
public final class FragmentVideoMainRightBinding implements ViewBinding {
    public final ConstraintLayout clFolderListBack;
    public final ConstraintLayout clUsbState;
    public final ConstraintLayout clUsbTabs;
    public final ConstraintLayout clVideoContent;
    public final ImageView ivBack;
    public final ImageView ivListMask;
    public final ImageView ivUsbState;
    public final LinearLayout llListBar;
    public final RelativeLayout rlList;
    private final ConstraintLayout rootView;
    public final RecycleViewSb rvFolderList;
    public final RecycleViewSb rvVideoList;
    public final SeekBar sbListBar;
    public final ImageView titleLine;
    public final TextView tvAllVideos;
    public final TextView tvFolderName;
    public final TextView tvFolders;
    public final TextView tvTabUsb1;
    public final TextView tvUsbState;

    private FragmentVideoMainRightBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ConstraintLayout constraintLayout3, ConstraintLayout constraintLayout4, ConstraintLayout constraintLayout5, ImageView imageView, ImageView imageView2, ImageView imageView3, LinearLayout linearLayout, RelativeLayout relativeLayout, RecycleViewSb recycleViewSb, RecycleViewSb recycleViewSb2, SeekBar seekBar, ImageView imageView4, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.clFolderListBack = constraintLayout2;
        this.clUsbState = constraintLayout3;
        this.clUsbTabs = constraintLayout4;
        this.clVideoContent = constraintLayout5;
        this.ivBack = imageView;
        this.ivListMask = imageView2;
        this.ivUsbState = imageView3;
        this.llListBar = linearLayout;
        this.rlList = relativeLayout;
        this.rvFolderList = recycleViewSb;
        this.rvVideoList = recycleViewSb2;
        this.sbListBar = seekBar;
        this.titleLine = imageView4;
        this.tvAllVideos = textView;
        this.tvFolderName = textView2;
        this.tvFolders = textView3;
        this.tvTabUsb1 = textView4;
        this.tvUsbState = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentVideoMainRightBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentVideoMainRightBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.fragment_video_main_right, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentVideoMainRightBinding bind(View view) {
        int r1 = C0632R.id.cl_folder_list_back;
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(C0632R.id.cl_folder_list_back);
        if (constraintLayout != null) {
            r1 = C0632R.id.cl_usb_state;
            ConstraintLayout constraintLayout2 = (ConstraintLayout) view.findViewById(C0632R.id.cl_usb_state);
            if (constraintLayout2 != null) {
                r1 = C0632R.id.cl_usb_tabs;
                ConstraintLayout constraintLayout3 = (ConstraintLayout) view.findViewById(C0632R.id.cl_usb_tabs);
                if (constraintLayout3 != null) {
                    r1 = C0632R.id.cl_video_content;
                    ConstraintLayout constraintLayout4 = (ConstraintLayout) view.findViewById(C0632R.id.cl_video_content);
                    if (constraintLayout4 != null) {
                        r1 = C0632R.id.iv_back;
                        ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_back);
                        if (imageView != null) {
                            r1 = C0632R.id.iv_list_mask;
                            ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_list_mask);
                            if (imageView2 != null) {
                                r1 = C0632R.id.iv_usb_state;
                                ImageView imageView3 = (ImageView) view.findViewById(C0632R.id.iv_usb_state);
                                if (imageView3 != null) {
                                    r1 = C0632R.id.ll_list_bar;
                                    LinearLayout linearLayout = (LinearLayout) view.findViewById(C0632R.id.ll_list_bar);
                                    if (linearLayout != null) {
                                        r1 = C0632R.id.rl_list;
                                        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(C0632R.id.rl_list);
                                        if (relativeLayout != null) {
                                            r1 = C0632R.id.rv_folder_list;
                                            RecycleViewSb recycleViewSb = (RecycleViewSb) view.findViewById(C0632R.id.rv_folder_list);
                                            if (recycleViewSb != null) {
                                                r1 = C0632R.id.rv_video_list;
                                                RecycleViewSb recycleViewSb2 = (RecycleViewSb) view.findViewById(C0632R.id.rv_video_list);
                                                if (recycleViewSb2 != null) {
                                                    r1 = C0632R.id.sb_list_bar;
                                                    SeekBar seekBar = (SeekBar) view.findViewById(C0632R.id.sb_list_bar);
                                                    if (seekBar != null) {
                                                        r1 = C0632R.id.title_line;
                                                        ImageView imageView4 = (ImageView) view.findViewById(C0632R.id.title_line);
                                                        if (imageView4 != null) {
                                                            r1 = C0632R.id.tv_all_videos;
                                                            TextView textView = (TextView) view.findViewById(C0632R.id.tv_all_videos);
                                                            if (textView != null) {
                                                                r1 = C0632R.id.tv_folder_name;
                                                                TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_folder_name);
                                                                if (textView2 != null) {
                                                                    r1 = C0632R.id.tv_folders;
                                                                    TextView textView3 = (TextView) view.findViewById(C0632R.id.tv_folders);
                                                                    if (textView3 != null) {
                                                                        r1 = C0632R.id.tv_tab_usb1;
                                                                        TextView textView4 = (TextView) view.findViewById(C0632R.id.tv_tab_usb1);
                                                                        if (textView4 != null) {
                                                                            r1 = C0632R.id.tv_usb_state;
                                                                            TextView textView5 = (TextView) view.findViewById(C0632R.id.tv_usb_state);
                                                                            if (textView5 != null) {
                                                                                return new FragmentVideoMainRightBinding((ConstraintLayout) view, constraintLayout, constraintLayout2, constraintLayout3, constraintLayout4, imageView, imageView2, imageView3, linearLayout, relativeLayout, recycleViewSb, recycleViewSb2, seekBar, imageView4, textView, textView2, textView3, textView4, textView5);
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
