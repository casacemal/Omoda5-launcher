package com.google.android.material.resources;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import com.google.android.material.C1199R;

/* loaded from: classes.dex */
public class MaterialAttributes {
    public static TypedValue resolve(Context context, int r3) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(r3, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static int resolveOrThrow(Context context, int r4, String str) {
        TypedValue typedValueResolve = resolve(context, r4);
        if (typedValueResolve == null) {
            throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(r4)));
        }
        return typedValueResolve.data;
    }

    public static int resolveOrThrow(View view, int r2) {
        return resolveOrThrow(view.getContext(), r2, view.getClass().getCanonicalName());
    }

    public static boolean resolveBooleanOrThrow(Context context, int r1, String str) {
        return resolveOrThrow(context, r1, str) != 0;
    }

    public static boolean resolveBoolean(Context context, int r2, boolean z) {
        TypedValue typedValueResolve = resolve(context, r2);
        return (typedValueResolve == null || typedValueResolve.type != 18) ? z : typedValueResolve.data != 0;
    }

    public static int resolveMinimumAccessibleTouchTarget(Context context) {
        return resolveDimension(context, C1199R.attr.minTouchTargetSize, C1199R.dimen.mtrl_min_touch_target_size);
    }

    public static int resolveDimension(Context context, int r3, int r4) throws Resources.NotFoundException {
        float dimension;
        TypedValue typedValueResolve = resolve(context, r3);
        if (typedValueResolve == null || typedValueResolve.type != 5) {
            dimension = context.getResources().getDimension(r4);
        } else {
            dimension = typedValueResolve.getDimension(context.getResources().getDisplayMetrics());
        }
        return (int) dimension;
    }
}
