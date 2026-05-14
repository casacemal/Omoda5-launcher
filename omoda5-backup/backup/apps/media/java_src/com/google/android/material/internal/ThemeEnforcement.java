package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.C1199R;

/* loaded from: classes.dex */
public final class ThemeEnforcement {
    private static final String APPCOMPAT_THEME_NAME = "Theme.AppCompat";
    private static final String MATERIAL_THEME_NAME = "Theme.MaterialComponents";
    private static final int[] APPCOMPAT_CHECK_ATTRS = {C1199R.attr.colorPrimary};
    private static final int[] MATERIAL_CHECK_ATTRS = {C1199R.attr.colorPrimaryVariant};
    private static final int[] ANDROID_THEME_OVERLAY_ATTRS = {R.attr.theme, C1199R.attr.theme};
    private static final int[] MATERIAL_THEME_OVERLAY_ATTR = {C1199R.attr.materialThemeOverlay};

    private ThemeEnforcement() {
    }

    public static TypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] r2, int r3, int r4, int... r5) {
        checkCompatibleTheme(context, attributeSet, r3, r4);
        checkTextAppearance(context, attributeSet, r2, r3, r4, r5);
        return context.obtainStyledAttributes(attributeSet, r2, r3, r4);
    }

    public static TintTypedArray obtainTintedStyledAttributes(Context context, AttributeSet attributeSet, int[] r2, int r3, int r4, int... r5) {
        checkCompatibleTheme(context, attributeSet, r3, r4);
        checkTextAppearance(context, attributeSet, r2, r3, r4, r5);
        return TintTypedArray.obtainStyledAttributes(context, attributeSet, r2, r3, r4);
    }

    private static void checkCompatibleTheme(Context context, AttributeSet attributeSet, int r3, int r4) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1199R.styleable.ThemeEnforcement, r3, r4);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(C1199R.styleable.ThemeEnforcement_enforceMaterialTheme, false);
        typedArrayObtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(C1199R.attr.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                checkMaterialTheme(context);
            }
        }
        checkAppCompatTheme(context);
    }

    private static void checkTextAppearance(Context context, AttributeSet attributeSet, int[] r5, int r6, int r7, int... r8) {
        boolean zIsCustomTextAppearanceValid;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1199R.styleable.ThemeEnforcement, r6, r7);
        if (!typedArrayObtainStyledAttributes.getBoolean(C1199R.styleable.ThemeEnforcement_enforceTextAppearance, false)) {
            typedArrayObtainStyledAttributes.recycle();
            return;
        }
        if (r8 == null || r8.length == 0) {
            zIsCustomTextAppearanceValid = typedArrayObtainStyledAttributes.getResourceId(C1199R.styleable.ThemeEnforcement_android_textAppearance, -1) != -1;
        } else {
            zIsCustomTextAppearanceValid = isCustomTextAppearanceValid(context, attributeSet, r5, r6, r7, r8);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!zIsCustomTextAppearanceValid) {
            throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
        }
    }

    private static boolean isCustomTextAppearanceValid(Context context, AttributeSet attributeSet, int[] r3, int r4, int r5, int... r6) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, r3, r4, r5);
        for (int r0 : r6) {
            if (typedArrayObtainStyledAttributes.getResourceId(r0, -1) == -1) {
                typedArrayObtainStyledAttributes.recycle();
                return false;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return true;
    }

    public static void checkAppCompatTheme(Context context) {
        checkTheme(context, APPCOMPAT_CHECK_ATTRS, APPCOMPAT_THEME_NAME);
    }

    public static void checkMaterialTheme(Context context) {
        checkTheme(context, MATERIAL_CHECK_ATTRS, MATERIAL_THEME_NAME);
    }

    public static boolean isAppCompatTheme(Context context) {
        return isTheme(context, APPCOMPAT_CHECK_ATTRS);
    }

    public static boolean isMaterialTheme(Context context) {
        return isTheme(context, MATERIAL_CHECK_ATTRS);
    }

    private static boolean isTheme(Context context, int[] r4) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(r4);
        for (int r1 = 0; r1 < r4.length; r1++) {
            if (!typedArrayObtainStyledAttributes.hasValue(r1)) {
                typedArrayObtainStyledAttributes.recycle();
                return false;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return true;
    }

    private static void checkTheme(Context context, int[] r2, String str) {
        if (isTheme(context, r2)) {
            return;
        }
        throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
    }

    public static Context createThemedContext(Context context, AttributeSet attributeSet, int r2, int r3) {
        int r22 = obtainMaterialThemeOverlayId(context, attributeSet, r2, r3);
        if (r22 == 0) {
            return context;
        }
        if ((context instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context).getThemeResId() == r22) {
            return context;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, r22);
        int r0 = obtainAndroidThemeOverlayId(contextThemeWrapper, attributeSet);
        return r0 != 0 ? new ContextThemeWrapper(contextThemeWrapper, r0) : contextThemeWrapper;
    }

    private static int obtainAndroidThemeOverlayId(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ANDROID_THEME_OVERLAY_ATTRS);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != 0 ? resourceId : resourceId2;
    }

    private static int obtainMaterialThemeOverlayId(Context context, AttributeSet attributeSet, int r3, int r4) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, MATERIAL_THEME_OVERLAY_ATTR, r3, r4);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }
}
