package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.C1199R;

/* loaded from: classes.dex */
public class FlowLayout extends ViewGroup {
    private int itemSpacing;
    private int lineSpacing;
    private boolean singleLine;

    public FlowLayout(Context context) {
        this(context, null);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int r3) {
        super(context, attributeSet, r3);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int r3, int r4) {
        super(context, attributeSet, r3, r4);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }

    private void loadFromAttributes(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1199R.styleable.FlowLayout, 0, 0);
        this.lineSpacing = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1199R.styleable.FlowLayout_lineSpacing, 0);
        this.itemSpacing = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1199R.styleable.FlowLayout_itemSpacing, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    protected int getLineSpacing() {
        return this.lineSpacing;
    }

    protected void setLineSpacing(int r1) {
        this.lineSpacing = r1;
    }

    protected int getItemSpacing() {
        return this.itemSpacing;
    }

    protected void setItemSpacing(int r1) {
        this.itemSpacing = r1;
    }

    public boolean isSingleLine() {
        return this.singleLine;
    }

    public void setSingleLine(boolean z) {
        this.singleLine = z;
    }

    @Override // android.view.View
    protected void onMeasure(int r21, int r22) {
        int r8;
        int r15;
        int paddingLeft;
        int size = View.MeasureSpec.getSize(r21);
        int mode = View.MeasureSpec.getMode(r21);
        int size2 = View.MeasureSpec.getSize(r22);
        int mode2 = View.MeasureSpec.getMode(r22);
        int r5 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int paddingLeft2 = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = r5 - getPaddingRight();
        int r9 = paddingTop;
        int r11 = 0;
        for (int r10 = 0; r10 < getChildCount(); r10++) {
            View childAt = getChildAt(r10);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, r21, r22);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    r8 = marginLayoutParams.leftMargin + 0;
                    r15 = marginLayoutParams.rightMargin + 0;
                } else {
                    r8 = 0;
                    r15 = 0;
                }
                int r19 = paddingLeft2;
                if (paddingLeft2 + r8 + childAt.getMeasuredWidth() <= paddingRight || isSingleLine()) {
                    paddingLeft = r19;
                } else {
                    paddingLeft = getPaddingLeft();
                    r9 = this.lineSpacing + paddingTop;
                }
                int measuredWidth = paddingLeft + r8 + childAt.getMeasuredWidth();
                int measuredHeight = r9 + childAt.getMeasuredHeight();
                if (measuredWidth > r11) {
                    r11 = measuredWidth;
                }
                paddingLeft2 = paddingLeft + r8 + r15 + childAt.getMeasuredWidth() + this.itemSpacing;
                if (r10 == getChildCount() - 1) {
                    r11 += r15;
                }
                paddingTop = measuredHeight;
            }
        }
        setMeasuredDimension(getMeasuredDimension(size, mode, r11 + getPaddingRight()), getMeasuredDimension(size2, mode2, paddingTop + getPaddingBottom()));
    }

    private static int getMeasuredDimension(int r1, int r2, int r3) {
        if (r2 != Integer.MIN_VALUE) {
            return r2 != 1073741824 ? r3 : r1;
        }
        return Math.min(r3, r1);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int r10, int r11, int r12, int r13) {
        int marginEnd;
        int marginStart;
        if (getChildCount() == 0) {
            return;
        }
        boolean z2 = ViewCompat.getLayoutDirection(this) == 1;
        int paddingRight = z2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int r122 = (r12 - r10) - paddingLeft;
        int measuredWidth = paddingRight;
        int r102 = paddingTop;
        for (int r0 = 0; r0 < getChildCount(); r0++) {
            View childAt = getChildAt(r0);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginStart = MarginLayoutParamsCompat.getMarginStart(marginLayoutParams);
                    marginEnd = MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams);
                } else {
                    marginEnd = 0;
                    marginStart = 0;
                }
                int measuredWidth2 = measuredWidth + marginStart + childAt.getMeasuredWidth();
                if (!this.singleLine && measuredWidth2 > r122) {
                    r102 = this.lineSpacing + paddingTop;
                    measuredWidth = paddingRight;
                }
                int r1 = measuredWidth + marginStart;
                int measuredWidth3 = childAt.getMeasuredWidth() + r1;
                int measuredHeight = childAt.getMeasuredHeight() + r102;
                if (z2) {
                    childAt.layout(r122 - measuredWidth3, r102, (r122 - measuredWidth) - marginStart, measuredHeight);
                } else {
                    childAt.layout(r1, r102, measuredWidth3, measuredHeight);
                }
                measuredWidth += marginStart + marginEnd + childAt.getMeasuredWidth() + this.itemSpacing;
                paddingTop = measuredHeight;
            }
        }
    }
}
