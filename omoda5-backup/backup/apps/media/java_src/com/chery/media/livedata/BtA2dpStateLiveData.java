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
import com.avn.tools.log.PFLog;
import java.util.List;

/* loaded from: classes.dex */
public class BtA2dpStateLiveData extends LiveData<Boolean> {
    private static final String TAG = "BA.BtA2dpStateLiveData";
    private BluetoothA2dpSink mBluetoothA2dpSink;
    private final Context mContext;
    private final BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    private final IntentFilter mIntentFilter = new IntentFilter();
    private BluetoothProfile.ServiceListener mServiceListener = new BluetoothProfile.ServiceListener() { // from class: com.chery.media.livedata.BtA2dpStateLiveData.1
        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int r1) {
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceConnected(int r2, BluetoothProfile bluetoothProfile) {
            List connectedDevices;
            if (r2 == 11) {
                BtA2dpStateLiveData.this.mBluetoothA2dpSink = (BluetoothA2dpSink) bluetoothProfile;
                int connectionState = 0;
                if (BtA2dpStateLiveData.this.mBluetoothA2dpSink != null && (connectedDevices = BtA2dpStateLiveData.this.mBluetoothA2dpSink.getConnectedDevices()) != null && !connectedDevices.isEmpty()) {
                    connectionState = BtA2dpStateLiveData.this.mBluetoothA2dpSink.getConnectionState((BluetoothDevice) connectedDevices.get(0));
                }
                BtA2dpStateLiveData.this.updateState(connectionState);
            }
        }
    };
    private BroadcastReceiver mBluetoothStateReceiver = new BroadcastReceiver() { // from class: com.chery.media.livedata.BtA2dpStateLiveData.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(action)) {
                int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.PREVIOUS_STATE", 10);
                int intExtra2 = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 10);
                PFLog.m29i(BtA2dpStateLiveData.TAG, "previousState=" + intExtra + ", state=" + intExtra2);
                if (intExtra2 != 12) {
                    BtA2dpStateLiveData.this.updateState(0);
                    return;
                }
                return;
            }
            if ("android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED".equals(action)) {
                int intExtra3 = intent.getIntExtra("android.bluetooth.profile.extra.PREVIOUS_STATE", 0);
                int intExtra4 = intent.getIntExtra("android.bluetooth.profile.extra.STATE", 0);
                PFLog.m29i(BtA2dpStateLiveData.TAG, "A2dp preConnState = " + intExtra3 + ", connState = " + intExtra4 + ", device: " + ((BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE")));
                BtA2dpStateLiveData.this.updateState(intExtra4);
            }
        }
    };

    public BtA2dpStateLiveData(Context context) {
        this.mContext = context;
        setValue(false);
        this.mIntentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        this.mIntentFilter.addAction("android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED");
    }

    @Override // androidx.lifecycle.LiveData
    protected void onActive() {
        if (this.mBluetoothAdapter != null) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updateState(int r3) {
        boolean z = r3 == 2;
        Log.i(TAG, "a2dp updateState to " + z);
        if (getValue() == null || z != getValue().booleanValue()) {
            setValue(Boolean.valueOf(z));
        }
    }
}
