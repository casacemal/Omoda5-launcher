package com.chery.media.view.dialog;

import android.R;
import android.content.Context;
import android.view.View;
import android.view.WindowManager;
import com.avn.tools.log.CarLog;
import com.chery.media.databinding.DialogTextConfirmCancelLayoutBinding;

/* loaded from: classes.dex */
public class Dialog_TextConfirmCancel extends DialogBase {
    private static final String TAG = CarLog.concatTag("SET", Dialog_TextConfirmCancel.class);
    private DialogTextConfirmCancelLayoutBinding binding;
    private View.OnClickListener cancelClickListener;
    private View.OnClickListener confirmClickListener;

    public Dialog_TextConfirmCancel(Context context, String str, String str2, String str3, boolean z) {
        super(context);
        this.confirmClickListener = null;
        this.cancelClickListener = null;
        requestWindowFeature(1);
        DialogTextConfirmCancelLayoutBinding dialogTextConfirmCancelLayoutBindingInflate = DialogTextConfirmCancelLayoutBinding.inflate(getLayoutInflater());
        this.binding = dialogTextConfirmCancelLayoutBindingInflate;
        setContentView(dialogTextConfirmCancelLayoutBindingInflate.getRoot());
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
            this.binding.tvTitle.setText(str);
        }
        if (str2 != null) {
            this.binding.tvConfirm.setText(str2);
        }
        if (str3 != null) {
            this.binding.tvCancel.setText(str3);
        }
        this.binding.btnConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.dialog.Dialog_TextConfirmCancel.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Dialog_TextConfirmCancel.this.confirmClickListener != null) {
                    Dialog_TextConfirmCancel.this.confirmClickListener.onClick(view);
                } else {
                    Dialog_TextConfirmCancel.this.dismiss();
                }
            }
        });
        this.binding.btnCancel.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.dialog.Dialog_TextConfirmCancel.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Dialog_TextConfirmCancel.this.cancelClickListener != null) {
                    Dialog_TextConfirmCancel.this.cancelClickListener.onClick(view);
                } else {
                    Dialog_TextConfirmCancel.this.dismiss();
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
}
