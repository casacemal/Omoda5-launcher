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
public final class DialogDabAnnounceLayoutBinding implements ViewBinding {
    public final ImageView btnClose;
    private final ConstraintLayout rootView;
    public final TextView tvContent;
    public final TextView tvTitle;

    private DialogDabAnnounceLayoutBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.tvContent = textView;
        this.tvTitle = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogDabAnnounceLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogDabAnnounceLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.dialog_dab_announce_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogDabAnnounceLayoutBinding bind(View view) {
        int r0 = C0632R.id.btn_close;
        ImageView imageView = (ImageView) view.findViewById(C0632R.id.btn_close);
        if (imageView != null) {
            r0 = C0632R.id.tv_content;
            TextView textView = (TextView) view.findViewById(C0632R.id.tv_content);
            if (textView != null) {
                r0 = C0632R.id.tv_title;
                TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_title);
                if (textView2 != null) {
                    return new DialogDabAnnounceLayoutBinding((ConstraintLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
