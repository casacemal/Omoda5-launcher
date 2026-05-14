package com.chery.media.view.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.media.util.PowerWakeLockUse;

/* loaded from: classes.dex */
public class DialogBase extends Dialog {
    private static final String TAG = CarLog.concatTag("MEDIA", DialogBase.class);
    private Context context;

    public DialogBase(Context context) {
        super(context);
        this.context = context;
    }

    public DialogBase(Context context, int r2) {
        super(context, r2);
        this.context = context;
    }

    protected DialogBase(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.context = context;
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        if (!PowerWakeLockUse.getInstance().getPowerWakeLock().checkScreenOff()) {
            PFLog.m25d(TAG, String.format("[%s] to set screen on", this));
            PowerWakeLockUse.getInstance().getPowerWakeLock().screenOn();
        }
        if (PowerWakeLockUse.getInstance().getPowerWakeLock().isScreenLock()) {
            PFLog.m25d(TAG, String.format("[%s] to unlock screen", this));
            PowerWakeLockUse.getInstance().getPowerWakeLock().screenUnlock();
            setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.chery.media.view.dialog.DialogBase.1
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    PFLog.m25d(DialogBase.TAG, String.format("[%s] restore to lock screen", DialogBase.this));
                    PowerWakeLockUse.getInstance().getPowerWakeLock().screenLock();
                }
            });
        }
    }
}
