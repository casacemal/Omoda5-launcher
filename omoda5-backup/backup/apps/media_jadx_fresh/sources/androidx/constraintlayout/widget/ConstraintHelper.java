package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.widget.C0207R;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class ConstraintHelper extends View {
    protected int mCount;
    protected Helper mHelperWidget;
    protected int[] mIds;
    private String mReferenceIds;
    protected boolean mUseViewMeasure;
    protected Context myContext;

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    public void updatePostLayout(ConstraintLayout constraintLayout) {
    }

    public void updatePostMeasure(ConstraintLayout constraintLayout) {
    }

    public ConstraintHelper(Context context) throws IllegalAccessException, IllegalArgumentException {
        super(context);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.myContext = context;
        init(null);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) throws IllegalAccessException, IllegalArgumentException {
        super(context, attributeSet);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.myContext = context;
        init(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int r3) throws IllegalAccessException, IllegalArgumentException {
        super(context, attributeSet, r3);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.myContext = context;
        init(attributeSet);
    }

    protected void init(AttributeSet attributeSet) throws IllegalAccessException, IllegalArgumentException {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0207R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int r1 = 0; r1 < indexCount; r1++) {
                int index = typedArrayObtainStyledAttributes.getIndex(r1);
                if (index == C0207R.styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.mReferenceIds = string;
                    setIds(string);
                }
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.mIds, this.mCount);
    }

    public void setReferencedIds(int[] r4) {
        this.mCount = 0;
        for (int r0 : r4) {
            setTag(r0, null);
        }
    }

    @Override // android.view.View
    public void setTag(int r3, Object obj) {
        int r4 = this.mCount + 1;
        int[] r0 = this.mIds;
        if (r4 > r0.length) {
            this.mIds = Arrays.copyOf(r0, r0.length * 2);
        }
        int[] r42 = this.mIds;
        int r02 = this.mCount;
        r42[r02] = r3;
        this.mCount = r02 + 1;
    }

    @Override // android.view.View
    protected void onMeasure(int r2, int r3) {
        if (this.mUseViewMeasure) {
            super.onMeasure(r2, r3);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void validateParams() {
        if (this.mHelperWidget == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            ((ConstraintLayout.LayoutParams) layoutParams).widget = this.mHelperWidget;
        }
    }

    private void addID(String str) throws IllegalAccessException, IllegalArgumentException {
        int identifier;
        Object designInformation;
        if (str == null || this.myContext == null) {
            return;
        }
        String strTrim = str.trim();
        try {
            identifier = C0207R.id.class.getField(strTrim).getInt(null);
        } catch (Exception unused) {
            identifier = 0;
        }
        if (identifier == 0) {
            identifier = this.myContext.getResources().getIdentifier(strTrim, "id", this.myContext.getPackageName());
        }
        if (identifier == 0 && isInEditMode() && (getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) getParent()).getDesignInformation(0, strTrim)) != null && (designInformation instanceof Integer)) {
            identifier = ((Integer) designInformation).intValue();
        }
        if (identifier != 0) {
            setTag(identifier, null);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
    }

    private void setIds(String str) throws IllegalAccessException, IllegalArgumentException {
        if (str == null) {
            return;
        }
        int r0 = 0;
        while (true) {
            int r1 = str.indexOf(44, r0);
            if (r1 == -1) {
                addID(str.substring(r0));
                return;
            } else {
                addID(str.substring(r0, r1));
                r0 = r1 + 1;
            }
        }
    }

    public void updatePreLayout(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.mReferenceIds);
        }
        Helper helper = this.mHelperWidget;
        if (helper == null) {
            return;
        }
        helper.removeAllIds();
        for (int r0 = 0; r0 < this.mCount; r0++) {
            View viewById = constraintLayout.getViewById(this.mIds[r0]);
            if (viewById != null) {
                this.mHelperWidget.add(constraintLayout.getViewWidget(viewById));
            }
        }
    }
}
