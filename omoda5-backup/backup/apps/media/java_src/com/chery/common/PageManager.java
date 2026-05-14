package com.chery.common;

import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;
import com.avn.tools.activity.ActivityUtils;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import java.util.Arrays;

/* loaded from: classes.dex */
public class PageManager {
    private static final String ERROR = "-1";
    private static final String TAG = CarLog.concatTag(CarLog.TAG_DEF, PageManager.class);
    private Context mContext;

    public PageManager(Context context) {
        this.mContext = context;
    }

    public String getCurrentPage(String str) {
        Context context = this.mContext;
        if (context == null) {
            PFLog.m27e(TAG, "getCurrentPage context is null");
            return "-1";
        }
        String string = Settings.System.getString(context.getContentResolver(), str);
        PFLog.m29i(TAG, "getCurrentPage key:" + str + " ;pageId -> " + string);
        return string;
    }

    public boolean isPageShown(String str, String str2, String str3, String str4) {
        boolean z = ActivityUtils.isOnTop(this.mContext, str, str2) && TextUtils.equals(getCurrentPage(str3), str4);
        PFLog.m29i(TAG, "isPageShown (pageId:" + str4 + ") -> " + z);
        return z;
    }

    public void openPage(String str, String str2, String str3, String str4, String str5) {
        if (this.mContext == null) {
            PFLog.m27e(TAG, "openPage context is null");
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(str, str2);
        intent.setAction(str3);
        intent.putExtra(str4, str5);
        intent.setFlags(270532608);
        PFLog.m29i(TAG, "openPage pkg -> " + str + "; activity -> " + str2 + "; action -> " + str3 + "; pageIdKey -> " + str4 + "; pageId -> " + str5);
        try {
            this.mContext.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void openPage(String str, String str2, String str3, String str4) {
        if (this.mContext == null) {
            PFLog.m27e(TAG, "openPage context is null");
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(str, str2);
        intent.putExtra(str3, str4);
        intent.setFlags(270532608);
        try {
            PFLog.m25d(TAG, "openPage pkg -> " + str + "; activity -> " + str2 + "; pageIdKey -> " + str3 + " pageId -> " + str4);
            this.mContext.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void openPage(String str, String str2, String str3, String[] strArr, String[] strArr2) {
        if (this.mContext == null) {
            PFLog.m27e(TAG, "openPage context is null");
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(str, str2);
        intent.setAction(str3);
        for (int r1 = 0; r1 < strArr.length; r1++) {
            intent.putExtra(strArr[r1], strArr2[r1]);
        }
        intent.setFlags(270532608);
        PFLog.m29i(TAG, "openPage pkg -> " + str + "; activity -> " + str2 + "; action -> " + str3 + "; pageIdKey -> " + Arrays.toString(strArr) + "; pageId -> " + Arrays.toString(strArr2));
        try {
            this.mContext.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
