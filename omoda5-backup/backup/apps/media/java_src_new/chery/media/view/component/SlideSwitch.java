package com.chery.media.view.component;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.chery.media.C0632R;

/* loaded from: classes.dex */
public class SlideSwitch extends View {
    private ValueAnimator mAnimator;
    private Bitmap mBgOff;
    private Bitmap mBgOn;
    private boolean mEnabled;
    private boolean mInit;
    private float mLeft;
    private Paint mPaint;
    private boolean mSelected;
    private Bitmap mThumbOff;
    private Bitmap mThumbOn;

    public SlideSwitch(Context context) {
        this(context, null);
    }

    public SlideSwitch(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlideSwitch(Context context, AttributeSet attributeSet, int r5) {
        super(context, attributeSet, r5);
        this.mSelected = false;
        this.mEnabled = false;
        this.mLeft = 0.0f;
        this.mInit = true;
        getAttr(context.obtainStyledAttributes(attributeSet, C0632R.styleable.SlideSwitch, r5, 0));
        initPaint();
    }

    @Override // android.view.View
    protected void onMeasure(int r1, int r2) {
        super.onMeasure(r1, r2);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        super.setSelected(z);
        if (z != this.mSelected) {
            this.mSelected = z;
            startAnimator(z);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.mInit) {
            if (this.mLeft < 36.0f) {
                canvas.drawBitmap(this.mBgOff, 0.0f, 0.0f, this.mPaint);
                canvas.drawBitmap(this.mThumbOff, this.mLeft, 0.0f, this.mPaint);
                return;
            } else {
                canvas.drawBitmap(this.mBgOn, 0.0f, 0.0f, this.mPaint);
                canvas.drawBitmap(this.mThumbOn, this.mLeft, 0.0f, this.mPaint);
                return;
            }
        }
        ValueAnimator valueAnimator = this.mAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mAnimator.end();
        }
        if (this.mSelected) {
            canvas.drawBitmap(this.mBgOn, 0.0f, 0.0f, this.mPaint);
            canvas.drawBitmap(this.mThumbOn, 36.0f, 0.0f, this.mPaint);
        } else {
            canvas.drawBitmap(this.mBgOff, 0.0f, 0.0f, this.mPaint);
            canvas.drawBitmap(this.mThumbOff, 0.0f, 0.0f, this.mPaint);
        }
        this.mInit = false;
    }

    private void getAttr(TypedArray typedArray) {
        this.mBgOn = BitmapFactory.decodeResource(getResources(), typedArray.getResourceId(1, C0632R.drawable.switch_btn_on_bg));
        this.mBgOff = BitmapFactory.decodeResource(getResources(), typedArray.getResourceId(0, C0632R.drawable.switch_btn_off_bg));
        this.mThumbOn = BitmapFactory.decodeResource(getResources(), typedArray.getResourceId(3, C0632R.drawable.switch_btn_knob));
        this.mThumbOff = BitmapFactory.decodeResource(getResources(), typedArray.getResourceId(2, C0632R.drawable.switch_btn_knob_off));
        typedArray.recycle();
    }

    public void setBgOnEnabled(boolean z) {
        this.mEnabled = z;
        if (z) {
            this.mBgOn = BitmapFactory.decodeResource(getResources(), C0632R.drawable.switch_btn_on_bg);
        } else {
            this.mBgOn = BitmapFactory.decodeResource(getResources(), C0632R.drawable.switch_btn_off_bg);
        }
        invalidate();
    }

    private void initPaint() {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setFlags(1);
        this.mPaint.setTypeface(Typeface.SANS_SERIF);
        this.mPaint.setColor(-1);
    }

    private void startAnimator(boolean z) {
        float f = 0.0f;
        float f2 = 36.0f;
        if (!z) {
            f2 = 0.0f;
            f = 36.0f;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, f2);
        this.mAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(50L);
        this.mAnimator.setInterpolator(new LinearInterpolator());
        this.mAnimator.start();
        this.mAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.chery.media.view.component.SlideSwitch.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (valueAnimator.getAnimatedValue() != null) {
                    SlideSwitch.this.mLeft = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                }
                SlideSwitch.this.postInvalidate();
            }
        });
    }
}
