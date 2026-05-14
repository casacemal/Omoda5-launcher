package com.chery.media.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.chery.media.C0632R;
import com.chery.media.view.component.PlayIconAnim;

/* loaded from: classes.dex */
public final class DabListEpgItemLayoutBinding implements ViewBinding {
    public final PlayIconAnim anPlayIcon;
    public final ImageView ivAppointment;
    private final RelativeLayout rootView;
    public final TextView tvDate;
    public final TextView tvProgramName;

    private DabListEpgItemLayoutBinding(RelativeLayout relativeLayout, PlayIconAnim playIconAnim, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = relativeLayout;
        this.anPlayIcon = playIconAnim;
        this.ivAppointment = imageView;
        this.tvDate = textView;
        this.tvProgramName = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DabListEpgItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DabListEpgItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C0632R.layout.dab_list_epg_item_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DabListEpgItemLayoutBinding bind(View view) {
        int r0 = C0632R.id.an_play_icon;
        PlayIconAnim playIconAnim = (PlayIconAnim) view.findViewById(C0632R.id.an_play_icon);
        if (playIconAnim != null) {
            r0 = C0632R.id.iv_appointment;
            ImageView imageView = (ImageView) view.findViewById(C0632R.id.iv_appointment);
            if (imageView != null) {
                r0 = C0632R.id.tv_date;
                TextView textView = (TextView) view.findViewById(C0632R.id.tv_date);
                if (textView != null) {
                    r0 = C0632R.id.tv_program_name;
                    TextView textView2 = (TextView) view.findViewById(C0632R.id.tv_program_name);
                    if (textView2 != null) {
                        return new DabListEpgItemLayoutBinding((RelativeLayout) view, playIconAnim, imageView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r0)));
    }
}
