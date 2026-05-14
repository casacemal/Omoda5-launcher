package com.chery.media.livedata;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothAvrcpController;
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
public class BtAvrcptateLiveData extends LiveData<Boolean> {
    private static final String TAG = "BA.BtAvrcptateLiveData";
    private BluetoothAvrcpController mBluetoothAvrcpController;
    private final Context mContext;
    private final BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    private final IntentFilter mIntentFilter = new IntentFilter();
    private BluetoothProfile.ServiceListener mServiceListener = new BluetoothProfile.ServiceListener() { // from class: com.chery.media.livedata.BtAvrcptateLiveData.1
        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int r1) {
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceConnected(int r2, BluetoothProfile bluetoothProfile) {
            List connectedDevices;
            if (r2 == 12) {
                BtAvrcptateLiveData.this.mBluetoothAvrcpController = (BluetoothAvrcpController) bluetoothProfile;
                int connectionState = 0;
                if (BtAvrcptateLiveData.this.mBluetoothAvrcpController != null && (connectedDevices = BtAvrcptateLiveData.this.mBluetoothAvrcpController.getConnectedDevices()) != null && !connectedDevices.isEmpty()) {
                    connectionState = BtAvrcptateLiveData.this.mBluetoothAvrcpController.getConnectionState((BluetoothDevice) connectedDevices.get(0));
                }
                BtAvrcptateLiveData.this.updateState(connectionState);
            }
        }
    };
    private BroadcastReceiver mBluetoothStateReceiver = new BroadcastReceiver() { // from class: com.chery.media.livedata.BtAvrcptateLiveData.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int intExtra = intent.getIntExtra("android.bluetooth.profile.extra.PREVIOUS_STATE", 0);
            int intExtra2 = intent.getIntExtra("android.bluetooth.profile.extra.STATE", 0);
            PFLog.m29i(BtAvrcptateLiveData.TAG, "Avrcp preConnState = " + intExtra + ", connState = " + intExtra2 + ", device: " + ((BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE")));
            BtAvrcptateLiveData.this.updateState(intExtra2);
        }
    };

    public BtAvrcptateLiveData(Context context) {
        this.mContext = context;
        this.mIntentFilter.addAction("android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED");
    }

    @Override // androidx.lifecycle.LiveData
    protected void onActive() {
        if (this.mBluetoothAdapter != null) {
            this.mContext.registerReceiver(this.mBluetoothStateReceiver, this.mIntentFilter);
            this.mBluetoothAdapter.getProfileProxy(this.mContext, this.mServiceListener, 12);
        }
    }

    @Override // androidx.lifecycle.LiveData
    protected void onInactive() {
        BluetoothAdapter bluetoothAdapter = this.mBluetoothAdapter;
        if (bluetoothAdapter != null) {
            bluetoothAdapter.closeProfileProxy(12, this.mBluetoothAvrcpController);
            this.mContext.unregisterReceiver(this.mBluetoothStateReceiver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateState(int r3) {
        boolean z = r3 == 2;
        Log.i(TAG, "avrcp updateState to " + z);
        if (getValue() == null || z != getValue().booleanValue()) {
            setValue(Boolean.valueOf(z));
        }
    }
}
