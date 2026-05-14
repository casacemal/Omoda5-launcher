package com.chery.upgrade;

import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class UpdateUtils {
    public static final String FILE_PATH = "/configure/";
    public static final String NO_UPDATE = "0";
    public static final String OTA_UPDATE = "2";
    private static final String TAG = CarLog.concatTag(CarLog.TAG_DEF, UpdateUtils.class);
    public static final String UPDATE_MCU_VERSION = "mcu_version.txt";
    public static final String UPDATE_OTA_PATH = "ota_path.txt";
    public static final String UPDATE_STATE = "update_state.txt";
    public static final String USB_UPDATE = "1";

    public static synchronized void setUsbUpdateState(String str, String str2) {
        FileOutputStream fileOutputStream;
        PFLog.m29i(TAG, "setUsbUpdateState: " + str2);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                File file = new File(FILE_PATH, str);
                if (file.exists()) {
                    file.delete();
                }
                file.createNewFile();
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(str2.getBytes());
            fileOutputStream.getFD();
            fileOutputStream.getFD().sync();
            PFLog.m29i(TAG, "setUsbUpdateState end: " + str2);
            try {
                fileOutputStream.close();
            } catch (IOException e2) {
                e = e2;
                e.printStackTrace();
            }
        } catch (Exception e3) {
            fileOutputStream2 = fileOutputStream;
            e = e3;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e4) {
                    e = e4;
                    e.printStackTrace();
                }
            }
        } catch (Throwable th2) {
            fileOutputStream2 = fileOutputStream;
            th = th2;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00af A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isUpdating(java.lang.String r7) throws java.lang.Throwable {
        /*
            r0 = 0
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            java.lang.String r3 = "/configure/"
            r2.<init>(r3, r7)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            boolean r7 = r2.exists()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            if (r7 != 0) goto L17
            java.lang.String r7 = com.chery.upgrade.UpdateUtils.TAG     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            java.lang.String r2 = "isUpdating: !file.exists()"
            com.avn.tools.log.PFLog.m29i(r7, r2)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            return r1
        L17:
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            r7.<init>(r2)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            r2 = 1024(0x400, float:1.435E-42)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L80
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L80
            r3.<init>()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L80
        L25:
            int r0 = r7.read(r2)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            r4 = -1
            if (r0 == r4) goto L30
            r3.write(r2, r1, r0)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            goto L25
        L30:
            byte[] r0 = r3.toByteArray()     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            java.lang.String r2 = com.chery.upgrade.UpdateUtils.TAG     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            r4.<init>()     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            java.lang.String r5 = "isUpdating: "
            r4.append(r5)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            r4.append(r5)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            java.lang.String r5 = " !=0(true)"
            r4.append(r5)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            com.avn.tools.log.PFLog.m29i(r2, r4)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            java.lang.String r2 = "0"
            java.lang.String r4 = new java.lang.String     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            boolean r0 = r2.equals(r4)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L77
            r0 = r0 ^ 1
            r3.close()     // Catch: java.io.IOException -> L65
            goto L69
        L65:
            r1 = move-exception
            r1.printStackTrace()
        L69:
            r7.close()     // Catch: java.io.IOException -> L6d
            goto L71
        L6d:
            r7 = move-exception
            r7.printStackTrace()
        L71:
            return r0
        L72:
            r0 = move-exception
            r2 = r7
            r7 = r0
            r0 = r3
            goto La3
        L77:
            r0 = move-exception
            r2 = r7
            r7 = r0
            r0 = r3
            goto L8a
        L7c:
            r1 = move-exception
            r2 = r7
            r7 = r1
            goto La3
        L80:
            r2 = move-exception
            r6 = r2
            r2 = r7
            r7 = r6
            goto L8a
        L85:
            r7 = move-exception
            r2 = r0
            goto La3
        L88:
            r7 = move-exception
            r2 = r0
        L8a:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> La2
            if (r0 == 0) goto L97
            r0.close()     // Catch: java.io.IOException -> L93
            goto L97
        L93:
            r7 = move-exception
            r7.printStackTrace()
        L97:
            if (r2 == 0) goto La1
            r2.close()     // Catch: java.io.IOException -> L9d
            goto La1
        L9d:
            r7 = move-exception
            r7.printStackTrace()
        La1:
            return r1
        La2:
            r7 = move-exception
        La3:
            if (r0 == 0) goto Lad
            r0.close()     // Catch: java.io.IOException -> La9
            goto Lad
        La9:
            r0 = move-exception
            r0.printStackTrace()
        Lad:
            if (r2 == 0) goto Lb7
            r2.close()     // Catch: java.io.IOException -> Lb3
            goto Lb7
        Lb3:
            r0 = move-exception
            r0.printStackTrace()
        Lb7:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.upgrade.UpdateUtils.isUpdating(java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean getUsbUpdateState(java.lang.String r7) throws java.lang.Throwable {
        /*
            r0 = 0
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            java.lang.String r3 = "/configure/"
            r2.<init>(r3, r7)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            boolean r7 = r2.exists()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            if (r7 != 0) goto L17
            java.lang.String r7 = com.chery.upgrade.UpdateUtils.TAG     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            java.lang.String r2 = "getUsbUpdateState: !file.exists()"
            com.avn.tools.log.PFLog.m29i(r7, r2)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            return r1
        L17:
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r7.<init>(r2)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r2 = 1024(0x400, float:1.435E-42)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7e
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7e
            r3.<init>()     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7e
        L25:
            int r0 = r7.read(r2)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            r4 = -1
            if (r0 == r4) goto L30
            r3.write(r2, r1, r0)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            goto L25
        L30:
            byte[] r0 = r3.toByteArray()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            java.lang.String r2 = com.chery.upgrade.UpdateUtils.TAG     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            r4.<init>()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            java.lang.String r5 = "getUsbUpdateState: "
            r4.append(r5)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            r4.append(r5)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            java.lang.String r5 = " ==1(true)"
            r4.append(r5)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            com.avn.tools.log.PFLog.m29i(r2, r4)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            java.lang.String r2 = "1"
            java.lang.String r4 = new java.lang.String     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            boolean r0 = r2.equals(r4)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            r3.close()     // Catch: java.io.IOException -> L63
            goto L67
        L63:
            r1 = move-exception
            r1.printStackTrace()
        L67:
            r7.close()     // Catch: java.io.IOException -> L6b
            goto L6f
        L6b:
            r7 = move-exception
            r7.printStackTrace()
        L6f:
            return r0
        L70:
            r0 = move-exception
            r2 = r7
            r7 = r0
            r0 = r3
            goto La1
        L75:
            r0 = move-exception
            r2 = r7
            r7 = r0
            r0 = r3
            goto L88
        L7a:
            r1 = move-exception
            r2 = r7
            r7 = r1
            goto La1
        L7e:
            r2 = move-exception
            r6 = r2
            r2 = r7
            r7 = r6
            goto L88
        L83:
            r7 = move-exception
            r2 = r0
            goto La1
        L86:
            r7 = move-exception
            r2 = r0
        L88:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> La0
            if (r0 == 0) goto L95
            r0.close()     // Catch: java.io.IOException -> L91
            goto L95
        L91:
            r7 = move-exception
            r7.printStackTrace()
        L95:
            if (r2 == 0) goto L9f
            r2.close()     // Catch: java.io.IOException -> L9b
            goto L9f
        L9b:
            r7 = move-exception
            r7.printStackTrace()
        L9f:
            return r1
        La0:
            r7 = move-exception
        La1:
            if (r0 == 0) goto Lab
            r0.close()     // Catch: java.io.IOException -> La7
            goto Lab
        La7:
            r0 = move-exception
            r0.printStackTrace()
        Lab:
            if (r2 == 0) goto Lb5
            r2.close()     // Catch: java.io.IOException -> Lb1
            goto Lb5
        Lb1:
            r0 = move-exception
            r0.printStackTrace()
        Lb5:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.upgrade.UpdateUtils.getUsbUpdateState(java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean getOtaUpdateState(java.lang.String r7) throws java.lang.Throwable {
        /*
            r0 = 0
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            java.lang.String r3 = "/configure/"
            r2.<init>(r3, r7)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            boolean r7 = r2.exists()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            if (r7 != 0) goto L17
            java.lang.String r7 = com.chery.upgrade.UpdateUtils.TAG     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            java.lang.String r2 = "getOtaUpdateState: !file.exists()"
            com.avn.tools.log.PFLog.m29i(r7, r2)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            return r1
        L17:
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r7.<init>(r2)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r2 = 1024(0x400, float:1.435E-42)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7e
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7e
            r3.<init>()     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7e
        L25:
            int r0 = r7.read(r2)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            r4 = -1
            if (r0 == r4) goto L30
            r3.write(r2, r1, r0)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            goto L25
        L30:
            byte[] r0 = r3.toByteArray()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            java.lang.String r2 = com.chery.upgrade.UpdateUtils.TAG     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            r4.<init>()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            java.lang.String r5 = "getOtaUpdateState: "
            r4.append(r5)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            r4.append(r5)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            java.lang.String r5 = " ==2(true)"
            r4.append(r5)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            com.avn.tools.log.PFLog.m29i(r2, r4)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            java.lang.String r2 = "2"
            java.lang.String r4 = new java.lang.String     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            boolean r0 = r2.equals(r4)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            r3.close()     // Catch: java.io.IOException -> L63
            goto L67
        L63:
            r1 = move-exception
            r1.printStackTrace()
        L67:
            r7.close()     // Catch: java.io.IOException -> L6b
            goto L6f
        L6b:
            r7 = move-exception
            r7.printStackTrace()
        L6f:
            return r0
        L70:
            r0 = move-exception
            r2 = r7
            r7 = r0
            r0 = r3
            goto La1
        L75:
            r0 = move-exception
            r2 = r7
            r7 = r0
            r0 = r3
            goto L88
        L7a:
            r1 = move-exception
            r2 = r7
            r7 = r1
            goto La1
        L7e:
            r2 = move-exception
            r6 = r2
            r2 = r7
            r7 = r6
            goto L88
        L83:
            r7 = move-exception
            r2 = r0
            goto La1
        L86:
            r7 = move-exception
            r2 = r0
        L88:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> La0
            if (r0 == 0) goto L95
            r0.close()     // Catch: java.io.IOException -> L91
            goto L95
        L91:
            r7 = move-exception
            r7.printStackTrace()
        L95:
            if (r2 == 0) goto L9f
            r2.close()     // Catch: java.io.IOException -> L9b
            goto L9f
        L9b:
            r7 = move-exception
            r7.printStackTrace()
        L9f:
            return r1
        La0:
            r7 = move-exception
        La1:
            if (r0 == 0) goto Lab
            r0.close()     // Catch: java.io.IOException -> La7
            goto Lab
        La7:
            r0 = move-exception
            r0.printStackTrace()
        Lab:
            if (r2 == 0) goto Lb5
            r2.close()     // Catch: java.io.IOException -> Lb1
            goto Lb5
        Lb1:
            r0 = move-exception
            r0.printStackTrace()
        Lb5:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.upgrade.UpdateUtils.getOtaUpdateState(java.lang.String):boolean");
    }

    public static synchronized void setMcuVersion(String str, String str2) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        PFLog.m29i(TAG, "setMcuVersion: " + str2);
        try {
            try {
                File file = new File(FILE_PATH, str);
                if (file.exists()) {
                    file.delete();
                }
                file.createNewFile();
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(str2.getBytes());
            fileOutputStream.getFD();
            fileOutputStream.getFD().sync();
            PFLog.m29i(TAG, "setMcuVersion end: " + str2);
            try {
                fileOutputStream.close();
            } catch (IOException e2) {
                e = e2;
                e.printStackTrace();
            }
        } catch (Exception e3) {
            fileOutputStream2 = fileOutputStream;
            e = e3;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e4) {
                    e = e4;
                    e.printStackTrace();
                }
            }
        } catch (Throwable th2) {
            fileOutputStream2 = fileOutputStream;
            th = th2;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x009a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getMcuVersion(java.lang.String r7) throws java.lang.Throwable {
        /*
            java.lang.String r0 = ""
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            java.lang.String r3 = "/configure/"
            r2.<init>(r3, r7)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            boolean r7 = r2.exists()     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            if (r7 != 0) goto L18
            java.lang.String r7 = com.chery.upgrade.UpdateUtils.TAG     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            java.lang.String r2 = "getMcuVersion: !file.exists()"
            com.avn.tools.log.PFLog.m29i(r7, r2)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            return r0
        L18:
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            r7.<init>(r2)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            r2 = 1024(0x400, float:1.435E-42)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L75
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L75
            r3.<init>()     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L75
        L26:
            int r1 = r7.read(r2)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            r4 = -1
            if (r1 == r4) goto L32
            r4 = 0
            r3.write(r2, r4, r1)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            goto L26
        L32:
            byte[] r1 = r3.toByteArray()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            java.lang.String r2 = com.chery.upgrade.UpdateUtils.TAG     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            r4.<init>()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            java.lang.String r5 = "getMcuVersion: "
            r4.append(r5)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            r5.<init>(r1)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            r4.append(r5)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            com.avn.tools.log.PFLog.m29i(r2, r4)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            java.lang.String r2 = new java.lang.String     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            r3.close()     // Catch: java.io.IOException -> L5a
            goto L5e
        L5a:
            r0 = move-exception
            r0.printStackTrace()
        L5e:
            r7.close()     // Catch: java.io.IOException -> L62
            goto L66
        L62:
            r7 = move-exception
            r7.printStackTrace()
        L66:
            return r2
        L67:
            r0 = move-exception
            r2 = r7
            r7 = r0
            r1 = r3
            goto L98
        L6c:
            r1 = move-exception
            r2 = r7
            r7 = r1
            r1 = r3
            goto L7f
        L71:
            r0 = move-exception
            r2 = r7
            r7 = r0
            goto L98
        L75:
            r2 = move-exception
            r6 = r2
            r2 = r7
            r7 = r6
            goto L7f
        L7a:
            r7 = move-exception
            r2 = r1
            goto L98
        L7d:
            r7 = move-exception
            r2 = r1
        L7f:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L97
            if (r1 == 0) goto L8c
            r1.close()     // Catch: java.io.IOException -> L88
            goto L8c
        L88:
            r7 = move-exception
            r7.printStackTrace()
        L8c:
            if (r2 == 0) goto L96
            r2.close()     // Catch: java.io.IOException -> L92
            goto L96
        L92:
            r7 = move-exception
            r7.printStackTrace()
        L96:
            return r0
        L97:
            r7 = move-exception
        L98:
            if (r1 == 0) goto La2
            r1.close()     // Catch: java.io.IOException -> L9e
            goto La2
        L9e:
            r0 = move-exception
            r0.printStackTrace()
        La2:
            if (r2 == 0) goto Lac
            r2.close()     // Catch: java.io.IOException -> La8
            goto Lac
        La8:
            r0 = move-exception
            r0.printStackTrace()
        Lac:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.upgrade.UpdateUtils.getMcuVersion(java.lang.String):java.lang.String");
    }

    public static synchronized void setOtaUpdatePath(String str, String str2) {
        FileOutputStream fileOutputStream;
        PFLog.m29i(TAG, "setOtaUpdatePath: " + str2);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                File file = new File(FILE_PATH, str);
                if (file.exists()) {
                    file.delete();
                }
                file.createNewFile();
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(str2.getBytes());
            fileOutputStream.getFD();
            fileOutputStream.getFD().sync();
            PFLog.m29i(TAG, "setOtaUpdatePath end: " + str2);
            try {
                fileOutputStream.close();
            } catch (IOException e2) {
                e = e2;
                e.printStackTrace();
            }
        } catch (Exception e3) {
            fileOutputStream2 = fileOutputStream;
            e = e3;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e4) {
                    e = e4;
                    e.printStackTrace();
                }
            }
        } catch (Throwable th2) {
            fileOutputStream2 = fileOutputStream;
            th = th2;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x009a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getOtaUpdatePath(java.lang.String r7) throws java.lang.Throwable {
        /*
            java.lang.String r0 = ""
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            java.lang.String r3 = "/configure/"
            r2.<init>(r3, r7)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            boolean r7 = r2.exists()     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            if (r7 != 0) goto L18
            java.lang.String r7 = com.chery.upgrade.UpdateUtils.TAG     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            java.lang.String r2 = "getOtaUpdatePath: !file.exists()"
            com.avn.tools.log.PFLog.m29i(r7, r2)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            return r0
        L18:
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            r7.<init>(r2)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            r2 = 1024(0x400, float:1.435E-42)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L75
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L75
            r3.<init>()     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L75
        L26:
            int r1 = r7.read(r2)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            r4 = -1
            if (r1 == r4) goto L32
            r4 = 0
            r3.write(r2, r4, r1)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            goto L26
        L32:
            byte[] r1 = r3.toByteArray()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            java.lang.String r2 = com.chery.upgrade.UpdateUtils.TAG     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            r4.<init>()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            java.lang.String r5 = "getOtaUpdatePath: "
            r4.append(r5)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            r5.<init>(r1)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            r4.append(r5)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            com.avn.tools.log.PFLog.m29i(r2, r4)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            java.lang.String r2 = new java.lang.String     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c
            r3.close()     // Catch: java.io.IOException -> L5a
            goto L5e
        L5a:
            r0 = move-exception
            r0.printStackTrace()
        L5e:
            r7.close()     // Catch: java.io.IOException -> L62
            goto L66
        L62:
            r7 = move-exception
            r7.printStackTrace()
        L66:
            return r2
        L67:
            r0 = move-exception
            r2 = r7
            r7 = r0
            r1 = r3
            goto L98
        L6c:
            r1 = move-exception
            r2 = r7
            r7 = r1
            r1 = r3
            goto L7f
        L71:
            r0 = move-exception
            r2 = r7
            r7 = r0
            goto L98
        L75:
            r2 = move-exception
            r6 = r2
            r2 = r7
            r7 = r6
            goto L7f
        L7a:
            r7 = move-exception
            r2 = r1
            goto L98
        L7d:
            r7 = move-exception
            r2 = r1
        L7f:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L97
            if (r1 == 0) goto L8c
            r1.close()     // Catch: java.io.IOException -> L88
            goto L8c
        L88:
            r7 = move-exception
            r7.printStackTrace()
        L8c:
            if (r2 == 0) goto L96
            r2.close()     // Catch: java.io.IOException -> L92
            goto L96
        L92:
            r7 = move-exception
            r7.printStackTrace()
        L96:
            return r0
        L97:
            r7 = move-exception
        L98:
            if (r1 == 0) goto La2
            r1.close()     // Catch: java.io.IOException -> L9e
            goto La2
        L9e:
            r0 = move-exception
            r0.printStackTrace()
        La2:
            if (r2 == 0) goto Lac
            r2.close()     // Catch: java.io.IOException -> La8
            goto Lac
        La8:
            r0 = move-exception
            r0.printStackTrace()
        Lac:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.upgrade.UpdateUtils.getOtaUpdatePath(java.lang.String):java.lang.String");
    }
}
