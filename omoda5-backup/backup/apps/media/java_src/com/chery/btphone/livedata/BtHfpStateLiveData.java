package com.chery.btphone.livedata;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadsetClient;
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
public class BtHfpStateLiveData extends LiveData<Integer> {
    private static final String TAG = "CD.BluetoothHfpStateLiveData";
    private BluetoothHeadsetClient mBluetoothHeadsetClient;
    private final Context mContext;
    private final BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    private final IntentFilter mIntentFilter = new IntentFilter();
    private BluetoothProfile.ServiceListener mServiceListener = new BluetoothProfile.ServiceListener() { // from class: com.chery.btphone.livedata.BtHfpStateLiveData.1
        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int r1) {
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceConnected(int r2, BluetoothProfile bluetoothProfile) {
            if (r2 == 16) {
                BtHfpStateLiveData.this.mBluetoothHeadsetClient = (BluetoothHeadsetClient) bluetoothProfile;
                BtHfpStateLiveData.this.updateState();
            }
        }
    };
    private BroadcastReceiver mBluetoothStateReceiver = new BroadcastReceiver() { // from class: com.chery.btphone.livedata.BtHfpStateLiveData.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            BtHfpStateLiveData.this.updateState();
        }
    };

    public BtHfpStateLiveData(Context context) {
        this.mContext = context;
        this.mIntentFilter.addAction("android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED");
    }

    @Override // androidx.lifecycle.LiveData
    protected void onActive() {
        if (this.mBluetoothAdapter != null) {
            updateState();
            this.mContext.registerReceiver(this.mBluetoothStateReceiver, this.mIntentFilter);
            this.mBluetoothAdapter.getProfileProxy(this.mContext, this.mServiceListener, 16);
        }
    }

    @Override // androidx.lifecycle.LiveData
    protected void onInactive() {
        BluetoothAdapter bluetoothAdapter = this.mBluetoothAdapter;
        if (bluetoothAdapter != null) {
            bluetoothAdapter.closeProfileProxy(16, this.mBluetoothHeadsetClient);
            this.mContext.unregisterReceiver(this.mBluetoothStateReceiver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateState() {
        int btHfpState = getBtHfpState();
        if (getValue() == null || btHfpState != getValue().intValue()) {
            Log.d(TAG, "updateState to " + btHfpState);
            setValue(Integer.valueOf(btHfpState));
        }
    }

    private int getBtHfpState() {
        BluetoothHeadsetClient bluetoothHeadsetClient = this.mBluetoothHeadsetClient;
        if (bluetoothHeadsetClient == null) {
            return 0;
        }
        List connectedDevices = bluetoothHeadsetClient.getConnectedDevices();
        if (connectedDevices != null) {
            int size = connectedDevices.size();
            if (size > 0) {
                int connectionState = this.mBluetoothHeadsetClient.getConnectionState((BluetoothDevice) connectedDevices.get(0));
                PFLog.m29i(TAG, "getBtHfpState: " + connectionState + "(listSize:" + size + ")");
                return connectionState;
            }
            PFLog.m25d(TAG, "getBtHfpState:list is empty.");
            return 0;
        }
        PFLog.m25d(TAG, "getBtHfpState:connectedDevices is null.");
        return 0;
    }
}
