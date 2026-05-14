package com.chery.media.view.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.DumpViewPager;

/* loaded from: classes.dex */
public class HackyViewPager extends DumpViewPager {
    public HackyViewPager(Context context) {
        super(context);
        setFocusable(false);
    }

    public HackyViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setFocusable(false);
    }

    @Override // androidx.viewpager.widget.DumpViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }
}
