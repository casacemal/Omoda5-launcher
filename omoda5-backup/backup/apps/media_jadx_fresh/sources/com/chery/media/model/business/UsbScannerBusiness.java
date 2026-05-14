package com.chery.media.model.business;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.media.C0632R;
import com.chery.media.UsbScannerManagerTool;
import com.chery.media.model.business.MediaDef;
import com.chery.media.util.Utils;
import com.chery.media.view.dialog.Dialog_SingleText;
import com.chery.media.view.dialog.Dialog_UsbConnect;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class UsbScannerBusiness {
    private static final String TAG = CarLog.concatTag("MEDIA", UsbScannerBusiness.class);
    private static UsbScannerBusiness instance;
    private Context context;
    private Handler handler;
    private final Map<Integer, MediaDef.UsbDeviceInfo> usbDeviceInfosMap = new HashMap();
    private final Map<Integer, Map<String, MediaDef.UsbMusicInfo>> usbMusicsMap = new HashMap();
    private final Map<Integer, Map<String, MediaDef.UsbVideoInfo>> usbVideosMap = new HashMap();
    private final Map<Integer, Map<String, MediaDef.UsbPictureInfo>> usbPicturesMap = new HashMap();
    private final Map<Integer, List<MediaDef.UsbMusicInfo>> usbSortedMusicsMap = new HashMap();
    private final Map<Integer, List<MediaDef.UsbVideoInfo>> usbSortedVideosMap = new HashMap();
    private final Map<Integer, List<MediaDef.UsbPictureInfo>> usbSortedPicturesMap = new HashMap();
    private final MediaDef.UsbFolderInfo rootFolderInfo = new MediaDef.UsbFolderInfo("/");
    private final Map<Integer, UpdateThread> usbThreads = new HashMap();
    private final Map<Integer, Handler> usbThreadHandlers = new HashMap();
    private final Map<Integer, List<Runnable>> usbThreadDelayRunnables = new HashMap();
    private final Map<Integer, ReentrantLock> usbThreadLocks = new HashMap();
    private List<OnUsbDeviceInfoListener> usbDeviceInfoListeners = new ArrayList();

    public interface OnUsbDeviceInfoListener {
        void onMountStatusChanged(int r1, boolean z);

        void onScanInfoUpdate(int r1, int r2);
    }

    public void addUsbDeviceInfoListener(OnUsbDeviceInfoListener onUsbDeviceInfoListener) {
        if (this.usbDeviceInfoListeners.contains(onUsbDeviceInfoListener)) {
            return;
        }
        this.usbDeviceInfoListeners.add(onUsbDeviceInfoListener);
    }

    public void removeUsbDeviceInfoListener(OnUsbDeviceInfoListener onUsbDeviceInfoListener) {
        this.usbDeviceInfoListeners.remove(onUsbDeviceInfoListener);
    }

    public static UsbScannerBusiness getInstance() {
        if (instance == null) {
            instance = new UsbScannerBusiness();
        }
        return instance;
    }

    public void init(Context context) {
        PFLog.m25d(TAG, "init");
        this.context = context;
        this.handler = new Handler();
        for (int r4 = 0; r4 <= 0; r4++) {
            this.usbDeviceInfosMap.put(Integer.valueOf(r4), new MediaDef.UsbDeviceInfo(r4));
            this.usbMusicsMap.put(Integer.valueOf(r4), new HashMap());
            this.usbSortedMusicsMap.put(Integer.valueOf(r4), new ArrayList());
            this.usbVideosMap.put(Integer.valueOf(r4), new HashMap());
            this.usbSortedVideosMap.put(Integer.valueOf(r4), new ArrayList());
            this.usbPicturesMap.put(Integer.valueOf(r4), new HashMap());
            this.usbSortedPicturesMap.put(Integer.valueOf(r4), new ArrayList());
            this.usbThreads.put(Integer.valueOf(r4), null);
            this.usbThreadHandlers.put(Integer.valueOf(r4), null);
            this.usbThreadDelayRunnables.put(Integer.valueOf(r4), new ArrayList());
            this.usbThreadLocks.put(Integer.valueOf(r4), new ReentrantLock());
        }
        UsbScannerManagerTool.getInstance().init(this.context);
        UsbScannerManagerTool.getInstance().addListener(new UsbScannerManagerTool.Listener() { // from class: com.chery.media.model.business.UsbScannerBusiness.1
            @Override // com.chery.media.UsbScannerManagerTool.Listener
            public void onReady() {
                PFLog.m25d(UsbScannerBusiness.TAG, "onReady");
                if (UsbScannerManagerTool.getInstance().isMounted()) {
                    final String mountPath = UsbScannerManagerTool.getInstance().getMountPath();
                    UsbScannerBusiness.this.setUsbMountStatus(0, true, mountPath);
                    final int scanStatus = UsbScannerManagerTool.getInstance().getScanStatus();
                    if (scanStatus == 34 || scanStatus == 35) {
                        final HashMap map = new HashMap((Map) UsbScannerBusiness.this.usbMusicsMap.get(0));
                        final HashMap map2 = new HashMap((Map) UsbScannerBusiness.this.usbVideosMap.get(0));
                        final HashMap map3 = new HashMap((Map) UsbScannerBusiness.this.usbPicturesMap.get(0));
                        final int r3 = 0;
                        UsbScannerBusiness.this.addUpdateThreadRunnable(0, new Runnable() { // from class: com.chery.media.model.business.UsbScannerBusiness.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                UsbScannerBusiness.this.updateMediaFiles(r3, mountPath, scanStatus, map, map2, map3);
                            }
                        });
                    }
                }
            }

            @Override // com.chery.media.UsbScannerManagerTool.Listener
            public void onMounted(String str, boolean z) {
                PFLog.m25d(UsbScannerBusiness.TAG, "onMounted:" + str + " alreadyAttached:" + z);
                if (!z) {
                    new Dialog_UsbConnect(UsbScannerBusiness.this.context, 0).show();
                }
                UsbScannerBusiness.this.setUsbMountStatus(0, true, str);
            }

            @Override // com.chery.media.UsbScannerManagerTool.Listener
            public void onUnMounted() {
                PFLog.m25d(UsbScannerBusiness.TAG, "onUnMounted");
                new Dialog_SingleText(UsbScannerBusiness.this.context).showText(UsbScannerBusiness.this.context.getString(C0632R.string.usb_disconnected), PathInterpolatorCompat.MAX_NUM_POINTS);
                ((Map) UsbScannerBusiness.this.usbMusicsMap.get(0)).clear();
                ((List) UsbScannerBusiness.this.usbSortedMusicsMap.get(0)).clear();
                ((Map) UsbScannerBusiness.this.usbVideosMap.get(0)).clear();
                ((List) UsbScannerBusiness.this.usbSortedVideosMap.get(0)).clear();
                ((Map) UsbScannerBusiness.this.usbPicturesMap.get(0)).clear();
                ((List) UsbScannerBusiness.this.usbSortedPicturesMap.get(0)).clear();
                UsbScannerBusiness usbScannerBusiness = UsbScannerBusiness.this;
                usbScannerBusiness.removeFolder(((MediaDef.UsbDeviceInfo) usbScannerBusiness.usbDeviceInfosMap.get(0)).mountPath);
                UsbScannerBusiness.this.setUsbMountStatus(0, false, null);
                if (UsbScannerBusiness.this.usbThreads.get(0) != null) {
                    ((ReentrantLock) UsbScannerBusiness.this.usbThreadLocks.get(0)).lock();
                    Handler handler = (Handler) UsbScannerBusiness.this.usbThreadHandlers.get(0);
                    if (handler != null) {
                        PFLog.m25d(UsbScannerBusiness.TAG, "to quit update thread for " + MediaDef.getUsbName(0));
                        handler.getLooper().quit();
                        ((List) UsbScannerBusiness.this.usbThreadDelayRunnables.get(0)).clear();
                        UsbScannerBusiness.this.usbThreadHandlers.put(0, null);
                        UsbScannerBusiness.this.usbThreads.put(0, null);
                    } else {
                        PFLog.m25d(UsbScannerBusiness.TAG, String.format("handler of update thread for %s is null yet, not to quit", MediaDef.getUsbName(0)));
                    }
                    ((ReentrantLock) UsbScannerBusiness.this.usbThreadLocks.get(0)).unlock();
                    return;
                }
                PFLog.m25d(UsbScannerBusiness.TAG, "no update thread for " + MediaDef.getUsbName(0));
            }

            @Override // com.chery.media.UsbScannerManagerTool.Listener
            public void onScanStatusChanged(final int r12) {
                PFLog.m25d(UsbScannerBusiness.TAG, "onScanStatusChanged " + r12);
                final String mountPath = UsbScannerManagerTool.getInstance().getMountPath();
                if (r12 != 34 && r12 != 35) {
                    UsbScannerBusiness.this.updateScanInfo(0, mountPath, r12);
                    return;
                }
                final HashMap map = new HashMap((Map) UsbScannerBusiness.this.usbMusicsMap.get(0));
                final HashMap map2 = new HashMap((Map) UsbScannerBusiness.this.usbVideosMap.get(0));
                final HashMap map3 = new HashMap((Map) UsbScannerBusiness.this.usbPicturesMap.get(0));
                final int r3 = 0;
                UsbScannerBusiness.this.addUpdateThreadRunnable(0, new Runnable() { // from class: com.chery.media.model.business.UsbScannerBusiness.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        UsbScannerBusiness.this.updateMediaFiles(r3, mountPath, r12, map, map2, map3);
                    }
                });
            }
        });
    }

    private class UpdateThread extends Thread {
        private final int usbType;

        public UpdateThread(int r2) {
            this.usbType = r2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            PFLog.m25d(UsbScannerBusiness.TAG, String.format("update thread for %s enter", MediaDef.getUsbName(this.usbType)));
            super.run();
            Looper.prepare();
            ((ReentrantLock) UsbScannerBusiness.this.usbThreadLocks.get(Integer.valueOf(this.usbType))).lock();
            Handler handler = new Handler();
            UsbScannerBusiness.this.usbThreadHandlers.put(Integer.valueOf(this.usbType), handler);
            List list = (List) UsbScannerBusiness.this.usbThreadDelayRunnables.get(Integer.valueOf(this.usbType));
            for (int r3 = 0; r3 < list.size(); r3++) {
                handler.post((Runnable) list.get(r3));
            }
            list.clear();
            ((ReentrantLock) UsbScannerBusiness.this.usbThreadLocks.get(Integer.valueOf(this.usbType))).unlock();
            Looper.loop();
            PFLog.m25d(UsbScannerBusiness.TAG, String.format("update thread for %s quit", MediaDef.getUsbName(this.usbType)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addUpdateThreadRunnable(int r4, Runnable runnable) {
        if (runnable != null && this.usbThreads.containsKey(Integer.valueOf(r4))) {
            if (this.usbThreads.get(Integer.valueOf(r4)) == null) {
                PFLog.m25d(TAG, "add update thread for " + MediaDef.getUsbName(r4));
                UpdateThread updateThread = new UpdateThread(r4);
                this.usbThreads.put(Integer.valueOf(r4), updateThread);
                updateThread.start();
            }
            this.usbThreadLocks.get(Integer.valueOf(r4)).lock();
            Handler handler = this.usbThreadHandlers.get(Integer.valueOf(r4));
            if (handler != null) {
                handler.post(runnable);
            } else {
                this.usbThreadDelayRunnables.get(Integer.valueOf(r4)).add(runnable);
            }
            this.usbThreadLocks.get(Integer.valueOf(r4)).unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMediaFiles(final int r26, final String str, final int r28, final Map<String, MediaDef.UsbMusicInfo> map, final Map<String, MediaDef.UsbVideoInfo> map2, final Map<String, MediaDef.UsbPictureInfo> map3) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        PFLog.m25d(TAG, "updateMediaFiles:" + r26 + " mountPath:" + str + " scanStatus:" + r28);
        ContentResolver contentResolver = this.context.getContentResolver();
        Uri uri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("%");
        Cursor cursorQuery = contentResolver.query(uri, null, "_data like ?", new String[]{sb.toString()}, null);
        while (true) {
            str2 = "_size";
            str3 = "_data";
            if (!cursorQuery.moveToNext()) {
                break;
            }
            String string = cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
            if (!map.containsKey(string)) {
                String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("title"));
                String string3 = cursorQuery.getString(cursorQuery.getColumnIndex("artist"));
                String string4 = cursorQuery.getString(cursorQuery.getColumnIndex("album"));
                int r12 = cursorQuery.getInt(cursorQuery.getColumnIndex("duration"));
                long j = cursorQuery.getLong(cursorQuery.getColumnIndex("_size"));
                MediaDef.UsbMusicInfo usbMusicInfo = new MediaDef.UsbMusicInfo(string);
                usbMusicInfo.title = string2;
                usbMusicInfo.artist = string3;
                usbMusicInfo.album = string4;
                usbMusicInfo.duration = r12;
                usbMusicInfo.size = j;
                PFLog.m31v(TAG, String.format("refresh music %s", usbMusicInfo.toString()));
                map.put(string, usbMusicInfo);
            }
        }
        cursorQuery.close();
        Cursor cursorQuery2 = this.context.getContentResolver().query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, null, "_data like ?", new String[]{str + "%"}, null);
        while (true) {
            str4 = "_display_name";
            if (!cursorQuery2.moveToNext()) {
                break;
            }
            String string5 = cursorQuery2.getString(cursorQuery2.getColumnIndex(str3));
            if (map2.containsKey(string5)) {
                str7 = str2;
                str8 = str3;
            } else {
                String string6 = cursorQuery2.getString(cursorQuery2.getColumnIndex("_display_name"));
                str7 = str2;
                str8 = str3;
                long j2 = cursorQuery2.getLong(cursorQuery2.getColumnIndex(str2));
                String string7 = cursorQuery2.getString(cursorQuery2.getColumnIndex("mime_type"));
                int r15 = cursorQuery2.getInt(cursorQuery2.getColumnIndex("duration"));
                int r11 = cursorQuery2.getInt(cursorQuery2.getColumnIndex("width"));
                int r9 = cursorQuery2.getInt(cursorQuery2.getColumnIndex("height"));
                MediaDef.UsbVideoInfo usbVideoInfo = new MediaDef.UsbVideoInfo(string5);
                usbVideoInfo.name = string6;
                usbVideoInfo.size = j2;
                usbVideoInfo.mimeType = string7;
                usbVideoInfo.duration = r15;
                usbVideoInfo.width = r11;
                usbVideoInfo.height = r9;
                PFLog.m31v(TAG, String.format("refresh video %s", usbVideoInfo.toString()));
                map2.put(string5, usbVideoInfo);
            }
            str3 = str8;
            str2 = str7;
        }
        String str9 = str2;
        String str10 = str3;
        cursorQuery2.close();
        Cursor cursorQuery3 = this.context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, null, "_data like ?", new String[]{str + "%"}, null);
        while (cursorQuery3.moveToNext()) {
            String str11 = str10;
            String string8 = cursorQuery3.getString(cursorQuery3.getColumnIndex(str11));
            if (map3.containsKey(string8)) {
                str10 = str11;
                str5 = str9;
                str6 = str4;
            } else {
                String string9 = cursorQuery3.getString(cursorQuery3.getColumnIndex(str4));
                str5 = str9;
                long j3 = cursorQuery3.getLong(cursorQuery3.getColumnIndex(str5));
                String string10 = cursorQuery3.getString(cursorQuery3.getColumnIndex("mime_type"));
                str10 = str11;
                int r2 = cursorQuery3.getInt(cursorQuery3.getColumnIndex("width"));
                int r3 = cursorQuery3.getInt(cursorQuery3.getColumnIndex("height"));
                str6 = str4;
                if (string10.contains("bmp") || string10.contains("png") || string10.contains("jpeg") || string10.contains("gif")) {
                    MediaDef.UsbPictureInfo usbPictureInfo = new MediaDef.UsbPictureInfo(string8);
                    usbPictureInfo.name = string9;
                    usbPictureInfo.size = j3;
                    usbPictureInfo.mimeType = string10;
                    usbPictureInfo.width = r2;
                    usbPictureInfo.height = r3;
                    PFLog.m31v(TAG, String.format("refresh picture %s", usbPictureInfo.toString()));
                    map3.put(string8, usbPictureInfo);
                }
            }
            str4 = str6;
            str9 = str5;
        }
        cursorQuery3.close();
        PFLog.m25d(TAG, String.format("refreshMediaFiles, musics:%s videos:%s pictures:%s", Integer.valueOf(map.size()), Integer.valueOf(map2.size()), Integer.valueOf(map3.size())));
        final ArrayList arrayList = new ArrayList(map.values());
        final ArrayList arrayList2 = new ArrayList(map2.values());
        final ArrayList arrayList3 = new ArrayList(map3.values());
        Utils.sortByCustom(arrayList, new Utils.SortField<MediaDef.UsbMusicInfo>() { // from class: com.chery.media.model.business.UsbScannerBusiness.2
            @Override // com.chery.media.util.Utils.SortField
            public String getFiled(MediaDef.UsbMusicInfo usbMusicInfo2) {
                return usbMusicInfo2.title;
            }
        });
        Utils.sortByCustom(arrayList2, new Utils.SortField<MediaDef.UsbVideoInfo>() { // from class: com.chery.media.model.business.UsbScannerBusiness.3
            @Override // com.chery.media.util.Utils.SortField
            public String getFiled(MediaDef.UsbVideoInfo usbVideoInfo2) {
                return usbVideoInfo2.fileName;
            }
        });
        Utils.sortByCustom(arrayList3, new Utils.SortField<MediaDef.UsbPictureInfo>() { // from class: com.chery.media.model.business.UsbScannerBusiness.4
            @Override // com.chery.media.util.Utils.SortField
            public String getFiled(MediaDef.UsbPictureInfo usbPictureInfo2) {
                return usbPictureInfo2.fileName;
            }
        });
        this.handler.post(new Runnable() { // from class: com.chery.media.model.business.UsbScannerBusiness.5
            @Override // java.lang.Runnable
            public void run() {
                MediaDef.UsbDeviceInfo usbDeviceInfo = UsbScannerBusiness.this.getUsbDeviceInfo(r26);
                if (!usbDeviceInfo.mounted) {
                    PFLog.m25d(UsbScannerBusiness.TAG, "device not mounted any more!");
                    return;
                }
                if (!TextUtils.equals(usbDeviceInfo.mountPath, str)) {
                    PFLog.m25d(UsbScannerBusiness.TAG, "mount path not same any more!");
                    return;
                }
                UsbScannerBusiness.this.usbMusicsMap.put(Integer.valueOf(r26), map);
                UsbScannerBusiness.this.usbSortedMusicsMap.put(Integer.valueOf(r26), arrayList);
                UsbScannerBusiness.this.usbVideosMap.put(Integer.valueOf(r26), map2);
                UsbScannerBusiness.this.usbSortedVideosMap.put(Integer.valueOf(r26), arrayList2);
                UsbScannerBusiness.this.usbPicturesMap.put(Integer.valueOf(r26), map3);
                UsbScannerBusiness.this.usbSortedPicturesMap.put(Integer.valueOf(r26), arrayList3);
                UsbScannerBusiness.this.addFolderFiles(arrayList, arrayList2, arrayList3);
                UsbScannerBusiness.this.updateScanInfo(r26, str, r28);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUsbMountStatus(int r4, boolean z, String str) {
        if (!z) {
            updateScanInfo(r4, str, 32);
            ThumbnailCache.getThumbnailCache(r4).clear();
        }
        if (this.usbDeviceInfosMap.containsKey(Integer.valueOf(r4))) {
            MediaDef.UsbDeviceInfo usbDeviceInfo = this.usbDeviceInfosMap.get(Integer.valueOf(r4));
            if (z == usbDeviceInfo.mounted) {
                return;
            }
            usbDeviceInfo.mounted = z;
            usbDeviceInfo.mountPath = str;
            PFLog.m25d(TAG, String.format("setUsbMountStatus : %s", usbDeviceInfo.toString()));
            Iterator<OnUsbDeviceInfoListener> it = this.usbDeviceInfoListeners.iterator();
            while (it.hasNext()) {
                it.next().onMountStatusChanged(r4, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateScanInfo(int r4, String str, int r6) {
        if (r6 == 33 || r6 == 34 || r6 == 35) {
            setUsbMountStatus(r4, true, str);
        }
        if (this.usbDeviceInfosMap.containsKey(Integer.valueOf(r4))) {
            MediaDef.UsbDeviceInfo usbDeviceInfo = this.usbDeviceInfosMap.get(Integer.valueOf(r4));
            usbDeviceInfo.scanStatus = r6;
            usbDeviceInfo.musicsCount = this.usbSortedMusicsMap.get(Integer.valueOf(r4)).size();
            usbDeviceInfo.videosCount = this.usbSortedVideosMap.get(Integer.valueOf(r4)).size();
            usbDeviceInfo.picturesCount = this.usbSortedPicturesMap.get(Integer.valueOf(r4)).size();
            PFLog.m25d(TAG, String.format("updateScanInfo : %s", usbDeviceInfo.toString()));
            Iterator<OnUsbDeviceInfoListener> it = this.usbDeviceInfoListeners.iterator();
            while (it.hasNext()) {
                it.next().onScanInfoUpdate(r4, r6);
            }
        }
    }

    public MediaDef.UsbDeviceInfo getUsbDeviceInfo(int r3) {
        if (this.usbDeviceInfosMap.containsKey(Integer.valueOf(r3))) {
            return this.usbDeviceInfosMap.get(Integer.valueOf(r3));
        }
        return new MediaDef.UsbDeviceInfo(r3);
    }

    public List<MediaDef.UsbMusicInfo> getMusics(int r3) {
        if (this.usbSortedMusicsMap.containsKey(Integer.valueOf(r3))) {
            return new ArrayList(this.usbSortedMusicsMap.get(Integer.valueOf(r3)));
        }
        return new ArrayList();
    }

    public List<MediaDef.UsbVideoInfo> getVideos(int r3) {
        if (this.usbSortedVideosMap.containsKey(Integer.valueOf(r3))) {
            return new ArrayList(this.usbSortedVideosMap.get(Integer.valueOf(r3)));
        }
        return new ArrayList();
    }

    public List<MediaDef.UsbPictureInfo> getPictures(int r3) {
        if (this.usbSortedPicturesMap.containsKey(Integer.valueOf(r3))) {
            return new ArrayList(this.usbSortedPicturesMap.get(Integer.valueOf(r3)));
        }
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addFolderFiles(List<MediaDef.UsbMusicInfo> list, List<MediaDef.UsbVideoInfo> list2, List<MediaDef.UsbPictureInfo> list3) {
        PFLog.m25d(TAG, String.format("addFolderFiles start, musicInfos size:%s, videoInfos size:%s, pictureInfos size:%s", Integer.valueOf(list.size()), Integer.valueOf(list2.size()), Integer.valueOf(list3.size())));
        HashMap map = new HashMap();
        for (MediaDef.UsbMusicInfo usbMusicInfo : list) {
            List arrayList = (List) map.get(usbMusicInfo.dir);
            if (arrayList == null) {
                arrayList = new ArrayList();
                map.put(usbMusicInfo.dir, arrayList);
            }
            arrayList.add(usbMusicInfo);
        }
        for (Map.Entry entry : map.entrySet()) {
            MediaDef.UsbFolderInfo usbFolderInfoAddFolder = addFolder((String) entry.getKey());
            if (usbFolderInfoAddFolder != null) {
                usbFolderInfoAddFolder.musicInfos = (List) entry.getValue();
            }
        }
        HashMap map2 = new HashMap();
        for (MediaDef.UsbVideoInfo usbVideoInfo : list2) {
            List arrayList2 = (List) map2.get(usbVideoInfo.dir);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                map2.put(usbVideoInfo.dir, arrayList2);
            }
            arrayList2.add(usbVideoInfo);
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            MediaDef.UsbFolderInfo usbFolderInfoAddFolder2 = addFolder((String) entry2.getKey());
            if (usbFolderInfoAddFolder2 != null) {
                usbFolderInfoAddFolder2.videoInfos = (List) entry2.getValue();
            }
        }
        HashMap map3 = new HashMap();
        for (MediaDef.UsbPictureInfo usbPictureInfo : list3) {
            List arrayList3 = (List) map3.get(usbPictureInfo.dir);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList();
                map3.put(usbPictureInfo.dir, arrayList3);
            }
            arrayList3.add(usbPictureInfo);
        }
        for (Map.Entry entry3 : map3.entrySet()) {
            MediaDef.UsbFolderInfo usbFolderInfoAddFolder3 = addFolder((String) entry3.getKey());
            if (usbFolderInfoAddFolder3 != null) {
                usbFolderInfoAddFolder3.pictureInfos = (List) entry3.getValue();
            }
        }
        PFLog.m25d(TAG, "addFolderFiles finished");
    }

    private MediaDef.UsbFolderInfo addFolder(String str) {
        MediaDef.UsbFolderInfo usbFolderInfo;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        MediaDef.UsbFolderInfo usbFolderInfo2 = this.rootFolderInfo;
        for (String str2 : str.split("/")) {
            if (!TextUtils.isEmpty(str2)) {
                Iterator<MediaDef.UsbFolderInfo> it = usbFolderInfo2.subFolderInfos.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        usbFolderInfo = null;
                        break;
                    }
                    usbFolderInfo = it.next();
                    if (usbFolderInfo.fileName.equals(str2)) {
                        break;
                    }
                }
                if (usbFolderInfo == null) {
                    usbFolderInfo = new MediaDef.UsbFolderInfo(usbFolderInfo2.path + "/" + str2);
                    usbFolderInfo2.subFolderInfos.add(usbFolderInfo);
                    Utils.sortByCustom(usbFolderInfo2.subFolderInfos, new Utils.SortField<MediaDef.UsbFolderInfo>() { // from class: com.chery.media.model.business.UsbScannerBusiness.6
                        @Override // com.chery.media.util.Utils.SortField
                        public String getFiled(MediaDef.UsbFolderInfo usbFolderInfo3) {
                            return usbFolderInfo3.fileName;
                        }
                    });
                }
                usbFolderInfo2 = usbFolderInfo;
            }
        }
        return usbFolderInfo2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeFolder(String str) {
        MediaDef.UsbFolderInfo next;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        MediaDef.UsbFolderInfo usbFolderInfo = this.rootFolderInfo;
        MediaDef.UsbFolderInfo usbFolderInfo2 = null;
        for (String str2 : str.split("/")) {
            if (!TextUtils.isEmpty(str2)) {
                Iterator<MediaDef.UsbFolderInfo> it = usbFolderInfo.subFolderInfos.iterator();
                while (true) {
                    if (it.hasNext()) {
                        next = it.next();
                        if (next.fileName.equals(str2)) {
                            break;
                        }
                    } else {
                        next = null;
                        break;
                    }
                }
                if (next == null) {
                    return;
                }
                usbFolderInfo2 = usbFolderInfo;
                usbFolderInfo = next;
            }
        }
        if (usbFolderInfo2 != null) {
            usbFolderInfo2.subFolderInfos.remove(usbFolderInfo);
        }
    }

    public MediaDef.UsbFolderInfo getFolderInfo(int r6, String str) {
        MediaDef.UsbFolderInfo next;
        if (str == null || str.isEmpty() || !this.usbDeviceInfosMap.get(Integer.valueOf(r6)).mounted) {
            return null;
        }
        MediaDef.UsbFolderInfo usbFolderInfo = this.rootFolderInfo;
        for (String str2 : str.split("/")) {
            if (!TextUtils.isEmpty(str2)) {
                Iterator<MediaDef.UsbFolderInfo> it = usbFolderInfo.subFolderInfos.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (next.fileName.equals(str2)) {
                        break;
                    }
                }
                if (next == null) {
                    return null;
                }
                usbFolderInfo = next;
            }
        }
        return usbFolderInfo;
    }
}
