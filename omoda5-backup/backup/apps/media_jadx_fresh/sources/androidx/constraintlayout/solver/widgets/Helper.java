package androidx.constraintlayout.solver.widgets;

import java.util.Arrays;

/* loaded from: classes.dex */
public class Helper extends ConstraintWidget {
    protected ConstraintWidget[] mWidgets = new ConstraintWidget[4];
    protected int mWidgetsCount = 0;

    public void add(ConstraintWidget constraintWidget) {
        int r0 = this.mWidgetsCount + 1;
        ConstraintWidget[] constraintWidgetArr = this.mWidgets;
        if (r0 > constraintWidgetArr.length) {
            this.mWidgets = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
        }
        ConstraintWidget[] constraintWidgetArr2 = this.mWidgets;
        int r1 = this.mWidgetsCount;
        constraintWidgetArr2[r1] = constraintWidget;
        this.mWidgetsCount = r1 + 1;
    }

    public void removeAllIds() {
        this.mWidgetsCount = 0;
    }
}
