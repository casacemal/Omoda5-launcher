package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;

/* loaded from: classes.dex */
public final class ActivityDabAnnounceBinding implements ViewBinding {
    public final RecyclerView dabListAnnounceRv;
    public final ImageView ivBack;
    private final ConstraintLayout rootView;

    private ActivityDabAnnounceBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView, ImageView imageView) {
        this.rootView = constraintLayout;
        this.dabListAnnounceRv = recyclerView;
        this.ivBack = imageView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityDabAnnounceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityDabAnnounceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.activity_dab_announce, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityDabAnnounceBinding bind(View view) {
        int r0 = C0632R.id.dab_list_announce_rv;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(C0632R.id.dab_list_announce_rv);
        if (recyclerView != null) {
            r0 = C0632R.id.iv_back;
            ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_back);
            if (imageView != null) {
                return new ActivityDabAnnounceBinding((ConstraintLayout) view, recyclerView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
