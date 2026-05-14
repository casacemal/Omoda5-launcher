package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;

/* loaded from: classes.dex */
public final class PicturePlayerCoverLayoutBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final TextView tvCoverHint;

    private PicturePlayerCoverLayoutBinding(ConstraintLayout constraintLayout, TextView textView) {
        this.rootView = constraintLayout;
        this.tvCoverHint = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static PicturePlayerCoverLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PicturePlayerCoverLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.picture_player_cover_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PicturePlayerCoverLayoutBinding bind(View view) {
        TextView textView = (TextView) view.findViewById(C0632R.id.tv_cover_hint);
        if (textView != null) {
            return new PicturePlayerCoverLayoutBinding((ConstraintLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(C0632R.id.tv_cover_hint)));
    }
}
