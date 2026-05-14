package com.chery.media.view.dialog;

import android.R;
import android.content.Context;
import android.os.Handler;
import android.view.WindowManager;
import com.avn.tools.log.CarLog;
import com.chery.media.databinding.DialogSingleTextLayoutBinding;

/* loaded from: classes.dex */
public class Dialog_SingleText extends DialogBase {
    private static final String TAG = CarLog.concatTag("SET", Dialog_SingleText.class);
    private DialogSingleTextLayoutBinding binding;
    private Handler handler;
    private Runnable runDismiss;

    public Dialog_SingleText(Context context) {
        this(context, null);
    }

    public Dialog_SingleText(Context context, String str) {
        super(context);
        this.handler = new Handler();
        requestWindowFeature(1);
        DialogSingleTextLayoutBinding dialogSingleTextLayoutBindingInflate = DialogSingleTextLayoutBinding.inflate(getLayoutInflater());
        this.binding = dialogSingleTextLayoutBindingInflate;
        setContentView(dialogSingleTextLayoutBindingInflate.getRoot());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.type |= 2008;
        attributes.gravity = 17;
        attributes.dimAmount = 0.0f;
        attributes.flags |= 2;
        getWindow().setAttributes(attributes);
        getWindow().setBackgroundDrawableResource(R.color.transparent);
        if (str != null) {
            this.binding.tvTips.setText(str);
        }
    }

    public void show(int r1) {
        super.show();
        setDismissDelay(r1);
    }

    public void showText(String str) {
        showText(str, 0);
    }

    public void showText(String str, int r3) {
        this.binding.tvTips.setText(str);
        show();
        setDismissDelay(r3);
    }

    private void setDismissDelay(int r4) {
        Runnable runnable = this.runDismiss;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
            this.runDismiss = null;
        }
        if (r4 > 0) {
            Runnable runnable2 = new Runnable() { // from class: com.chery.media.view.dialog.Dialog_SingleText.1
                @Override // java.lang.Runnable
                public void run() {
                    Dialog_SingleText.this.dismiss();
                    Dialog_SingleText.this.runDismiss = null;
                }
            };
            this.runDismiss = runnable2;
            this.handler.postDelayed(runnable2, r4);
        }
    }
}
