package com.chery.media.view.dialog;

import android.R;
import android.content.Context;
import android.view.View;
import android.view.WindowManager;
import com.avn.tools.log.CarLog;
import com.chery.media.databinding.DialogDabOptionLayoutBinding;

/* loaded from: classes.dex */
public class Dialog_DABOption extends DialogBase {
    private static final String TAG = CarLog.concatTag("SET", Dialog_DABOption.class);
    private DialogDabOptionLayoutBinding binding;
    private View.OnClickListener confirmClickListener;

    public Dialog_DABOption(Context context, boolean z) {
        super(context);
        this.confirmClickListener = null;
        requestWindowFeature(1);
        DialogDabOptionLayoutBinding dialogDabOptionLayoutBindingInflate = DialogDabOptionLayoutBinding.inflate(getLayoutInflater());
        this.binding = dialogDabOptionLayoutBindingInflate;
        setContentView(dialogDabOptionLayoutBindingInflate.getRoot());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        if (z) {
            attributes.type |= 2008;
        }
        attributes.width = 800;
        attributes.height = 412;
        attributes.gravity = 17;
        attributes.flags |= 2;
        getWindow().setAttributes(attributes);
        getWindow().setBackgroundDrawableResource(R.color.transparent);
        this.binding.btnOption.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.dialog.Dialog_DABOption.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Dialog_DABOption.this.confirmClickListener != null) {
                    Dialog_DABOption.this.confirmClickListener.onClick(view);
                } else {
                    Dialog_DABOption.this.dismiss();
                }
            }
        });
        this.binding.btnClose.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.dialog.Dialog_DABOption.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Dialog_DABOption.this.dismiss();
            }
        });
    }

    public void setConfirmClickListener(View.OnClickListener onClickListener) {
        this.confirmClickListener = onClickListener;
    }

    public void setSelect(boolean z) {
        this.binding.btnOption.setSelected(z);
    }
}
