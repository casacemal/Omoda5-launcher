package com.chery.btphone.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;

/* loaded from: classes.dex */
public class PbapStateReceiver extends BroadcastReceiver {
    private static final String TAG = "PbapStateReceiver";
    private final Context mContext;
    private final IntentFilter mIntentFilter;
    private PbapStateListener mPbapStateListener;

    public interface PbapStateListener {
        void onPbapState(int r1, int r2);
    }

    public PbapStateReceiver(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        this.mIntentFilter = intentFilter;
        this.mContext = context;
        intentFilter.addAction("android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED");
    }

    public void register(PbapStateListener pbapStateListener) {
        this.mPbapStateListener = pbapStateListener;
        this.mContext.registerReceiver(this, this.mIntentFilter);
    }

    public void unregister() {
        this.mPbapStateListener = null;
        this.mContext.unregisterReceiver(this);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        handleEvent(intent.getIntExtra("android.bluetooth.profile.extra.PREVIOUS_STATE", -1), intent.getIntExtra("android.bluetooth.profile.extra.STATE", -1));
    }

    private void handleEvent(int r1, int r2) {
        PbapStateListener pbapStateListener = this.mPbapStateListener;
        if (pbapStateListener != null) {
            pbapStateListener.onPbapState(r1, r2);
        } else {
            Log.i(TAG, "handleEvent: no listener");
        }
    }
}
