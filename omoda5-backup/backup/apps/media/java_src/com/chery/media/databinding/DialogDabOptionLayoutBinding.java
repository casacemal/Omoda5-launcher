package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.SlideSwitch;

/* loaded from: classes.dex */
public final class DialogDabOptionLayoutBinding implements ViewBinding {
    public final ImageView btnClose;
    public final SlideSwitch btnOption;
    private final ConstraintLayout rootView;
    public final TextView tvOption;
    public final TextView tvTitle;

    private DialogDabOptionLayoutBinding(ConstraintLayout constraintLayout, ImageView imageView, SlideSwitch slideSwitch, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.btnOption = slideSwitch;
        this.tvOption = textView;
        this.tvTitle = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogDabOptionLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogDabOptionLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.dialog_dab_option_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogDabOptionLayoutBinding bind(View view) {
        int r0 = C0632R.id.btn_close;
        ImageView imageView = (ImageView) view.findViewById(C0632R.id.btn_close);
        if (imageView != null) {
            r0 = C0632R.id.btn_option;
            SlideSwitch slideSwitch = (SlideSwitch) view.findViewById(C0632R.id.btn_option);
            if (slideSwitch != null) {
                r0 = C0632R.id.tv_option;
                TextView textView = (TextView) view.findViewById(C0632R.id.tv_option);
                if (textView != null) {
                    r0 = C0632R.id.tv_title;
                    TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_title);
                    if (textView2 != null) {
                        return new DialogDabOptionLayoutBinding((ConstraintLayout) view, imageView, slideSwitch, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
