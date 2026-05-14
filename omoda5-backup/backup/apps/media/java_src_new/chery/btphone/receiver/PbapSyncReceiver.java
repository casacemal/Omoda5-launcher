package com.chery.btphone.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;

/* loaded from: classes.dex */
public class PbapSyncReceiver extends BroadcastReceiver {
    private static final String TAG = "PbapSyncReceiver";
    private final Context mContext;
    private final IntentFilter mIntentFilter;
    private PbapSyncListener mPbapSyncListener;

    public interface PbapSyncListener {
        void onSyncState(int r1, int r2);
    }

    public PbapSyncReceiver(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        this.mIntentFilter = intentFilter;
        this.mContext = context;
        intentFilter.addAction("android.bluetooth.pbap.profile.action.SYNC_STATE_CHANGED");
    }

    public void register(PbapSyncListener pbapSyncListener) {
        this.mPbapSyncListener = pbapSyncListener;
        this.mContext.registerReceiver(this, this.mIntentFilter);
    }

    public void unregister() {
        this.mPbapSyncListener = null;
        this.mContext.unregisterReceiver(this);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        handleEvent(intent.getIntExtra("android.bluetooth.pbap.extra.SYNC_TYPE", -1), intent.getIntExtra("android.bluetooth.pbap.extra.SYNC_STATE", -1));
    }

    private void handleEvent(int r1, int r2) {
        PbapSyncListener pbapSyncListener = this.mPbapSyncListener;
        if (pbapSyncListener != null) {
            pbapSyncListener.onSyncState(r1, r2);
        } else {
            Log.i(TAG, "handleEvent: no listener");
        }
    }
}
