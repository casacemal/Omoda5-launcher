package com.chery.setting;

import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;

/* loaded from: classes.dex */
public class BtPairingCountManager {
    public static final int MSG_COUNT = 1;
    private static final String TAG = CarLog.concatTag(CarLog.TAG_DEF, BtPairingCountManager.class);
    private static volatile BtPairingCountManager sInstance = null;

    private BtPairingCountManager() {
    }

    public static BtPairingCountManager getInstance() {
        if (sInstance == null) {
            synchronized (BtPairingCountManager.class) {
                if (sInstance == null) {
                    sInstance = new BtPairingCountManager();
                }
            }
        }
        return sInstance;
    }

    public void sendPairCount(Messenger messenger, int r4) throws RemoteException {
        if (messenger != null) {
            try {
                messenger.send(Message.obtain(null, 1, r4, 0));
                return;
            } catch (RemoteException e) {
                e.printStackTrace();
                return;
            }
        }
        PFLog.m27e(TAG, "sendPairCount server null");
    }
}
