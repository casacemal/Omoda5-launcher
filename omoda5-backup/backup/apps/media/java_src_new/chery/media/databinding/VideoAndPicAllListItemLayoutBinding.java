package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.PlayIconAnim;

/* loaded from: classes.dex */
public final class VideoAndPicAllListItemLayoutBinding implements ViewBinding {
    public final PlayIconAnim anPlayIcon;
    public final ImageView ivPic;
    public final ImageView ivTitleCenterLine;
    private final ConstraintLayout rootView;
    public final TextView tvFileSize;
    public final TextView tvFolderName;
    public final TextView tvTitle;

    private VideoAndPicAllListItemLayoutBinding(ConstraintLayout constraintLayout, PlayIconAnim playIconAnim, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.anPlayIcon = playIconAnim;
        this.ivPic = imageView;
        this.ivTitleCenterLine = imageView2;
        this.tvFileSize = textView;
        this.tvFolderName = textView2;
        this.tvTitle = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static VideoAndPicAllListItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static VideoAndPicAllListItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.video_and_pic_all_list_item_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static VideoAndPicAllListItemLayoutBinding bind(View view) {
        int r0 = C0632R.id.an_play_icon;
        PlayIconAnim playIconAnim = (PlayIconAnim) view.findViewById(C0632R.id.an_play_icon);
        if (playIconAnim != null) {
            r0 = C0632R.id.iv_pic;
            ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_pic);
            if (imageView != null) {
                r0 = C0632R.id.iv_title_center_line;
                ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.iv_title_center_line);
                if (imageView2 != null) {
                    r0 = C0632R.id.tv_file_size;
                    TextView textView = (TextView) view.findViewById(C0632R.id.tv_file_size);
                    if (textView != null) {
                        r0 = C0632R.id.tv_folder_name;
                        TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_folder_name);
                        if (textView2 != null) {
                            r0 = C0632R.id.tv_title;
                            TextView textView3 = (TextView) view.findViewById(C0632R.id.tv_title);
                            if (textView3 != null) {
                                return new VideoAndPicAllListItemLayoutBinding((ConstraintLayout) view, playIconAnim, imageView, imageView2, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
