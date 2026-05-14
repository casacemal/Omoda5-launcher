package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.C0105R;
import androidx.core.widget.PopupWindowCompat;

/* loaded from: classes.dex */
class AppCompatPopupWindow extends PopupWindow {
    private static final boolean COMPAT_OVERLAP_ANCHOR;
    private boolean mOverlapAnchor;

    static {
        COMPAT_OVERLAP_ANCHOR = Build.VERSION.SDK_INT < 21;
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int r4) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super(context, attributeSet, r4);
        init(context, attributeSet, r4, 0);
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int r3, int r4) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super(context, attributeSet, r3, r4);
        init(context, attributeSet, r3, r4);
    }

    private void init(Context context, AttributeSet attributeSet, int r4, int r5) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0105R.styleable.PopupWindow, r4, r5);
        if (tintTypedArrayObtainStyledAttributes.hasValue(C0105R.styleable.PopupWindow_overlapAnchor)) {
            setSupportOverlapAnchor(tintTypedArrayObtainStyledAttributes.getBoolean(C0105R.styleable.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(C0105R.styleable.PopupWindow_android_popupBackground));
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int r3, int r4) {
        if (COMPAT_OVERLAP_ANCHOR && this.mOverlapAnchor) {
            r4 -= view.getHeight();
        }
        super.showAsDropDown(view, r3, r4);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int r3, int r4, int r5) {
        if (COMPAT_OVERLAP_ANCHOR && this.mOverlapAnchor) {
            r4 -= view.getHeight();
        }
        super.showAsDropDown(view, r3, r4, r5);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int r8, int r9, int r10, int r11) {
        if (COMPAT_OVERLAP_ANCHOR && this.mOverlapAnchor) {
            r9 -= view.getHeight();
        }
        super.update(view, r8, r9, r10, r11);
    }

    private void setSupportOverlapAnchor(boolean z) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (COMPAT_OVERLAP_ANCHOR) {
            this.mOverlapAnchor = z;
        } else {
            PopupWindowCompat.setOverlapAnchor(this, z);
        }
    }
}
