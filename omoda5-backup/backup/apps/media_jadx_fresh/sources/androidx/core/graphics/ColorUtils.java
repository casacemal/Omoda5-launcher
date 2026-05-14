package androidx.core.graphics;

import android.graphics.Color;
import androidx.core.view.ViewCompat;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ColorUtils {
    private static final int MIN_ALPHA_SEARCH_MAX_ITERATIONS = 10;
    private static final int MIN_ALPHA_SEARCH_PRECISION = 1;
    private static final ThreadLocal<double[]> TEMP_ARRAY = new ThreadLocal<>();
    private static final double XYZ_EPSILON = 0.008856d;
    private static final double XYZ_KAPPA = 903.3d;
    private static final double XYZ_WHITE_REFERENCE_X = 95.047d;
    private static final double XYZ_WHITE_REFERENCE_Y = 100.0d;
    private static final double XYZ_WHITE_REFERENCE_Z = 108.883d;

    private static float constrain(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    private static int constrain(int r0, int r1, int r2) {
        return r0 < r1 ? r1 : r0 > r2 ? r2 : r0;
    }

    private ColorUtils() {
    }

    public static int compositeColors(int r6, int r7) {
        int r0 = Color.alpha(r7);
        int r1 = Color.alpha(r6);
        int r2 = compositeAlpha(r1, r0);
        return Color.argb(r2, compositeComponent(Color.red(r6), r1, Color.red(r7), r0, r2), compositeComponent(Color.green(r6), r1, Color.green(r7), r0, r2), compositeComponent(Color.blue(r6), r1, Color.blue(r7), r0, r2));
    }

    public static Color compositeColors(Color color, Color color2) {
        if (!Objects.equals(color.getModel(), color2.getModel())) {
            throw new IllegalArgumentException("Color models must match (" + color.getModel() + " vs. " + color2.getModel() + ")");
        }
        if (!Objects.equals(color2.getColorSpace(), color.getColorSpace())) {
            color = color.convert(color2.getColorSpace());
        }
        float[] components = color.getComponents();
        float[] components2 = color2.getComponents();
        float fAlpha = color.alpha();
        float fAlpha2 = color2.alpha() * (1.0f - fAlpha);
        int componentCount = color2.getComponentCount() - 1;
        components2[componentCount] = fAlpha + fAlpha2;
        if (components2[componentCount] > 0.0f) {
            fAlpha /= components2[componentCount];
            fAlpha2 /= components2[componentCount];
        }
        for (int r4 = 0; r4 < componentCount; r4++) {
            components2[r4] = (components[r4] * fAlpha) + (components2[r4] * fAlpha2);
        }
        return Color.valueOf(components2, color2.getColorSpace());
    }

    private static int compositeAlpha(int r0, int r1) {
        return 255 - (((255 - r1) * (255 - r0)) / 255);
    }

    private static int compositeComponent(int r0, int r1, int r2, int r3, int r4) {
        if (r4 == 0) {
            return 0;
        }
        return (((r0 * 255) * r1) + ((r2 * r3) * (255 - r1))) / (r4 * 255);
    }

    public static double calculateLuminance(int r4) {
        double[] tempDouble3Array = getTempDouble3Array();
        colorToXYZ(r4, tempDouble3Array);
        return tempDouble3Array[1] / XYZ_WHITE_REFERENCE_Y;
    }

    public static double calculateContrast(int r4, int r5) {
        if (Color.alpha(r5) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(r5));
        }
        if (Color.alpha(r4) < 255) {
            r4 = compositeColors(r4, r5);
        }
        double dCalculateLuminance = calculateLuminance(r4) + 0.05d;
        double dCalculateLuminance2 = calculateLuminance(r5) + 0.05d;
        return Math.max(dCalculateLuminance, dCalculateLuminance2) / Math.min(dCalculateLuminance, dCalculateLuminance2);
    }

    public static int calculateMinimumAlpha(int r8, int r9, float f) {
        int r1 = 255;
        if (Color.alpha(r9) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(r9));
        }
        double d = f;
        if (calculateContrast(setAlphaComponent(r8, 255), r9) < d) {
            return -1;
        }
        int r0 = 0;
        for (int r10 = 0; r10 <= 10 && r1 - r0 > 1; r10++) {
            int r2 = (r0 + r1) / 2;
            if (calculateContrast(setAlphaComponent(r8, r2), r9) < d) {
                r0 = r2;
            } else {
                r1 = r2;
            }
        }
        return r1;
    }

    public static void RGBToHSL(int r7, int r8, int r9, float[] fArr) {
        float f;
        float fAbs;
        float f2 = r7 / 255.0f;
        float f3 = r8 / 255.0f;
        float f4 = r9 / 255.0f;
        float fMax = Math.max(f2, Math.max(f3, f4));
        float fMin = Math.min(f2, Math.min(f3, f4));
        float f5 = fMax - fMin;
        float f6 = (fMax + fMin) / 2.0f;
        if (fMax == fMin) {
            f = 0.0f;
            fAbs = 0.0f;
        } else {
            f = fMax == f2 ? ((f3 - f4) / f5) % 6.0f : fMax == f3 ? ((f4 - f2) / f5) + 2.0f : 4.0f + ((f2 - f3) / f5);
            fAbs = f5 / (1.0f - Math.abs((2.0f * f6) - 1.0f));
        }
        float f7 = (f * 60.0f) % 360.0f;
        if (f7 < 0.0f) {
            f7 += 360.0f;
        }
        fArr[0] = constrain(f7, 0.0f, 360.0f);
        fArr[1] = constrain(fAbs, 0.0f, 1.0f);
        fArr[2] = constrain(f6, 0.0f, 1.0f);
    }

    public static void colorToHSL(int r2, float[] fArr) {
        RGBToHSL(Color.red(r2), Color.green(r2), Color.blue(r2), fArr);
    }

    public static int HSLToColor(float[] fArr) {
        int r1;
        int r3;
        int r6;
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float fAbs = (1.0f - Math.abs((f3 * 2.0f) - 1.0f)) * f2;
        float f4 = f3 - (0.5f * fAbs);
        float fAbs2 = (1.0f - Math.abs(((f / 60.0f) % 2.0f) - 1.0f)) * fAbs;
        switch (((int) f) / 60) {
            case 0:
                r1 = Math.round((fAbs + f4) * 255.0f);
                r3 = Math.round((fAbs2 + f4) * 255.0f);
                r6 = Math.round(f4 * 255.0f);
                break;
            case 1:
                r1 = Math.round((fAbs2 + f4) * 255.0f);
                r3 = Math.round((fAbs + f4) * 255.0f);
                r6 = Math.round(f4 * 255.0f);
                break;
            case 2:
                r1 = Math.round(f4 * 255.0f);
                r3 = Math.round((fAbs + f4) * 255.0f);
                r6 = Math.round((fAbs2 + f4) * 255.0f);
                break;
            case 3:
                r1 = Math.round(f4 * 255.0f);
                r3 = Math.round((fAbs2 + f4) * 255.0f);
                r6 = Math.round((fAbs + f4) * 255.0f);
                break;
            case 4:
                r1 = Math.round((fAbs2 + f4) * 255.0f);
                r3 = Math.round(f4 * 255.0f);
                r6 = Math.round((fAbs + f4) * 255.0f);
                break;
            case 5:
            case 6:
                r1 = Math.round((fAbs + f4) * 255.0f);
                r3 = Math.round(f4 * 255.0f);
                r6 = Math.round((fAbs2 + f4) * 255.0f);
                break;
            default:
                r6 = 0;
                r1 = 0;
                r3 = 0;
                break;
        }
        return Color.rgb(constrain(r1, 0, 255), constrain(r3, 0, 255), constrain(r6, 0, 255));
    }

    public static int setAlphaComponent(int r1, int r2) {
        if (r2 < 0 || r2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (r1 & ViewCompat.MEASURED_SIZE_MASK) | (r2 << 24);
    }

    public static void colorToLAB(int r2, double[] dArr) {
        RGBToLAB(Color.red(r2), Color.green(r2), Color.blue(r2), dArr);
    }

    public static void RGBToLAB(int r7, int r8, int r9, double[] dArr) {
        RGBToXYZ(r7, r8, r9, dArr);
        XYZToLAB(dArr[0], dArr[1], dArr[2], dArr);
    }

    public static void colorToXYZ(int r2, double[] dArr) {
        RGBToXYZ(Color.red(r2), Color.green(r2), Color.blue(r2), dArr);
    }

    public static void RGBToXYZ(int r16, int r17, int r18, double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outXyz must have a length of 3.");
        }
        double d = r16 / 255.0d;
        double dPow = d < 0.04045d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
        double d2 = r17 / 255.0d;
        double dPow2 = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
        double d3 = r18 / 255.0d;
        double dPow3 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
        dArr[0] = ((0.4124d * dPow) + (0.3576d * dPow2) + (0.1805d * dPow3)) * XYZ_WHITE_REFERENCE_Y;
        dArr[1] = ((0.2126d * dPow) + (0.7152d * dPow2) + (0.0722d * dPow3)) * XYZ_WHITE_REFERENCE_Y;
        dArr[2] = ((dPow * 0.0193d) + (dPow2 * 0.1192d) + (dPow3 * 0.9505d)) * XYZ_WHITE_REFERENCE_Y;
    }

    public static void XYZToLAB(double d, double d2, double d3, double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outLab must have a length of 3.");
        }
        double dPivotXyzComponent = pivotXyzComponent(d / XYZ_WHITE_REFERENCE_X);
        double dPivotXyzComponent2 = pivotXyzComponent(d2 / XYZ_WHITE_REFERENCE_Y);
        double dPivotXyzComponent3 = pivotXyzComponent(d3 / XYZ_WHITE_REFERENCE_Z);
        dArr[0] = Math.max(0.0d, (116.0d * dPivotXyzComponent2) - 16.0d);
        dArr[1] = (dPivotXyzComponent - dPivotXyzComponent2) * 500.0d;
        dArr[2] = (dPivotXyzComponent2 - dPivotXyzComponent3) * 200.0d;
    }

    public static void LABToXYZ(double d, double d2, double d3, double[] dArr) {
        double d4 = (d + 16.0d) / 116.0d;
        double d5 = (d2 / 500.0d) + d4;
        double d6 = d4 - (d3 / 200.0d);
        double dPow = Math.pow(d5, 3.0d);
        if (dPow <= XYZ_EPSILON) {
            dPow = ((d5 * 116.0d) - 16.0d) / XYZ_KAPPA;
        }
        double dPow2 = d > 7.9996247999999985d ? Math.pow(d4, 3.0d) : d / XYZ_KAPPA;
        double dPow3 = Math.pow(d6, 3.0d);
        if (dPow3 <= XYZ_EPSILON) {
            dPow3 = ((d6 * 116.0d) - 16.0d) / XYZ_KAPPA;
        }
        dArr[0] = dPow * XYZ_WHITE_REFERENCE_X;
        dArr[1] = dPow2 * XYZ_WHITE_REFERENCE_Y;
        dArr[2] = dPow3 * XYZ_WHITE_REFERENCE_Z;
    }

    public static int XYZToColor(double d, double d2, double d3) {
        double d4 = (((3.2406d * d) + ((-1.5372d) * d2)) + ((-0.4986d) * d3)) / XYZ_WHITE_REFERENCE_Y;
        double d5 = ((((-0.9689d) * d) + (1.8758d * d2)) + (0.0415d * d3)) / XYZ_WHITE_REFERENCE_Y;
        double d6 = (((0.0557d * d) + ((-0.204d) * d2)) + (1.057d * d3)) / XYZ_WHITE_REFERENCE_Y;
        return Color.rgb(constrain((int) Math.round((d4 > 0.0031308d ? (Math.pow(d4, 0.4166666666666667d) * 1.055d) - 0.055d : d4 * 12.92d) * 255.0d), 0, 255), constrain((int) Math.round((d5 > 0.0031308d ? (Math.pow(d5, 0.4166666666666667d) * 1.055d) - 0.055d : d5 * 12.92d) * 255.0d), 0, 255), constrain((int) Math.round((d6 > 0.0031308d ? (Math.pow(d6, 0.4166666666666667d) * 1.055d) - 0.055d : d6 * 12.92d) * 255.0d), 0, 255));
    }

    public static int LABToColor(double d, double d2, double d3) {
        double[] tempDouble3Array = getTempDouble3Array();
        LABToXYZ(d, d2, d3, tempDouble3Array);
        return XYZToColor(tempDouble3Array[0], tempDouble3Array[1], tempDouble3Array[2]);
    }

    public static double distanceEuclidean(double[] dArr, double[] dArr2) {
        return Math.sqrt(Math.pow(dArr[0] - dArr2[0], 2.0d) + Math.pow(dArr[1] - dArr2[1], 2.0d) + Math.pow(dArr[2] - dArr2[2], 2.0d));
    }

    private static double pivotXyzComponent(double d) {
        return d > XYZ_EPSILON ? Math.pow(d, 0.3333333333333333d) : ((d * XYZ_KAPPA) + 16.0d) / 116.0d;
    }

    public static int blendARGB(int r5, int r6, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(r5) * f2) + (Color.alpha(r6) * f)), (int) ((Color.red(r5) * f2) + (Color.red(r6) * f)), (int) ((Color.green(r5) * f2) + (Color.green(r6) * f)), (int) ((Color.blue(r5) * f2) + (Color.blue(r6) * f)));
    }

    public static void blendHSL(float[] fArr, float[] fArr2, float f, float[] fArr3) {
        if (fArr3.length != 3) {
            throw new IllegalArgumentException("result must have a length of 3.");
        }
        float f2 = 1.0f - f;
        fArr3[0] = circularInterpolate(fArr[0], fArr2[0], f);
        fArr3[1] = (fArr[1] * f2) + (fArr2[1] * f);
        fArr3[2] = (fArr[2] * f2) + (fArr2[2] * f);
    }

    public static void blendLAB(double[] dArr, double[] dArr2, double d, double[] dArr3) {
        if (dArr3.length != 3) {
            throw new IllegalArgumentException("outResult must have a length of 3.");
        }
        double d2 = 1.0d - d;
        dArr3[0] = (dArr[0] * d2) + (dArr2[0] * d);
        dArr3[1] = (dArr[1] * d2) + (dArr2[1] * d);
        dArr3[2] = (dArr[2] * d2) + (dArr2[2] * d);
    }

    static float circularInterpolate(float f, float f2, float f3) {
        if (Math.abs(f2 - f) > 180.0f) {
            if (f2 > f) {
                f += 360.0f;
            } else {
                f2 += 360.0f;
            }
        }
        return (f + ((f2 - f) * f3)) % 360.0f;
    }

    private static double[] getTempDouble3Array() {
        double[] dArr = TEMP_ARRAY.get();
        if (dArr != null) {
            return dArr;
        }
        double[] dArr2 = new double[3];
        TEMP_ARRAY.set(dArr2);
        return dArr2;
    }
}
