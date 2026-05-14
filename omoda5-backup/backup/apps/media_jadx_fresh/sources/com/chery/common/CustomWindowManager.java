package com.chery.common;

import android.content.Context;
import android.view.View;
import com.avn.tools.log.CarLog;

/* loaded from: classes.dex */
public class CustomWindowManager {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_DEF, CustomWindowManager.class);
    private static volatile CustomWindowManager sInstance;
    private Context mContext;

    private CustomWindowManager() {
    }

    public static CustomWindowManager getInstance() {
        if (sInstance == null) {
            synchronized (CustomWindowManager.class) {
                if (sInstance == null) {
                    sInstance = new CustomWindowManager();
                }
            }
        }
        return sInstance;
    }

    public void hideStatusBarAndNavigationBar(View view) {
        view.setSystemUiVisibility(5894);
    }
}
