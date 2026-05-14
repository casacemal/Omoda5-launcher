package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import com.chery.libvr.bean.params.ParamsPosition;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ConstraintTableLayout extends ConstraintWidgetContainer {
    public static final int ALIGN_CENTER = 0;
    private static final int ALIGN_FULL = 3;
    public static final int ALIGN_LEFT = 1;
    public static final int ALIGN_RIGHT = 2;
    private ArrayList<Guideline> mHorizontalGuidelines;
    private ArrayList<HorizontalSlice> mHorizontalSlices;
    private int mNumCols;
    private int mNumRows;
    private int mPadding;
    private boolean mVerticalGrowth;
    private ArrayList<Guideline> mVerticalGuidelines;
    private ArrayList<VerticalSlice> mVerticalSlices;
    private LinearSystem system;

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer, androidx.constraintlayout.solver.widgets.ConstraintWidget
    public String getType() {
        return "ConstraintTableLayout";
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer
    public boolean handlesInternalConstraints() {
        return true;
    }

    class HorizontalSlice {
        ConstraintWidget bottom;
        int padding;
        ConstraintWidget top;

        HorizontalSlice() {
        }
    }

    class VerticalSlice {
        int alignment = 1;
        ConstraintWidget left;
        int padding;
        ConstraintWidget right;

        VerticalSlice() {
        }
    }

    public ConstraintTableLayout() {
        this.mVerticalGrowth = true;
        this.mNumCols = 0;
        this.mNumRows = 0;
        this.mPadding = 8;
        this.mVerticalSlices = new ArrayList<>();
        this.mHorizontalSlices = new ArrayList<>();
        this.mVerticalGuidelines = new ArrayList<>();
        this.mHorizontalGuidelines = new ArrayList<>();
        this.system = null;
    }

    public ConstraintTableLayout(int r1, int r2, int r3, int r4) {
        super(r1, r2, r3, r4);
        this.mVerticalGrowth = true;
        this.mNumCols = 0;
        this.mNumRows = 0;
        this.mPadding = 8;
        this.mVerticalSlices = new ArrayList<>();
        this.mHorizontalSlices = new ArrayList<>();
        this.mVerticalGuidelines = new ArrayList<>();
        this.mHorizontalGuidelines = new ArrayList<>();
        this.system = null;
    }

    public ConstraintTableLayout(int r1, int r2) {
        super(r1, r2);
        this.mVerticalGrowth = true;
        this.mNumCols = 0;
        this.mNumRows = 0;
        this.mPadding = 8;
        this.mVerticalSlices = new ArrayList<>();
        this.mHorizontalSlices = new ArrayList<>();
        this.mVerticalGuidelines = new ArrayList<>();
        this.mHorizontalGuidelines = new ArrayList<>();
        this.system = null;
    }

    public int getNumRows() {
        return this.mNumRows;
    }

    public int getNumCols() {
        return this.mNumCols;
    }

    public int getPadding() {
        return this.mPadding;
    }

    public String getColumnsAlignmentRepresentation() {
        int size = this.mVerticalSlices.size();
        String str = "";
        for (int r2 = 0; r2 < size; r2++) {
            VerticalSlice verticalSlice = this.mVerticalSlices.get(r2);
            if (verticalSlice.alignment == 1) {
                str = str + ParamsPosition.f236L;
            } else if (verticalSlice.alignment == 0) {
                str = str + "C";
            } else if (verticalSlice.alignment == 3) {
                str = str + ParamsPosition.f235F;
            } else if (verticalSlice.alignment == 2) {
                str = str + ParamsPosition.f239R;
            }
        }
        return str;
    }

    public String getColumnAlignmentRepresentation(int r2) {
        VerticalSlice verticalSlice = this.mVerticalSlices.get(r2);
        return verticalSlice.alignment == 1 ? ParamsPosition.f236L : verticalSlice.alignment == 0 ? "C" : verticalSlice.alignment == 3 ? ParamsPosition.f235F : verticalSlice.alignment == 2 ? ParamsPosition.f239R : "!";
    }

    public void setNumCols(int r2) {
        if (!this.mVerticalGrowth || this.mNumCols == r2) {
            return;
        }
        this.mNumCols = r2;
        setVerticalSlices();
        setTableDimensions();
    }

    public void setNumRows(int r2) {
        if (this.mVerticalGrowth || this.mNumCols == r2) {
            return;
        }
        this.mNumRows = r2;
        setHorizontalSlices();
        setTableDimensions();
    }

    public boolean isVerticalGrowth() {
        return this.mVerticalGrowth;
    }

    public void setVerticalGrowth(boolean z) {
        this.mVerticalGrowth = z;
    }

    public void setPadding(int r2) {
        if (r2 > 1) {
            this.mPadding = r2;
        }
    }

    public void setColumnAlignment(int r2, int r3) {
        if (r2 < this.mVerticalSlices.size()) {
            this.mVerticalSlices.get(r2).alignment = r3;
            setChildrenConnections();
        }
    }

    public void cycleColumnAlignment(int r4) {
        VerticalSlice verticalSlice = this.mVerticalSlices.get(r4);
        int r0 = verticalSlice.alignment;
        if (r0 == 0) {
            verticalSlice.alignment = 2;
        } else if (r0 == 1) {
            verticalSlice.alignment = 0;
        } else if (r0 == 2) {
            verticalSlice.alignment = 1;
        }
        setChildrenConnections();
    }

    public void setColumnAlignment(String str) {
        int length = str.length();
        for (int r2 = 0; r2 < length; r2++) {
            char cCharAt = str.charAt(r2);
            if (cCharAt == 'L') {
                setColumnAlignment(r2, 1);
            } else if (cCharAt == 'C') {
                setColumnAlignment(r2, 0);
            } else if (cCharAt == 'F') {
                setColumnAlignment(r2, 3);
            } else if (cCharAt == 'R') {
                setColumnAlignment(r2, 2);
            } else {
                setColumnAlignment(r2, 0);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer
    public ArrayList<Guideline> getVerticalGuidelines() {
        return this.mVerticalGuidelines;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer
    public ArrayList<Guideline> getHorizontalGuidelines() {
        return this.mHorizontalGuidelines;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem) {
        super.addToSolver(linearSystem);
        int size = this.mChildren.size();
        if (size == 0) {
            return;
        }
        setTableDimensions();
        if (linearSystem == this.mSystem) {
            int size2 = this.mVerticalGuidelines.size();
            int r3 = 0;
            while (true) {
                boolean z = true;
                if (r3 >= size2) {
                    break;
                }
                Guideline guideline = this.mVerticalGuidelines.get(r3);
                if (getHorizontalDimensionBehaviour() != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    z = false;
                }
                guideline.setPositionRelaxed(z);
                guideline.addToSolver(linearSystem);
                r3++;
            }
            int size3 = this.mHorizontalGuidelines.size();
            for (int r32 = 0; r32 < size3; r32++) {
                Guideline guideline2 = this.mHorizontalGuidelines.get(r32);
                guideline2.setPositionRelaxed(getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                guideline2.addToSolver(linearSystem);
            }
            for (int r2 = 0; r2 < size; r2++) {
                this.mChildren.get(r2).addToSolver(linearSystem);
            }
        }
    }

    public void setTableDimensions() {
        int size = this.mChildren.size();
        int containerItemSkip = 0;
        for (int r1 = 0; r1 < size; r1++) {
            containerItemSkip += this.mChildren.get(r1).getContainerItemSkip();
        }
        int r0 = size + containerItemSkip;
        if (this.mVerticalGrowth) {
            if (this.mNumCols == 0) {
                setNumCols(1);
            }
            int r12 = this.mNumCols;
            int r3 = r0 / r12;
            if (r12 * r3 < r0) {
                r3++;
            }
            if (this.mNumRows == r3 && this.mVerticalGuidelines.size() == this.mNumCols - 1) {
                return;
            }
            this.mNumRows = r3;
            setHorizontalSlices();
        } else {
            if (this.mNumRows == 0) {
                setNumRows(1);
            }
            int r13 = this.mNumRows;
            int r32 = r0 / r13;
            if (r13 * r32 < r0) {
                r32++;
            }
            if (this.mNumCols == r32 && this.mHorizontalGuidelines.size() == this.mNumRows - 1) {
                return;
            }
            this.mNumCols = r32;
            setVerticalSlices();
        }
        setChildrenConnections();
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void setDebugSolverName(LinearSystem linearSystem, String str) {
        this.system = linearSystem;
        super.setDebugSolverName(linearSystem, str);
        updateDebugSolverNames();
    }

    private void updateDebugSolverNames() {
        if (this.system == null) {
            return;
        }
        int size = this.mVerticalGuidelines.size();
        for (int r2 = 0; r2 < size; r2++) {
            this.mVerticalGuidelines.get(r2).setDebugSolverName(this.system, getDebugName() + ".VG" + r2);
        }
        int size2 = this.mHorizontalGuidelines.size();
        for (int r1 = 0; r1 < size2; r1++) {
            this.mHorizontalGuidelines.get(r1).setDebugSolverName(this.system, getDebugName() + ".HG" + r1);
        }
    }

    private void setVerticalSlices() {
        this.mVerticalSlices.clear();
        float f = 100.0f / this.mNumCols;
        ConstraintWidget constraintWidget = this;
        float f2 = f;
        for (int r0 = 0; r0 < this.mNumCols; r0++) {
            VerticalSlice verticalSlice = new VerticalSlice();
            verticalSlice.left = constraintWidget;
            if (r0 < this.mNumCols - 1) {
                Guideline guideline = new Guideline();
                guideline.setOrientation(1);
                guideline.setParent(this);
                guideline.setGuidePercent((int) f2);
                f2 += f;
                verticalSlice.right = guideline;
                this.mVerticalGuidelines.add(guideline);
            } else {
                verticalSlice.right = this;
            }
            constraintWidget = verticalSlice.right;
            this.mVerticalSlices.add(verticalSlice);
        }
        updateDebugSolverNames();
    }

    private void setHorizontalSlices() {
        this.mHorizontalSlices.clear();
        float f = 100.0f / this.mNumRows;
        ConstraintWidget constraintWidget = this;
        float f2 = f;
        for (int r2 = 0; r2 < this.mNumRows; r2++) {
            HorizontalSlice horizontalSlice = new HorizontalSlice();
            horizontalSlice.top = constraintWidget;
            if (r2 < this.mNumRows - 1) {
                Guideline guideline = new Guideline();
                guideline.setOrientation(0);
                guideline.setParent(this);
                guideline.setGuidePercent((int) f2);
                f2 += f;
                horizontalSlice.bottom = guideline;
                this.mHorizontalGuidelines.add(guideline);
            } else {
                horizontalSlice.bottom = this;
            }
            constraintWidget = horizontalSlice.bottom;
            this.mHorizontalSlices.add(horizontalSlice);
        }
        updateDebugSolverNames();
    }

    private void setChildrenConnections() {
        int size = this.mChildren.size();
        int r2 = 0;
        for (int r1 = 0; r1 < size; r1++) {
            ConstraintWidget constraintWidget = this.mChildren.get(r1);
            int containerItemSkip = r2 + constraintWidget.getContainerItemSkip();
            int r4 = this.mNumCols;
            int r5 = containerItemSkip % r4;
            HorizontalSlice horizontalSlice = this.mHorizontalSlices.get(containerItemSkip / r4);
            VerticalSlice verticalSlice = this.mVerticalSlices.get(r5);
            ConstraintWidget constraintWidget2 = verticalSlice.left;
            ConstraintWidget constraintWidget3 = verticalSlice.right;
            ConstraintWidget constraintWidget4 = horizontalSlice.top;
            ConstraintWidget constraintWidget5 = horizontalSlice.bottom;
            constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT).connect(constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT), this.mPadding);
            if (constraintWidget3 instanceof Guideline) {
                constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).connect(constraintWidget3.getAnchor(ConstraintAnchor.Type.LEFT), this.mPadding);
            } else {
                constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).connect(constraintWidget3.getAnchor(ConstraintAnchor.Type.RIGHT), this.mPadding);
            }
            int r52 = verticalSlice.alignment;
            if (r52 == 1) {
                constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT).setStrength(ConstraintAnchor.Strength.STRONG);
                constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).setStrength(ConstraintAnchor.Strength.WEAK);
            } else if (r52 == 2) {
                constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT).setStrength(ConstraintAnchor.Strength.WEAK);
                constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).setStrength(ConstraintAnchor.Strength.STRONG);
            } else if (r52 == 3) {
                constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            }
            constraintWidget.getAnchor(ConstraintAnchor.Type.TOP).connect(constraintWidget4.getAnchor(ConstraintAnchor.Type.TOP), this.mPadding);
            if (constraintWidget5 instanceof Guideline) {
                constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).connect(constraintWidget5.getAnchor(ConstraintAnchor.Type.TOP), this.mPadding);
            } else {
                constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).connect(constraintWidget5.getAnchor(ConstraintAnchor.Type.BOTTOM), this.mPadding);
            }
            r2 = containerItemSkip + 1;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void updateFromSolver(LinearSystem linearSystem) {
        super.updateFromSolver(linearSystem);
        if (linearSystem == this.mSystem) {
            int size = this.mVerticalGuidelines.size();
            for (int r2 = 0; r2 < size; r2++) {
                this.mVerticalGuidelines.get(r2).updateFromSolver(linearSystem);
            }
            int size2 = this.mHorizontalGuidelines.size();
            for (int r1 = 0; r1 < size2; r1++) {
                this.mHorizontalGuidelines.get(r1).updateFromSolver(linearSystem);
            }
        }
    }

    public void computeGuidelinesPercentPositions() {
        int size = this.mVerticalGuidelines.size();
        for (int r2 = 0; r2 < size; r2++) {
            this.mVerticalGuidelines.get(r2).inferRelativePercentPosition();
        }
        int size2 = this.mHorizontalGuidelines.size();
        for (int r1 = 0; r1 < size2; r1++) {
            this.mHorizontalGuidelines.get(r1).inferRelativePercentPosition();
        }
    }
}
