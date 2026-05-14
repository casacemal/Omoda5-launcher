package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.C0207R;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class ConstraintSet {
    private static final int ALPHA = 43;
    private static final int BARRIER_ALLOWS_GONE_WIDGETS = 74;
    private static final int BARRIER_DIRECTION = 72;
    private static final int BARRIER_TYPE = 1;
    public static final int BASELINE = 5;
    private static final int BASELINE_TO_BASELINE = 1;
    public static final int BOTTOM = 4;
    private static final int BOTTOM_MARGIN = 2;
    private static final int BOTTOM_TO_BOTTOM = 3;
    private static final int BOTTOM_TO_TOP = 4;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    private static final int CHAIN_USE_RTL = 71;
    private static final int CIRCLE = 61;
    private static final int CIRCLE_ANGLE = 63;
    private static final int CIRCLE_RADIUS = 62;
    private static final int CONSTRAINT_REFERENCED_IDS = 73;
    private static final boolean DEBUG = false;
    private static final int DIMENSION_RATIO = 5;
    private static final int EDITOR_ABSOLUTE_X = 6;
    private static final int EDITOR_ABSOLUTE_Y = 7;
    private static final int ELEVATION = 44;
    public static final int END = 7;
    private static final int END_MARGIN = 8;
    private static final int END_TO_END = 9;
    private static final int END_TO_START = 10;
    public static final int GONE = 8;
    private static final int GONE_BOTTOM_MARGIN = 11;
    private static final int GONE_END_MARGIN = 12;
    private static final int GONE_LEFT_MARGIN = 13;
    private static final int GONE_RIGHT_MARGIN = 14;
    private static final int GONE_START_MARGIN = 15;
    private static final int GONE_TOP_MARGIN = 16;
    private static final int GUIDE_BEGIN = 17;
    private static final int GUIDE_END = 18;
    private static final int GUIDE_PERCENT = 19;
    private static final int HEIGHT_DEFAULT = 55;
    private static final int HEIGHT_MAX = 57;
    private static final int HEIGHT_MIN = 59;
    private static final int HEIGHT_PERCENT = 70;
    public static final int HORIZONTAL = 0;
    private static final int HORIZONTAL_BIAS = 20;
    public static final int HORIZONTAL_GUIDELINE = 0;
    private static final int HORIZONTAL_STYLE = 41;
    private static final int HORIZONTAL_WEIGHT = 39;
    public static final int INVISIBLE = 4;
    private static final int LAYOUT_HEIGHT = 21;
    private static final int LAYOUT_VISIBILITY = 22;
    private static final int LAYOUT_WIDTH = 23;
    public static final int LEFT = 1;
    private static final int LEFT_MARGIN = 24;
    private static final int LEFT_TO_LEFT = 25;
    private static final int LEFT_TO_RIGHT = 26;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    private static final int ORIENTATION = 27;
    public static final int PARENT_ID = 0;
    public static final int RIGHT = 2;
    private static final int RIGHT_MARGIN = 28;
    private static final int RIGHT_TO_LEFT = 29;
    private static final int RIGHT_TO_RIGHT = 30;
    private static final int ROTATION = 60;
    private static final int ROTATION_X = 45;
    private static final int ROTATION_Y = 46;
    private static final int SCALE_X = 47;
    private static final int SCALE_Y = 48;
    public static final int START = 6;
    private static final int START_MARGIN = 31;
    private static final int START_TO_END = 32;
    private static final int START_TO_START = 33;
    private static final String TAG = "ConstraintSet";
    public static final int TOP = 3;
    private static final int TOP_MARGIN = 34;
    private static final int TOP_TO_BOTTOM = 35;
    private static final int TOP_TO_TOP = 36;
    private static final int TRANSFORM_PIVOT_X = 49;
    private static final int TRANSFORM_PIVOT_Y = 50;
    private static final int TRANSLATION_X = 51;
    private static final int TRANSLATION_Y = 52;
    private static final int TRANSLATION_Z = 53;
    public static final int UNSET = -1;
    private static final int UNUSED = 75;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_BIAS = 37;
    public static final int VERTICAL_GUIDELINE = 1;
    private static final int VERTICAL_STYLE = 42;
    private static final int VERTICAL_WEIGHT = 40;
    private static final int VIEW_ID = 38;
    private static final int[] VISIBILITY_FLAGS = {0, 4, 8};
    public static final int VISIBLE = 0;
    private static final int WIDTH_DEFAULT = 54;
    private static final int WIDTH_MAX = 56;
    private static final int WIDTH_MIN = 58;
    private static final int WIDTH_PERCENT = 69;
    public static final int WRAP_CONTENT = -2;
    private static SparseIntArray mapToConstant;
    private HashMap<Integer, Constraint> mConstraints = new HashMap<>();

    private String sideToString(int r1) {
        switch (r1) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    public void setBarrierType(int r1, int r2) {
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        mapToConstant = sparseIntArray;
        sparseIntArray.append(C0207R.styleable.ConstraintSet_layout_constraintLeft_toLeftOf, 25);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintLeft_toRightOf, 26);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintRight_toLeftOf, 29);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintRight_toRightOf, 30);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintTop_toTopOf, 36);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintTop_toBottomOf, 35);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintBottom_toTopOf, 4);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintBottom_toBottomOf, 3);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintBaseline_toBaselineOf, 1);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_editor_absoluteX, 6);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_editor_absoluteY, 7);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintGuide_begin, 17);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintGuide_end, 18);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintGuide_percent, 19);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_orientation, 27);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintStart_toEndOf, 32);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintStart_toStartOf, 33);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintEnd_toStartOf, 10);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintEnd_toEndOf, 9);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_goneMarginLeft, 13);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_goneMarginTop, 16);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_goneMarginRight, 14);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_goneMarginBottom, 11);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_goneMarginStart, 15);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_goneMarginEnd, 12);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintVertical_weight, 40);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintHorizontal_weight, 39);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintHorizontal_chainStyle, 41);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintVertical_chainStyle, 42);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintHorizontal_bias, 20);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintVertical_bias, 37);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintDimensionRatio, 5);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintLeft_creator, 75);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintTop_creator, 75);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintRight_creator, 75);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintBottom_creator, 75);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintBaseline_creator, 75);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_layout_marginLeft, 24);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_layout_marginRight, 28);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_layout_marginStart, 31);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_layout_marginEnd, 8);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_layout_marginTop, 34);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_layout_marginBottom, 2);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_layout_width, 23);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_layout_height, 21);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_visibility, 22);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_alpha, 43);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_elevation, 44);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_rotationX, 45);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_rotationY, 46);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_rotation, 60);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_scaleX, 47);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_scaleY, 48);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_transformPivotX, 49);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_transformPivotY, 50);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_translationX, 51);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_translationY, 52);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_translationZ, 53);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintWidth_default, 54);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintHeight_default, 55);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintWidth_max, 56);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintHeight_max, 57);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintWidth_min, 58);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintHeight_min, 59);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintCircle, 61);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintCircleRadius, 62);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintCircleAngle, 63);
        mapToConstant.append(C0207R.styleable.ConstraintSet_android_id, 38);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintWidth_percent, 69);
        mapToConstant.append(C0207R.styleable.ConstraintSet_layout_constraintHeight_percent, 70);
        mapToConstant.append(C0207R.styleable.ConstraintSet_chainUseRtl, 71);
        mapToConstant.append(C0207R.styleable.ConstraintSet_barrierDirection, 72);
        mapToConstant.append(C0207R.styleable.ConstraintSet_constraint_referenced_ids, 73);
        mapToConstant.append(C0207R.styleable.ConstraintSet_barrierAllowsGoneWidgets, 74);
    }

    public Constraint getParameters(int r1) {
        return get(r1);
    }

    private static class Constraint {
        static final int UNSET = -1;
        public float alpha;
        public boolean applyElevation;
        public int baselineToBaseline;
        public int bottomMargin;
        public int bottomToBottom;
        public int bottomToTop;
        public float circleAngle;
        public int circleConstraint;
        public int circleRadius;
        public boolean constrainedHeight;
        public boolean constrainedWidth;
        public String dimensionRatio;
        public int editorAbsoluteX;
        public int editorAbsoluteY;
        public float elevation;
        public int endMargin;
        public int endToEnd;
        public int endToStart;
        public int goneBottomMargin;
        public int goneEndMargin;
        public int goneLeftMargin;
        public int goneRightMargin;
        public int goneStartMargin;
        public int goneTopMargin;
        public int guideBegin;
        public int guideEnd;
        public float guidePercent;
        public int heightDefault;
        public int heightMax;
        public int heightMin;
        public float heightPercent;
        public float horizontalBias;
        public int horizontalChainStyle;
        public float horizontalWeight;
        public int leftMargin;
        public int leftToLeft;
        public int leftToRight;
        public boolean mBarrierAllowsGoneWidgets;
        public int mBarrierDirection;
        public int mHeight;
        public int mHelperType;
        boolean mIsGuideline;
        public String mReferenceIdString;
        public int[] mReferenceIds;
        int mViewId;
        public int mWidth;
        public int orientation;
        public int rightMargin;
        public int rightToLeft;
        public int rightToRight;
        public float rotation;
        public float rotationX;
        public float rotationY;
        public float scaleX;
        public float scaleY;
        public int startMargin;
        public int startToEnd;
        public int startToStart;
        public int topMargin;
        public int topToBottom;
        public int topToTop;
        public float transformPivotX;
        public float transformPivotY;
        public float translationX;
        public float translationY;
        public float translationZ;
        public float verticalBias;
        public int verticalChainStyle;
        public float verticalWeight;
        public int visibility;
        public int widthDefault;
        public int widthMax;
        public int widthMin;
        public float widthPercent;

        private Constraint() {
            this.mIsGuideline = false;
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.leftMargin = -1;
            this.rightMargin = -1;
            this.topMargin = -1;
            this.bottomMargin = -1;
            this.endMargin = -1;
            this.startMargin = -1;
            this.visibility = 0;
            this.goneLeftMargin = -1;
            this.goneTopMargin = -1;
            this.goneRightMargin = -1;
            this.goneBottomMargin = -1;
            this.goneEndMargin = -1;
            this.goneStartMargin = -1;
            this.verticalWeight = 0.0f;
            this.horizontalWeight = 0.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.alpha = 1.0f;
            this.applyElevation = false;
            this.elevation = 0.0f;
            this.rotation = 0.0f;
            this.rotationX = 0.0f;
            this.rotationY = 0.0f;
            this.scaleX = 1.0f;
            this.scaleY = 1.0f;
            this.transformPivotX = Float.NaN;
            this.transformPivotY = Float.NaN;
            this.translationX = 0.0f;
            this.translationY = 0.0f;
            this.translationZ = 0.0f;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.widthDefault = 0;
            this.heightDefault = 0;
            this.widthMax = -1;
            this.heightMax = -1;
            this.widthMin = -1;
            this.heightMin = -1;
            this.widthPercent = 1.0f;
            this.heightPercent = 1.0f;
            this.mBarrierAllowsGoneWidgets = false;
            this.mBarrierDirection = -1;
            this.mHelperType = -1;
        }

        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public Constraint m40clone() {
            Constraint constraint = new Constraint();
            constraint.mIsGuideline = this.mIsGuideline;
            constraint.mWidth = this.mWidth;
            constraint.mHeight = this.mHeight;
            constraint.guideBegin = this.guideBegin;
            constraint.guideEnd = this.guideEnd;
            constraint.guidePercent = this.guidePercent;
            constraint.leftToLeft = this.leftToLeft;
            constraint.leftToRight = this.leftToRight;
            constraint.rightToLeft = this.rightToLeft;
            constraint.rightToRight = this.rightToRight;
            constraint.topToTop = this.topToTop;
            constraint.topToBottom = this.topToBottom;
            constraint.bottomToTop = this.bottomToTop;
            constraint.bottomToBottom = this.bottomToBottom;
            constraint.baselineToBaseline = this.baselineToBaseline;
            constraint.startToEnd = this.startToEnd;
            constraint.startToStart = this.startToStart;
            constraint.endToStart = this.endToStart;
            constraint.endToEnd = this.endToEnd;
            constraint.horizontalBias = this.horizontalBias;
            constraint.verticalBias = this.verticalBias;
            constraint.dimensionRatio = this.dimensionRatio;
            constraint.editorAbsoluteX = this.editorAbsoluteX;
            constraint.editorAbsoluteY = this.editorAbsoluteY;
            constraint.horizontalBias = this.horizontalBias;
            constraint.horizontalBias = this.horizontalBias;
            constraint.horizontalBias = this.horizontalBias;
            constraint.horizontalBias = this.horizontalBias;
            constraint.horizontalBias = this.horizontalBias;
            constraint.orientation = this.orientation;
            constraint.leftMargin = this.leftMargin;
            constraint.rightMargin = this.rightMargin;
            constraint.topMargin = this.topMargin;
            constraint.bottomMargin = this.bottomMargin;
            constraint.endMargin = this.endMargin;
            constraint.startMargin = this.startMargin;
            constraint.visibility = this.visibility;
            constraint.goneLeftMargin = this.goneLeftMargin;
            constraint.goneTopMargin = this.goneTopMargin;
            constraint.goneRightMargin = this.goneRightMargin;
            constraint.goneBottomMargin = this.goneBottomMargin;
            constraint.goneEndMargin = this.goneEndMargin;
            constraint.goneStartMargin = this.goneStartMargin;
            constraint.verticalWeight = this.verticalWeight;
            constraint.horizontalWeight = this.horizontalWeight;
            constraint.horizontalChainStyle = this.horizontalChainStyle;
            constraint.verticalChainStyle = this.verticalChainStyle;
            constraint.alpha = this.alpha;
            constraint.applyElevation = this.applyElevation;
            constraint.elevation = this.elevation;
            constraint.rotation = this.rotation;
            constraint.rotationX = this.rotationX;
            constraint.rotationY = this.rotationY;
            constraint.scaleX = this.scaleX;
            constraint.scaleY = this.scaleY;
            constraint.transformPivotX = this.transformPivotX;
            constraint.transformPivotY = this.transformPivotY;
            constraint.translationX = this.translationX;
            constraint.translationY = this.translationY;
            constraint.translationZ = this.translationZ;
            constraint.constrainedWidth = this.constrainedWidth;
            constraint.constrainedHeight = this.constrainedHeight;
            constraint.widthDefault = this.widthDefault;
            constraint.heightDefault = this.heightDefault;
            constraint.widthMax = this.widthMax;
            constraint.heightMax = this.heightMax;
            constraint.widthMin = this.widthMin;
            constraint.heightMin = this.heightMin;
            constraint.widthPercent = this.widthPercent;
            constraint.heightPercent = this.heightPercent;
            constraint.mBarrierDirection = this.mBarrierDirection;
            constraint.mHelperType = this.mHelperType;
            int[] r1 = this.mReferenceIds;
            if (r1 != null) {
                constraint.mReferenceIds = Arrays.copyOf(r1, r1.length);
            }
            constraint.circleConstraint = this.circleConstraint;
            constraint.circleRadius = this.circleRadius;
            constraint.circleAngle = this.circleAngle;
            constraint.mBarrierAllowsGoneWidgets = this.mBarrierAllowsGoneWidgets;
            return constraint;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillFromConstraints(ConstraintHelper constraintHelper, int r2, Constraints.LayoutParams layoutParams) {
            fillFromConstraints(r2, layoutParams);
            if (constraintHelper instanceof Barrier) {
                this.mHelperType = 1;
                Barrier barrier = (Barrier) constraintHelper;
                this.mBarrierDirection = barrier.getType();
                this.mReferenceIds = barrier.getReferencedIds();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillFromConstraints(int r1, Constraints.LayoutParams layoutParams) {
            fillFrom(r1, layoutParams);
            this.alpha = layoutParams.alpha;
            this.rotation = layoutParams.rotation;
            this.rotationX = layoutParams.rotationX;
            this.rotationY = layoutParams.rotationY;
            this.scaleX = layoutParams.scaleX;
            this.scaleY = layoutParams.scaleY;
            this.transformPivotX = layoutParams.transformPivotX;
            this.transformPivotY = layoutParams.transformPivotY;
            this.translationX = layoutParams.translationX;
            this.translationY = layoutParams.translationY;
            this.translationZ = layoutParams.translationZ;
            this.elevation = layoutParams.elevation;
            this.applyElevation = layoutParams.applyElevation;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillFrom(int r2, ConstraintLayout.LayoutParams layoutParams) {
            this.mViewId = r2;
            this.leftToLeft = layoutParams.leftToLeft;
            this.leftToRight = layoutParams.leftToRight;
            this.rightToLeft = layoutParams.rightToLeft;
            this.rightToRight = layoutParams.rightToRight;
            this.topToTop = layoutParams.topToTop;
            this.topToBottom = layoutParams.topToBottom;
            this.bottomToTop = layoutParams.bottomToTop;
            this.bottomToBottom = layoutParams.bottomToBottom;
            this.baselineToBaseline = layoutParams.baselineToBaseline;
            this.startToEnd = layoutParams.startToEnd;
            this.startToStart = layoutParams.startToStart;
            this.endToStart = layoutParams.endToStart;
            this.endToEnd = layoutParams.endToEnd;
            this.horizontalBias = layoutParams.horizontalBias;
            this.verticalBias = layoutParams.verticalBias;
            this.dimensionRatio = layoutParams.dimensionRatio;
            this.circleConstraint = layoutParams.circleConstraint;
            this.circleRadius = layoutParams.circleRadius;
            this.circleAngle = layoutParams.circleAngle;
            this.editorAbsoluteX = layoutParams.editorAbsoluteX;
            this.editorAbsoluteY = layoutParams.editorAbsoluteY;
            this.orientation = layoutParams.orientation;
            this.guidePercent = layoutParams.guidePercent;
            this.guideBegin = layoutParams.guideBegin;
            this.guideEnd = layoutParams.guideEnd;
            this.mWidth = layoutParams.width;
            this.mHeight = layoutParams.height;
            this.leftMargin = layoutParams.leftMargin;
            this.rightMargin = layoutParams.rightMargin;
            this.topMargin = layoutParams.topMargin;
            this.bottomMargin = layoutParams.bottomMargin;
            this.verticalWeight = layoutParams.verticalWeight;
            this.horizontalWeight = layoutParams.horizontalWeight;
            this.verticalChainStyle = layoutParams.verticalChainStyle;
            this.horizontalChainStyle = layoutParams.horizontalChainStyle;
            this.constrainedWidth = layoutParams.constrainedWidth;
            this.constrainedHeight = layoutParams.constrainedHeight;
            this.widthDefault = layoutParams.matchConstraintDefaultWidth;
            this.heightDefault = layoutParams.matchConstraintDefaultHeight;
            this.constrainedWidth = layoutParams.constrainedWidth;
            this.widthMax = layoutParams.matchConstraintMaxWidth;
            this.heightMax = layoutParams.matchConstraintMaxHeight;
            this.widthMin = layoutParams.matchConstraintMinWidth;
            this.heightMin = layoutParams.matchConstraintMinHeight;
            this.widthPercent = layoutParams.matchConstraintPercentWidth;
            this.heightPercent = layoutParams.matchConstraintPercentHeight;
            if (Build.VERSION.SDK_INT >= 17) {
                this.endMargin = layoutParams.getMarginEnd();
                this.startMargin = layoutParams.getMarginStart();
            }
        }

        public void applyTo(ConstraintLayout.LayoutParams layoutParams) {
            layoutParams.leftToLeft = this.leftToLeft;
            layoutParams.leftToRight = this.leftToRight;
            layoutParams.rightToLeft = this.rightToLeft;
            layoutParams.rightToRight = this.rightToRight;
            layoutParams.topToTop = this.topToTop;
            layoutParams.topToBottom = this.topToBottom;
            layoutParams.bottomToTop = this.bottomToTop;
            layoutParams.bottomToBottom = this.bottomToBottom;
            layoutParams.baselineToBaseline = this.baselineToBaseline;
            layoutParams.startToEnd = this.startToEnd;
            layoutParams.startToStart = this.startToStart;
            layoutParams.endToStart = this.endToStart;
            layoutParams.endToEnd = this.endToEnd;
            layoutParams.leftMargin = this.leftMargin;
            layoutParams.rightMargin = this.rightMargin;
            layoutParams.topMargin = this.topMargin;
            layoutParams.bottomMargin = this.bottomMargin;
            layoutParams.goneStartMargin = this.goneStartMargin;
            layoutParams.goneEndMargin = this.goneEndMargin;
            layoutParams.horizontalBias = this.horizontalBias;
            layoutParams.verticalBias = this.verticalBias;
            layoutParams.circleConstraint = this.circleConstraint;
            layoutParams.circleRadius = this.circleRadius;
            layoutParams.circleAngle = this.circleAngle;
            layoutParams.dimensionRatio = this.dimensionRatio;
            layoutParams.editorAbsoluteX = this.editorAbsoluteX;
            layoutParams.editorAbsoluteY = this.editorAbsoluteY;
            layoutParams.verticalWeight = this.verticalWeight;
            layoutParams.horizontalWeight = this.horizontalWeight;
            layoutParams.verticalChainStyle = this.verticalChainStyle;
            layoutParams.horizontalChainStyle = this.horizontalChainStyle;
            layoutParams.constrainedWidth = this.constrainedWidth;
            layoutParams.constrainedHeight = this.constrainedHeight;
            layoutParams.matchConstraintDefaultWidth = this.widthDefault;
            layoutParams.matchConstraintDefaultHeight = this.heightDefault;
            layoutParams.matchConstraintMaxWidth = this.widthMax;
            layoutParams.matchConstraintMaxHeight = this.heightMax;
            layoutParams.matchConstraintMinWidth = this.widthMin;
            layoutParams.matchConstraintMinHeight = this.heightMin;
            layoutParams.matchConstraintPercentWidth = this.widthPercent;
            layoutParams.matchConstraintPercentHeight = this.heightPercent;
            layoutParams.orientation = this.orientation;
            layoutParams.guidePercent = this.guidePercent;
            layoutParams.guideBegin = this.guideBegin;
            layoutParams.guideEnd = this.guideEnd;
            layoutParams.width = this.mWidth;
            layoutParams.height = this.mHeight;
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.setMarginStart(this.startMargin);
                layoutParams.setMarginEnd(this.endMargin);
            }
            layoutParams.validate();
        }
    }

    public void clone(Context context, int r3) {
        clone((ConstraintLayout) LayoutInflater.from(context).inflate(r3, (ViewGroup) null));
    }

    public void clone(ConstraintSet constraintSet) {
        this.mConstraints.clear();
        for (Integer num : constraintSet.mConstraints.keySet()) {
            this.mConstraints.put(num, constraintSet.mConstraints.get(num).m40clone());
        }
    }

    public void clone(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.mConstraints.clear();
        for (int r1 = 0; r1 < childCount; r1++) {
            View childAt = constraintLayout.getChildAt(r1);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.mConstraints.containsKey(Integer.valueOf(id))) {
                this.mConstraints.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = this.mConstraints.get(Integer.valueOf(id));
            constraint.fillFrom(id, layoutParams);
            constraint.visibility = childAt.getVisibility();
            if (Build.VERSION.SDK_INT >= 17) {
                constraint.alpha = childAt.getAlpha();
                constraint.rotation = childAt.getRotation();
                constraint.rotationX = childAt.getRotationX();
                constraint.rotationY = childAt.getRotationY();
                constraint.scaleX = childAt.getScaleX();
                constraint.scaleY = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    constraint.transformPivotX = pivotX;
                    constraint.transformPivotY = pivotY;
                }
                constraint.translationX = childAt.getTranslationX();
                constraint.translationY = childAt.getTranslationY();
                if (Build.VERSION.SDK_INT >= 21) {
                    constraint.translationZ = childAt.getTranslationZ();
                    if (constraint.applyElevation) {
                        constraint.elevation = childAt.getElevation();
                    }
                }
            }
            if (childAt instanceof Barrier) {
                Barrier barrier = (Barrier) childAt;
                constraint.mBarrierAllowsGoneWidgets = barrier.allowsGoneWidget();
                constraint.mReferenceIds = barrier.getReferencedIds();
                constraint.mBarrierDirection = barrier.getType();
            }
        }
    }

    public void clone(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.mConstraints.clear();
        for (int r1 = 0; r1 < childCount; r1++) {
            View childAt = constraints.getChildAt(r1);
            Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.mConstraints.containsKey(Integer.valueOf(id))) {
                this.mConstraints.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = this.mConstraints.get(Integer.valueOf(id));
            if (childAt instanceof ConstraintHelper) {
                constraint.fillFromConstraints((ConstraintHelper) childAt, id, layoutParams);
            }
            constraint.fillFromConstraints(id, layoutParams);
        }
    }

    public void applyTo(ConstraintLayout constraintLayout) {
        applyToInternal(constraintLayout);
        constraintLayout.setConstraintSet(null);
    }

    void applyToInternal(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.mConstraints.keySet());
        for (int r2 = 0; r2 < childCount; r2++) {
            View childAt = constraintLayout.getChildAt(r2);
            int id = childAt.getId();
            if (id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (this.mConstraints.containsKey(Integer.valueOf(id))) {
                hashSet.remove(Integer.valueOf(id));
                Constraint constraint = this.mConstraints.get(Integer.valueOf(id));
                if (childAt instanceof Barrier) {
                    constraint.mHelperType = 1;
                }
                if (constraint.mHelperType != -1 && constraint.mHelperType == 1) {
                    Barrier barrier = (Barrier) childAt;
                    barrier.setId(id);
                    barrier.setType(constraint.mBarrierDirection);
                    barrier.setAllowsGoneWidget(constraint.mBarrierAllowsGoneWidgets);
                    if (constraint.mReferenceIds != null) {
                        barrier.setReferencedIds(constraint.mReferenceIds);
                    } else if (constraint.mReferenceIdString != null) {
                        constraint.mReferenceIds = convertReferenceString(barrier, constraint.mReferenceIdString);
                        barrier.setReferencedIds(constraint.mReferenceIds);
                    }
                }
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                constraint.applyTo(layoutParams);
                childAt.setLayoutParams(layoutParams);
                childAt.setVisibility(constraint.visibility);
                if (Build.VERSION.SDK_INT >= 17) {
                    childAt.setAlpha(constraint.alpha);
                    childAt.setRotation(constraint.rotation);
                    childAt.setRotationX(constraint.rotationX);
                    childAt.setRotationY(constraint.rotationY);
                    childAt.setScaleX(constraint.scaleX);
                    childAt.setScaleY(constraint.scaleY);
                    if (!Float.isNaN(constraint.transformPivotX)) {
                        childAt.setPivotX(constraint.transformPivotX);
                    }
                    if (!Float.isNaN(constraint.transformPivotY)) {
                        childAt.setPivotY(constraint.transformPivotY);
                    }
                    childAt.setTranslationX(constraint.translationX);
                    childAt.setTranslationY(constraint.translationY);
                    if (Build.VERSION.SDK_INT >= 21) {
                        childAt.setTranslationZ(constraint.translationZ);
                        if (constraint.applyElevation) {
                            childAt.setElevation(constraint.elevation);
                        }
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            Constraint constraint2 = this.mConstraints.get(num);
            if (constraint2.mHelperType != -1 && constraint2.mHelperType == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                if (constraint2.mReferenceIds != null) {
                    barrier2.setReferencedIds(constraint2.mReferenceIds);
                } else if (constraint2.mReferenceIdString != null) {
                    constraint2.mReferenceIds = convertReferenceString(barrier2, constraint2.mReferenceIdString);
                    barrier2.setReferencedIds(constraint2.mReferenceIds);
                }
                barrier2.setType(constraint2.mBarrierDirection);
                ConstraintLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                barrier2.validateParams();
                constraint2.applyTo(layoutParamsGenerateDefaultLayoutParams);
                constraintLayout.addView(barrier2, layoutParamsGenerateDefaultLayoutParams);
            }
            if (constraint2.mIsGuideline) {
                Guideline guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                constraint2.applyTo(layoutParamsGenerateDefaultLayoutParams2);
                constraintLayout.addView(guideline, layoutParamsGenerateDefaultLayoutParams2);
            }
        }
    }

    public void center(int r9, int r10, int r11, int r12, int r13, int r14, int r15, float f) {
        if (r12 < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (r15 < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (f <= 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("bias must be between 0 and 1 inclusive");
        }
        if (r11 == 1 || r11 == 2) {
            connect(r9, 1, r10, r11, r12);
            connect(r9, 2, r13, r14, r15);
            this.mConstraints.get(Integer.valueOf(r9)).horizontalBias = f;
        } else if (r11 == 6 || r11 == 7) {
            connect(r9, 6, r10, r11, r12);
            connect(r9, 7, r13, r14, r15);
            this.mConstraints.get(Integer.valueOf(r9)).horizontalBias = f;
        } else {
            connect(r9, 3, r10, r11, r12);
            connect(r9, 4, r13, r14, r15);
            this.mConstraints.get(Integer.valueOf(r9)).verticalBias = f;
        }
    }

    public void centerHorizontally(int r10, int r11, int r12, int r13, int r14, int r15, int r16, float f) {
        connect(r10, 1, r11, r12, r13);
        connect(r10, 2, r14, r15, r16);
        this.mConstraints.get(Integer.valueOf(r10)).horizontalBias = f;
    }

    public void centerHorizontallyRtl(int r10, int r11, int r12, int r13, int r14, int r15, int r16, float f) {
        connect(r10, 6, r11, r12, r13);
        connect(r10, 7, r14, r15, r16);
        this.mConstraints.get(Integer.valueOf(r10)).horizontalBias = f;
    }

    public void centerVertically(int r10, int r11, int r12, int r13, int r14, int r15, int r16, float f) {
        connect(r10, 3, r11, r12, r13);
        connect(r10, 4, r14, r15, r16);
        this.mConstraints.get(Integer.valueOf(r10)).verticalBias = f;
    }

    public void createVerticalChain(int r13, int r14, int r15, int r16, int[] r17, float[] fArr, int r19) {
        if (r17.length < 2) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null && fArr.length != r17.length) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null) {
            get(r17[0]).verticalWeight = fArr[0];
        }
        get(r17[0]).verticalChainStyle = r19;
        connect(r17[0], 3, r13, r14, 0);
        for (int r10 = 1; r10 < r17.length; r10++) {
            int r0 = r17[r10];
            int r11 = r10 - 1;
            connect(r17[r10], 3, r17[r11], 4, 0);
            connect(r17[r11], 4, r17[r10], 3, 0);
            if (fArr != null) {
                get(r17[r10]).verticalWeight = fArr[r10];
            }
        }
        connect(r17[r17.length - 1], 4, r15, r16, 0);
    }

    public void createHorizontalChain(int r11, int r12, int r13, int r14, int[] r15, float[] fArr, int r17) {
        createHorizontalChain(r11, r12, r13, r14, r15, fArr, r17, 1, 2);
    }

    public void createHorizontalChainRtl(int r11, int r12, int r13, int r14, int[] r15, float[] fArr, int r17) {
        createHorizontalChain(r11, r12, r13, r14, r15, fArr, r17, 6, 7);
    }

    private void createHorizontalChain(int r13, int r14, int r15, int r16, int[] r17, float[] fArr, int r19, int r20, int r21) {
        if (r17.length < 2) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null && fArr.length != r17.length) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null) {
            get(r17[0]).horizontalWeight = fArr[0];
        }
        get(r17[0]).horizontalChainStyle = r19;
        connect(r17[0], r20, r13, r14, -1);
        for (int r10 = 1; r10 < r17.length; r10++) {
            int r0 = r17[r10];
            int r11 = r10 - 1;
            connect(r17[r10], r20, r17[r11], r21, -1);
            connect(r17[r11], r21, r17[r10], r20, -1);
            if (fArr != null) {
                get(r17[r10]).horizontalWeight = fArr[r10];
            }
        }
        connect(r17[r17.length - 1], r21, r15, r16, -1);
    }

    public void connect(int r10, int r11, int r12, int r13, int r14) {
        if (!this.mConstraints.containsKey(Integer.valueOf(r10))) {
            this.mConstraints.put(Integer.valueOf(r10), new Constraint());
        }
        Constraint constraint = this.mConstraints.get(Integer.valueOf(r10));
        switch (r11) {
            case 1:
                if (r13 == 1) {
                    constraint.leftToLeft = r12;
                    constraint.leftToRight = -1;
                } else if (r13 == 2) {
                    constraint.leftToRight = r12;
                    constraint.leftToLeft = -1;
                } else {
                    throw new IllegalArgumentException("Left to " + sideToString(r13) + " undefined");
                }
                constraint.leftMargin = r14;
                return;
            case 2:
                if (r13 == 1) {
                    constraint.rightToLeft = r12;
                    constraint.rightToRight = -1;
                } else if (r13 == 2) {
                    constraint.rightToRight = r12;
                    constraint.rightToLeft = -1;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(r13) + " undefined");
                }
                constraint.rightMargin = r14;
                return;
            case 3:
                if (r13 == 3) {
                    constraint.topToTop = r12;
                    constraint.topToBottom = -1;
                    constraint.baselineToBaseline = -1;
                } else if (r13 == 4) {
                    constraint.topToBottom = r12;
                    constraint.topToTop = -1;
                    constraint.baselineToBaseline = -1;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(r13) + " undefined");
                }
                constraint.topMargin = r14;
                return;
            case 4:
                if (r13 == 4) {
                    constraint.bottomToBottom = r12;
                    constraint.bottomToTop = -1;
                    constraint.baselineToBaseline = -1;
                } else if (r13 == 3) {
                    constraint.bottomToTop = r12;
                    constraint.bottomToBottom = -1;
                    constraint.baselineToBaseline = -1;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(r13) + " undefined");
                }
                constraint.bottomMargin = r14;
                return;
            case 5:
                if (r13 == 5) {
                    constraint.baselineToBaseline = r12;
                    constraint.bottomToBottom = -1;
                    constraint.bottomToTop = -1;
                    constraint.topToTop = -1;
                    constraint.topToBottom = -1;
                    return;
                }
                throw new IllegalArgumentException("right to " + sideToString(r13) + " undefined");
            case 6:
                if (r13 == 6) {
                    constraint.startToStart = r12;
                    constraint.startToEnd = -1;
                } else if (r13 == 7) {
                    constraint.startToEnd = r12;
                    constraint.startToStart = -1;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(r13) + " undefined");
                }
                constraint.startMargin = r14;
                return;
            case 7:
                if (r13 == 7) {
                    constraint.endToEnd = r12;
                    constraint.endToStart = -1;
                } else if (r13 == 6) {
                    constraint.endToStart = r12;
                    constraint.endToEnd = -1;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(r13) + " undefined");
                }
                constraint.endMargin = r14;
                return;
            default:
                throw new IllegalArgumentException(sideToString(r11) + " to " + sideToString(r13) + " unknown");
        }
    }

    public void connect(int r10, int r11, int r12, int r13) {
        if (!this.mConstraints.containsKey(Integer.valueOf(r10))) {
            this.mConstraints.put(Integer.valueOf(r10), new Constraint());
        }
        Constraint constraint = this.mConstraints.get(Integer.valueOf(r10));
        switch (r11) {
            case 1:
                if (r13 == 1) {
                    constraint.leftToLeft = r12;
                    constraint.leftToRight = -1;
                    return;
                } else if (r13 == 2) {
                    constraint.leftToRight = r12;
                    constraint.leftToLeft = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("left to " + sideToString(r13) + " undefined");
                }
            case 2:
                if (r13 == 1) {
                    constraint.rightToLeft = r12;
                    constraint.rightToRight = -1;
                    return;
                } else if (r13 == 2) {
                    constraint.rightToRight = r12;
                    constraint.rightToLeft = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(r13) + " undefined");
                }
            case 3:
                if (r13 == 3) {
                    constraint.topToTop = r12;
                    constraint.topToBottom = -1;
                    constraint.baselineToBaseline = -1;
                    return;
                } else if (r13 == 4) {
                    constraint.topToBottom = r12;
                    constraint.topToTop = -1;
                    constraint.baselineToBaseline = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(r13) + " undefined");
                }
            case 4:
                if (r13 == 4) {
                    constraint.bottomToBottom = r12;
                    constraint.bottomToTop = -1;
                    constraint.baselineToBaseline = -1;
                    return;
                } else if (r13 == 3) {
                    constraint.bottomToTop = r12;
                    constraint.bottomToBottom = -1;
                    constraint.baselineToBaseline = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(r13) + " undefined");
                }
            case 5:
                if (r13 == 5) {
                    constraint.baselineToBaseline = r12;
                    constraint.bottomToBottom = -1;
                    constraint.bottomToTop = -1;
                    constraint.topToTop = -1;
                    constraint.topToBottom = -1;
                    return;
                }
                throw new IllegalArgumentException("right to " + sideToString(r13) + " undefined");
            case 6:
                if (r13 == 6) {
                    constraint.startToStart = r12;
                    constraint.startToEnd = -1;
                    return;
                } else if (r13 == 7) {
                    constraint.startToEnd = r12;
                    constraint.startToStart = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(r13) + " undefined");
                }
            case 7:
                if (r13 == 7) {
                    constraint.endToEnd = r12;
                    constraint.endToStart = -1;
                    return;
                } else if (r13 == 6) {
                    constraint.endToStart = r12;
                    constraint.endToEnd = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + sideToString(r13) + " undefined");
                }
            default:
                throw new IllegalArgumentException(sideToString(r11) + " to " + sideToString(r13) + " unknown");
        }
    }

    public void centerHorizontally(int r10, int r11) {
        if (r11 == 0) {
            center(r10, 0, 1, 0, 0, 2, 0, 0.5f);
        } else {
            center(r10, r11, 2, 0, r11, 1, 0, 0.5f);
        }
    }

    public void centerHorizontallyRtl(int r10, int r11) {
        if (r11 == 0) {
            center(r10, 0, 6, 0, 0, 7, 0, 0.5f);
        } else {
            center(r10, r11, 7, 0, r11, 6, 0, 0.5f);
        }
    }

    public void centerVertically(int r10, int r11) {
        if (r11 == 0) {
            center(r10, 0, 3, 0, 0, 4, 0, 0.5f);
        } else {
            center(r10, r11, 4, 0, r11, 3, 0, 0.5f);
        }
    }

    public void clear(int r1) {
        this.mConstraints.remove(Integer.valueOf(r1));
    }

    public void clear(int r3, int r4) {
        if (this.mConstraints.containsKey(Integer.valueOf(r3))) {
            Constraint constraint = this.mConstraints.get(Integer.valueOf(r3));
            switch (r4) {
                case 1:
                    constraint.leftToRight = -1;
                    constraint.leftToLeft = -1;
                    constraint.leftMargin = -1;
                    constraint.goneLeftMargin = -1;
                    return;
                case 2:
                    constraint.rightToRight = -1;
                    constraint.rightToLeft = -1;
                    constraint.rightMargin = -1;
                    constraint.goneRightMargin = -1;
                    return;
                case 3:
                    constraint.topToBottom = -1;
                    constraint.topToTop = -1;
                    constraint.topMargin = -1;
                    constraint.goneTopMargin = -1;
                    return;
                case 4:
                    constraint.bottomToTop = -1;
                    constraint.bottomToBottom = -1;
                    constraint.bottomMargin = -1;
                    constraint.goneBottomMargin = -1;
                    return;
                case 5:
                    constraint.baselineToBaseline = -1;
                    return;
                case 6:
                    constraint.startToEnd = -1;
                    constraint.startToStart = -1;
                    constraint.startMargin = -1;
                    constraint.goneStartMargin = -1;
                    return;
                case 7:
                    constraint.endToStart = -1;
                    constraint.endToEnd = -1;
                    constraint.endMargin = -1;
                    constraint.goneEndMargin = -1;
                    return;
                default:
                    throw new IllegalArgumentException("unknown constraint");
            }
        }
    }

    public void setMargin(int r1, int r2, int r3) {
        Constraint constraint = get(r1);
        switch (r2) {
            case 1:
                constraint.leftMargin = r3;
                return;
            case 2:
                constraint.rightMargin = r3;
                return;
            case 3:
                constraint.topMargin = r3;
                return;
            case 4:
                constraint.bottomMargin = r3;
                return;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                constraint.startMargin = r3;
                return;
            case 7:
                constraint.endMargin = r3;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void setGoneMargin(int r1, int r2, int r3) {
        Constraint constraint = get(r1);
        switch (r2) {
            case 1:
                constraint.goneLeftMargin = r3;
                return;
            case 2:
                constraint.goneRightMargin = r3;
                return;
            case 3:
                constraint.goneTopMargin = r3;
                return;
            case 4:
                constraint.goneBottomMargin = r3;
                return;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                constraint.goneStartMargin = r3;
                return;
            case 7:
                constraint.goneEndMargin = r3;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void setHorizontalBias(int r1, float f) {
        get(r1).horizontalBias = f;
    }

    public void setVerticalBias(int r1, float f) {
        get(r1).verticalBias = f;
    }

    public void setDimensionRatio(int r1, String str) {
        get(r1).dimensionRatio = str;
    }

    public void setVisibility(int r1, int r2) {
        get(r1).visibility = r2;
    }

    public void setAlpha(int r1, float f) {
        get(r1).alpha = f;
    }

    public boolean getApplyElevation(int r1) {
        return get(r1).applyElevation;
    }

    public void setApplyElevation(int r1, boolean z) {
        get(r1).applyElevation = z;
    }

    public void setElevation(int r2, float f) {
        get(r2).elevation = f;
        get(r2).applyElevation = true;
    }

    public void setRotation(int r1, float f) {
        get(r1).rotation = f;
    }

    public void setRotationX(int r1, float f) {
        get(r1).rotationX = f;
    }

    public void setRotationY(int r1, float f) {
        get(r1).rotationY = f;
    }

    public void setScaleX(int r1, float f) {
        get(r1).scaleX = f;
    }

    public void setScaleY(int r1, float f) {
        get(r1).scaleY = f;
    }

    public void setTransformPivotX(int r1, float f) {
        get(r1).transformPivotX = f;
    }

    public void setTransformPivotY(int r1, float f) {
        get(r1).transformPivotY = f;
    }

    public void setTransformPivot(int r1, float f, float f2) {
        Constraint constraint = get(r1);
        constraint.transformPivotY = f2;
        constraint.transformPivotX = f;
    }

    public void setTranslationX(int r1, float f) {
        get(r1).translationX = f;
    }

    public void setTranslationY(int r1, float f) {
        get(r1).translationY = f;
    }

    public void setTranslation(int r1, float f, float f2) {
        Constraint constraint = get(r1);
        constraint.translationX = f;
        constraint.translationY = f2;
    }

    public void setTranslationZ(int r1, float f) {
        get(r1).translationZ = f;
    }

    public void constrainHeight(int r1, int r2) {
        get(r1).mHeight = r2;
    }

    public void constrainWidth(int r1, int r2) {
        get(r1).mWidth = r2;
    }

    public void constrainCircle(int r1, int r2, int r3, float f) {
        Constraint constraint = get(r1);
        constraint.circleConstraint = r2;
        constraint.circleRadius = r3;
        constraint.circleAngle = f;
    }

    public void constrainMaxHeight(int r1, int r2) {
        get(r1).heightMax = r2;
    }

    public void constrainMaxWidth(int r1, int r2) {
        get(r1).widthMax = r2;
    }

    public void constrainMinHeight(int r1, int r2) {
        get(r1).heightMin = r2;
    }

    public void constrainMinWidth(int r1, int r2) {
        get(r1).widthMin = r2;
    }

    public void constrainPercentWidth(int r1, float f) {
        get(r1).widthPercent = f;
    }

    public void constrainPercentHeight(int r1, float f) {
        get(r1).heightPercent = f;
    }

    public void constrainDefaultHeight(int r1, int r2) {
        get(r1).heightDefault = r2;
    }

    public void constrainDefaultWidth(int r1, int r2) {
        get(r1).widthDefault = r2;
    }

    public void setHorizontalWeight(int r1, float f) {
        get(r1).horizontalWeight = f;
    }

    public void setVerticalWeight(int r1, float f) {
        get(r1).verticalWeight = f;
    }

    public void setHorizontalChainStyle(int r1, int r2) {
        get(r1).horizontalChainStyle = r2;
    }

    public void setVerticalChainStyle(int r1, int r2) {
        get(r1).verticalChainStyle = r2;
    }

    public void addToHorizontalChain(int r9, int r10, int r11) {
        connect(r9, 1, r10, r10 == 0 ? 1 : 2, 0);
        connect(r9, 2, r11, r11 == 0 ? 2 : 1, 0);
        if (r10 != 0) {
            connect(r10, 2, r9, 1, 0);
        }
        if (r11 != 0) {
            connect(r11, 1, r9, 2, 0);
        }
    }

    public void addToHorizontalChainRTL(int r9, int r10, int r11) {
        connect(r9, 6, r10, r10 == 0 ? 6 : 7, 0);
        connect(r9, 7, r11, r11 == 0 ? 7 : 6, 0);
        if (r10 != 0) {
            connect(r10, 7, r9, 6, 0);
        }
        if (r11 != 0) {
            connect(r11, 6, r9, 7, 0);
        }
    }

    public void addToVerticalChain(int r15, int r16, int r17) {
        connect(r15, 3, r16, r16 == 0 ? 3 : 4, 0);
        connect(r15, 4, r17, r17 == 0 ? 4 : 3, 0);
        if (r16 != 0) {
            connect(r16, 4, r15, 3, 0);
        }
        if (r16 != 0) {
            connect(r17, 3, r15, 4, 0);
        }
    }

    public void removeFromVerticalChain(int r10) {
        if (this.mConstraints.containsKey(Integer.valueOf(r10))) {
            Constraint constraint = this.mConstraints.get(Integer.valueOf(r10));
            int r7 = constraint.topToBottom;
            int r8 = constraint.bottomToTop;
            if (r7 != -1 || r8 != -1) {
                if (r7 != -1 && r8 != -1) {
                    connect(r7, 4, r8, 3, 0);
                    connect(r8, 3, r7, 4, 0);
                } else if (r7 != -1 || r8 != -1) {
                    if (constraint.bottomToBottom != -1) {
                        connect(r7, 4, constraint.bottomToBottom, 4, 0);
                    } else if (constraint.topToTop != -1) {
                        connect(r8, 3, constraint.topToTop, 3, 0);
                    }
                }
            }
        }
        clear(r10, 3);
        clear(r10, 4);
    }

    public void removeFromHorizontalChain(int r9) {
        if (this.mConstraints.containsKey(Integer.valueOf(r9))) {
            Constraint constraint = this.mConstraints.get(Integer.valueOf(r9));
            int r6 = constraint.leftToRight;
            int r7 = constraint.rightToLeft;
            if (r6 != -1 || r7 != -1) {
                if (r6 != -1 && r7 != -1) {
                    connect(r6, 2, r7, 1, 0);
                    connect(r7, 1, r6, 2, 0);
                } else if (r6 != -1 || r7 != -1) {
                    if (constraint.rightToRight != -1) {
                        connect(r6, 2, constraint.rightToRight, 2, 0);
                    } else if (constraint.leftToLeft != -1) {
                        connect(r7, 1, constraint.leftToLeft, 1, 0);
                    }
                }
                clear(r9, 1);
                clear(r9, 2);
                return;
            }
            int r2 = constraint.startToEnd;
            int r72 = constraint.endToStart;
            if (r2 != -1 || r72 != -1) {
                if (r2 != -1 && r72 != -1) {
                    connect(r2, 7, r72, 6, 0);
                    connect(r72, 6, r6, 7, 0);
                } else if (r6 != -1 || r72 != -1) {
                    if (constraint.rightToRight != -1) {
                        connect(r6, 7, constraint.rightToRight, 7, 0);
                    } else if (constraint.leftToLeft != -1) {
                        connect(r72, 6, constraint.leftToLeft, 6, 0);
                    }
                }
            }
            clear(r9, 6);
            clear(r9, 7);
        }
    }

    public void create(int r1, int r2) {
        Constraint constraint = get(r1);
        constraint.mIsGuideline = true;
        constraint.orientation = r2;
    }

    public void createBarrier(int r1, int r2, int... r3) {
        Constraint constraint = get(r1);
        constraint.mHelperType = 1;
        constraint.mBarrierDirection = r2;
        constraint.mIsGuideline = false;
        constraint.mReferenceIds = r3;
    }

    public void setGuidelineBegin(int r2, int r3) {
        get(r2).guideBegin = r3;
        get(r2).guideEnd = -1;
        get(r2).guidePercent = -1.0f;
    }

    public void setGuidelineEnd(int r2, int r3) {
        get(r2).guideEnd = r3;
        get(r2).guideBegin = -1;
        get(r2).guidePercent = -1.0f;
    }

    public void setGuidelinePercent(int r2, float f) {
        get(r2).guidePercent = f;
        get(r2).guideEnd = -1;
        get(r2).guideBegin = -1;
    }

    private Constraint get(int r5) {
        if (!this.mConstraints.containsKey(Integer.valueOf(r5))) {
            this.mConstraints.put(Integer.valueOf(r5), new Constraint());
        }
        return this.mConstraints.get(Integer.valueOf(r5));
    }

    public void load(Context context, int r6) {
        XmlResourceParser xml = context.getResources().getXml(r6);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    Constraint constraintFillFromAttributeList = fillFromAttributeList(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        constraintFillFromAttributeList.mIsGuideline = true;
                    }
                    this.mConstraints.put(Integer.valueOf(constraintFillFromAttributeList.mViewId), constraintFillFromAttributeList);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    private static int lookupID(TypedArray typedArray, int r2, int r3) {
        int resourceId = typedArray.getResourceId(r2, r3);
        return resourceId == -1 ? typedArray.getInt(r2, -1) : resourceId;
    }

    private Constraint fillFromAttributeList(Context context, AttributeSet attributeSet) {
        Constraint constraint = new Constraint();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0207R.styleable.ConstraintSet);
        populateConstraint(constraint, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        return constraint;
    }

    private void populateConstraint(Constraint constraint, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int r0 = 0; r0 < indexCount; r0++) {
            int index = typedArray.getIndex(r0);
            int r2 = mapToConstant.get(index);
            switch (r2) {
                case 1:
                    constraint.baselineToBaseline = lookupID(typedArray, index, constraint.baselineToBaseline);
                    break;
                case 2:
                    constraint.bottomMargin = typedArray.getDimensionPixelSize(index, constraint.bottomMargin);
                    break;
                case 3:
                    constraint.bottomToBottom = lookupID(typedArray, index, constraint.bottomToBottom);
                    break;
                case 4:
                    constraint.bottomToTop = lookupID(typedArray, index, constraint.bottomToTop);
                    break;
                case 5:
                    constraint.dimensionRatio = typedArray.getString(index);
                    break;
                case 6:
                    constraint.editorAbsoluteX = typedArray.getDimensionPixelOffset(index, constraint.editorAbsoluteX);
                    break;
                case 7:
                    constraint.editorAbsoluteY = typedArray.getDimensionPixelOffset(index, constraint.editorAbsoluteY);
                    break;
                case 8:
                    constraint.endMargin = typedArray.getDimensionPixelSize(index, constraint.endMargin);
                    break;
                case 9:
                    constraint.endToEnd = lookupID(typedArray, index, constraint.endToEnd);
                    break;
                case 10:
                    constraint.endToStart = lookupID(typedArray, index, constraint.endToStart);
                    break;
                case 11:
                    constraint.goneBottomMargin = typedArray.getDimensionPixelSize(index, constraint.goneBottomMargin);
                    break;
                case 12:
                    constraint.goneEndMargin = typedArray.getDimensionPixelSize(index, constraint.goneEndMargin);
                    break;
                case 13:
                    constraint.goneLeftMargin = typedArray.getDimensionPixelSize(index, constraint.goneLeftMargin);
                    break;
                case 14:
                    constraint.goneRightMargin = typedArray.getDimensionPixelSize(index, constraint.goneRightMargin);
                    break;
                case 15:
                    constraint.goneStartMargin = typedArray.getDimensionPixelSize(index, constraint.goneStartMargin);
                    break;
                case 16:
                    constraint.goneTopMargin = typedArray.getDimensionPixelSize(index, constraint.goneTopMargin);
                    break;
                case 17:
                    constraint.guideBegin = typedArray.getDimensionPixelOffset(index, constraint.guideBegin);
                    break;
                case 18:
                    constraint.guideEnd = typedArray.getDimensionPixelOffset(index, constraint.guideEnd);
                    break;
                case 19:
                    constraint.guidePercent = typedArray.getFloat(index, constraint.guidePercent);
                    break;
                case 20:
                    constraint.horizontalBias = typedArray.getFloat(index, constraint.horizontalBias);
                    break;
                case 21:
                    constraint.mHeight = typedArray.getLayoutDimension(index, constraint.mHeight);
                    break;
                case 22:
                    constraint.visibility = typedArray.getInt(index, constraint.visibility);
                    constraint.visibility = VISIBILITY_FLAGS[constraint.visibility];
                    break;
                case 23:
                    constraint.mWidth = typedArray.getLayoutDimension(index, constraint.mWidth);
                    break;
                case 24:
                    constraint.leftMargin = typedArray.getDimensionPixelSize(index, constraint.leftMargin);
                    break;
                case 25:
                    constraint.leftToLeft = lookupID(typedArray, index, constraint.leftToLeft);
                    break;
                case 26:
                    constraint.leftToRight = lookupID(typedArray, index, constraint.leftToRight);
                    break;
                case 27:
                    constraint.orientation = typedArray.getInt(index, constraint.orientation);
                    break;
                case 28:
                    constraint.rightMargin = typedArray.getDimensionPixelSize(index, constraint.rightMargin);
                    break;
                case 29:
                    constraint.rightToLeft = lookupID(typedArray, index, constraint.rightToLeft);
                    break;
                case 30:
                    constraint.rightToRight = lookupID(typedArray, index, constraint.rightToRight);
                    break;
                case 31:
                    constraint.startMargin = typedArray.getDimensionPixelSize(index, constraint.startMargin);
                    break;
                case 32:
                    constraint.startToEnd = lookupID(typedArray, index, constraint.startToEnd);
                    break;
                case 33:
                    constraint.startToStart = lookupID(typedArray, index, constraint.startToStart);
                    break;
                case 34:
                    constraint.topMargin = typedArray.getDimensionPixelSize(index, constraint.topMargin);
                    break;
                case 35:
                    constraint.topToBottom = lookupID(typedArray, index, constraint.topToBottom);
                    break;
                case 36:
                    constraint.topToTop = lookupID(typedArray, index, constraint.topToTop);
                    break;
                case 37:
                    constraint.verticalBias = typedArray.getFloat(index, constraint.verticalBias);
                    break;
                case 38:
                    constraint.mViewId = typedArray.getResourceId(index, constraint.mViewId);
                    break;
                case 39:
                    constraint.horizontalWeight = typedArray.getFloat(index, constraint.horizontalWeight);
                    break;
                case 40:
                    constraint.verticalWeight = typedArray.getFloat(index, constraint.verticalWeight);
                    break;
                case 41:
                    constraint.horizontalChainStyle = typedArray.getInt(index, constraint.horizontalChainStyle);
                    break;
                case 42:
                    constraint.verticalChainStyle = typedArray.getInt(index, constraint.verticalChainStyle);
                    break;
                case 43:
                    constraint.alpha = typedArray.getFloat(index, constraint.alpha);
                    break;
                case 44:
                    constraint.applyElevation = true;
                    constraint.elevation = typedArray.getDimension(index, constraint.elevation);
                    break;
                case 45:
                    constraint.rotationX = typedArray.getFloat(index, constraint.rotationX);
                    break;
                case 46:
                    constraint.rotationY = typedArray.getFloat(index, constraint.rotationY);
                    break;
                case 47:
                    constraint.scaleX = typedArray.getFloat(index, constraint.scaleX);
                    break;
                case 48:
                    constraint.scaleY = typedArray.getFloat(index, constraint.scaleY);
                    break;
                case 49:
                    constraint.transformPivotX = typedArray.getFloat(index, constraint.transformPivotX);
                    break;
                case 50:
                    constraint.transformPivotY = typedArray.getFloat(index, constraint.transformPivotY);
                    break;
                case 51:
                    constraint.translationX = typedArray.getDimension(index, constraint.translationX);
                    break;
                case 52:
                    constraint.translationY = typedArray.getDimension(index, constraint.translationY);
                    break;
                case 53:
                    constraint.translationZ = typedArray.getDimension(index, constraint.translationZ);
                    break;
                default:
                    switch (r2) {
                        case 60:
                            constraint.rotation = typedArray.getFloat(index, constraint.rotation);
                            break;
                        case 61:
                            constraint.circleConstraint = lookupID(typedArray, index, constraint.circleConstraint);
                            break;
                        case 62:
                            constraint.circleRadius = typedArray.getDimensionPixelSize(index, constraint.circleRadius);
                            break;
                        case 63:
                            constraint.circleAngle = typedArray.getFloat(index, constraint.circleAngle);
                            break;
                        default:
                            switch (r2) {
                                case 69:
                                    constraint.widthPercent = typedArray.getFloat(index, 1.0f);
                                    break;
                                case 70:
                                    constraint.heightPercent = typedArray.getFloat(index, 1.0f);
                                    break;
                                case 71:
                                    Log.e(TAG, "CURRENTLY UNSUPPORTED");
                                    break;
                                case 72:
                                    constraint.mBarrierDirection = typedArray.getInt(index, constraint.mBarrierDirection);
                                    break;
                                case 73:
                                    constraint.mReferenceIdString = typedArray.getString(index);
                                    break;
                                case 74:
                                    constraint.mBarrierAllowsGoneWidgets = typedArray.getBoolean(index, constraint.mBarrierAllowsGoneWidgets);
                                    break;
                                case 75:
                                    Log.w(TAG, "unused attribute 0x" + Integer.toHexString(index) + "   " + mapToConstant.get(index));
                                    break;
                                default:
                                    Log.w(TAG, "Unknown attribute 0x" + Integer.toHexString(index) + "   " + mapToConstant.get(index));
                                    break;
                            }
                    }
            }
        }
    }

    private int[] convertReferenceString(View view, String str) throws IllegalAccessException, IllegalArgumentException {
        int identifier;
        Object designInformation;
        String[] strArrSplit = str.split(",");
        Context context = view.getContext();
        int[] r0 = new int[strArrSplit.length];
        int r2 = 0;
        int r3 = 0;
        while (r2 < strArrSplit.length) {
            String strTrim = strArrSplit[r2].trim();
            try {
                identifier = C0207R.id.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                identifier = 0;
            }
            if (identifier == 0) {
                identifier = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (identifier == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) view.getParent()).getDesignInformation(0, strTrim)) != null && (designInformation instanceof Integer)) {
                identifier = ((Integer) designInformation).intValue();
            }
            r0[r3] = identifier;
            r2++;
            r3++;
        }
        return r3 != strArrSplit.length ? Arrays.copyOf(r0, r3) : r0;
    }
}
