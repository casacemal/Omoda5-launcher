package com.chery.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;

/* loaded from: classes.dex */
public class StandbyStateReceiver extends BroadcastReceiver {
    public static final String ACTION_POWER_EVENT = "com.chery.power.standby";
    public static final String EXTRA_POWER_EVENT_ID = "EVENT_ID";
    private static final String TAG = "StandbyStateReceiver";
    private final Context mContext;
    private final IntentFilter mIntentFilter;
    private StandbyStateListener mStandbyStateListener;

    public interface StandbyStateListener {
        void onStandbyState(boolean z);
    }

    public StandbyStateReceiver(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        this.mIntentFilter = intentFilter;
        this.mContext = context;
        intentFilter.addAction(ACTION_POWER_EVENT);
    }

    public void register(StandbyStateListener standbyStateListener) {
        this.mStandbyStateListener = standbyStateListener;
        this.mContext.registerReceiver(this, this.mIntentFilter);
    }

    public void unregister() {
        this.mStandbyStateListener = null;
        this.mContext.unregisterReceiver(this);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        handleEvent(intent.getIntExtra(EXTRA_POWER_EVENT_ID, -1));
    }

    private void handleEvent(int r2) {
        StandbyStateListener standbyStateListener = this.mStandbyStateListener;
        if (standbyStateListener != null) {
            standbyStateListener.onStandbyState(r2 == 11);
        } else {
            Log.i(TAG, "handleEvent: no listener");
        }
    }
}
