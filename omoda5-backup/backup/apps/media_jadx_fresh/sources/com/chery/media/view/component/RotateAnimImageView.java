package com.chery.media.view.component;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import com.chery.media.C0632R;

/* loaded from: classes.dex */
public class RotateAnimImageView extends ImageView {
    private ObjectAnimator animator;

    public RotateAnimImageView(Context context) {
        super(context);
        initAnim(context, null);
    }

    public RotateAnimImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initAnim(context, attributeSet);
    }

    public RotateAnimImageView(Context context, AttributeSet attributeSet, int r3) {
        super(context, attributeSet, r3);
        initAnim(context, attributeSet);
    }

    public RotateAnimImageView(Context context, AttributeSet attributeSet, int r3, int r4) {
        super(context, attributeSet, r3, r4);
        initAnim(context, attributeSet);
    }

    private void initAnim(Context context, AttributeSet attributeSet) {
        int r3;
        int r0 = 1000;
        if (attributeSet != null && (r3 = context.obtainStyledAttributes(attributeSet, C0632R.styleable.PlayIconAnim).getInt(0, 1000)) > 0) {
            r0 = r3;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "rotation", 0.0f, 360.0f);
        this.animator = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(r0);
        this.animator.setRepeatCount(-1);
        this.animator.setRepeatMode(1);
        this.animator.setInterpolator(new LinearInterpolator());
    }

    public void startAnim() {
        if (!this.animator.isStarted()) {
            this.animator.start();
        } else if (this.animator.isPaused()) {
            this.animator.resume();
        }
    }

    public void pauseAnim() {
        this.animator.pause();
    }

    public void cancelAnim() {
        this.animator.cancel();
    }

    public void endAnim() {
        this.animator.end();
    }

    public boolean isRunning() {
        return this.animator.isStarted() && !this.animator.isPaused();
    }
}
