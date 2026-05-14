package com.avn.tools.log;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* loaded from: classes.dex */
public class PFLog {
    private static long mLogTime = 0;
    protected static boolean mLoggingEnabled = true;

    public static boolean isDebugLogging() {
        return mLoggingEnabled;
    }

    public static void resetTime() {
        mLogTime = SystemClock.elapsedRealtime();
    }

    public static void setDebugLogging(boolean z) {
        mLoggingEnabled = z;
    }

    /* renamed from: v */
    public static int m31v(String str, String str2) {
        if (!mLoggingEnabled) {
            return 0;
        }
        return Log.v(str, str2 + getFileLocation());
    }

    /* renamed from: v */
    public static int m32v(String str, String str2, Throwable th) {
        if (!mLoggingEnabled) {
            return 0;
        }
        return Log.v(str, str2 + getFileLocation(), th);
    }

    /* renamed from: d */
    public static int m25d(String str, String str2) {
        if (!mLoggingEnabled) {
            return 0;
        }
        return Log.d(str, str2 + getFileLocation());
    }

    /* renamed from: d */
    public static int m26d(String str, String str2, Throwable th) {
        if (!mLoggingEnabled) {
            return 0;
        }
        return Log.d(str, str2 + getFileLocation(), th);
    }

    /* renamed from: i */
    public static int m29i(String str, String str2) {
        if (!mLoggingEnabled) {
            return 0;
        }
        return Log.i(str, str2 + getFileLocation());
    }

    /* renamed from: i */
    public static int m30i(String str, String str2, Throwable th) {
        if (!mLoggingEnabled) {
            return 0;
        }
        return Log.i(str, str2 + getFileLocation(), th);
    }

    /* renamed from: w */
    public static int m33w(String str, String str2) {
        if (!mLoggingEnabled) {
            return 0;
        }
        return Log.w(str, str2 + getFileLocation());
    }

    /* renamed from: w */
    public static int m34w(String str, String str2, Throwable th) {
        if (!mLoggingEnabled) {
            return 0;
        }
        return Log.w(str, str2 + getFileLocation(), th);
    }

    /* renamed from: w */
    public static int m35w(String str, Throwable th) {
        if (mLoggingEnabled) {
            return Log.w(str, th);
        }
        return 0;
    }

    /* renamed from: e */
    public static int m27e(String str, String str2) {
        if (!mLoggingEnabled) {
            return 0;
        }
        return Log.e(str, str2 + getFileLocation());
    }

    /* renamed from: e */
    public static int m28e(String str, String str2, Throwable th) {
        if (!mLoggingEnabled) {
            return 0;
        }
        return Log.e(str, str2 + getFileLocation(), th);
    }

    private static String getDate() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
    }

    private static String addTimeMsg(String str) {
        return str + " T:" + (SystemClock.elapsedRealtime() - mLogTime);
    }

    private static String getFileLocation() {
        if (TextUtils.equals("release", "release")) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            String fileName = stackTrace[4].getFileName();
            String methodName = stackTrace[4].getMethodName();
            int lineNumber = stackTrace[4].getLineNumber();
            String str = methodName.substring(0, 1).toUpperCase() + methodName.substring(1);
            stringBuffer.append(" [(");
            stringBuffer.append(fileName);
            stringBuffer.append(":");
            stringBuffer.append(lineNumber);
            stringBuffer.append(")#");
            stringBuffer.append(str);
            stringBuffer.append("] ");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stringBuffer.toString();
    }
}
