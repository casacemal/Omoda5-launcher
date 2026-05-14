package com.chery.media.view.dialog;

import android.R;
import android.content.Context;
import android.view.View;
import android.view.WindowManager;
import com.avn.tools.log.CarLog;
import com.chery.media.databinding.DialogDabAnnounceLayoutBinding;

/* loaded from: classes.dex */
public class Dialog_DABAnnounce extends DialogBase {
    private static final String TAG = CarLog.concatTag("SET", Dialog_DABAnnounce.class);
    private DialogDabAnnounceLayoutBinding binding;

    public Dialog_DABAnnounce(Context context, String str, boolean z) {
        super(context);
        requestWindowFeature(1);
        DialogDabAnnounceLayoutBinding dialogDabAnnounceLayoutBindingInflate = DialogDabAnnounceLayoutBinding.inflate(getLayoutInflater());
        this.binding = dialogDabAnnounceLayoutBindingInflate;
        setContentView(dialogDabAnnounceLayoutBindingInflate.getRoot());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        if (z) {
            attributes.type |= 2008;
        }
        attributes.width = 800;
        attributes.height = 505;
        attributes.gravity = 17;
        attributes.flags |= 2;
        getWindow().setAttributes(attributes);
        getWindow().setBackgroundDrawableResource(R.color.transparent);
        if (str != null) {
            this.binding.tvTitle.setText(str);
        }
        this.binding.btnClose.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.dialog.Dialog_DABAnnounce.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Dialog_DABAnnounce.this.dismiss();
            }
        });
    }
}
