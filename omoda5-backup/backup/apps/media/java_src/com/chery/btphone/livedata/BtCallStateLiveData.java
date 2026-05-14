package com.chery.btphone.livedata;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadsetClient;
import android.bluetooth.BluetoothHeadsetClientCall;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import androidx.lifecycle.LiveData;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class BtCallStateLiveData extends LiveData<List<BluetoothHeadsetClientCall>> {
    private static final String TAG = "BT.BtCallStateLiveData";
    private BluetoothHeadsetClient mBluetoothHeadsetClient;
    private final Context mContext;
    private final BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    private final IntentFilter mIntentFilter = new IntentFilter();
    private BluetoothProfile.ServiceListener mServiceListener = new BluetoothProfile.ServiceListener() { // from class: com.chery.btphone.livedata.BtCallStateLiveData.1
        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int r1) {
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceConnected(int r2, BluetoothProfile bluetoothProfile) {
            if (r2 == 16) {
                BtCallStateLiveData.this.mBluetoothHeadsetClient = (BluetoothHeadsetClient) bluetoothProfile;
                BtCallStateLiveData.this.updateState();
            }
        }
    };
    private BroadcastReceiver mBluetoothCallStateReceiver = new BroadcastReceiver() { // from class: com.chery.btphone.livedata.BtCallStateLiveData.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            BtCallStateLiveData.this.updateState();
        }
    };

    public BtCallStateLiveData(Context context) {
        this.mContext = context;
        this.mIntentFilter.addAction("android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED");
    }

    @Override // androidx.lifecycle.LiveData
    protected void onActive() {
        if (this.mBluetoothAdapter != null) {
            updateState();
            this.mContext.registerReceiver(this.mBluetoothCallStateReceiver, this.mIntentFilter);
            this.mBluetoothAdapter.getProfileProxy(this.mContext, this.mServiceListener, 16);
        }
    }

    @Override // androidx.lifecycle.LiveData
    protected void onInactive() {
        BluetoothAdapter bluetoothAdapter = this.mBluetoothAdapter;
        if (bluetoothAdapter != null) {
            bluetoothAdapter.closeProfileProxy(16, this.mBluetoothHeadsetClient);
            this.mContext.unregisterReceiver(this.mBluetoothCallStateReceiver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateState() {
        BluetoothHeadsetClient bluetoothHeadsetClient = this.mBluetoothHeadsetClient;
        List<BluetoothHeadsetClientCall> list = null;
        if (bluetoothHeadsetClient != null) {
            Iterator it = bluetoothHeadsetClient.getConnectedDevices().iterator();
            while (it.hasNext()) {
                List<BluetoothHeadsetClientCall> currentCalls = this.mBluetoothHeadsetClient.getCurrentCalls((BluetoothDevice) it.next());
                if (currentCalls != null && !currentCalls.isEmpty()) {
                    list = currentCalls;
                }
            }
        }
        if (getValue() == null || list != getValue()) {
            Log.d(TAG, "updateState to " + list);
            setValue(list);
        }
    }
}
