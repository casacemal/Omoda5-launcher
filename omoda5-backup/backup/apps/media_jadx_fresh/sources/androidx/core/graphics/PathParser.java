package androidx.core.graphics;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class PathParser {
    private static final String LOGTAG = "PathParser";

    static float[] copyOfRange(float[] fArr, int r3, int r4) {
        if (r3 > r4) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (r3 < 0 || r3 > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int r42 = r4 - r3;
        int r0 = Math.min(r42, length - r3);
        float[] fArr2 = new float[r42];
        System.arraycopy(fArr, r3, fArr2, 0, r0);
        return fArr2;
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        PathDataNode[] pathDataNodeArrCreateNodesFromPathData = createNodesFromPathData(str);
        if (pathDataNodeArrCreateNodesFromPathData == null) {
            return null;
        }
        try {
            PathDataNode.nodesToPath(pathDataNodeArrCreateNodesFromPathData, path);
            return path;
        } catch (RuntimeException e) {
            throw new RuntimeException("Error in parsing " + str, e);
        }
    }

    public static PathDataNode[] createNodesFromPathData(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int r3 = 1;
        int r4 = 0;
        while (r3 < str.length()) {
            int r32 = nextStart(str, r3);
            String strTrim = str.substring(r4, r32).trim();
            if (strTrim.length() > 0) {
                addNode(arrayList, strTrim.charAt(0), getFloats(strTrim));
            }
            r4 = r32;
            r3 = r32 + 1;
        }
        if (r3 - r4 == 1 && r4 < str.length()) {
            addNode(arrayList, str.charAt(r4), new float[0]);
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[arrayList.size()]);
    }

    public static PathDataNode[] deepCopyNodes(PathDataNode[] pathDataNodeArr) {
        if (pathDataNodeArr == null) {
            return null;
        }
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int r1 = 0; r1 < pathDataNodeArr.length; r1++) {
            pathDataNodeArr2[r1] = new PathDataNode(pathDataNodeArr[r1]);
        }
        return pathDataNodeArr2;
    }

    public static boolean canMorph(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int r1 = 0; r1 < pathDataNodeArr.length; r1++) {
            if (pathDataNodeArr[r1].mType != pathDataNodeArr2[r1].mType || pathDataNodeArr[r1].mParams.length != pathDataNodeArr2[r1].mParams.length) {
                return false;
            }
        }
        return true;
    }

    public static void updateNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        for (int r1 = 0; r1 < pathDataNodeArr2.length; r1++) {
            pathDataNodeArr[r1].mType = pathDataNodeArr2[r1].mType;
            for (int r2 = 0; r2 < pathDataNodeArr2[r1].mParams.length; r2++) {
                pathDataNodeArr[r1].mParams[r2] = pathDataNodeArr2[r1].mParams[r2];
            }
        }
    }

    private static int nextStart(String str, int r4) {
        while (r4 < str.length()) {
            char cCharAt = str.charAt(r4);
            if (((cCharAt - 'A') * (cCharAt - 'Z') <= 0 || (cCharAt - 'a') * (cCharAt - 'z') <= 0) && cCharAt != 'e' && cCharAt != 'E') {
                return r4;
            }
            r4++;
        }
        return r4;
    }

    private static void addNode(ArrayList<PathDataNode> arrayList, char c, float[] fArr) {
        arrayList.add(new PathDataNode(c, fArr));
    }

    private static class ExtractFloatResult {
        int mEndPosition;
        boolean mEndWithNegOrDot;

        ExtractFloatResult() {
        }
    }

    private static float[] getFloats(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            ExtractFloatResult extractFloatResult = new ExtractFloatResult();
            int length = str.length();
            int r4 = 1;
            int r5 = 0;
            while (r4 < length) {
                extract(str, r4, extractFloatResult);
                int r6 = extractFloatResult.mEndPosition;
                if (r4 < r6) {
                    fArr[r5] = Float.parseFloat(str.substring(r4, r6));
                    r5++;
                }
                r4 = extractFloatResult.mEndWithNegOrDot ? r6 : r6 + 1;
            }
            return copyOfRange(fArr, 0, r5);
        } catch (NumberFormatException e) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003a A[LOOP:0: B:3:0x0007->B:24:0x003a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void extract(java.lang.String r8, int r9, androidx.core.graphics.PathParser.ExtractFloatResult r10) {
        /*
            r0 = 0
            r10.mEndWithNegOrDot = r0
            r1 = r9
            r2 = r0
            r3 = r2
            r4 = r3
        L7:
            int r5 = r8.length()
            if (r1 >= r5) goto L3d
            char r5 = r8.charAt(r1)
            r6 = 32
            r7 = 1
            if (r5 == r6) goto L35
            r6 = 69
            if (r5 == r6) goto L33
            r6 = 101(0x65, float:1.42E-43)
            if (r5 == r6) goto L33
            switch(r5) {
                case 44: goto L35;
                case 45: goto L2a;
                case 46: goto L22;
                default: goto L21;
            }
        L21:
            goto L31
        L22:
            if (r3 != 0) goto L27
            r2 = r0
            r3 = r7
            goto L37
        L27:
            r10.mEndWithNegOrDot = r7
            goto L35
        L2a:
            if (r1 == r9) goto L31
            if (r2 != 0) goto L31
            r10.mEndWithNegOrDot = r7
            goto L35
        L31:
            r2 = r0
            goto L37
        L33:
            r2 = r7
            goto L37
        L35:
            r2 = r0
            r4 = r7
        L37:
            if (r4 == 0) goto L3a
            goto L3d
        L3a:
            int r1 = r1 + 1
            goto L7
        L3d:
            r10.mEndPosition = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.PathParser.extract(java.lang.String, int, androidx.core.graphics.PathParser$ExtractFloatResult):void");
    }

    public static boolean interpolatePathDataNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2, PathDataNode[] pathDataNodeArr3, float f) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr3 == null) {
            throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes cannot be null");
        }
        if (pathDataNodeArr.length != pathDataNodeArr2.length || pathDataNodeArr2.length != pathDataNodeArr3.length) {
            throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes must have the same length");
        }
        if (!canMorph(pathDataNodeArr2, pathDataNodeArr3)) {
            return false;
        }
        for (int r1 = 0; r1 < pathDataNodeArr.length; r1++) {
            pathDataNodeArr[r1].interpolatePathDataNode(pathDataNodeArr2[r1], pathDataNodeArr3[r1], f);
        }
        return true;
    }

    public static class PathDataNode {
        public float[] mParams;
        public char mType;

        PathDataNode(char c, float[] fArr) {
            this.mType = c;
            this.mParams = fArr;
        }

        PathDataNode(PathDataNode pathDataNode) {
            this.mType = pathDataNode.mType;
            float[] fArr = pathDataNode.mParams;
            this.mParams = PathParser.copyOfRange(fArr, 0, fArr.length);
        }

        public static void nodesToPath(PathDataNode[] pathDataNodeArr, Path path) {
            float[] fArr = new float[6];
            char c = 'm';
            for (int r2 = 0; r2 < pathDataNodeArr.length; r2++) {
                addCommand(path, fArr, c, pathDataNodeArr[r2].mType, pathDataNodeArr[r2].mParams);
                c = pathDataNodeArr[r2].mType;
            }
        }

        public void interpolatePathDataNode(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f) {
            this.mType = pathDataNode.mType;
            int r0 = 0;
            while (true) {
                float[] fArr = pathDataNode.mParams;
                if (r0 >= fArr.length) {
                    return;
                }
                this.mParams[r0] = (fArr[r0] * (1.0f - f)) + (pathDataNode2.mParams[r0] * f);
                r0++;
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private static void addCommand(Path path, float[] fArr, char c, char c2, float[] fArr2) {
            int r6;
            int r19;
            int r24;
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            char c3 = c2;
            boolean z = false;
            float f9 = fArr[0];
            float f10 = fArr[1];
            float f11 = fArr[2];
            float f12 = fArr[3];
            float f13 = fArr[4];
            float f14 = fArr[5];
            switch (c3) {
                case 'A':
                case 'a':
                    r6 = 7;
                    r19 = r6;
                    break;
                case 'C':
                case 'c':
                    r6 = 6;
                    r19 = r6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    r19 = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                default:
                    r19 = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    r19 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f13, f14);
                    f9 = f13;
                    f11 = f9;
                    f10 = f14;
                    f12 = f10;
                    r19 = 2;
                    break;
            }
            float f15 = f9;
            float f16 = f10;
            float f17 = f13;
            float f18 = f14;
            int r7 = 0;
            char c4 = c;
            while (r7 < fArr2.length) {
                if (c3 != 'A') {
                    if (c3 == 'C') {
                        r24 = r7;
                        int r72 = r24 + 2;
                        int r8 = r24 + 3;
                        int r9 = r24 + 4;
                        int r11 = r24 + 5;
                        path.cubicTo(fArr2[r24 + 0], fArr2[r24 + 1], fArr2[r72], fArr2[r8], fArr2[r9], fArr2[r11]);
                        f15 = fArr2[r9];
                        float f19 = fArr2[r11];
                        float f20 = fArr2[r72];
                        float f21 = fArr2[r8];
                        f16 = f19;
                        f12 = f21;
                        f11 = f20;
                    } else if (c3 == 'H') {
                        r24 = r7;
                        int r73 = r24 + 0;
                        path.lineTo(fArr2[r73], f16);
                        f15 = fArr2[r73];
                    } else if (c3 == 'Q') {
                        r24 = r7;
                        int r74 = r24 + 0;
                        int r1 = r24 + 1;
                        int r3 = r24 + 2;
                        int r5 = r24 + 3;
                        path.quadTo(fArr2[r74], fArr2[r1], fArr2[r3], fArr2[r5]);
                        float f22 = fArr2[r74];
                        float f23 = fArr2[r1];
                        f15 = fArr2[r3];
                        f16 = fArr2[r5];
                        f11 = f22;
                        f12 = f23;
                    } else if (c3 == 'V') {
                        r24 = r7;
                        int r75 = r24 + 0;
                        path.lineTo(f15, fArr2[r75]);
                        f16 = fArr2[r75];
                    } else if (c3 != 'a') {
                        if (c3 != 'c') {
                            if (c3 == 'h') {
                                int r0 = r7 + 0;
                                path.rLineTo(fArr2[r0], 0.0f);
                                f15 += fArr2[r0];
                            } else if (c3 != 'q') {
                                if (c3 == 'v') {
                                    int r02 = r7 + 0;
                                    path.rLineTo(0.0f, fArr2[r02]);
                                    f4 = fArr2[r02];
                                } else if (c3 == 'L') {
                                    int r03 = r7 + 0;
                                    int r4 = r7 + 1;
                                    path.lineTo(fArr2[r03], fArr2[r4]);
                                    f15 = fArr2[r03];
                                    f16 = fArr2[r4];
                                } else if (c3 == 'M') {
                                    int r04 = r7 + 0;
                                    f15 = fArr2[r04];
                                    int r12 = r7 + 1;
                                    f16 = fArr2[r12];
                                    if (r7 > 0) {
                                        path.lineTo(fArr2[r04], fArr2[r12]);
                                    } else {
                                        path.moveTo(fArr2[r04], fArr2[r12]);
                                        r24 = r7;
                                        f18 = f16;
                                        f17 = f15;
                                    }
                                } else if (c3 == 'S') {
                                    if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                                        f15 = (f15 * 2.0f) - f11;
                                        f16 = (f16 * 2.0f) - f12;
                                    }
                                    float f24 = f16;
                                    int r82 = r7 + 0;
                                    int r92 = r7 + 1;
                                    int r13 = r7 + 2;
                                    int r14 = r7 + 3;
                                    path.cubicTo(f15, f24, fArr2[r82], fArr2[r92], fArr2[r13], fArr2[r14]);
                                    f = fArr2[r82];
                                    f2 = fArr2[r92];
                                    f15 = fArr2[r13];
                                    f16 = fArr2[r14];
                                    f11 = f;
                                    f12 = f2;
                                } else if (c3 == 'T') {
                                    if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                                        f15 = (f15 * 2.0f) - f11;
                                        f16 = (f16 * 2.0f) - f12;
                                    }
                                    int r05 = r7 + 0;
                                    int r2 = r7 + 1;
                                    path.quadTo(f15, f16, fArr2[r05], fArr2[r2]);
                                    float f25 = fArr2[r05];
                                    float f26 = fArr2[r2];
                                    r24 = r7;
                                    f12 = f16;
                                    f11 = f15;
                                    f15 = f25;
                                    f16 = f26;
                                } else if (c3 == 'l') {
                                    int r06 = r7 + 0;
                                    int r42 = r7 + 1;
                                    path.rLineTo(fArr2[r06], fArr2[r42]);
                                    f15 += fArr2[r06];
                                    f4 = fArr2[r42];
                                } else if (c3 == 'm') {
                                    int r07 = r7 + 0;
                                    f15 += fArr2[r07];
                                    int r15 = r7 + 1;
                                    f16 += fArr2[r15];
                                    if (r7 > 0) {
                                        path.rLineTo(fArr2[r07], fArr2[r15]);
                                    } else {
                                        path.rMoveTo(fArr2[r07], fArr2[r15]);
                                        r24 = r7;
                                        f18 = f16;
                                        f17 = f15;
                                    }
                                } else if (c3 == 's') {
                                    if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                                        float f27 = f15 - f11;
                                        f5 = f16 - f12;
                                        f6 = f27;
                                    } else {
                                        f6 = 0.0f;
                                        f5 = 0.0f;
                                    }
                                    int r132 = r7 + 0;
                                    int r142 = r7 + 1;
                                    int r152 = r7 + 2;
                                    int r22 = r7 + 3;
                                    path.rCubicTo(f6, f5, fArr2[r132], fArr2[r142], fArr2[r152], fArr2[r22]);
                                    f = fArr2[r132] + f15;
                                    f2 = fArr2[r142] + f16;
                                    f15 += fArr2[r152];
                                    f3 = fArr2[r22];
                                } else if (c3 == 't') {
                                    if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                                        f7 = f15 - f11;
                                        f8 = f16 - f12;
                                    } else {
                                        f8 = 0.0f;
                                        f7 = 0.0f;
                                    }
                                    int r16 = r7 + 0;
                                    int r32 = r7 + 1;
                                    path.rQuadTo(f7, f8, fArr2[r16], fArr2[r32]);
                                    float f28 = f7 + f15;
                                    float f29 = f8 + f16;
                                    f15 += fArr2[r16];
                                    f16 += fArr2[r32];
                                    f12 = f29;
                                    f11 = f28;
                                }
                                f16 += f4;
                            } else {
                                int r08 = r7 + 0;
                                int r23 = r7 + 1;
                                int r43 = r7 + 2;
                                int r62 = r7 + 3;
                                path.rQuadTo(fArr2[r08], fArr2[r23], fArr2[r43], fArr2[r62]);
                                f = fArr2[r08] + f15;
                                f2 = fArr2[r23] + f16;
                                f15 += fArr2[r43];
                                f3 = fArr2[r62];
                            }
                            r24 = r7;
                        } else {
                            int r133 = r7 + 2;
                            int r143 = r7 + 3;
                            int r153 = r7 + 4;
                            int r222 = r7 + 5;
                            path.rCubicTo(fArr2[r7 + 0], fArr2[r7 + 1], fArr2[r133], fArr2[r143], fArr2[r153], fArr2[r222]);
                            f = fArr2[r133] + f15;
                            f2 = fArr2[r143] + f16;
                            f15 += fArr2[r153];
                            f3 = fArr2[r222];
                        }
                        f16 += f3;
                        f11 = f;
                        f12 = f2;
                        r24 = r7;
                    } else {
                        int r134 = r7 + 5;
                        int r144 = r7 + 6;
                        r24 = r7;
                        drawArc(path, f15, f16, fArr2[r134] + f15, fArr2[r144] + f16, fArr2[r7 + 0], fArr2[r7 + 1], fArr2[r7 + 2], fArr2[r7 + 3] != 0.0f, fArr2[r7 + 4] != 0.0f);
                        f15 += fArr2[r134];
                        f16 += fArr2[r144];
                    }
                    r7 = r24 + r19;
                    c4 = c2;
                    c3 = c4;
                    z = false;
                } else {
                    r24 = r7;
                    int r135 = r24 + 5;
                    int r145 = r24 + 6;
                    drawArc(path, f15, f16, fArr2[r135], fArr2[r145], fArr2[r24 + 0], fArr2[r24 + 1], fArr2[r24 + 2], fArr2[r24 + 3] != 0.0f, fArr2[r24 + 4] != 0.0f);
                    f15 = fArr2[r135];
                    f16 = fArr2[r145];
                }
                f12 = f16;
                f11 = f15;
                r7 = r24 + r19;
                c4 = c2;
                c3 = c4;
                z = false;
            }
            fArr[z ? 1 : 0] = f15;
            fArr[1] = f16;
            fArr[2] = f11;
            fArr[3] = f12;
            fArr[4] = f17;
            fArr[5] = f18;
        }

        private static void drawArc(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double d;
            double d2;
            double radians = Math.toRadians(f7);
            double dCos = Math.cos(radians);
            double dSin = Math.sin(radians);
            double d3 = f;
            double d4 = d3 * dCos;
            double d5 = f2;
            double d6 = f5;
            double d7 = (d4 + (d5 * dSin)) / d6;
            double d8 = ((-f) * dSin) + (d5 * dCos);
            double d9 = f6;
            double d10 = d8 / d9;
            double d11 = f4;
            double d12 = ((f3 * dCos) + (d11 * dSin)) / d6;
            double d13 = (((-f3) * dSin) + (d11 * dCos)) / d9;
            double d14 = d7 - d12;
            double d15 = d10 - d13;
            double d16 = (d7 + d12) / 2.0d;
            double d17 = (d10 + d13) / 2.0d;
            double d18 = (d14 * d14) + (d15 * d15);
            if (d18 == 0.0d) {
                Log.w(PathParser.LOGTAG, " Points are coincident");
                return;
            }
            double d19 = (1.0d / d18) - 0.25d;
            if (d19 < 0.0d) {
                Log.w(PathParser.LOGTAG, "Points are too far apart " + d18);
                float fSqrt = (float) (Math.sqrt(d18) / 1.99999d);
                drawArc(path, f, f2, f3, f4, f5 * fSqrt, f6 * fSqrt, f7, z, z2);
                return;
            }
            double dSqrt = Math.sqrt(d19);
            double d20 = d14 * dSqrt;
            double d21 = dSqrt * d15;
            if (z == z2) {
                d = d16 - d21;
                d2 = d17 + d20;
            } else {
                d = d16 + d21;
                d2 = d17 - d20;
            }
            double dAtan2 = Math.atan2(d10 - d2, d7 - d);
            double dAtan22 = Math.atan2(d13 - d2, d12 - d) - dAtan2;
            if (z2 != (dAtan22 >= 0.0d)) {
                dAtan22 = dAtan22 > 0.0d ? dAtan22 - 6.283185307179586d : dAtan22 + 6.283185307179586d;
            }
            double d22 = d * d6;
            double d23 = d2 * d9;
            arcToBezier(path, (d22 * dCos) - (d23 * dSin), (d22 * dSin) + (d23 * dCos), d6, d9, d3, d5, radians, dAtan2, dAtan22);
        }

        private static void arcToBezier(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
            double d10 = d3;
            int r4 = (int) Math.ceil(Math.abs((d9 * 4.0d) / 3.141592653589793d));
            double dCos = Math.cos(d7);
            double dSin = Math.sin(d7);
            double dCos2 = Math.cos(d8);
            double dSin2 = Math.sin(d8);
            double d11 = -d10;
            double d12 = d11 * dCos;
            double d13 = d4 * dSin;
            double d14 = (d12 * dSin2) - (d13 * dCos2);
            double d15 = d11 * dSin;
            double d16 = d4 * dCos;
            double d17 = (dSin2 * d15) + (dCos2 * d16);
            double d18 = d9 / r4;
            double d19 = d17;
            double d20 = d14;
            int r2 = 0;
            double d21 = d5;
            double d22 = d6;
            double d23 = d8;
            while (r2 < r4) {
                double d24 = d23 + d18;
                double dSin3 = Math.sin(d24);
                double dCos3 = Math.cos(d24);
                double d25 = (d + ((d10 * dCos) * dCos3)) - (d13 * dSin3);
                double d26 = d2 + (d10 * dSin * dCos3) + (d16 * dSin3);
                double d27 = (d12 * dSin3) - (d13 * dCos3);
                double d28 = (dSin3 * d15) + (dCos3 * d16);
                double d29 = d24 - d23;
                double dTan = Math.tan(d29 / 2.0d);
                double dSin4 = (Math.sin(d29) * (Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d)) / 3.0d;
                double d30 = d21 + (d20 * dSin4);
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) d30, (float) (d22 + (d19 * dSin4)), (float) (d25 - (dSin4 * d27)), (float) (d26 - (dSin4 * d28)), (float) d25, (float) d26);
                r2++;
                d18 = d18;
                dSin = dSin;
                d21 = d25;
                d15 = d15;
                dCos = dCos;
                d23 = d24;
                d19 = d28;
                d20 = d27;
                r4 = r4;
                d22 = d26;
                d10 = d3;
            }
        }
    }

    private PathParser() {
    }
}
