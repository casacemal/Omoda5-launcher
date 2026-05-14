package com.chery.media.util;

import android.content.Context;
import android.content.Intent;
import android.os.storage.StorageManager;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.common.PackageConstants;
import com.chery.media.app.MediaApplication;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Random;
import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.HanyuPinyinVCharType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

/* loaded from: classes.dex */
public class Utils {
    private static final String TAG = CarLog.concatTag("MEDIA", Utils.class);
    private static HanyuPinyinOutputFormat hanyuPinyinOutputFormat;

    public interface SortField<T> {
        String getFiled(T t);
    }

    private static boolean isCharLetter(char c) {
        return ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z');
    }

    private static boolean isCharNum(char c) {
        return '0' <= c && c <= '9';
    }

    public static String getTimeString(long j) {
        long j2 = j / 1000;
        return String.format("%d:%02d", Long.valueOf(Math.min(j2 / 60, 999L)), Long.valueOf(j2 % 60));
    }

    public static String getFileSizeString(long j) {
        return j < PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID ? String.format("%dB", Long.valueOf(j)) : j < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED ? String.format("%dKB", Long.valueOf(j / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)) : String.format("%dM", Long.valueOf((j / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID));
    }

    public static boolean copyFile(String str, String str2) throws InterruptedException, IOException {
        FileInputStream fileInputStream;
        boolean z = false;
        PFLog.m31v(TAG, String.format("copyFile from %s to %s", str, str2));
        File file = new File(str);
        PFLog.m31v(TAG, "check whether src file exists ...");
        if (!file.exists()) {
            PFLog.m27e(TAG, "src file not exist!");
            return false;
        }
        PFLog.m31v(TAG, "check whether src file is a normal file ...");
        if (!file.isFile()) {
            PFLog.m27e(TAG, "src is not a normal file!");
            return false;
        }
        PFLog.m31v(TAG, "check whether src file can be read ...");
        if (!file.canRead()) {
            PFLog.m27e(TAG, "src file can not read!");
            return false;
        }
        PFLog.m31v(TAG, "check volume state of src file ...");
        StorageManager storageManager = (StorageManager) MediaApplication.getApplication().getSystemService("storage");
        String state = storageManager.getStorageVolume(file).getState();
        if (!state.equals("mounted") && !state.equals("mounted_ro")) {
            PFLog.m27e(TAG, String.format("volume state(%s) of src file not mounted!", state));
            return false;
        }
        File file2 = new File(str2);
        if (!file2.getParentFile().exists() && !file2.getParentFile().mkdirs()) {
            PFLog.m27e(TAG, "can not make dir for dest file!");
            return false;
        }
        if (file2.exists() && !file2.delete()) {
            PFLog.m27e(TAG, "can not delete old dest file!");
            return false;
        }
        PFLog.m31v(TAG, "to open fis for src file ...");
        FileOutputStream fileOutputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            fileInputStream = null;
        }
        if (fileInputStream == null) {
            PFLog.m27e(TAG, "src file input stream is null!");
        }
        PFLog.m31v(TAG, "to open fos for dest file ...");
        try {
            fileOutputStream = new FileOutputStream(file2);
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        }
        if (fileOutputStream == null) {
            PFLog.m27e(TAG, "dest file output stream is null!");
        }
        if (fileInputStream != null && fileOutputStream != null) {
            byte[] bArr = new byte[262144];
            while (true) {
                if (!file.exists()) {
                    PFLog.m33w(TAG, "from file not exists any more!!!");
                    break;
                }
                String state2 = storageManager.getStorageVolume(file).getState();
                if (!state2.equals("mounted") && !state2.equals("mounted_ro")) {
                    PFLog.m27e(TAG, String.format("volume state(%s) of src file not mounted any more!!!", state2));
                    break;
                }
                try {
                    int r7 = fileInputStream.read(bArr);
                    if (r7 <= 0) {
                        z = true;
                        break;
                    }
                    try {
                        fileOutputStream.write(bArr, 0, r7);
                        try {
                            Thread.sleep(1L);
                        } catch (InterruptedException unused) {
                        }
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
        }
        if (fileInputStream != null) {
            try {
                fileInputStream.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        }
        if (fileOutputStream != null) {
            try {
                fileOutputStream.flush();
            } catch (IOException e6) {
                e6.printStackTrace();
            }
            try {
                fileOutputStream.getFD().sync();
            } catch (IOException e7) {
                e7.printStackTrace();
            }
            try {
                fileOutputStream.close();
            } catch (IOException e8) {
                e8.printStackTrace();
            }
        }
        return z;
    }

    public static boolean writeToInternalFile(Context context, String str, byte[] bArr, boolean z) {
        return writeToInternalFile(context, str, bArr, 0, bArr == null ? -1 : bArr.length, z);
    }

    public static boolean writeToInternalFile(Context context, String str, byte[] bArr, int r4, int r5, boolean z) throws IOException {
        FileOutputStream fileOutputStreamOpenFileOutput;
        boolean z2 = false;
        try {
            fileOutputStreamOpenFileOutput = context.openFileOutput(str, z ? 32768 : 0);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            fileOutputStreamOpenFileOutput = null;
        }
        if (fileOutputStreamOpenFileOutput == null) {
            return false;
        }
        if (bArr != null && bArr.length > 0) {
            try {
                fileOutputStreamOpenFileOutput.write(bArr, r4, r5);
                z2 = true;
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        try {
            fileOutputStreamOpenFileOutput.flush();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        try {
            fileOutputStreamOpenFileOutput.getFD().sync();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        try {
            fileOutputStreamOpenFileOutput.close();
        } catch (IOException e5) {
            e5.printStackTrace();
        }
        return z2;
    }

    public static byte[] readFromInternalFile(Context context, String str) {
        return readFromInternalFile(context, str, -1);
    }

    public static byte[] readFromInternalFile(Context context, String str, int r6) throws IOException {
        FileInputStream fileInputStreamOpenFileInput;
        int r1;
        if (r6 == 0) {
            return null;
        }
        try {
            fileInputStreamOpenFileInput = context.openFileInput(str);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            fileInputStreamOpenFileInput = null;
        }
        if (fileInputStreamOpenFileInput == null) {
            return null;
        }
        if (r6 < 0) {
            try {
                r6 = fileInputStreamOpenFileInput.available();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        if (r6 < 0) {
            return null;
        }
        byte[] bArr = new byte[r6];
        try {
            r1 = fileInputStreamOpenFileInput.read(bArr);
        } catch (IOException e3) {
            e3.printStackTrace();
            r1 = 0;
        }
        PFLog.m25d(TAG, String.format("read avail:%s actual:%s", Integer.valueOf(r6), Integer.valueOf(r1)));
        try {
            fileInputStreamOpenFileInput.close();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        return bArr;
    }

    public static boolean writeToFile(String str, byte[] bArr, boolean z) {
        return writeToFile(str, bArr, 0, bArr == null ? -1 : bArr.length, z);
    }

    public static boolean writeToFile(String str, byte[] bArr, int r5, int r6, boolean z) throws IOException {
        File file = new File(str);
        boolean z2 = false;
        if (!file.getParentFile().exists() && !file.getParentFile().mkdirs()) {
            PFLog.m27e(TAG, "can not make dir for dest file!");
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            fileOutputStream = new FileOutputStream(str, z);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        if (fileOutputStream == null) {
            return false;
        }
        if (bArr != null && bArr.length > 0) {
            try {
                fileOutputStream.write(bArr, r5, r6);
                z2 = true;
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        try {
            fileOutputStream.flush();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        try {
            fileOutputStream.getFD().sync();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        try {
            fileOutputStream.close();
        } catch (IOException e5) {
            e5.printStackTrace();
        }
        return z2;
    }

    public static byte[] readFromFile(String str) {
        return readFromFile(str, 0L, -1);
    }

    public static byte[] readFromFile(String str, long j, int r7) throws IOException {
        FileInputStream fileInputStream;
        byte[] bArr = null;
        if (r7 == 0) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(str);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            fileInputStream = null;
        }
        if (fileInputStream == null) {
            return null;
        }
        try {
            long jSkip = fileInputStream.skip(j);
            PFLog.m25d(TAG, "skip bytes " + jSkip);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        if (r7 < 0) {
            try {
                r7 = fileInputStream.available();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }
        if (r7 > 0) {
            bArr = new byte[r7];
            try {
                int r4 = fileInputStream.read(bArr);
                PFLog.m25d(TAG, "read bytes " + r4);
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        } else {
            PFLog.m25d(TAG, "cannot get avail length");
        }
        try {
            fileInputStream.close();
        } catch (IOException e5) {
            e5.printStackTrace();
        }
        return bArr;
    }

    public static <T> List<T> generateRandomList(List<T> list) {
        if (list == null || list.isEmpty()) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(list);
        ArrayList arrayList2 = new ArrayList();
        while (!arrayList.isEmpty()) {
            arrayList2.add(arrayList.remove(Math.abs(new Random().nextInt(arrayList.size()))));
        }
        return arrayList2;
    }

    public static <T> void sortByCustom(List<T> list, final SortField<T> sortField) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Collections.sort(list, new Comparator<T>() { // from class: com.chery.media.util.Utils.1
            @Override // java.util.Comparator
            public int compare(T t, T t2) {
                return Utils.customSortCmpString(sortField.getFiled(t), sortField.getFiled(t2));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int customSortCmpString(String str, String str2) {
        int r6;
        int r62;
        int r8;
        int r7;
        if (str.equals(str2)) {
            return 0;
        }
        int length = str.length();
        int length2 = str2.length();
        int r3 = 0;
        int r4 = 0;
        while (r3 < length && r4 < length2) {
            int r5 = 0;
            while (true) {
                r6 = r3 + r5;
                if (r6 >= length || (r7 = r4 + r5) >= length2 || !isCharLetter(str.charAt(r6)) || !isCharLetter(str2.charAt(r7))) {
                    break;
                }
                r5++;
            }
            if (r5 == 0) {
                int r52 = 0;
                while (true) {
                    r62 = r3 + r52;
                    if (r62 >= length || !isCharNum(str.charAt(r62))) {
                        break;
                    }
                    r52++;
                }
                int r72 = 0;
                while (true) {
                    r8 = r4 + r72;
                    if (r8 >= length2 || !isCharNum(str2.charAt(r8))) {
                        break;
                    }
                    r72++;
                }
                if (r52 > 0 && r72 > 0) {
                    int r32 = customSortCmpNumStr(str.substring(r3, r62), str2.substring(r4, r8));
                    if (r32 != 0) {
                        return r32;
                    }
                } else {
                    int r53 = customSortCmpChar(str.charAt(r3), str2.charAt(r4));
                    if (r53 != 0) {
                        return r53;
                    }
                    r62 = r3 + 1;
                    r8 = r4 + 1;
                }
                r3 = r62;
                r4 = r8;
            } else {
                String strSubstring = str.substring(r3, r6);
                int r54 = r5 + r4;
                String strSubstring2 = str2.substring(r4, r54);
                int r73 = strSubstring.compareTo(strSubstring2);
                if (r73 != 0) {
                    int r10 = strSubstring.toLowerCase().compareTo(strSubstring2.toLowerCase());
                    return r10 == 0 ? -r73 : r10;
                }
                r4 = r54;
                r3 = r6;
            }
        }
        return (length - r3) - (length2 - r4);
    }

    private static int customSortCmpChar(char c, char c2) {
        int r4;
        if (c == c2) {
            return 0;
        }
        if (isCharLetter(c)) {
            if (isCharLetter(c2)) {
                return String.valueOf(c).toLowerCase().compareTo(String.valueOf(c2).toLowerCase());
            }
            String hanyu = getHanyu(c2);
            if (hanyu == null || (r4 = String.valueOf(c).toLowerCase().compareTo(String.valueOf(hanyu.charAt(0)).toLowerCase())) == 0) {
                return -1;
            }
            return r4;
        }
        String hanyu2 = getHanyu(c);
        if (hanyu2 != null) {
            if (isCharLetter(c2)) {
                int r42 = String.valueOf(hanyu2.charAt(0)).toLowerCase().compareTo(String.valueOf(c2).toLowerCase());
                if (r42 != 0) {
                    return r42;
                }
                return 1;
            }
            String hanyu3 = getHanyu(c2);
            if (hanyu3 != null) {
                return hanyu2.compareTo(hanyu3);
            }
            return -1;
        }
        if (isCharNum(c)) {
            if (isCharLetter(c2) || getHanyu(c2) != null) {
                return 1;
            }
            if (isCharNum(c2)) {
                return c - c2;
            }
            return -1;
        }
        if (isCharLetter(c2) || getHanyu(c2) != null || isCharNum(c2)) {
            return 1;
        }
        return c - c2;
    }

    private static int customSortCmpNumStr(String str, String str2) {
        int r1 = 0;
        if (str.equals(str2)) {
            return 0;
        }
        int r0 = 0;
        while (r0 < str.length() && str.charAt(r0) == '0') {
            r0++;
        }
        while (r1 < str2.length() && str2.charAt(r1) == '0') {
            r1++;
        }
        if (r0 != 0) {
            str = str.substring(r0);
        }
        if (r1 != 0) {
            str2 = str2.substring(r1);
        }
        if (str.length() == str2.length()) {
            int r4 = str.compareTo(str2);
            return r4 != 0 ? r4 : r0 - r1;
        }
        return str.length() - str2.length();
    }

    private static String getHanyu(char c) {
        String[] hanyuPinyinStringArray;
        if (hanyuPinyinOutputFormat == null) {
            HanyuPinyinOutputFormat hanyuPinyinOutputFormat2 = new HanyuPinyinOutputFormat();
            hanyuPinyinOutputFormat = hanyuPinyinOutputFormat2;
            hanyuPinyinOutputFormat2.setCaseType(HanyuPinyinCaseType.LOWERCASE);
            hanyuPinyinOutputFormat.setToneType(HanyuPinyinToneType.WITH_TONE_NUMBER);
            hanyuPinyinOutputFormat.setVCharType(HanyuPinyinVCharType.WITH_V);
        }
        try {
            hanyuPinyinStringArray = PinyinHelper.toHanyuPinyinStringArray(c, hanyuPinyinOutputFormat);
        } catch (BadHanyuPinyinOutputFormatCombination e) {
            e.printStackTrace();
            hanyuPinyinStringArray = null;
        }
        if (hanyuPinyinStringArray == null || hanyuPinyinStringArray.length <= 0 || TextUtils.isEmpty(hanyuPinyinStringArray[0])) {
            return null;
        }
        return hanyuPinyinStringArray[0];
    }

    public static <T> void sortByDefault(List<T> list, final SortField<T> sortField) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Collections.sort(list, new Comparator<T>() { // from class: com.chery.media.util.Utils.2
            @Override // java.util.Comparator
            public int compare(T t, T t2) {
                return sortField.getFiled(t).compareTo(sortField.getFiled(t2));
            }
        });
    }

    public static long getFolderSize(String str) {
        long length;
        long j = 0;
        if (TextUtils.isEmpty(str)) {
            PFLog.m27e(TAG, String.format("param %s invalid", str));
            return 0L;
        }
        File file = new File(str);
        if (!file.isDirectory()) {
            PFLog.m27e(TAG, String.format("%s is not a folder", str));
            return 0L;
        }
        if (!file.exists()) {
            PFLog.m27e(TAG, String.format("%s not exist", str));
            return 0L;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    length = getFolderSize(file2.getAbsolutePath());
                } else if (file2.isFile()) {
                    length = file2.length();
                }
                j += length;
            }
        }
        return j;
    }

    public static void changeCarplayShow(boolean z) {
        PFLog.m25d(TAG, "changeCarplayShow " + z);
        MediaApplication application = MediaApplication.getApplication();
        Intent intent = new Intent();
        intent.setClassName(PackageConstants.CarPlay.PACKAGE_NAME, PackageConstants.CarPlay.CARPLAY_SERVICE_START);
        intent.setAction(PackageConstants.CarPlay.CARPLAY_SERVICE_ACTION);
        intent.putExtra("isShow", z);
        application.startService(intent);
    }
}
