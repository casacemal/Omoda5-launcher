package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;

/* loaded from: classes.dex */
public class ShapeAppearancePathProvider {
    private final ShapePath[] cornerPaths = new ShapePath[4];
    private final Matrix[] cornerTransforms = new Matrix[4];
    private final Matrix[] edgeTransforms = new Matrix[4];
    private final PointF pointF = new PointF();
    private final ShapePath shapePath = new ShapePath();
    private final float[] scratch = new float[2];
    private final float[] scratch2 = new float[2];

    public interface PathListener {
        void onCornerPathCreated(ShapePath shapePath, Matrix matrix, int r3);

        void onEdgePathCreated(ShapePath shapePath, Matrix matrix, int r3);
    }

    private float angleOfEdge(int r1) {
        return (r1 + 1) * 90;
    }

    public ShapeAppearancePathProvider() {
        for (int r1 = 0; r1 < 4; r1++) {
            this.cornerPaths[r1] = new ShapePath();
            this.cornerTransforms[r1] = new Matrix();
            this.edgeTransforms[r1] = new Matrix();
        }
    }

    public void calculatePath(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, Path path) {
        calculatePath(shapeAppearanceModel, f, rectF, null, path);
    }

    public void calculatePath(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, PathListener pathListener, Path path) {
        path.rewind();
        ShapeAppearancePathSpec shapeAppearancePathSpec = new ShapeAppearancePathSpec(shapeAppearanceModel, f, rectF, pathListener, path);
        for (int r9 = 0; r9 < 4; r9++) {
            setCornerPathAndTransform(shapeAppearancePathSpec, r9);
            setEdgePathAndTransform(r9);
        }
        for (int r8 = 0; r8 < 4; r8++) {
            appendCornerPath(shapeAppearancePathSpec, r8);
            appendEdgePath(shapeAppearancePathSpec, r8);
        }
        path.close();
    }

    private void setCornerPathAndTransform(ShapeAppearancePathSpec shapeAppearancePathSpec, int r9) {
        getCornerTreatmentForIndex(r9, shapeAppearancePathSpec.shapeAppearanceModel).getCornerPath(this.cornerPaths[r9], 90.0f, shapeAppearancePathSpec.interpolation, shapeAppearancePathSpec.bounds, getCornerSizeForIndex(r9, shapeAppearancePathSpec.shapeAppearanceModel));
        float fAngleOfEdge = angleOfEdge(r9);
        this.cornerTransforms[r9].reset();
        getCoordinatesOfCorner(r9, shapeAppearancePathSpec.bounds, this.pointF);
        this.cornerTransforms[r9].setTranslate(this.pointF.x, this.pointF.y);
        this.cornerTransforms[r9].preRotate(fAngleOfEdge);
    }

    private void setEdgePathAndTransform(int r6) {
        this.scratch[0] = this.cornerPaths[r6].getEndX();
        this.scratch[1] = this.cornerPaths[r6].getEndY();
        this.cornerTransforms[r6].mapPoints(this.scratch);
        float fAngleOfEdge = angleOfEdge(r6);
        this.edgeTransforms[r6].reset();
        Matrix matrix = this.edgeTransforms[r6];
        float[] fArr = this.scratch;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.edgeTransforms[r6].preRotate(fAngleOfEdge);
    }

    private void appendCornerPath(ShapeAppearancePathSpec shapeAppearancePathSpec, int r6) {
        this.scratch[0] = this.cornerPaths[r6].getStartX();
        this.scratch[1] = this.cornerPaths[r6].getStartY();
        this.cornerTransforms[r6].mapPoints(this.scratch);
        if (r6 == 0) {
            Path path = shapeAppearancePathSpec.path;
            float[] fArr = this.scratch;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = shapeAppearancePathSpec.path;
            float[] fArr2 = this.scratch;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.cornerPaths[r6].applyToPath(this.cornerTransforms[r6], shapeAppearancePathSpec.path);
        if (shapeAppearancePathSpec.pathListener != null) {
            shapeAppearancePathSpec.pathListener.onCornerPathCreated(this.cornerPaths[r6], this.cornerTransforms[r6], r6);
        }
    }

    private void appendEdgePath(ShapeAppearancePathSpec shapeAppearancePathSpec, int r9) {
        int r0 = (r9 + 1) % 4;
        this.scratch[0] = this.cornerPaths[r9].getEndX();
        this.scratch[1] = this.cornerPaths[r9].getEndY();
        this.cornerTransforms[r9].mapPoints(this.scratch);
        this.scratch2[0] = this.cornerPaths[r0].getStartX();
        this.scratch2[1] = this.cornerPaths[r0].getStartY();
        this.cornerTransforms[r0].mapPoints(this.scratch2);
        float f = this.scratch[0];
        float[] fArr = this.scratch2;
        float fMax = Math.max(((float) Math.hypot(f - fArr[0], r0[1] - fArr[1])) - 0.001f, 0.0f);
        float edgeCenterForIndex = getEdgeCenterForIndex(shapeAppearancePathSpec.bounds, r9);
        this.shapePath.reset(0.0f, 0.0f);
        getEdgeTreatmentForIndex(r9, shapeAppearancePathSpec.shapeAppearanceModel).getEdgePath(fMax, edgeCenterForIndex, shapeAppearancePathSpec.interpolation, this.shapePath);
        this.shapePath.applyToPath(this.edgeTransforms[r9], shapeAppearancePathSpec.path);
        if (shapeAppearancePathSpec.pathListener != null) {
            shapeAppearancePathSpec.pathListener.onEdgePathCreated(this.shapePath, this.edgeTransforms[r9], r9);
        }
    }

    private float getEdgeCenterForIndex(RectF rectF, int r6) {
        this.scratch[0] = this.cornerPaths[r6].endX;
        this.scratch[1] = this.cornerPaths[r6].endY;
        this.cornerTransforms[r6].mapPoints(this.scratch);
        if (r6 == 1 || r6 == 3) {
            return Math.abs(rectF.centerX() - this.scratch[0]);
        }
        return Math.abs(rectF.centerY() - this.scratch[1]);
    }

    private CornerTreatment getCornerTreatmentForIndex(int r1, ShapeAppearanceModel shapeAppearanceModel) {
        if (r1 == 1) {
            return shapeAppearanceModel.getBottomRightCorner();
        }
        if (r1 == 2) {
            return shapeAppearanceModel.getBottomLeftCorner();
        }
        if (r1 == 3) {
            return shapeAppearanceModel.getTopLeftCorner();
        }
        return shapeAppearanceModel.getTopRightCorner();
    }

    private CornerSize getCornerSizeForIndex(int r1, ShapeAppearanceModel shapeAppearanceModel) {
        if (r1 == 1) {
            return shapeAppearanceModel.getBottomRightCornerSize();
        }
        if (r1 == 2) {
            return shapeAppearanceModel.getBottomLeftCornerSize();
        }
        if (r1 == 3) {
            return shapeAppearanceModel.getTopLeftCornerSize();
        }
        return shapeAppearanceModel.getTopRightCornerSize();
    }

    private EdgeTreatment getEdgeTreatmentForIndex(int r1, ShapeAppearanceModel shapeAppearanceModel) {
        if (r1 == 1) {
            return shapeAppearanceModel.getBottomEdge();
        }
        if (r1 == 2) {
            return shapeAppearanceModel.getLeftEdge();
        }
        if (r1 == 3) {
            return shapeAppearanceModel.getTopEdge();
        }
        return shapeAppearanceModel.getRightEdge();
    }

    private void getCoordinatesOfCorner(int r1, RectF rectF, PointF pointF) {
        if (r1 == 1) {
            pointF.set(rectF.right, rectF.bottom);
            return;
        }
        if (r1 == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (r1 == 3) {
            pointF.set(rectF.left, rectF.top);
        } else {
            pointF.set(rectF.right, rectF.top);
        }
    }

    static final class ShapeAppearancePathSpec {
        public final RectF bounds;
        public final float interpolation;
        public final Path path;
        public final PathListener pathListener;
        public final ShapeAppearanceModel shapeAppearanceModel;

        ShapeAppearancePathSpec(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, PathListener pathListener, Path path) {
            this.pathListener = pathListener;
            this.shapeAppearanceModel = shapeAppearanceModel;
            this.interpolation = f;
            this.bounds = rectF;
            this.path = path;
        }
    }
}
