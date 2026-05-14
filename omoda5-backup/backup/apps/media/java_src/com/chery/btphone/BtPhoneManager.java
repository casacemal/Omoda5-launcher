package com.chery.btphone;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

/* loaded from: classes.dex */
public class BtPhoneManager {
    public static final int MSG_CALL_INFO = 1;
    public static final String MSG_CALL_KEY = "call_info";
    private static volatile BtPhoneManager sInstance;

    private BtPhoneManager() {
    }

    public static BtPhoneManager getInstance() {
        if (sInstance == null) {
            synchronized (BtPhoneManager.class) {
                if (sInstance == null) {
                    sInstance = new BtPhoneManager();
                }
            }
        }
        return sInstance;
    }

    public void sendPhone(Messenger messenger, PhoneDetail phoneDetail) throws RemoteException {
        Message messageObtain = Message.obtain((Handler) null, 1);
        Bundle bundle = new Bundle();
        bundle.putParcelable(MSG_CALL_KEY, phoneDetail);
        messageObtain.setData(bundle);
        try {
            messenger.send(messageObtain);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
