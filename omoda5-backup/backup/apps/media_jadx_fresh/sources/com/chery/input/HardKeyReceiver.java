package com.chery.input;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import android.view.KeyEvent;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class HardKeyReceiver extends BroadcastReceiver {
    private static final String ACTION_ENTER_HARD_KEY_TEST = "com.yfve.engineeringmode.enter.hardkey_test";
    private static final String ACTION_HARDKEY_EVENT_TEST = "com.saic.keyevent.hardkey.test";
    private static final String TAG = "Input.HardKeyReceiver";
    private final Context mContext;
    private KeyEventListener mKeyEventListener;
    private final IntentFilter mIntentFilter = new IntentFilter();
    private final Map<Integer, InputFilter> mHandledKeys = new HashMap();
    private boolean mEngTest = false;
    private boolean mLongPress = false;

    public interface KeyEventListener {
        boolean onKeyEvent(KeyEvent keyEvent);
    }

    public HardKeyReceiver(Context context) {
        this.mContext = context;
        this.mIntentFilter.addAction(ACTION_ENTER_HARD_KEY_TEST);
        this.mIntentFilter.addAction(ACTION_HARDKEY_EVENT_TEST);
        this.mIntentFilter.addAction("com.saic.keyevent.hardkey.report");
    }

    public void register(InputFilter[] inputFilterArr, KeyEventListener keyEventListener) {
        this.mKeyEventListener = keyEventListener;
        setHandledKeys(inputFilterArr);
        this.mContext.registerReceiver(this, this.mIntentFilter);
    }

    public void unregister() {
        this.mKeyEventListener = null;
        this.mHandledKeys.clear();
        this.mContext.unregisterReceiver(this);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (ACTION_ENTER_HARD_KEY_TEST.equals(intent.getAction())) {
            this.mEngTest = intent.getBooleanExtra("is_hard_key_test", false);
            Log.i(TAG, "ENTER_HARD_KEY_TEST:" + this.mEngTest);
            return;
        }
        if (this.mEngTest) {
            Log.i(TAG, "it is in ENTER_HARD_KEY_TEST");
            return;
        }
        int intExtra = intent.getIntExtra("android.intent.extra.hardkey.keycode", -1);
        if (isCustomEventHandler(intExtra)) {
            boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.hardkey.down", false);
            boolean booleanExtra2 = intent.getBooleanExtra("android.intent.extra.hardkey.longpress", false);
            KeyEvent keyEvent = new KeyEvent(!booleanExtra ? 1 : 0, intExtra);
            Log.d(TAG, "down:" + booleanExtra + ",longPress:" + booleanExtra2 + ",keyCode:" + intExtra);
            if (booleanExtra2) {
                this.mLongPress = true;
                keyEvent.setFlags(128);
            } else if (booleanExtra) {
                this.mLongPress = false;
            } else if (this.mLongPress) {
                keyEvent.setFlags(128);
            }
            handleCustomKey(keyEvent);
            return;
        }
        Log.d(TAG, "no filter key");
    }

    private boolean isCustomEventHandler(int r1) {
        return this.mHandledKeys.containsKey(Integer.valueOf(r1));
    }

    private void handleCustomKey(KeyEvent keyEvent) {
        KeyEventListener keyEventListener = this.mKeyEventListener;
        if (keyEventListener != null) {
            keyEventListener.onKeyEvent(keyEvent);
        } else {
            Log.i(TAG, "handleCustomKey: no listener");
        }
    }

    private void setHandledKeys(InputFilter[] inputFilterArr) {
        this.mHandledKeys.clear();
        for (InputFilter inputFilter : inputFilterArr) {
            this.mHandledKeys.put(Integer.valueOf(inputFilter.mKeyCode), inputFilter);
        }
    }

    public static class InputFilter {
        public final int mKeyCode;

        public InputFilter(int r1) {
            this.mKeyCode = r1;
        }
    }
}
