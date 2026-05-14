package com.chery.media.view.component;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Scroller;
import com.avn.tools.log.CarLog;
import com.chery.caradapter.carapi.constants.CarIpcDisplay;
import com.chery.media.C0632R;
import java.text.NumberFormat;
import java.util.Locale;

/* loaded from: classes.dex */
public class ArcScaleView extends View {
    private static final String TAG = CarLog.concatTag("MEDIA", ArcScaleView.class);
    private final int BAND_AM;
    private final int BAND_FM;
    private int cellNum;
    private Bitmap centreLineBitmap;
    private float centreX;
    private float centreY;
    private int currentValue;
    private float endX;
    private float endY;
    private GestureDetector gestureDetector;
    private boolean isTouching;
    private int itemValue;
    private int lastValue;
    private OnValueChangedListener listener;
    private int maxValue;
    private int minValue;
    private Paint paint;
    private int radioBand;
    private int radioRegion;
    private float radius;
    private float scaleDistance;
    private float scrollDistance;
    private Scroller scroller;
    private LinearGradient shaderDown;
    private LinearGradient shaderUp;
    private GestureDetector.SimpleOnGestureListener simpleOnGestureListener;
    private float startX;
    private float startY;
    private int totalItem;

    public interface OnValueChangedListener {
        void onChangeFinished(int r1);

        void onValueChanged(int r1);
    }

    private boolean isBrazilSpecial(int r1) {
        return true;
    }

    public ArcScaleView(Context context) {
        super(context);
        this.radioBand = 1;
        this.BAND_FM = 1;
        this.BAND_AM = 2;
        this.radioRegion = 0;
        this.isTouching = false;
        this.simpleOnGestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.chery.media.view.component.ArcScaleView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                ArcScaleView.this.scrollDistance += f;
                ArcScaleView.this.calculateCurrentValue();
                return true;
            }
        };
    }

    public ArcScaleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.radioBand = 1;
        this.BAND_FM = 1;
        this.BAND_AM = 2;
        this.radioRegion = 0;
        this.isTouching = false;
        this.simpleOnGestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.chery.media.view.component.ArcScaleView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                ArcScaleView.this.scrollDistance += f;
                ArcScaleView.this.calculateCurrentValue();
                return true;
            }
        };
        this.scaleDistance = 14.0f;
        initScaleParam();
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setTextSize(26.0f);
        this.paint.setColor(getResources().getColor(C0632R.color.white));
        this.shaderUp = new LinearGradient(0.0f, 0.0f, 350.0f, 0.0f, 421075225, -1, Shader.TileMode.CLAMP);
        this.shaderDown = new LinearGradient(350.0f, 0.0f, 700.0f, 0.0f, -1, 421075225, Shader.TileMode.CLAMP);
        this.scroller = new Scroller(context);
        GestureDetector gestureDetector = new GestureDetector(context, this.simpleOnGestureListener);
        this.gestureDetector = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
    }

    private void initScaleParam() {
        int r0 = this.radioRegion;
        if (r0 == 0) {
            int r02 = this.radioBand;
            if (r02 == 1) {
                this.currentValue = 87500;
                this.maxValue = 108000;
                this.minValue = 87500;
                this.cellNum = 10;
                this.itemValue = 100;
            } else if (r02 == 2) {
                this.currentValue = 531;
                this.maxValue = 1629;
                this.minValue = 531;
                this.cellNum = 10;
                this.itemValue = 9;
            }
        } else if (r0 == 2) {
            int r03 = this.radioBand;
            if (r03 == 1) {
                this.currentValue = 87500;
                this.maxValue = 107900;
                this.minValue = 87500;
                this.cellNum = 10;
                this.itemValue = 200;
            } else if (r03 == 2) {
                this.currentValue = CarIpcDisplay.AMRadioFrequanceValue.DEFAULT;
                this.maxValue = 1710;
                this.minValue = CarIpcDisplay.AMRadioFrequanceValue.DEFAULT;
                this.cellNum = 10;
                this.itemValue = 10;
            }
        } else if (r0 == 1) {
            int r04 = this.radioBand;
            if (r04 == 1) {
                this.currentValue = 87500;
                this.maxValue = 108000;
                this.minValue = 87500;
                this.cellNum = 20;
                this.itemValue = 50;
            } else if (r04 == 2) {
                this.currentValue = 531;
                this.maxValue = 1629;
                this.minValue = 531;
                this.cellNum = 10;
                this.itemValue = 9;
            }
        } else if (r0 == 3) {
            int r05 = this.radioBand;
            if (r05 == 1) {
                this.currentValue = 87500;
                this.maxValue = 108000;
                this.minValue = 87500;
                this.cellNum = 10;
                this.itemValue = 100;
            } else if (r05 == 2) {
                this.currentValue = CarIpcDisplay.AMRadioFrequanceValue.DEFAULT;
                this.maxValue = 1710;
                this.minValue = CarIpcDisplay.AMRadioFrequanceValue.DEFAULT;
                this.cellNum = 10;
                this.itemValue = 10;
            }
        } else if (r0 == 4) {
            int r06 = this.radioBand;
            if (r06 == 1) {
                this.currentValue = 76000;
                this.maxValue = 108000;
                this.minValue = 76000;
                this.cellNum = 10;
                this.itemValue = 100;
            } else if (r06 == 2) {
                this.currentValue = CarIpcDisplay.AMRadioFrequanceValue.DEFAULT;
                this.maxValue = 1710;
                this.minValue = CarIpcDisplay.AMRadioFrequanceValue.DEFAULT;
                this.cellNum = 10;
                this.itemValue = 10;
            }
        } else {
            int r07 = this.radioBand;
            if (r07 == 1) {
                this.currentValue = 87500;
                this.maxValue = 108000;
                this.minValue = 87500;
                this.cellNum = 10;
                this.itemValue = 100;
            } else if (r07 == 2) {
                this.currentValue = 531;
                this.maxValue = 1629;
                this.minValue = 531;
                this.cellNum = 10;
                this.itemValue = 9;
            }
        }
        this.totalItem = ((this.maxValue - this.minValue) / this.itemValue) + 1;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int r2;
        super.onDraw(canvas);
        this.paint.setShader(this.shaderUp);
        int r1 = 1;
        while (true) {
            if (r1 > 25) {
                break;
            }
            drawScale(canvas, r1, 1);
            r1++;
        }
        this.paint.setShader(this.shaderDown);
        for (r2 = 25; r2 <= 50; r2++) {
            drawScale(canvas, r2, 1);
        }
    }

    private void drawScale(Canvas canvas, int r13, int r14) {
        this.startX = this.scaleDistance * r13;
        this.startY = 70.0f;
        int r1 = this.currentValue;
        int r132 = (r13 - 25) * r14;
        int r142 = this.itemValue;
        int r12 = r1 + (r132 * r142);
        if (r12 > this.maxValue) {
            r12 -= this.totalItem * r142;
        } else if (r12 < this.minValue) {
            r12 += this.totalItem * r142;
        }
        int r133 = this.radioBand;
        if (r133 == 1) {
            if ((r12 - this.minValue) % (this.cellNum * this.itemValue) == 0) {
                this.endX = this.startX;
                this.endY = this.startY - 70.0f;
                String strFmFreqFormat = fmFreqFormat(r12);
                this.paint.getTextBounds(strFmFreqFormat, 0, strFmFreqFormat.length(), new Rect());
                int r143 = this.radioRegion;
                if (r143 == 2) {
                    if ((this.currentValue > this.minValue + (this.itemValue * 25) || r12 != 107500) && (this.currentValue < this.maxValue - (this.itemValue * 25) || r12 != 87500)) {
                        canvas.drawText(strFmFreqFormat, this.startX - (r0.width() / 2), this.startY + r0.height() + 10.0f, this.paint);
                    }
                } else if (r143 == 4) {
                    if ((this.currentValue > this.minValue + (this.itemValue * 25) || r12 != 108000) && (this.currentValue < this.maxValue - (this.itemValue * 25) || r12 != 76000)) {
                        canvas.drawText(strFmFreqFormat, this.startX - (r0.width() / 2), this.startY + r0.height() + 10.0f, this.paint);
                    }
                } else {
                    canvas.drawText(strFmFreqFormat, this.startX - (r0.width() / 2), this.startY + r0.height() + 10.0f, this.paint);
                }
                this.paint.setStrokeWidth(2.0f);
            } else {
                this.endX = this.startX;
                this.endY = this.startY - 57.0f;
                this.paint.setStrokeWidth(2.0f);
            }
        } else if (r133 == 2) {
            if ((r12 - this.minValue) % (this.cellNum * this.itemValue) == 0) {
                this.endX = this.startX;
                this.endY = this.startY - 70.0f;
                String strValueOf = String.valueOf(r12);
                this.paint.getTextBounds(strValueOf, 0, strValueOf.length(), new Rect());
                int r144 = this.radioRegion;
                if (r144 == 0 || r144 == 1) {
                    if ((this.currentValue > this.minValue + (this.itemValue * 25) || r12 != 1611) && (this.currentValue < this.maxValue - (this.itemValue * 25) || r12 != 531)) {
                        canvas.drawText(strValueOf, this.startX - (r0.width() / 2), this.startY + r0.height() + 10.0f, this.paint);
                    }
                } else {
                    canvas.drawText(strValueOf, this.startX - (r0.width() / 2), this.startY + r0.height() + 10.0f, this.paint);
                }
                this.paint.setStrokeWidth(2.0f);
            } else {
                this.endX = this.startX;
                this.endY = this.startY - 57.0f;
                this.paint.setStrokeWidth(2.0f);
            }
        }
        canvas.drawLine(this.startX, this.startY, this.endX, this.endY, this.paint);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.isTouching = true;
        } else if (action == 1) {
            this.isTouching = false;
            getIntegerPosition();
        } else if (action == 2) {
            this.isTouching = true;
        }
        this.gestureDetector.onTouchEvent(motionEvent);
        return true;
    }

    private String fmFreqFormat(int r5) {
        NumberFormat numberInstance = NumberFormat.getNumberInstance(Locale.US);
        numberInstance.setMinimumFractionDigits(0);
        return numberInstance.format(r5 * 0.001d);
    }

    private void getIntegerPosition() {
        float f = this.scrollDistance;
        float f2 = this.scaleDistance;
        if (f >= f2 / 2.0f) {
            this.scrollDistance = f2;
        } else if (f <= (-f2) / 2.0f) {
            this.scrollDistance = -f2;
        } else {
            this.scrollDistance = 0.0f;
        }
        calculateCurrentValue();
        OnValueChangedListener onValueChangedListener = this.listener;
        if (onValueChangedListener != null) {
            onValueChangedListener.onChangeFinished(this.currentValue);
            this.lastValue = this.currentValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void calculateCurrentValue() {
        OnValueChangedListener onValueChangedListener;
        float f = this.scrollDistance;
        float f2 = this.scaleDistance;
        int r3 = this.itemValue;
        int r2 = (((int) (f / f2)) * r3) + this.currentValue;
        this.currentValue = r2;
        this.scrollDistance = f % f2;
        if (r2 > this.maxValue) {
            this.currentValue = r2 - (this.totalItem * r3);
        } else if (r2 < this.minValue) {
            this.currentValue = r2 + (this.totalItem * r3);
        }
        invalidate();
        int r0 = this.lastValue;
        int r1 = this.currentValue;
        if (r0 == r1 || (onValueChangedListener = this.listener) == null) {
            return;
        }
        onValueChangedListener.onValueChanged(r1);
        this.lastValue = this.currentValue;
    }

    public void setCurrentValue(int r2) {
        if (this.isTouching) {
            return;
        }
        this.currentValue = r2;
        invalidate();
        if (this.listener != null) {
            this.lastValue = this.currentValue;
        }
    }

    public void setRadioBand(int r2) {
        if (this.radioBand == r2) {
            return;
        }
        this.radioBand = r2;
        initScaleParam();
        invalidate();
    }

    public void setRadioRegion(int r3) {
        if (this.radioRegion == r3) {
            Log.i(TAG, "setRadioRegion: 当前radioRegion已经是 -- " + r3);
            return;
        }
        this.radioRegion = r3;
        initScaleParam();
        invalidate();
    }

    public void setBandAndRegion(int r3, int r4) {
        if (this.radioBand == r3 && this.radioRegion == r4) {
            Log.i(TAG, "setBandAndRegion: 当前radioBand已经是 -- " + r3 + ",radioRegion已经是 -- " + r4);
            return;
        }
        this.radioRegion = r4;
        this.radioBand = r3;
        initScaleParam();
        invalidate();
    }

    public int getCurrentValue() {
        return this.currentValue;
    }

    public void setOnValueChangedListener(OnValueChangedListener onValueChangedListener) {
        this.listener = onValueChangedListener;
    }
}
