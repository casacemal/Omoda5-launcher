package androidx.vectordrawable.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class PathInterpolatorCompat implements Interpolator {
    public static final double EPSILON = 1.0E-5d;
    public static final int MAX_NUM_POINTS = 3000;
    private static final float PRECISION = 0.002f;

    /* renamed from: mX */
    private float[] f49mX;

    /* renamed from: mY */
    private float[] f50mY;

    public PathInterpolatorCompat(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    public PathInterpolatorCompat(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_PATH_INTERPOLATOR);
        parseInterpolatorFromTypeArray(typedArrayObtainAttributes, xmlPullParser);
        typedArrayObtainAttributes.recycle();
    }

    private void parseInterpolatorFromTypeArray(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
            String namedString = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "pathData", 4);
            Path pathCreatePathFromPathData = PathParser.createPathFromPathData(namedString);
            if (pathCreatePathFromPathData == null) {
                throw new InflateException("The path is null, which is created from " + namedString);
            }
            initPath(pathCreatePathFromPathData);
            return;
        }
        if (!TypedArrayUtils.hasAttribute(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
        if (!TypedArrayUtils.hasAttribute(xmlPullParser, "controlY1")) {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        float namedFloat = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
        float namedFloat2 = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
        boolean zHasAttribute = TypedArrayUtils.hasAttribute(xmlPullParser, "controlX2");
        if (zHasAttribute != TypedArrayUtils.hasAttribute(xmlPullParser, "controlY2")) {
            throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
        }
        if (!zHasAttribute) {
            initQuad(namedFloat, namedFloat2);
        } else {
            initCubic(namedFloat, namedFloat2, TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlX2", 2, 0.0f), TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
        }
    }

    private void initQuad(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
        initPath(path);
    }

    private void initCubic(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        initPath(path);
    }

    private void initPath(Path path) {
        int r1 = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int r2 = Math.min(MAX_NUM_POINTS, ((int) (length / PRECISION)) + 1);
        if (r2 <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.f49mX = new float[r2];
        this.f50mY = new float[r2];
        float[] fArr = new float[2];
        for (int r5 = 0; r5 < r2; r5++) {
            pathMeasure.getPosTan((r5 * length) / (r2 - 1), fArr, null);
            this.f49mX[r5] = fArr[0];
            this.f50mY[r5] = fArr[1];
        }
        if (Math.abs(this.f49mX[0]) <= 1.0E-5d && Math.abs(this.f50mY[0]) <= 1.0E-5d) {
            int r4 = r2 - 1;
            if (Math.abs(this.f49mX[r4] - 1.0f) <= 1.0E-5d && Math.abs(this.f50mY[r4] - 1.0f) <= 1.0E-5d) {
                float f = 0.0f;
                int r3 = 0;
                while (r1 < r2) {
                    float[] fArr2 = this.f49mX;
                    int r52 = r3 + 1;
                    float f2 = fArr2[r3];
                    if (f2 < f) {
                        throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f2);
                    }
                    fArr2[r1] = f2;
                    r1++;
                    f = f2;
                    r3 = r52;
                }
                if (pathMeasure.nextContour()) {
                    throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                }
                return;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("The Path must start at (0,0) and end at (1,1) start: ");
        sb.append(this.f49mX[0]);
        sb.append(",");
        sb.append(this.f50mY[0]);
        sb.append(" end:");
        int r22 = r2 - 1;
        sb.append(this.f49mX[r22]);
        sb.append(",");
        sb.append(this.f50mY[r22]);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int r1 = 0;
        int length = this.f49mX.length - 1;
        while (length - r1 > 1) {
            int r4 = (r1 + length) / 2;
            if (f < this.f49mX[r4]) {
                length = r4;
            } else {
                r1 = r4;
            }
        }
        float[] fArr = this.f49mX;
        float f2 = fArr[length] - fArr[r1];
        if (f2 == 0.0f) {
            return this.f50mY[r1];
        }
        float f3 = (f - fArr[r1]) / f2;
        float[] fArr2 = this.f50mY;
        float f4 = fArr2[r1];
        return f4 + (f3 * (fArr2[length] - f4));
    }
}
