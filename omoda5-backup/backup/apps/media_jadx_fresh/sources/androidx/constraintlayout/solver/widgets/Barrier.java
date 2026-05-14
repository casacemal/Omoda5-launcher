package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class Barrier extends Helper {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int TOP = 2;
    private int mBarrierType = 0;
    private ArrayList<ResolutionAnchor> mNodes = new ArrayList<>(4);
    private boolean mAllowsGoneWidget = true;

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public boolean allowedInBarrier() {
        return true;
    }

    public void setBarrierType(int r1) {
        this.mBarrierType = r1;
    }

    public void setAllowsGoneWidget(boolean z) {
        this.mAllowsGoneWidget = z;
    }

    public boolean allowsGoneWidget() {
        return this.mAllowsGoneWidget;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void resetResolutionNodes() {
        super.resetResolutionNodes();
        this.mNodes.clear();
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void analyze(int r8) {
        ResolutionAnchor resolutionNode;
        ResolutionAnchor resolutionNode2;
        if (this.mParent != null && ((ConstraintWidgetContainer) this.mParent).optimizeFor(2)) {
            int r82 = this.mBarrierType;
            if (r82 == 0) {
                resolutionNode = this.mLeft.getResolutionNode();
            } else if (r82 == 1) {
                resolutionNode = this.mRight.getResolutionNode();
            } else if (r82 == 2) {
                resolutionNode = this.mTop.getResolutionNode();
            } else if (r82 != 3) {
                return;
            } else {
                resolutionNode = this.mBottom.getResolutionNode();
            }
            resolutionNode.setType(5);
            int r3 = this.mBarrierType;
            if (r3 == 0 || r3 == 1) {
                this.mTop.getResolutionNode().resolve(null, 0.0f);
                this.mBottom.getResolutionNode().resolve(null, 0.0f);
            } else {
                this.mLeft.getResolutionNode().resolve(null, 0.0f);
                this.mRight.getResolutionNode().resolve(null, 0.0f);
            }
            this.mNodes.clear();
            for (int r32 = 0; r32 < this.mWidgetsCount; r32++) {
                ConstraintWidget constraintWidget = this.mWidgets[r32];
                if (this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) {
                    int r6 = this.mBarrierType;
                    if (r6 == 0) {
                        resolutionNode2 = constraintWidget.mLeft.getResolutionNode();
                    } else if (r6 == 1) {
                        resolutionNode2 = constraintWidget.mRight.getResolutionNode();
                    } else if (r6 == 2) {
                        resolutionNode2 = constraintWidget.mTop.getResolutionNode();
                    } else {
                        resolutionNode2 = r6 != 3 ? null : constraintWidget.mBottom.getResolutionNode();
                    }
                    if (resolutionNode2 != null) {
                        this.mNodes.add(resolutionNode2);
                        resolutionNode2.addDependent(resolutionNode);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void resolve() {
        ResolutionAnchor resolutionNode;
        int r0 = this.mBarrierType;
        float f = Float.MAX_VALUE;
        if (r0 != 0) {
            if (r0 == 1) {
                resolutionNode = this.mRight.getResolutionNode();
            } else if (r0 == 2) {
                resolutionNode = this.mTop.getResolutionNode();
            } else if (r0 != 3) {
                return;
            } else {
                resolutionNode = this.mBottom.getResolutionNode();
            }
            f = 0.0f;
        } else {
            resolutionNode = this.mLeft.getResolutionNode();
        }
        int size = this.mNodes.size();
        ResolutionAnchor resolutionAnchor = null;
        for (int r7 = 0; r7 < size; r7++) {
            ResolutionAnchor resolutionAnchor2 = this.mNodes.get(r7);
            if (resolutionAnchor2.state != 1) {
                return;
            }
            int r9 = this.mBarrierType;
            if (r9 == 0 || r9 == 2) {
                if (resolutionAnchor2.resolvedOffset < f) {
                    f = resolutionAnchor2.resolvedOffset;
                    resolutionAnchor = resolutionAnchor2.resolvedTarget;
                }
            } else if (resolutionAnchor2.resolvedOffset > f) {
                f = resolutionAnchor2.resolvedOffset;
                resolutionAnchor = resolutionAnchor2.resolvedTarget;
            }
        }
        if (LinearSystem.getMetrics() != null) {
            LinearSystem.getMetrics().barrierConnectionResolved++;
        }
        resolutionNode.resolvedTarget = resolutionAnchor;
        resolutionNode.resolvedOffset = f;
        resolutionNode.didResolve();
        int r02 = this.mBarrierType;
        if (r02 == 0) {
            this.mRight.getResolutionNode().resolve(resolutionAnchor, f);
            return;
        }
        if (r02 == 1) {
            this.mLeft.getResolutionNode().resolve(resolutionAnchor, f);
        } else if (r02 == 2) {
            this.mBottom.getResolutionNode().resolve(resolutionAnchor, f);
        } else {
            if (r02 != 3) {
                return;
            }
            this.mTop.getResolutionNode().resolve(resolutionAnchor, f);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem) {
        boolean z;
        int r7;
        int r72;
        this.mListAnchors[0] = this.mLeft;
        this.mListAnchors[2] = this.mTop;
        this.mListAnchors[1] = this.mRight;
        this.mListAnchors[3] = this.mBottom;
        for (int r0 = 0; r0 < this.mListAnchors.length; r0++) {
            this.mListAnchors[r0].mSolverVariable = linearSystem.createObjectVariable(this.mListAnchors[r0]);
        }
        int r02 = this.mBarrierType;
        if (r02 < 0 || r02 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor = this.mListAnchors[this.mBarrierType];
        for (int r1 = 0; r1 < this.mWidgetsCount; r1++) {
            ConstraintWidget constraintWidget = this.mWidgets[r1];
            if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((r7 = this.mBarrierType) == 0 || r7 == 1) && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) || (((r72 = this.mBarrierType) == 2 || r72 == 3) && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT))) {
                z = true;
                break;
            }
        }
        z = false;
        int r6 = this.mBarrierType;
        if (r6 == 0 || r6 == 1 ? getParent().getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT : getParent().getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            z = false;
        }
        for (int r62 = 0; r62 < this.mWidgetsCount; r62++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[r62];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(constraintWidget2.mListAnchors[this.mBarrierType]);
                constraintWidget2.mListAnchors[this.mBarrierType].mSolverVariable = solverVariableCreateObjectVariable;
                int r73 = this.mBarrierType;
                if (r73 == 0 || r73 == 2) {
                    linearSystem.addLowerBarrier(constraintAnchor.mSolverVariable, solverVariableCreateObjectVariable, z);
                } else {
                    linearSystem.addGreaterBarrier(constraintAnchor.mSolverVariable, solverVariableCreateObjectVariable, z);
                }
            }
        }
        int r03 = this.mBarrierType;
        if (r03 == 0) {
            linearSystem.addEquality(this.mRight.mSolverVariable, this.mLeft.mSolverVariable, 0, 6);
            if (z) {
                return;
            }
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 5);
            return;
        }
        if (r03 == 1) {
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mRight.mSolverVariable, 0, 6);
            if (z) {
                return;
            }
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 5);
            return;
        }
        if (r03 == 2) {
            linearSystem.addEquality(this.mBottom.mSolverVariable, this.mTop.mSolverVariable, 0, 6);
            if (z) {
                return;
            }
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 5);
            return;
        }
        if (r03 == 3) {
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mBottom.mSolverVariable, 0, 6);
            if (z) {
                return;
            }
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 5);
        }
    }
}
