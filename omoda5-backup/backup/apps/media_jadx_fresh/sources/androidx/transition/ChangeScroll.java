package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class ChangeScroll extends Transition {
    private static final String PROPNAME_SCROLL_X = "android:changeScroll:x";
    private static final String PROPNAME_SCROLL_Y = "android:changeScroll:y";
    private static final String[] PROPERTIES = {PROPNAME_SCROLL_X, PROPNAME_SCROLL_Y};

    public ChangeScroll() {
    }

    public ChangeScroll(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public String[] getTransitionProperties() {
        return PROPERTIES;
    }

    private void captureValues(TransitionValues transitionValues) {
        transitionValues.values.put(PROPNAME_SCROLL_X, Integer.valueOf(transitionValues.view.getScrollX()));
        transitionValues.values.put(PROPNAME_SCROLL_Y, Integer.valueOf(transitionValues.view.getScrollY()));
    }

    @Override // androidx.transition.Transition
    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ObjectAnimator objectAnimatorOfInt;
        ObjectAnimator objectAnimatorOfInt2 = null;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        View view = transitionValues2.view;
        int r0 = ((Integer) transitionValues.values.get(PROPNAME_SCROLL_X)).intValue();
        int r1 = ((Integer) transitionValues2.values.get(PROPNAME_SCROLL_X)).intValue();
        int r8 = ((Integer) transitionValues.values.get(PROPNAME_SCROLL_Y)).intValue();
        int r9 = ((Integer) transitionValues2.values.get(PROPNAME_SCROLL_Y)).intValue();
        if (r0 != r1) {
            view.setScrollX(r0);
            objectAnimatorOfInt = ObjectAnimator.ofInt(view, "scrollX", r0, r1);
        } else {
            objectAnimatorOfInt = null;
        }
        if (r8 != r9) {
            view.setScrollY(r8);
            objectAnimatorOfInt2 = ObjectAnimator.ofInt(view, "scrollY", r8, r9);
        }
        return TransitionUtils.mergeAnimators(objectAnimatorOfInt, objectAnimatorOfInt2);
    }
}
