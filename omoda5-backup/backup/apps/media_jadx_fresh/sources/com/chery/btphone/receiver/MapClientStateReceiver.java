package com.chery.btphone.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;

/* loaded from: classes.dex */
public class MapClientStateReceiver extends BroadcastReceiver {
    private static final String TAG = "MapClientStateReceiver";
    private final Context mContext;
    private final IntentFilter mIntentFilter;
    private MapStateListener mMapStateListener;

    public interface MapStateListener {
        void onMapClientState(int r1, int r2);
    }

    public MapClientStateReceiver(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        this.mIntentFilter = intentFilter;
        this.mContext = context;
        intentFilter.addAction("android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED");
    }

    public void register(MapStateListener mapStateListener) {
        this.mMapStateListener = mapStateListener;
        this.mContext.registerReceiver(this, this.mIntentFilter);
    }

    public void unregister() {
        this.mMapStateListener = null;
        this.mContext.unregisterReceiver(this);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        handleEvent(intent.getIntExtra("android.bluetooth.profile.extra.PREVIOUS_STATE", -1), intent.getIntExtra("android.bluetooth.profile.extra.STATE", -1));
    }

    private void handleEvent(int r1, int r2) {
        MapStateListener mapStateListener = this.mMapStateListener;
        if (mapStateListener != null) {
            mapStateListener.onMapClientState(r1, r2);
        } else {
            Log.i(TAG, "handleEvent: no listener");
        }
    }
}
