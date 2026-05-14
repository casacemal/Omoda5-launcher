package com.chery.media.view.dialog;

import android.R;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.WindowManager;
import com.chery.common.PackageConstants;
import com.chery.common.PageConstants;
import com.chery.common.PageManager;
import com.chery.media.C0632R;
import com.chery.media.databinding.DialogDabReserveHintLayoutBinding;

/* loaded from: classes.dex */
public class Dialog_DabReserveHint extends DialogBase {
    private DialogDabReserveHintLayoutBinding binding;
    private View.OnClickListener cancelClickListener;
    private View.OnClickListener confirmClickListener;
    private Runnable dialogDismissRunnable;
    private int dialogDismissTimeout;
    private Handler handler;

    static /* synthetic */ int access$210(Dialog_DabReserveHint dialog_DabReserveHint) {
        int r0 = dialog_DabReserveHint.dialogDismissTimeout;
        dialog_DabReserveHint.dialogDismissTimeout = r0 - 1;
        return r0;
    }

    public Dialog_DabReserveHint(final Context context, String str, boolean z, boolean z2) {
        super(context);
        this.confirmClickListener = null;
        this.cancelClickListener = null;
        this.dialogDismissTimeout = 10;
        this.handler = new Handler();
        this.dialogDismissRunnable = new Runnable() { // from class: com.chery.media.view.dialog.Dialog_DabReserveHint.4
            @Override // java.lang.Runnable
            public void run() {
                if (Dialog_DabReserveHint.this.dialogDismissTimeout > 0) {
                    Dialog_DabReserveHint dialog_DabReserveHint = Dialog_DabReserveHint.this;
                    dialog_DabReserveHint.setSeconds(Dialog_DabReserveHint.access$210(dialog_DabReserveHint));
                    Dialog_DabReserveHint.this.handler.postDelayed(Dialog_DabReserveHint.this.dialogDismissRunnable, 1000L);
                } else {
                    Dialog_DabReserveHint.this.dismiss();
                    Dialog_DabReserveHint.this.dialogDismissTimeout = 10;
                }
            }
        };
        requestWindowFeature(1);
        DialogDabReserveHintLayoutBinding dialogDabReserveHintLayoutBindingInflate = DialogDabReserveHintLayoutBinding.inflate(getLayoutInflater());
        this.binding = dialogDabReserveHintLayoutBindingInflate;
        setContentView(dialogDabReserveHintLayoutBindingInflate.getRoot());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        if (z) {
            attributes.type |= 2008;
        }
        attributes.width = 748;
        attributes.height = 326;
        attributes.gravity = 17;
        attributes.flags |= 2;
        getWindow().setAttributes(attributes);
        getWindow().setBackgroundDrawableResource(R.color.transparent);
        if (str != null) {
            this.binding.tvHintLine1.setText(String.format(getContext().getString(C0632R.string.dab_reserve_hint_line1), str));
        }
        if (z2) {
            this.binding.tvTitle.setTextColor(getContext().getResources().getColor(C0632R.color.colorSelected));
            this.binding.tvTitle.getPaint().setFlags(8);
            this.binding.tvTitle.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.dialog.Dialog_DabReserveHint.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    new PageManager(context).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_DAB_PLAYER);
                    if (Dialog_DabReserveHint.this.confirmClickListener != null) {
                        Dialog_DabReserveHint.this.confirmClickListener.onClick(view);
                    }
                }
            });
        }
        this.binding.btnConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.dialog.Dialog_DabReserveHint.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Dialog_DabReserveHint.this.confirmClickListener != null) {
                    Dialog_DabReserveHint.this.confirmClickListener.onClick(view);
                } else {
                    Dialog_DabReserveHint.this.dismiss();
                }
            }
        });
        this.binding.btnCancel.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.dialog.Dialog_DabReserveHint.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Dialog_DabReserveHint.this.cancelClickListener != null) {
                    Dialog_DabReserveHint.this.cancelClickListener.onClick(view);
                } else {
                    Dialog_DabReserveHint.this.dismiss();
                }
            }
        });
    }

    public void setConfirmClickListener(View.OnClickListener onClickListener) {
        this.confirmClickListener = onClickListener;
    }

    public void setCancelClickListener(View.OnClickListener onClickListener) {
        this.cancelClickListener = onClickListener;
    }

    public void setSeconds(int r4) {
        this.binding.tvCancel.setText(String.format(getContext().getString(C0632R.string.dialog_reserve_hint_cancel), Integer.valueOf(r4)));
    }

    @Override // com.chery.media.view.dialog.DialogBase, android.app.Dialog
    public void show() {
        this.dialogDismissTimeout = 10;
        this.handler.post(this.dialogDismissRunnable);
        super.show();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.handler.removeCallbacks(this.dialogDismissRunnable);
    }
}
