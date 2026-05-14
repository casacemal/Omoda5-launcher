package com.chery.btphone;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadsetClient;
import android.bluetooth.BluetoothPbapClient;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.SystemClock;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.util.Log;
import com.chery.btphone.receiver.PbapStateReceiver;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class BtCallManager {
    static final String HFP_CLIENT_CONNECTION_SERVICE_CLASS_NAME = "com.android.bluetooth.hfpclient.connserv.HfpClientConnectionService";
    private static String TAG = "BT.TelecomMgr";
    private static BtCallManager sBtCallManager;
    private BluetoothHeadsetClient mBluetoothHeadsetClient;
    private BluetoothPbapClient mBluetoothPbapClient;
    private Context mContext;
    private TelecomManager mTelecomManager;
    private int mContactSyncState = -1;
    private int mCalllogSyncState = -1;
    private BroadcastReceiver mBluetoothStateReceiver = new BroadcastReceiver() { // from class: com.chery.btphone.BtCallManager.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int intExtra = intent.getIntExtra("android.bluetooth.pbap.extra.SYNC_TYPE", -1);
            int intExtra2 = intent.getIntExtra("android.bluetooth.pbap.extra.SYNC_STATE", -1);
            Log.d(BtCallManager.TAG, "update type to " + intExtra + ", state to " + intExtra2);
            if (intExtra == 0) {
                BtCallManager.this.mContactSyncState = intExtra2;
            } else {
                if (intExtra != 1) {
                    return;
                }
                BtCallManager.this.mCalllogSyncState = intExtra2;
            }
        }
    };

    public static BtCallManager init(Context context) {
        if (sBtCallManager == null) {
            BtCallManager btCallManager = new BtCallManager(context);
            sBtCallManager = btCallManager;
            return btCallManager;
        }
        throw new IllegalStateException("UiCallManager has been initialized.");
    }

    public static BtCallManager get() {
        BtCallManager btCallManager = sBtCallManager;
        if (btCallManager != null) {
            return btCallManager;
        }
        throw new IllegalStateException("Call UiCallManager.init(Context) before calling this function");
    }

    public static void set(BtCallManager btCallManager) {
        sBtCallManager = btCallManager;
    }

    private BtCallManager(Context context) {
        Log.d(TAG, "SetUp");
        this.mContext = context;
        context.registerReceiver(this.mBluetoothStateReceiver, new IntentFilter("android.bluetooth.pbap.profile.action.SYNC_STATE_CHANGED"));
        this.mTelecomManager = (TelecomManager) context.getSystemService("telecom");
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null) {
            defaultAdapter.getProfileProxy(this.mContext, new BluetoothProfile.ServiceListener() { // from class: com.chery.btphone.BtCallManager.1
                @Override // android.bluetooth.BluetoothProfile.ServiceListener
                public void onServiceConnected(int r2, BluetoothProfile bluetoothProfile) {
                    if (r2 == 16) {
                        BtCallManager.this.mBluetoothHeadsetClient = (BluetoothHeadsetClient) bluetoothProfile;
                    }
                }

                @Override // android.bluetooth.BluetoothProfile.ServiceListener
                public void onServiceDisconnected(int r2) {
                    if (r2 == 16) {
                        BtCallManager.this.mContactSyncState = -1;
                        BtCallManager.this.mCalllogSyncState = -1;
                        BtCallManager.this.mBluetoothHeadsetClient = null;
                    }
                }
            }, 16);
            defaultAdapter.getProfileProxy(this.mContext, new BluetoothProfile.ServiceListener() { // from class: com.chery.btphone.BtCallManager.2
                @Override // android.bluetooth.BluetoothProfile.ServiceListener
                public void onServiceConnected(int r2, BluetoothProfile bluetoothProfile) {
                    if (r2 == 17) {
                        BtCallManager.this.mBluetoothPbapClient = (BluetoothPbapClient) bluetoothProfile;
                    }
                }

                @Override // android.bluetooth.BluetoothProfile.ServiceListener
                public void onServiceDisconnected(int r2) {
                    if (r2 == 17) {
                        BtCallManager.this.mContactSyncState = -1;
                        BtCallManager.this.mCalllogSyncState = -1;
                        BtCallManager.this.mBluetoothPbapClient = null;
                    }
                }
            }, 17);
        }
    }

    public int getCalllogSyncState() {
        return this.mCalllogSyncState;
    }

    public int getContactSyncState() {
        return this.mContactSyncState;
    }

    public void tearDown() {
        this.mContext = null;
        sBtCallManager = null;
    }

    public boolean isBluetoothCall() {
        PhoneAccountHandle userSelectedOutgoingPhoneAccount = this.mTelecomManager.getUserSelectedOutgoingPhoneAccount();
        if (userSelectedOutgoingPhoneAccount == null || userSelectedOutgoingPhoneAccount.getComponentName() == null) {
            return false;
        }
        return HFP_CLIENT_CONNECTION_SERVICE_CLASS_NAME.equals(userSelectedOutgoingPhoneAccount.getComponentName().getClassName());
    }

    public boolean isHfpConnected() {
        return getHfpDevice() != null;
    }

    private BluetoothDevice getHfpDevice() {
        BluetoothHeadsetClient bluetoothHeadsetClient = this.mBluetoothHeadsetClient;
        if (bluetoothHeadsetClient == null || bluetoothHeadsetClient.getConnectedDevices().isEmpty()) {
            return null;
        }
        return (BluetoothDevice) this.mBluetoothHeadsetClient.getConnectedDevices().get(0);
    }

    private boolean isPbapConnnected(BluetoothDevice bluetoothDevice) {
        BluetoothPbapClient bluetoothPbapClient = this.mBluetoothPbapClient;
        if (bluetoothPbapClient != null) {
            return bluetoothPbapClient.getConnectionState(bluetoothDevice) == 2;
        }
        Log.w(TAG, "pbap client is null.");
        return false;
    }

    public void downloadPbap() {
        if (this.mCalllogSyncState == 0 || this.mContactSyncState == 0) {
            Log.i(TAG, "pbap is downloading.");
            return;
        }
        BluetoothDevice hfpDevice = getHfpDevice();
        if (hfpDevice != null) {
            if (isPbapConnnected(hfpDevice)) {
                startDownload();
                return;
            } else {
                Log.i(TAG, "pbap client is not connect and try.");
                tryPbapConnect(hfpDevice);
                return;
            }
        }
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("hfp client is ");
        sb.append(this.mBluetoothHeadsetClient == null ? "null." : "not connect.");
        Log.w(str, sb.toString());
    }

    private void startDownload() {
        this.mContactSyncState = -1;
        this.mCalllogSyncState = -1;
        new Thread() { // from class: com.chery.btphone.BtCallManager.4
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                long jElapsedRealtime = SystemClock.elapsedRealtime() + 60000;
                if (!BtCallManager.this.downloadCallLog()) {
                    Log.i(BtCallManager.TAG, "calllog sync failed.");
                    return;
                }
                for (long jElapsedRealtime2 = jElapsedRealtime - SystemClock.elapsedRealtime(); jElapsedRealtime2 > 0; jElapsedRealtime2 = jElapsedRealtime - SystemClock.elapsedRealtime()) {
                    if (BtCallManager.this.mCalllogSyncState >= 1) {
                        Log.i(BtCallManager.TAG, "calllog sync finished.");
                        if (BtCallManager.this.downloadPhoneBook()) {
                            Log.i(BtCallManager.TAG, "contact syncing.");
                            return;
                        } else {
                            Log.i(BtCallManager.TAG, "contact sync failed.");
                            return;
                        }
                    }
                    SystemClock.sleep(200L);
                }
            }
        }.start();
    }

    private boolean tryPbapConnect(BluetoothDevice bluetoothDevice) {
        final PbapStateReceiver pbapStateReceiver = new PbapStateReceiver(this.mContext);
        pbapStateReceiver.register(new PbapStateReceiver.PbapStateListener() { // from class: com.chery.btphone.-$$Lambda$BtCallManager$emsE6U0e0sPmru1JkvB0c1aNOYE
            @Override // com.chery.btphone.receiver.PbapStateReceiver.PbapStateListener
            public final void onPbapState(int r2, int r3) {
                this.f$0.lambda$tryPbapConnect$0$BtCallManager(pbapStateReceiver, r2, r3);
            }
        });
        return this.mBluetoothPbapClient.connect(bluetoothDevice);
    }

    public /* synthetic */ void lambda$tryPbapConnect$0$BtCallManager(PbapStateReceiver pbapStateReceiver, int r5, int r6) {
        Log.i(TAG, "pbap preState:" + r5 + ",newState:" + r6);
        if (r6 == 2 || r6 == 0) {
            pbapStateReceiver.unregister();
        }
        if (r6 == 2) {
            Log.i(TAG, "start download again.");
            startDownload();
        }
    }

    public boolean downloadPhoneBook() {
        BluetoothDevice hfpDevice = getHfpDevice();
        if (hfpDevice == null || !isPbapConnnected(hfpDevice)) {
            return false;
        }
        boolean zDownloadPhoneBook = this.mBluetoothPbapClient.downloadPhoneBook(hfpDevice);
        Log.i(TAG, "downloadPhoneBook:" + zDownloadPhoneBook);
        return zDownloadPhoneBook;
    }

    public boolean downloadCallLog() {
        BluetoothDevice hfpDevice = getHfpDevice();
        if (hfpDevice == null || !isPbapConnnected(hfpDevice)) {
            return false;
        }
        return this.mBluetoothPbapClient.pullCallLog(0, 200);
    }

    public boolean forceDownloadCallLog() {
        BluetoothDevice hfpDevice = getHfpDevice();
        if (hfpDevice == null) {
            return false;
        }
        if (isPbapConnnected(hfpDevice)) {
            return this.mBluetoothPbapClient.pullCallLog(0, 200);
        }
        Log.i(TAG, "try connect pbap for download calllog.");
        return tryPbapConnect(hfpDevice);
    }

    public boolean placeCall(String str) {
        Uri uriFromParts = Uri.fromParts("tel", str, null);
        Log.d(TAG, "android.telecom.TelecomManager#placeCall:" + str);
        this.mTelecomManager.placeCall(uriFromParts, null);
        return true;
    }

    public void acceptRingingCall() {
        this.mTelecomManager.acceptRingingCall();
    }

    public boolean isRinging() {
        return this.mTelecomManager.isRinging();
    }

    public boolean rejectCall() {
        BluetoothHeadsetClient bluetoothHeadsetClient = this.mBluetoothHeadsetClient;
        boolean zRejectCall = false;
        if (bluetoothHeadsetClient != null) {
            Iterator it = bluetoothHeadsetClient.getConnectedDevices().iterator();
            while (it.hasNext()) {
                zRejectCall = this.mBluetoothHeadsetClient.rejectCall((BluetoothDevice) it.next());
            }
        }
        return zRejectCall;
    }

    public boolean endCall() {
        return this.mTelecomManager.endCall();
    }

    public boolean isInCall() {
        return this.mTelecomManager.isInCall();
    }

    public boolean hasAnyCalls() {
        BluetoothHeadsetClient bluetoothHeadsetClient = this.mBluetoothHeadsetClient;
        List list = null;
        if (bluetoothHeadsetClient != null) {
            Iterator it = bluetoothHeadsetClient.getConnectedDevices().iterator();
            while (it.hasNext()) {
                List currentCalls = this.mBluetoothHeadsetClient.getCurrentCalls((BluetoothDevice) it.next());
                if (currentCalls != null && !currentCalls.isEmpty()) {
                    list = currentCalls;
                }
            }
        }
        return (list == null || list.isEmpty()) ? false : true;
    }
}
