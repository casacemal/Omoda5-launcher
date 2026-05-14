package com.chery.media.view.component;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes.dex */
public class MarqueeTextView extends AppCompatTextView {
    private boolean mMarquee;

    public MarqueeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMarquee = true;
    }

    public void setMarquee(boolean z) {
        this.mMarquee = z;
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int r2, Rect rect) {
        if (z) {
            super.onFocusChanged(z, r2, rect);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        if (z) {
            super.onWindowFocusChanged(z);
        }
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.mMarquee;
    }
}
