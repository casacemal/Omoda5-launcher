package androidx.vectordrawable.graphics.drawable;

import android.animation.TypeEvaluator;

/* loaded from: classes.dex */
public class ArgbEvaluator implements TypeEvaluator {
    private static final ArgbEvaluator sInstance = new ArgbEvaluator();

    public static ArgbEvaluator getInstance() {
        return sInstance;
    }

    @Override // android.animation.TypeEvaluator
    public Object evaluate(float f, Object obj, Object obj2) {
        int r10 = ((Integer) obj).intValue();
        float f2 = ((r10 >> 24) & 255) / 255.0f;
        int r13 = ((Integer) obj2).intValue();
        float fPow = (float) Math.pow(((r10 >> 16) & 255) / 255.0f, 2.2d);
        float fPow2 = (float) Math.pow(((r10 >> 8) & 255) / 255.0f, 2.2d);
        float fPow3 = (float) Math.pow((r10 & 255) / 255.0f, 2.2d);
        float fPow4 = (float) Math.pow(((r13 >> 16) & 255) / 255.0f, 2.2d);
        float f3 = f2 + (((((r13 >> 24) & 255) / 255.0f) - f2) * f);
        float fPow5 = fPow2 + ((((float) Math.pow(((r13 >> 8) & 255) / 255.0f, 2.2d)) - fPow2) * f);
        float fPow6 = fPow3 + (f * (((float) Math.pow((r13 & 255) / 255.0f, 2.2d)) - fPow3));
        float fPow7 = ((float) Math.pow(fPow + ((fPow4 - fPow) * f), 0.45454545454545453d)) * 255.0f;
        float fPow8 = ((float) Math.pow(fPow5, 0.45454545454545453d)) * 255.0f;
        return Integer.valueOf(Math.round(((float) Math.pow(fPow6, 0.45454545454545453d)) * 255.0f) | (Math.round(fPow7) << 16) | (Math.round(f3 * 255.0f) << 24) | (Math.round(fPow8) << 8));
    }
}
