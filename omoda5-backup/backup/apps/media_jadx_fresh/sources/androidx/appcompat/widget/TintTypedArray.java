package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.ResourcesCompat;

/* loaded from: classes.dex */
public class TintTypedArray {
    private final Context mContext;
    private TypedValue mTypedValue;
    private final TypedArray mWrapped;

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] r3) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, r3));
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] r3, int r4, int r5) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, r3, r4, r5));
    }

    public static TintTypedArray obtainStyledAttributes(Context context, int r2, int[] r3) {
        return new TintTypedArray(context, context.obtainStyledAttributes(r2, r3));
    }

    private TintTypedArray(Context context, TypedArray typedArray) {
        this.mContext = context;
        this.mWrapped = typedArray;
    }

    public Drawable getDrawable(int r3) {
        int resourceId;
        if (this.mWrapped.hasValue(r3) && (resourceId = this.mWrapped.getResourceId(r3, 0)) != 0) {
            return AppCompatResources.getDrawable(this.mContext, resourceId);
        }
        return this.mWrapped.getDrawable(r3);
    }

    public Drawable getDrawableIfKnown(int r3) {
        int resourceId;
        if (!this.mWrapped.hasValue(r3) || (resourceId = this.mWrapped.getResourceId(r3, 0)) == 0) {
            return null;
        }
        return AppCompatDrawableManager.get().getDrawable(this.mContext, resourceId, true);
    }

    public Typeface getFont(int r3, int r4, ResourcesCompat.FontCallback fontCallback) {
        int resourceId = this.mWrapped.getResourceId(r3, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        return ResourcesCompat.getFont(this.mContext, resourceId, this.mTypedValue, r4, fontCallback);
    }

    public int length() {
        return this.mWrapped.length();
    }

    public int getIndexCount() {
        return this.mWrapped.getIndexCount();
    }

    public int getIndex(int r1) {
        return this.mWrapped.getIndex(r1);
    }

    public Resources getResources() {
        return this.mWrapped.getResources();
    }

    public CharSequence getText(int r1) {
        return this.mWrapped.getText(r1);
    }

    public String getString(int r1) {
        return this.mWrapped.getString(r1);
    }

    public String getNonResourceString(int r1) {
        return this.mWrapped.getNonResourceString(r1);
    }

    public boolean getBoolean(int r1, boolean z) {
        return this.mWrapped.getBoolean(r1, z);
    }

    public int getInt(int r1, int r2) {
        return this.mWrapped.getInt(r1, r2);
    }

    public float getFloat(int r1, float f) {
        return this.mWrapped.getFloat(r1, f);
    }

    public int getColor(int r1, int r2) {
        return this.mWrapped.getColor(r1, r2);
    }

    public ColorStateList getColorStateList(int r3) {
        int resourceId;
        ColorStateList colorStateList;
        return (!this.mWrapped.hasValue(r3) || (resourceId = this.mWrapped.getResourceId(r3, 0)) == 0 || (colorStateList = AppCompatResources.getColorStateList(this.mContext, resourceId)) == null) ? this.mWrapped.getColorStateList(r3) : colorStateList;
    }

    public int getInteger(int r1, int r2) {
        return this.mWrapped.getInteger(r1, r2);
    }

    public float getDimension(int r1, float f) {
        return this.mWrapped.getDimension(r1, f);
    }

    public int getDimensionPixelOffset(int r1, int r2) {
        return this.mWrapped.getDimensionPixelOffset(r1, r2);
    }

    public int getDimensionPixelSize(int r1, int r2) {
        return this.mWrapped.getDimensionPixelSize(r1, r2);
    }

    public int getLayoutDimension(int r1, String str) {
        return this.mWrapped.getLayoutDimension(r1, str);
    }

    public int getLayoutDimension(int r1, int r2) {
        return this.mWrapped.getLayoutDimension(r1, r2);
    }

    public float getFraction(int r1, int r2, int r3, float f) {
        return this.mWrapped.getFraction(r1, r2, r3, f);
    }

    public int getResourceId(int r1, int r2) {
        return this.mWrapped.getResourceId(r1, r2);
    }

    public CharSequence[] getTextArray(int r1) {
        return this.mWrapped.getTextArray(r1);
    }

    public boolean getValue(int r1, TypedValue typedValue) {
        return this.mWrapped.getValue(r1, typedValue);
    }

    public int getType(int r3) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.mWrapped.getType(r3);
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        this.mWrapped.getValue(r3, this.mTypedValue);
        return this.mTypedValue.type;
    }

    public boolean hasValue(int r1) {
        return this.mWrapped.hasValue(r1);
    }

    public TypedValue peekValue(int r1) {
        return this.mWrapped.peekValue(r1);
    }

    public String getPositionDescription() {
        return this.mWrapped.getPositionDescription();
    }

    public void recycle() {
        this.mWrapped.recycle();
    }

    public int getChangingConfigurations() {
        return this.mWrapped.getChangingConfigurations();
    }
}
