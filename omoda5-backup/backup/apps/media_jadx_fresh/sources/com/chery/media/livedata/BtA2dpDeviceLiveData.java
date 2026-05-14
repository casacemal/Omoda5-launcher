package com.chery.media.livedata;

import android.bluetooth.BluetoothA2dpSink;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import androidx.lifecycle.LiveData;
import java.util.List;

/* loaded from: classes.dex */
public class BtA2dpDeviceLiveData extends LiveData<String> {
    private static final String TAG = "BA.BtA2dpDeviceLiveData";
    private BluetoothA2dpSink mBluetoothA2dpSink;
    private final Context mContext;
    private final BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    private final IntentFilter mIntentFilter = new IntentFilter();
    private BluetoothProfile.ServiceListener mServiceListener = new BluetoothProfile.ServiceListener() { // from class: com.chery.media.livedata.BtA2dpDeviceLiveData.1
        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int r1) {
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceConnected(int r2, BluetoothProfile bluetoothProfile) {
            if (r2 == 11) {
                BtA2dpDeviceLiveData.this.mBluetoothA2dpSink = (BluetoothA2dpSink) bluetoothProfile;
                BtA2dpDeviceLiveData.this.updateName();
            }
        }
    };
    private BroadcastReceiver mBluetoothStateReceiver = new BroadcastReceiver() { // from class: com.chery.media.livedata.BtA2dpDeviceLiveData.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            BtA2dpDeviceLiveData.this.updateName();
        }
    };

    public BtA2dpDeviceLiveData(Context context) {
        this.mContext = context;
        this.mIntentFilter.addAction("android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED");
    }

    @Override // androidx.lifecycle.LiveData
    protected void onActive() {
        if (this.mBluetoothAdapter != null) {
            updateName();
            this.mContext.registerReceiver(this.mBluetoothStateReceiver, this.mIntentFilter);
            this.mBluetoothAdapter.getProfileProxy(this.mContext, this.mServiceListener, 11);
        }
    }

    @Override // androidx.lifecycle.LiveData
    protected void onInactive() {
        BluetoothAdapter bluetoothAdapter = this.mBluetoothAdapter;
        if (bluetoothAdapter != null) {
            bluetoothAdapter.closeProfileProxy(11, this.mBluetoothA2dpSink);
            this.mContext.unregisterReceiver(this.mBluetoothStateReceiver);
        }
    }

    public void updateName() {
        List connectedDevices;
        BluetoothA2dpSink bluetoothA2dpSink = this.mBluetoothA2dpSink;
        String name = (bluetoothA2dpSink == null || (connectedDevices = bluetoothA2dpSink.getConnectedDevices()) == null || connectedDevices.isEmpty()) ? null : ((BluetoothDevice) connectedDevices.get(0)).getName();
        if (getValue() == null || !getValue().equals(name)) {
            Log.i(TAG, "updateName to " + name);
            setValue(name);
        }
    }
}
