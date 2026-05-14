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
public final class MediaUsbMusicFolderListItemLayoutBinding implements ViewBinding {
    public final ImageView ivFolderIcon;
    private final ConstraintLayout rootView;
    public final TextView tvFolderName;

    private MediaUsbMusicFolderListItemLayoutBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView) {
        this.rootView = constraintLayout;
        this.ivFolderIcon = imageView;
        this.tvFolderName = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static MediaUsbMusicFolderListItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MediaUsbMusicFolderListItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.media_usb_music_folder_list_item_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static MediaUsbMusicFolderListItemLayoutBinding bind(View view) {
        int r0 = C0632R.id.iv_folder_icon;
        ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_folder_icon);
        if (imageView != null) {
            r0 = C0632R.id.tv_folder_name;
            TextView textView = (TextView) view.findViewById(C0632R.id.tv_folder_name);
            if (textView != null) {
                return new MediaUsbMusicFolderListItemLayoutBinding((ConstraintLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
