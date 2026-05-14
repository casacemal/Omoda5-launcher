package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class Analyzer {
    private Analyzer() {
    }

    public static void determineGroups(ConstraintWidgetContainer constraintWidgetContainer) {
        if ((constraintWidgetContainer.getOptimizationLevel() & 32) != 32) {
            singleGroup(constraintWidgetContainer);
            return;
        }
        constraintWidgetContainer.mSkipSolver = true;
        constraintWidgetContainer.mGroupsWrapOptimized = false;
        constraintWidgetContainer.mHorizontalWrapOptimized = false;
        constraintWidgetContainer.mVerticalWrapOptimized = false;
        ArrayList<ConstraintWidget> arrayList = constraintWidgetContainer.mChildren;
        List<ConstraintWidgetGroup> list = constraintWidgetContainer.mWidgetGroups;
        boolean z = constraintWidgetContainer.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z2 = constraintWidgetContainer.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z3 = z || z2;
        list.clear();
        for (ConstraintWidget constraintWidget : arrayList) {
            constraintWidget.mBelongingGroup = null;
            constraintWidget.mGroupsToSolver = false;
            constraintWidget.resetResolutionNodes();
        }
        for (ConstraintWidget constraintWidget2 : arrayList) {
            if (constraintWidget2.mBelongingGroup == null && !determineGroups(constraintWidget2, list, z3)) {
                singleGroup(constraintWidgetContainer);
                constraintWidgetContainer.mSkipSolver = false;
                return;
            }
        }
        int r6 = 0;
        int r7 = 0;
        for (ConstraintWidgetGroup constraintWidgetGroup : list) {
            r6 = Math.max(r6, getMaxDimension(constraintWidgetGroup, 0));
            r7 = Math.max(r7, getMaxDimension(constraintWidgetGroup, 1));
        }
        if (z) {
            constraintWidgetContainer.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidgetContainer.setWidth(r6);
            constraintWidgetContainer.mGroupsWrapOptimized = true;
            constraintWidgetContainer.mHorizontalWrapOptimized = true;
            constraintWidgetContainer.mWrapFixedWidth = r6;
        }
        if (z2) {
            constraintWidgetContainer.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidgetContainer.setHeight(r7);
            constraintWidgetContainer.mGroupsWrapOptimized = true;
            constraintWidgetContainer.mVerticalWrapOptimized = true;
            constraintWidgetContainer.mWrapFixedHeight = r7;
        }
        setPosition(list, 0, constraintWidgetContainer.getWidth());
        setPosition(list, 1, constraintWidgetContainer.getHeight());
    }

    private static boolean determineGroups(ConstraintWidget constraintWidget, List<ConstraintWidgetGroup> list, boolean z) {
        ConstraintWidgetGroup constraintWidgetGroup = new ConstraintWidgetGroup(new ArrayList(), true);
        list.add(constraintWidgetGroup);
        return traverse(constraintWidget, constraintWidgetGroup, list, z);
    }

    private static boolean traverse(ConstraintWidget constraintWidget, ConstraintWidgetGroup constraintWidgetGroup, List<ConstraintWidgetGroup> list, boolean z) {
        if (constraintWidget == null) {
            return true;
        }
        constraintWidget.mOptimizerMeasured = false;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget.getParent();
        if (constraintWidget.mBelongingGroup == null) {
            constraintWidget.mOptimizerMeasurable = true;
            constraintWidgetGroup.mConstrainedGroup.add(constraintWidget);
            constraintWidget.mBelongingGroup = constraintWidgetGroup;
            if (constraintWidget.mLeft.mTarget == null && constraintWidget.mRight.mTarget == null && constraintWidget.mTop.mTarget == null && constraintWidget.mBottom.mTarget == null && constraintWidget.mBaseline.mTarget == null && constraintWidget.mCenter.mTarget == null) {
                invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                if (z) {
                    return false;
                }
            }
            if (constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null) {
                constraintWidgetContainer.getVerticalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (z) {
                    invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                    return false;
                }
                if (constraintWidget.mTop.mTarget.mOwner != constraintWidget.getParent() || constraintWidget.mBottom.mTarget.mOwner != constraintWidget.getParent()) {
                    invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                }
            }
            if (constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) {
                constraintWidgetContainer.getHorizontalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (z) {
                    invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                    return false;
                }
                if (constraintWidget.mLeft.mTarget.mOwner != constraintWidget.getParent() || constraintWidget.mRight.mTarget.mOwner != constraintWidget.getParent()) {
                    invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                }
            }
            if (((constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) ^ (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)) && constraintWidget.mDimensionRatio != 0.0f) {
                resolveDimensionRatio(constraintWidget);
            } else if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                if (z) {
                    return false;
                }
            }
            if (((constraintWidget.mLeft.mTarget == null && constraintWidget.mRight.mTarget == null) || ((constraintWidget.mLeft.mTarget != null && constraintWidget.mLeft.mTarget.mOwner == constraintWidget.mParent && constraintWidget.mRight.mTarget == null) || ((constraintWidget.mRight.mTarget != null && constraintWidget.mRight.mTarget.mOwner == constraintWidget.mParent && constraintWidget.mLeft.mTarget == null) || (constraintWidget.mLeft.mTarget != null && constraintWidget.mLeft.mTarget.mOwner == constraintWidget.mParent && constraintWidget.mRight.mTarget != null && constraintWidget.mRight.mTarget.mOwner == constraintWidget.mParent)))) && constraintWidget.mCenter.mTarget == null && !(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Helper)) {
                constraintWidgetGroup.mStartHorizontalWidgets.add(constraintWidget);
            }
            if (((constraintWidget.mTop.mTarget == null && constraintWidget.mBottom.mTarget == null) || ((constraintWidget.mTop.mTarget != null && constraintWidget.mTop.mTarget.mOwner == constraintWidget.mParent && constraintWidget.mBottom.mTarget == null) || ((constraintWidget.mBottom.mTarget != null && constraintWidget.mBottom.mTarget.mOwner == constraintWidget.mParent && constraintWidget.mTop.mTarget == null) || (constraintWidget.mTop.mTarget != null && constraintWidget.mTop.mTarget.mOwner == constraintWidget.mParent && constraintWidget.mBottom.mTarget != null && constraintWidget.mBottom.mTarget.mOwner == constraintWidget.mParent)))) && constraintWidget.mCenter.mTarget == null && constraintWidget.mBaseline.mTarget == null && !(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Helper)) {
                constraintWidgetGroup.mStartVerticalWidgets.add(constraintWidget);
            }
            if (constraintWidget instanceof Helper) {
                invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                if (z) {
                    return false;
                }
                Helper helper = (Helper) constraintWidget;
                for (int r4 = 0; r4 < helper.mWidgetsCount; r4++) {
                    if (!traverse(helper.mWidgets[r4], constraintWidgetGroup, list, z)) {
                        return false;
                    }
                }
            }
            int length = constraintWidget.mListAnchors.length;
            for (int r42 = 0; r42 < length; r42++) {
                ConstraintAnchor constraintAnchor = constraintWidget.mListAnchors[r42];
                if (constraintAnchor.mTarget != null && constraintAnchor.mTarget.mOwner != constraintWidget.getParent()) {
                    if (constraintAnchor.mType == ConstraintAnchor.Type.CENTER) {
                        invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                        if (z) {
                            return false;
                        }
                    } else {
                        setConnection(constraintAnchor);
                    }
                    if (!traverse(constraintAnchor.mTarget.mOwner, constraintWidgetGroup, list, z)) {
                        return false;
                    }
                }
            }
            return true;
        }
        if (constraintWidget.mBelongingGroup != constraintWidgetGroup) {
            constraintWidgetGroup.mConstrainedGroup.addAll(constraintWidget.mBelongingGroup.mConstrainedGroup);
            constraintWidgetGroup.mStartHorizontalWidgets.addAll(constraintWidget.mBelongingGroup.mStartHorizontalWidgets);
            constraintWidgetGroup.mStartVerticalWidgets.addAll(constraintWidget.mBelongingGroup.mStartVerticalWidgets);
            if (!constraintWidget.mBelongingGroup.mSkipSolver) {
                constraintWidgetGroup.mSkipSolver = false;
            }
            list.remove(constraintWidget.mBelongingGroup);
            Iterator<ConstraintWidget> it = constraintWidget.mBelongingGroup.mConstrainedGroup.iterator();
            while (it.hasNext()) {
                it.next().mBelongingGroup = constraintWidgetGroup;
            }
        }
        return true;
    }

    private static void invalidate(ConstraintWidgetContainer constraintWidgetContainer, ConstraintWidget constraintWidget, ConstraintWidgetGroup constraintWidgetGroup) {
        constraintWidgetGroup.mSkipSolver = false;
        constraintWidgetContainer.mSkipSolver = false;
        constraintWidget.mOptimizerMeasurable = false;
    }

    private static int getMaxDimension(ConstraintWidgetGroup constraintWidgetGroup, int r10) {
        int r0 = r10 * 2;
        List<ConstraintWidget> startWidgets = constraintWidgetGroup.getStartWidgets(r10);
        int size = startWidgets.size();
        int r5 = 0;
        for (int r4 = 0; r4 < size; r4++) {
            ConstraintWidget constraintWidget = startWidgets.get(r4);
            int r8 = r0 + 1;
            r5 = Math.max(r5, getMaxDimensionTraversal(constraintWidget, r10, constraintWidget.mListAnchors[r8].mTarget == null || !(constraintWidget.mListAnchors[r0].mTarget == null || constraintWidget.mListAnchors[r8].mTarget == null), 0));
        }
        constraintWidgetGroup.mGroupDimensions[r10] = r5;
        return r5;
    }

    private static int getMaxDimensionTraversal(ConstraintWidget constraintWidget, int r21, boolean z, int r23) {
        int height;
        int baselineDistance;
        int r9;
        int r8;
        int r10;
        int width;
        int r17;
        int r3;
        ConstraintWidget parent;
        int r172;
        int r4 = 0;
        if (!constraintWidget.mOptimizerMeasurable) {
            return 0;
        }
        boolean z2 = constraintWidget.mBaseline.mTarget != null && r21 == 1;
        if (z) {
            height = constraintWidget.getBaselineDistance();
            baselineDistance = constraintWidget.getHeight() - constraintWidget.getBaselineDistance();
            r8 = r21 * 2;
            r9 = r8 + 1;
        } else {
            height = constraintWidget.getHeight() - constraintWidget.getBaselineDistance();
            baselineDistance = constraintWidget.getBaselineDistance();
            r9 = r21 * 2;
            r8 = r9 + 1;
        }
        if (constraintWidget.mListAnchors[r9].mTarget == null || constraintWidget.mListAnchors[r8].mTarget != null) {
            r10 = 1;
        } else {
            r10 = -1;
            int r19 = r9;
            r9 = r8;
            r8 = r19;
        }
        int r12 = z2 ? r23 - height : r23;
        int margin = (constraintWidget.mListAnchors[r8].getMargin() * r10) + getParentBiasOffset(constraintWidget, r21);
        int r122 = r12 + margin;
        int width2 = (r21 == 0 ? constraintWidget.getWidth() : constraintWidget.getHeight()) * r10;
        Iterator<ResolutionNode> it = constraintWidget.mListAnchors[r8].getResolutionNode().dependents.iterator();
        while (it.hasNext()) {
            r4 = Math.max(r4, getMaxDimensionTraversal(((ResolutionAnchor) it.next()).myAnchor.mOwner, r21, z, r122));
        }
        int r15 = 0;
        for (Iterator<ResolutionNode> it2 = constraintWidget.mListAnchors[r9].getResolutionNode().dependents.iterator(); it2.hasNext(); it2 = it2) {
            r15 = Math.max(r15, getMaxDimensionTraversal(((ResolutionAnchor) it2.next()).myAnchor.mOwner, r21, z, width2 + r122));
        }
        if (z2) {
            r4 -= height;
            width = r15 + baselineDistance;
        } else {
            width = r15 + ((r21 == 0 ? constraintWidget.getWidth() : constraintWidget.getHeight()) * r10);
        }
        int r5 = 1;
        if (r21 == 1) {
            Iterator<ResolutionNode> it3 = constraintWidget.mBaseline.getResolutionNode().dependents.iterator();
            int r18 = 0;
            while (it3.hasNext()) {
                Iterator<ResolutionNode> it4 = it3;
                ResolutionAnchor resolutionAnchor = (ResolutionAnchor) it3.next();
                if (r10 == r5) {
                    r18 = Math.max(r18, getMaxDimensionTraversal(resolutionAnchor.myAnchor.mOwner, r21, z, height + r122));
                    r172 = r9;
                } else {
                    r172 = r9;
                    r18 = Math.max(r18, getMaxDimensionTraversal(resolutionAnchor.myAnchor.mOwner, r21, z, (baselineDistance * r10) + r122));
                }
                it3 = it4;
                r9 = r172;
                r5 = 1;
            }
            r17 = r9;
            int r52 = r18;
            r3 = (constraintWidget.mBaseline.getResolutionNode().dependents.size() <= 0 || z2) ? r52 : r10 == 1 ? r52 + height : r52 - baselineDistance;
        } else {
            r17 = r9;
            r3 = 0;
        }
        int r13 = margin + Math.max(r4, Math.max(width, r3));
        int r14 = width2 + r122;
        if (r10 == -1) {
            r14 = r122;
            r122 = r14;
        }
        if (z) {
            Optimizer.setOptimizedWidget(constraintWidget, r21, r122);
            constraintWidget.setFrame(r122, r14, r21);
        } else {
            constraintWidget.mBelongingGroup.addWidgetsToSet(constraintWidget, r21);
            constraintWidget.setRelativePositioning(r122, r21);
        }
        if (constraintWidget.getDimensionBehaviour(r21) == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mDimensionRatio != 0.0f) {
            constraintWidget.mBelongingGroup.addWidgetsToSet(constraintWidget, r21);
        }
        if (constraintWidget.mListAnchors[r8].mTarget != null && constraintWidget.mListAnchors[r17].mTarget != null && constraintWidget.mListAnchors[r8].mTarget.mOwner == (parent = constraintWidget.getParent()) && constraintWidget.mListAnchors[r17].mTarget.mOwner == parent) {
            constraintWidget.mBelongingGroup.addWidgetsToSet(constraintWidget, r21);
        }
        return r13;
    }

    private static void setConnection(ConstraintAnchor constraintAnchor) {
        ResolutionAnchor resolutionNode = constraintAnchor.getResolutionNode();
        if (constraintAnchor.mTarget == null || constraintAnchor.mTarget.mTarget == constraintAnchor) {
            return;
        }
        constraintAnchor.mTarget.getResolutionNode().addDependent(resolutionNode);
    }

    private static void singleGroup(ConstraintWidgetContainer constraintWidgetContainer) {
        constraintWidgetContainer.mWidgetGroups.clear();
        constraintWidgetContainer.mWidgetGroups.add(0, new ConstraintWidgetGroup(constraintWidgetContainer.mChildren));
    }

    public static void setPosition(List<ConstraintWidgetGroup> list, int r6, int r7) {
        int size = list.size();
        for (int r1 = 0; r1 < size; r1++) {
            for (ConstraintWidget constraintWidget : list.get(r1).getWidgetsToSet(r6)) {
                if (constraintWidget.mOptimizerMeasurable) {
                    updateSizeDependentWidgets(constraintWidget, r6, r7);
                }
            }
        }
    }

    private static void updateSizeDependentWidgets(ConstraintWidget constraintWidget, int r7, int r8) {
        int r0 = r7 * 2;
        ConstraintAnchor constraintAnchor = constraintWidget.mListAnchors[r0];
        ConstraintAnchor constraintAnchor2 = constraintWidget.mListAnchors[r0 + 1];
        if ((constraintAnchor.mTarget == null || constraintAnchor2.mTarget == null) ? false : true) {
            Optimizer.setOptimizedWidget(constraintWidget, r7, getParentBiasOffset(constraintWidget, r7) + constraintAnchor.getMargin());
            return;
        }
        if (constraintWidget.mDimensionRatio != 0.0f && constraintWidget.getDimensionBehaviour(r7) == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int r82 = resolveDimensionRatio(constraintWidget);
            int r02 = (int) constraintWidget.mListAnchors[r0].getResolutionNode().resolvedOffset;
            constraintAnchor2.getResolutionNode().resolvedTarget = constraintAnchor.getResolutionNode();
            constraintAnchor2.getResolutionNode().resolvedOffset = r82;
            constraintAnchor2.getResolutionNode().state = 1;
            constraintWidget.setFrame(r02, r02 + r82, r7);
            return;
        }
        int relativePositioning = r8 - constraintWidget.getRelativePositioning(r7);
        int length = relativePositioning - constraintWidget.getLength(r7);
        constraintWidget.setFrame(length, relativePositioning, r7);
        Optimizer.setOptimizedWidget(constraintWidget, r7, length);
    }

    private static int getParentBiasOffset(ConstraintWidget constraintWidget, int r5) {
        int r0 = r5 * 2;
        ConstraintAnchor constraintAnchor = constraintWidget.mListAnchors[r0];
        ConstraintAnchor constraintAnchor2 = constraintWidget.mListAnchors[r0 + 1];
        if (constraintAnchor.mTarget == null || constraintAnchor.mTarget.mOwner != constraintWidget.mParent || constraintAnchor2.mTarget == null || constraintAnchor2.mTarget.mOwner != constraintWidget.mParent) {
            return 0;
        }
        return (int) ((((constraintWidget.mParent.getLength(r5) - constraintAnchor.getMargin()) - constraintAnchor2.getMargin()) - constraintWidget.getLength(r5)) * (r5 == 0 ? constraintWidget.mHorizontalBiasPercent : constraintWidget.mVerticalBiasPercent));
    }

    private static int resolveDimensionRatio(ConstraintWidget constraintWidget) {
        float width;
        float height;
        if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            if (constraintWidget.mDimensionRatioSide == 0) {
                height = constraintWidget.getHeight() * constraintWidget.mDimensionRatio;
            } else {
                height = constraintWidget.getHeight() / constraintWidget.mDimensionRatio;
            }
            int r0 = (int) height;
            constraintWidget.setWidth(r0);
            return r0;
        }
        if (constraintWidget.getVerticalDimensionBehaviour() != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            return -1;
        }
        if (constraintWidget.mDimensionRatioSide == 1) {
            width = constraintWidget.getWidth() * constraintWidget.mDimensionRatio;
        } else {
            width = constraintWidget.getWidth() / constraintWidget.mDimensionRatio;
        }
        int r02 = (int) width;
        constraintWidget.setHeight(r02);
        return r02;
    }
}
