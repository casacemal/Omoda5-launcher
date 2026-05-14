package com.chery.media.view.component;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.chery.media.C0632R;

/* loaded from: classes.dex */
public class PlayIconAnim extends ConstraintLayout {
    private AnimatorSet animatorSet1;
    private AnimatorSet animatorSet2;
    private AnimatorSet animatorSet3;
    private AnimatorSet animatorSet4;
    private float barHeight;
    private float barInterval;
    private Drawable barSrc;
    private float barWidth;
    private ImageView iv1;
    private ImageView iv2;
    private ImageView iv3;
    private ImageView iv4;

    public PlayIconAnim(Context context) {
        this(context, null);
    }

    public PlayIconAnim(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayIconAnim(Context context, AttributeSet attributeSet, int r7) {
        super(context, attributeSet, r7);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0632R.styleable.PlayIconAnim);
        this.barWidth = typedArrayObtainStyledAttributes.getDimension(3, 3.0f);
        this.barHeight = typedArrayObtainStyledAttributes.getDimension(1, 30.0f);
        this.barInterval = typedArrayObtainStyledAttributes.getDimension(2, 6.0f);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        this.barSrc = drawable;
        if (drawable == null) {
            this.barSrc = new ColorDrawable(-1);
        }
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater.from(context).inflate(C0632R.layout.media_play_icon_anim, this);
        ImageView imageView = new ImageView(context);
        this.iv1 = imageView;
        imageView.setImageDrawable(this.barSrc);
        this.iv1.setScaleType(ImageView.ScaleType.FIT_XY);
        this.iv1.setTranslationY(this.barHeight * 0.3f);
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-2, -2);
        layoutParams.width = (int) this.barWidth;
        layoutParams.height = (int) this.barHeight;
        this.iv1.setLayoutParams(layoutParams);
        addView(this.iv1);
        ImageView imageView2 = new ImageView(context);
        this.iv2 = imageView2;
        imageView2.setImageDrawable(this.barSrc);
        this.iv2.setScaleType(ImageView.ScaleType.FIT_XY);
        this.iv2.setTranslationY(this.barHeight * 0.5f);
        ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(-2, -2);
        layoutParams2.width = (int) this.barWidth;
        layoutParams2.height = (int) this.barHeight;
        layoutParams2.leftToLeft = getId();
        layoutParams2.topToTop = getId();
        layoutParams2.setMarginStart(((int) this.barWidth) + ((int) this.barInterval));
        this.iv2.setLayoutParams(layoutParams2);
        addView(this.iv2, layoutParams2);
        ImageView imageView3 = new ImageView(context);
        this.iv3 = imageView3;
        imageView3.setImageDrawable(this.barSrc);
        this.iv3.setScaleType(ImageView.ScaleType.FIT_XY);
        this.iv3.setTranslationY(this.barHeight * 0.2f);
        ConstraintLayout.LayoutParams layoutParams3 = new ConstraintLayout.LayoutParams(-2, -2);
        layoutParams3.width = (int) this.barWidth;
        layoutParams3.height = (int) this.barHeight;
        layoutParams3.leftToLeft = getId();
        layoutParams3.topToTop = getId();
        layoutParams3.setMarginStart((((int) this.barWidth) + ((int) this.barInterval)) * 2);
        this.iv3.setLayoutParams(layoutParams3);
        addView(this.iv3);
        ImageView imageView4 = new ImageView(context);
        this.iv4 = imageView4;
        imageView4.setImageDrawable(this.barSrc);
        this.iv4.setScaleType(ImageView.ScaleType.FIT_XY);
        ConstraintLayout.LayoutParams layoutParams4 = new ConstraintLayout.LayoutParams(-2, -2);
        layoutParams4.width = (int) this.barWidth;
        layoutParams4.height = (int) this.barHeight;
        layoutParams4.leftToLeft = getId();
        layoutParams4.topToTop = getId();
        layoutParams4.setMarginStart((((int) this.barWidth) + ((int) this.barInterval)) * 3);
        this.iv4.setLayoutParams(layoutParams4);
        addView(this.iv4);
        setAnim();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int r4, int r5) throws Resources.NotFoundException {
        super.onMeasure(r4, r5);
        int mode = View.MeasureSpec.getMode(r4);
        int mode2 = View.MeasureSpec.getMode(r5);
        int size = View.MeasureSpec.getSize(r4);
        int size2 = View.MeasureSpec.getSize(r5);
        if (mode != 1073741824) {
            size = (((int) this.barInterval) * 3) + (((int) this.barWidth) * 4);
        }
        if (mode2 != 1073741824) {
            size2 = (int) this.barHeight;
        }
        setMeasuredDimension(size, size2);
    }

    private void setAnim() {
        this.animatorSet1 = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.iv1, "translationY", this.barHeight * 0.3f, 0.0f);
        objectAnimatorOfFloat.setDuration(300L);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.iv1, "translationY", 0.0f, this.barHeight * 0.5f);
        objectAnimatorOfFloat2.setDuration(500L);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        objectAnimatorOfFloat2.setRepeatMode(2);
        this.animatorSet1.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        this.animatorSet2 = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.iv2, "translationY", this.barHeight * 0.5f, 0.0f);
        objectAnimatorOfFloat3.setDuration(500L);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.iv2, "translationY", 0.0f, this.barHeight * 0.5f);
        objectAnimatorOfFloat4.setDuration(500L);
        objectAnimatorOfFloat4.setRepeatCount(-1);
        objectAnimatorOfFloat4.setRepeatMode(2);
        this.animatorSet2.playSequentially(objectAnimatorOfFloat3, objectAnimatorOfFloat4);
        this.animatorSet3 = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.iv3, "translationY", this.barHeight * 0.2f, 0.0f);
        objectAnimatorOfFloat5.setDuration(200L);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.iv3, "translationY", 0.0f, this.barHeight * 0.5f);
        objectAnimatorOfFloat6.setDuration(500L);
        objectAnimatorOfFloat6.setRepeatCount(-1);
        objectAnimatorOfFloat6.setRepeatMode(2);
        this.animatorSet3.playSequentially(objectAnimatorOfFloat5, objectAnimatorOfFloat6);
        this.animatorSet4 = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.iv4, "translationY", 0.0f, this.barHeight * 0.5f);
        objectAnimatorOfFloat7.setDuration(500L);
        objectAnimatorOfFloat7.setRepeatCount(-1);
        objectAnimatorOfFloat7.setRepeatMode(2);
        this.animatorSet4.play(objectAnimatorOfFloat7);
    }

    public void startAnim() {
        AnimatorSet animatorSet = this.animatorSet1;
        if (animatorSet == null) {
            return;
        }
        if (!animatorSet.isStarted()) {
            this.animatorSet1.start();
            this.animatorSet2.start();
            this.animatorSet3.start();
            this.animatorSet4.start();
            return;
        }
        if (this.animatorSet1.isPaused()) {
            this.animatorSet1.resume();
            this.animatorSet2.resume();
            this.animatorSet3.resume();
            this.animatorSet4.resume();
        }
    }

    public void pauseAnim() {
        AnimatorSet animatorSet = this.animatorSet1;
        if (animatorSet == null) {
            return;
        }
        animatorSet.pause();
        this.animatorSet2.pause();
        this.animatorSet3.pause();
        this.animatorSet4.pause();
    }

    public void cancelAnim() {
        AnimatorSet animatorSet = this.animatorSet1;
        if (animatorSet == null) {
            return;
        }
        animatorSet.cancel();
        this.animatorSet2.cancel();
        this.animatorSet3.cancel();
        this.animatorSet4.cancel();
    }

    public void endAnim() {
        AnimatorSet animatorSet = this.animatorSet1;
        if (animatorSet == null) {
            return;
        }
        animatorSet.end();
        this.animatorSet2.end();
        this.animatorSet3.end();
        this.animatorSet4.end();
    }

    public boolean isRunning() {
        return (this.animatorSet1 != null) && this.animatorSet1.isStarted() && !this.animatorSet1.isPaused();
    }
}
