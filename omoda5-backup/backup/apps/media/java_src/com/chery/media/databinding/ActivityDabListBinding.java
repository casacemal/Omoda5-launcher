package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;

/* loaded from: classes.dex */
public final class ActivityDabListBinding implements ViewBinding {
    public final FrameLayout dabListFragmentContainer;
    public final RecyclerView dabListMenuRv;
    public final ImageView ivBack;
    private final ConstraintLayout rootView;

    private ActivityDabListBinding(ConstraintLayout constraintLayout, FrameLayout frameLayout, RecyclerView recyclerView, ImageView imageView) {
        this.rootView = constraintLayout;
        this.dabListFragmentContainer = frameLayout;
        this.dabListMenuRv = recyclerView;
        this.ivBack = imageView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityDabListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityDabListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.activity_dab_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityDabListBinding bind(View view) {
        int r0 = C0632R.id.dab_list_fragment_container;
        FrameLayout frameLayout = (FrameLayout) view.findViewById(C0632R.id.dab_list_fragment_container);
        if (frameLayout != null) {
            r0 = C0632R.id.dab_list_menu_rv;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(C0632R.id.dab_list_menu_rv);
            if (recyclerView != null) {
                r0 = C0632R.id.iv_back;
                ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_back);
                if (imageView != null) {
                    return new ActivityDabListBinding((ConstraintLayout) view, frameLayout, recyclerView, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
