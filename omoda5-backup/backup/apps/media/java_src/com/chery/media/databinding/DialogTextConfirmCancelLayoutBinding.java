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
public final class DialogTextConfirmCancelLayoutBinding implements ViewBinding {
    public final ImageView btnCancel;
    public final ImageView btnConfirm;
    private final ConstraintLayout rootView;
    public final TextView tvCancel;
    public final TextView tvConfirm;
    public final TextView tvTitle;

    private DialogTextConfirmCancelLayoutBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnCancel = imageView;
        this.btnConfirm = imageView2;
        this.tvCancel = textView;
        this.tvConfirm = textView2;
        this.tvTitle = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogTextConfirmCancelLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogTextConfirmCancelLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.dialog_text_confirm_cancel_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogTextConfirmCancelLayoutBinding bind(View view) {
        int r0 = C0632R.id.btn_cancel;
        ImageView imageView = (ImageView) view.findViewById(C0632R.id.btn_cancel);
        if (imageView != null) {
            r0 = C0632R.id.btn_confirm;
            ImageView imageView2 = (ImageView) view.findViewById(C0632R.id.btn_confirm);
            if (imageView2 != null) {
                r0 = C0632R.id.tv_cancel;
                TextView textView = (TextView) view.findViewById(C0632R.id.tv_cancel);
                if (textView != null) {
                    r0 = C0632R.id.tv_confirm;
                    TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_confirm);
                    if (textView2 != null) {
                        r0 = C0632R.id.tv_title;
                        TextView textView3 = (TextView) view.findViewById(C0632R.id.tv_title);
                        if (textView3 != null) {
                            return new DialogTextConfirmCancelLayoutBinding((ConstraintLayout) view, imageView, imageView2, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
