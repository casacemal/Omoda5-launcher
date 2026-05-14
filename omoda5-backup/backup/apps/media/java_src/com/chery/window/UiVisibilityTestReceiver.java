package com.chery.window;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* loaded from: classes.dex */
public class UiVisibilityTestReceiver extends BroadcastReceiver {
    private static final String ACTION_WINDOW_EVENT_TEST = "com.chery.window.test";
    public static final int EVENT_FULLSCREEN = 2;
    public static final int EVENT_FULLSCREEN_EXIT = 3;
    public static final int EVENT_INIT = 1;
    public static final int EVENT_QUICK_SETINGS_HIDE = 8;
    public static final int EVENT_QUICK_SETINGS_SHOW_FULL = 6;
    public static final int EVENT_QUICK_SETINGS_SHOW_MINI = 7;
    public static final int EVENT_STATUS_BAR_HIDE = 5;
    public static final int EVENT_STATUS_BAR_SHOW = 4;
    public static final int EVENT_UNINIT = 100;
    private static final String EXTRA_WINDOW_EVENT_ID = "EVENT_ID";
    private static final String TAG = "UiVisibilityTestReceiver";
    private final Context mContext;
    private final IntentFilter mIntentFilter = new IntentFilter();
    private final UiVisibilityTest mUiVisibilityTes2;
    private final UiVisibilityTest mUiVisibilityTes3;
    private final UiVisibilityTest mUiVisibilityTest;

    public UiVisibilityTestReceiver(Context context) {
        this.mContext = context;
        this.mUiVisibilityTest = new UiVisibilityTest(context, 3, "TEST1", false);
        this.mUiVisibilityTes2 = new UiVisibilityTest(context, 2, "TEST2", false);
        this.mUiVisibilityTes3 = new UiVisibilityTest(context, 4, "TEST3", false);
        this.mIntentFilter.addAction(ACTION_WINDOW_EVENT_TEST);
    }

    public void register() {
        this.mContext.registerReceiver(this, this.mIntentFilter);
    }

    public void unregister() {
        this.mContext.unregisterReceiver(this);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        handleEvent(intent.getIntExtra("EVENT_ID", -1));
    }

    private void handleEvent(int r5) {
        if (r5 != 100) {
            switch (r5) {
                case 1:
                    this.mUiVisibilityTest.init();
                    this.mUiVisibilityTes2.init();
                    this.mUiVisibilityTes3.init();
                    break;
                case 2:
                    this.mUiVisibilityTest.setUiVisibility(3, 0);
                    break;
                case 3:
                    this.mUiVisibilityTest.setUiVisibility(3, 2);
                    break;
                case 4:
                    this.mUiVisibilityTes2.setUiVisibility(2, 2);
                    break;
                case 5:
                    this.mUiVisibilityTes2.setUiVisibility(2, 0);
                    break;
                case 6:
                    this.mUiVisibilityTes3.setUiVisibility(4, 2);
                    break;
                case 7:
                    this.mUiVisibilityTes3.setUiVisibility(4, 1);
                    break;
                case 8:
                    this.mUiVisibilityTes3.setUiVisibility(4, 0);
                    break;
            }
        }
        this.mUiVisibilityTest.uninit();
        this.mUiVisibilityTes2.uninit();
        this.mUiVisibilityTes3.uninit();
    }
}
