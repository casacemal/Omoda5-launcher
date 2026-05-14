package androidx.core.util;

import java.util.Locale;

/* loaded from: classes.dex */
public final class Preconditions {
    public static void checkArgument(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void checkArgument(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    public static <T> T checkNotNull(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void checkState(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str);
        }
    }

    public static void checkState(boolean z) {
        checkState(z, null);
    }

    public static int checkArgumentNonnegative(int r0, String str) {
        if (r0 >= 0) {
            return r0;
        }
        throw new IllegalArgumentException(str);
    }

    public static int checkArgumentNonnegative(int r0) {
        if (r0 >= 0) {
            return r0;
        }
        throw new IllegalArgumentException();
    }

    public static int checkArgumentInRange(int r5, int r6, int r7, String str) {
        if (r5 < r6) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", str, Integer.valueOf(r6), Integer.valueOf(r7)));
        }
        if (r5 <= r7) {
            return r5;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", str, Integer.valueOf(r6), Integer.valueOf(r7)));
    }

    private Preconditions() {
    }
}
