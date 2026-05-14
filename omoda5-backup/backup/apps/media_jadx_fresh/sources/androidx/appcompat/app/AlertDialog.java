package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.C0105R;
import androidx.appcompat.app.AlertController;

/* loaded from: classes.dex */
public class AlertDialog extends AppCompatDialog implements DialogInterface {
    static final int LAYOUT_HINT_NONE = 0;
    static final int LAYOUT_HINT_SIDE = 1;
    final AlertController mAlert;

    protected AlertDialog(Context context) {
        this(context, 0);
    }

    protected AlertDialog(Context context, int r3) {
        super(context, resolveDialogTheme(context, r3));
        this.mAlert = new AlertController(getContext(), this, getWindow());
    }

    protected AlertDialog(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        this(context, 0);
        setCancelable(z);
        setOnCancelListener(onCancelListener);
    }

    static int resolveDialogTheme(Context context, int r3) {
        if (((r3 >>> 24) & 255) >= 1) {
            return r3;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0105R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public Button getButton(int r1) {
        return this.mAlert.getButton(r1);
    }

    public ListView getListView() {
        return this.mAlert.getListView();
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.mAlert.setTitle(charSequence);
    }

    public void setCustomTitle(View view) {
        this.mAlert.setCustomTitle(view);
    }

    public void setMessage(CharSequence charSequence) {
        this.mAlert.setMessage(charSequence);
    }

    public void setView(View view) {
        this.mAlert.setView(view);
    }

    public void setView(View view, int r8, int r9, int r10, int r11) {
        this.mAlert.setView(view, r8, r9, r10, r11);
    }

    void setButtonPanelLayoutHint(int r1) {
        this.mAlert.setButtonPanelLayoutHint(r1);
    }

    public void setButton(int r7, CharSequence charSequence, Message message) {
        this.mAlert.setButton(r7, charSequence, null, message, null);
    }

    public void setButton(int r7, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.mAlert.setButton(r7, charSequence, onClickListener, null, null);
    }

    public void setButton(int r7, CharSequence charSequence, Drawable drawable, DialogInterface.OnClickListener onClickListener) {
        this.mAlert.setButton(r7, charSequence, onClickListener, null, drawable);
    }

    public void setIcon(int r1) {
        this.mAlert.setIcon(r1);
    }

    public void setIcon(Drawable drawable) {
        this.mAlert.setIcon(drawable);
    }

    public void setIconAttribute(int r4) {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(r4, typedValue, true);
        this.mAlert.setIcon(typedValue.resourceId);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mAlert.installContent();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int r2, KeyEvent keyEvent) {
        if (this.mAlert.onKeyDown(r2, keyEvent)) {
            return true;
        }
        return super.onKeyDown(r2, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int r2, KeyEvent keyEvent) {
        if (this.mAlert.onKeyUp(r2, keyEvent)) {
            return true;
        }
        return super.onKeyUp(r2, keyEvent);
    }

    public static class Builder {

        /* renamed from: P */
        private final AlertController.AlertParams f14P;
        private final int mTheme;

        public Builder(Context context) {
            this(context, AlertDialog.resolveDialogTheme(context, 0));
        }

        public Builder(Context context, int r5) {
            this.f14P = new AlertController.AlertParams(new ContextThemeWrapper(context, AlertDialog.resolveDialogTheme(context, r5)));
            this.mTheme = r5;
        }

        public Context getContext() {
            return this.f14P.mContext;
        }

        public Builder setTitle(int r3) {
            AlertController.AlertParams alertParams = this.f14P;
            alertParams.mTitle = alertParams.mContext.getText(r3);
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.f14P.mTitle = charSequence;
            return this;
        }

        public Builder setCustomTitle(View view) {
            this.f14P.mCustomTitleView = view;
            return this;
        }

        public Builder setMessage(int r3) {
            AlertController.AlertParams alertParams = this.f14P;
            alertParams.mMessage = alertParams.mContext.getText(r3);
            return this;
        }

        public Builder setMessage(CharSequence charSequence) {
            this.f14P.mMessage = charSequence;
            return this;
        }

        public Builder setIcon(int r2) {
            this.f14P.mIconId = r2;
            return this;
        }

        public Builder setIcon(Drawable drawable) {
            this.f14P.mIcon = drawable;
            return this;
        }

        public Builder setIconAttribute(int r4) {
            TypedValue typedValue = new TypedValue();
            this.f14P.mContext.getTheme().resolveAttribute(r4, typedValue, true);
            this.f14P.mIconId = typedValue.resourceId;
            return this;
        }

        public Builder setPositiveButton(int r3, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f14P;
            alertParams.mPositiveButtonText = alertParams.mContext.getText(r3);
            this.f14P.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f14P.mPositiveButtonText = charSequence;
            this.f14P.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setPositiveButtonIcon(Drawable drawable) {
            this.f14P.mPositiveButtonIcon = drawable;
            return this;
        }

        public Builder setNegativeButton(int r3, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f14P;
            alertParams.mNegativeButtonText = alertParams.mContext.getText(r3);
            this.f14P.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f14P.mNegativeButtonText = charSequence;
            this.f14P.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButtonIcon(Drawable drawable) {
            this.f14P.mNegativeButtonIcon = drawable;
            return this;
        }

        public Builder setNeutralButton(int r3, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f14P;
            alertParams.mNeutralButtonText = alertParams.mContext.getText(r3);
            this.f14P.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f14P.mNeutralButtonText = charSequence;
            this.f14P.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButtonIcon(Drawable drawable) {
            this.f14P.mNeutralButtonIcon = drawable;
            return this;
        }

        public Builder setCancelable(boolean z) {
            this.f14P.mCancelable = z;
            return this;
        }

        public Builder setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
            this.f14P.mOnCancelListener = onCancelListener;
            return this;
        }

        public Builder setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.f14P.mOnDismissListener = onDismissListener;
            return this;
        }

        public Builder setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
            this.f14P.mOnKeyListener = onKeyListener;
            return this;
        }

        public Builder setItems(int r3, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f14P;
            alertParams.mItems = alertParams.mContext.getResources().getTextArray(r3);
            this.f14P.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            this.f14P.mItems = charSequenceArr;
            this.f14P.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setAdapter(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            this.f14P.mAdapter = listAdapter;
            this.f14P.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setCursor(Cursor cursor, DialogInterface.OnClickListener onClickListener, String str) {
            this.f14P.mCursor = cursor;
            this.f14P.mLabelColumn = str;
            this.f14P.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setMultiChoiceItems(int r3, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.AlertParams alertParams = this.f14P;
            alertParams.mItems = alertParams.mContext.getResources().getTextArray(r3);
            this.f14P.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.f14P.mCheckedItems = zArr;
            this.f14P.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.f14P.mItems = charSequenceArr;
            this.f14P.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.f14P.mCheckedItems = zArr;
            this.f14P.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceItems(Cursor cursor, String str, String str2, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.f14P.mCursor = cursor;
            this.f14P.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.f14P.mIsCheckedColumn = str;
            this.f14P.mLabelColumn = str2;
            this.f14P.mIsMultiChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(int r3, int r4, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f14P;
            alertParams.mItems = alertParams.mContext.getResources().getTextArray(r3);
            this.f14P.mOnClickListener = onClickListener;
            this.f14P.mCheckedItem = r4;
            this.f14P.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(Cursor cursor, int r3, String str, DialogInterface.OnClickListener onClickListener) {
            this.f14P.mCursor = cursor;
            this.f14P.mOnClickListener = onClickListener;
            this.f14P.mCheckedItem = r3;
            this.f14P.mLabelColumn = str;
            this.f14P.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(CharSequence[] charSequenceArr, int r3, DialogInterface.OnClickListener onClickListener) {
            this.f14P.mItems = charSequenceArr;
            this.f14P.mOnClickListener = onClickListener;
            this.f14P.mCheckedItem = r3;
            this.f14P.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(ListAdapter listAdapter, int r3, DialogInterface.OnClickListener onClickListener) {
            this.f14P.mAdapter = listAdapter;
            this.f14P.mOnClickListener = onClickListener;
            this.f14P.mCheckedItem = r3;
            this.f14P.mIsSingleChoice = true;
            return this;
        }

        public Builder setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            this.f14P.mOnItemSelectedListener = onItemSelectedListener;
            return this;
        }

        public Builder setView(int r3) {
            this.f14P.mView = null;
            this.f14P.mViewLayoutResId = r3;
            this.f14P.mViewSpacingSpecified = false;
            return this;
        }

        public Builder setView(View view) {
            this.f14P.mView = view;
            this.f14P.mViewLayoutResId = 0;
            this.f14P.mViewSpacingSpecified = false;
            return this;
        }

        @Deprecated
        public Builder setView(View view, int r3, int r4, int r5, int r6) {
            this.f14P.mView = view;
            this.f14P.mViewLayoutResId = 0;
            this.f14P.mViewSpacingSpecified = true;
            this.f14P.mViewSpacingLeft = r3;
            this.f14P.mViewSpacingTop = r4;
            this.f14P.mViewSpacingRight = r5;
            this.f14P.mViewSpacingBottom = r6;
            return this;
        }

        @Deprecated
        public Builder setInverseBackgroundForced(boolean z) {
            this.f14P.mForceInverseBackground = z;
            return this;
        }

        public Builder setRecycleOnMeasureEnabled(boolean z) {
            this.f14P.mRecycleOnMeasure = z;
            return this;
        }

        public AlertDialog create() {
            AlertDialog alertDialog = new AlertDialog(this.f14P.mContext, this.mTheme);
            this.f14P.apply(alertDialog.mAlert);
            alertDialog.setCancelable(this.f14P.mCancelable);
            if (this.f14P.mCancelable) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(this.f14P.mOnCancelListener);
            alertDialog.setOnDismissListener(this.f14P.mOnDismissListener);
            if (this.f14P.mOnKeyListener != null) {
                alertDialog.setOnKeyListener(this.f14P.mOnKeyListener);
            }
            return alertDialog;
        }

        public AlertDialog show() {
            AlertDialog alertDialogCreate = create();
            alertDialogCreate.show();
            return alertDialogCreate;
        }
    }
}
