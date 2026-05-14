package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.C1199R;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;

/* loaded from: classes.dex */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(Context context) {
        this(context, null);
    }

    public MaterialTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public MaterialTextView(Context context, AttributeSet attributeSet, int r4) {
        this(context, attributeSet, r4, 0);
    }

    public MaterialTextView(Context context, AttributeSet attributeSet, int r4, int r5) throws Resources.NotFoundException {
        int r2;
        super(context, attributeSet, r4);
        if (canApplyTextAppearanceLineHeight(context)) {
            Resources.Theme theme = context.getTheme();
            if (viewAttrsHasLineHeight(context, theme, attributeSet, r4, r5) || (r2 = findViewAppearanceResourceId(theme, attributeSet, r4, r5)) == -1) {
                return;
            }
            applyLineHeightFromViewAppearance(theme, r2);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(Context context, int r3) throws Resources.NotFoundException {
        super.setTextAppearance(context, r3);
        if (canApplyTextAppearanceLineHeight(context)) {
            applyLineHeightFromViewAppearance(context.getTheme(), r3);
        }
    }

    private void applyLineHeightFromViewAppearance(Resources.Theme theme, int r5) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(r5, C1199R.styleable.MaterialTextAppearance);
        int firstAvailableDimension = readFirstAvailableDimension(getContext(), typedArrayObtainStyledAttributes, C1199R.styleable.MaterialTextAppearance_android_lineHeight, C1199R.styleable.MaterialTextAppearance_lineHeight);
        typedArrayObtainStyledAttributes.recycle();
        if (firstAvailableDimension >= 0) {
            setLineHeight(firstAvailableDimension);
        }
    }

    private static boolean canApplyTextAppearanceLineHeight(Context context) {
        return MaterialAttributes.resolveBoolean(context, C1199R.attr.textAppearanceLineHeightEnabled, true);
    }

    private static int readFirstAvailableDimension(Context context, TypedArray typedArray, int... r6) {
        int dimensionPixelSize = -1;
        for (int r1 = 0; r1 < r6.length && dimensionPixelSize < 0; r1++) {
            dimensionPixelSize = MaterialResources.getDimensionPixelSize(context, typedArray, r6[r1], -1);
        }
        return dimensionPixelSize;
    }

    private static boolean viewAttrsHasLineHeight(Context context, Resources.Theme theme, AttributeSet attributeSet, int r4, int r5) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C1199R.styleable.MaterialTextView, r4, r5);
        int firstAvailableDimension = readFirstAvailableDimension(context, typedArrayObtainStyledAttributes, C1199R.styleable.MaterialTextView_android_lineHeight, C1199R.styleable.MaterialTextView_lineHeight);
        typedArrayObtainStyledAttributes.recycle();
        return firstAvailableDimension != -1;
    }

    private static int findViewAppearanceResourceId(Resources.Theme theme, AttributeSet attributeSet, int r3, int r4) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C1199R.styleable.MaterialTextView, r3, r4);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(C1199R.styleable.MaterialTextView_android_textAppearance, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }
}
