package com.avn.tools.activity;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import java.util.List;

/* loaded from: classes.dex */
public class ActivityUtils {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_TOOLS, ActivityUtils.class);

    private ActivityUtils() {
    }

    public static void startActivity(Context context, String str, String str2) {
        PFLog.m25d(TAG, "startActivity:" + str + " className:" + str2);
        try {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setComponent(new ComponentName(str, str2));
            intent.setFlags(270532608);
            context.startActivity(intent);
        } catch (Exception e) {
            PFLog.m27e(TAG, "startActivity Error: " + e.toString());
        }
    }

    public static void startActivity(Context context, String str) {
        String activityByPackage = getActivityByPackage(context.getPackageManager(), str);
        PFLog.m25d(TAG, "startActivity:" + str + " className:" + activityByPackage);
        startActivity(context, str, activityByPackage);
    }

    public static void startActivity(Context context, ComponentName componentName) {
        PFLog.m25d(TAG, "startActivity:" + componentName.getPackageName() + " className:" + componentName.getClassName());
        try {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setComponent(componentName);
            intent.setFlags(270532608);
            context.startActivity(intent);
        } catch (Exception e) {
            PFLog.m27e(TAG, "startActivity Error：" + e.toString());
        }
    }

    public static String getActivityByPackage(PackageManager packageManager, String str) {
        if (packageManager != null && str != null) {
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            for (int r2 = 0; r2 < listQueryIntentActivities.size(); r2++) {
                ResolveInfo resolveInfo = listQueryIntentActivities.get(r2);
                if (resolveInfo.activityInfo.packageName.equals(str)) {
                    return resolveInfo.activityInfo.name;
                }
            }
        }
        return null;
    }

    public static ComponentName getTopActivityComponentName(Context context) throws SecurityException {
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(1);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        ComponentName componentName = runningTasks.get(0).topActivity;
        PFLog.m25d(TAG, "top activity:" + componentName.getClassName());
        return componentName;
    }

    public static boolean isOnTop(Context context, String str) throws SecurityException {
        ComponentName topActivityComponentName = getTopActivityComponentName(context);
        if (topActivityComponentName == null) {
            PFLog.m33w(TAG, "isOnTop getTopActivityComponentName is null");
            return false;
        }
        boolean zEquals = TextUtils.equals(topActivityComponentName.getPackageName(), str);
        PFLog.m29i(TAG, "isOnTop (" + str + ") -> " + zEquals);
        return zEquals;
    }

    public static boolean isOnTop(Context context, String str, String str2) throws SecurityException {
        ComponentName topActivityComponentName = getTopActivityComponentName(context);
        boolean z = false;
        if (topActivityComponentName == null) {
            PFLog.m33w(TAG, "isOnTop getTopActivityComponentName is null");
            return false;
        }
        String packageName = topActivityComponentName.getPackageName();
        String className = topActivityComponentName.getClassName();
        if (TextUtils.equals(packageName, str) && TextUtils.equals(className, str2)) {
            z = true;
        }
        PFLog.m29i(TAG, "isOnTop (" + str2 + ") -> " + z);
        return z;
    }

    public static boolean isOnTop(Activity activity) {
        if (activity == null) {
            return false;
        }
        return isOnTop(activity, activity.getPackageName(), activity.getClass().getName());
    }
}
