package com.chery.media.model.business;

import com.chery.common.PageConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class MediaDef {
    public static final int USB_TYPE_1 = 0;
    public static final int USB_TYPE_2 = 1;
    public static final int USB_TYPE_END = 0;
    public static final int USB_TYPE_NUM = 1;
    public static final int USB_TYPE_None = -1;
    public static final int USB_TYPE_START = 0;

    public static int getUsbMusicAudioSource(int r1) {
        if (r1 != 0) {
            return r1 != 1 ? 0 : 7;
        }
        return 6;
    }

    public static int getUsbMusicTypeOfAudioSource(int r1) {
        if (r1 != 6) {
            return r1 != 7 ? -1 : 1;
        }
        return 0;
    }

    public static String getUsbName(int r1) {
        return r1 != 0 ? r1 != 1 ? "none" : "usb2" : "usb1";
    }

    public static String getUsbTypePage(int r1) {
        return r1 != 0 ? r1 != 1 ? PageConstants.Media.UsbType.USB_NONE : PageConstants.Media.UsbType.USB2 : "USB1";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getPageUsbType(java.lang.String r4) {
        /*
            int r0 = r4.hashCode()
            r1 = 0
            r2 = -1
            r3 = 1
            switch(r0) {
                case 2614093: goto L15;
                case 2614094: goto Lb;
                default: goto La;
            }
        La:
            goto L1f
        Lb:
            java.lang.String r0 = "USB2"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L1f
            r4 = r3
            goto L20
        L15:
            java.lang.String r0 = "USB1"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L1f
            r4 = r1
            goto L20
        L1f:
            r4 = r2
        L20:
            if (r4 == 0) goto L26
            if (r4 == r3) goto L25
            return r2
        L25:
            return r3
        L26:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.MediaDef.getPageUsbType(java.lang.String):int");
    }

    public static class UsbDeviceInfo {
        public String usbName;
        public int usbType;
        public boolean mounted = false;
        public int scanStatus = 32;
        public String mountPath = "";
        public int musicsCount = 0;
        public int videosCount = 0;
        public int picturesCount = 0;

        public UsbDeviceInfo(int r3) {
            this.usbType = r3;
            this.usbName = MediaDef.getUsbName(r3);
        }

        public String toString() {
            return "UsbDeviceInfo{usbType=" + this.usbType + ", usbName='" + this.usbName + "', mounted=" + this.mounted + ", scanStatus=" + this.scanStatus + ", mountPath=" + this.mountPath + ", musicsCount=" + this.musicsCount + ", videosCount=" + this.videosCount + ", picturesCount=" + this.picturesCount + '}';
        }
    }

    public static class FileBaseInfo {
        public String dir;
        public String fileName;
        public String path;

        public FileBaseInfo(String str) {
            this.dir = "";
            this.fileName = "";
            this.path = "";
            File file = new File(str);
            this.dir = file.getParent();
            this.fileName = file.getName();
            this.path = file.getAbsolutePath();
        }

        public String toString() {
            return "FileBaseInfo{dir='" + this.dir + "', fileName='" + this.fileName + "', path='" + this.path + "'}";
        }
    }

    public static class UsbMusicInfo extends FileBaseInfo {
        public String album;
        public String artist;
        public int duration;
        public long size;
        public String title;

        public UsbMusicInfo(String str) {
            super(str);
            this.title = "";
            this.artist = "";
            this.album = "";
            this.duration = 0;
            this.size = 0L;
        }

        @Override // com.chery.media.model.business.MediaDef.FileBaseInfo
        public String toString() {
            return "UsbMusicInfo{path='" + this.path + "', title='" + this.title + "', artist='" + this.artist + "', album='" + this.album + "', duration=" + this.duration + ", size=" + this.size + '}';
        }
    }

    public static class UsbVideoInfo extends FileBaseInfo {
        public int duration;
        public int height;
        public String mimeType;
        public String name;
        public long size;
        public int width;

        public UsbVideoInfo(String str) {
            super(str);
            this.name = "";
            this.size = 0L;
            this.mimeType = "";
            this.width = 0;
            this.height = 0;
            this.duration = 0;
        }

        @Override // com.chery.media.model.business.MediaDef.FileBaseInfo
        public String toString() {
            return "UsbVideoInfo{path='" + this.path + "', name='" + this.name + "', size=" + this.size + ", mimeType='" + this.mimeType + "', width=" + this.width + ", height=" + this.height + ", duration=" + this.duration + '}';
        }
    }

    public static class UsbPictureInfo extends FileBaseInfo {
        public int height;
        public String mimeType;
        public String name;
        public long size;
        public int width;

        public UsbPictureInfo(String str) {
            super(str);
            this.name = "";
            this.size = 0L;
            this.mimeType = "";
            this.width = 0;
            this.height = 0;
        }

        @Override // com.chery.media.model.business.MediaDef.FileBaseInfo
        public String toString() {
            return "UsbPictureInfo{path='" + this.path + "', name='" + this.name + "', size=" + this.size + ", mimeType='" + this.mimeType + "', width=" + this.width + ", height=" + this.height + '}';
        }
    }

    public static class UsbFolderInfo extends FileBaseInfo {
        public List<UsbMusicInfo> musicInfos;
        public List<UsbPictureInfo> pictureInfos;
        public List<UsbFolderInfo> subFolderInfos;
        public List<UsbVideoInfo> videoInfos;

        public UsbFolderInfo(String str) {
            super(str);
            this.subFolderInfos = new ArrayList();
            this.musicInfos = new ArrayList();
            this.videoInfos = new ArrayList();
            this.pictureInfos = new ArrayList();
        }
    }

    public static int getFolderAllMusicsCount(UsbFolderInfo usbFolderInfo) {
        int size = usbFolderInfo.musicInfos.size();
        Iterator<UsbFolderInfo> it = usbFolderInfo.subFolderInfos.iterator();
        while (it.hasNext()) {
            size += getFolderAllMusicsCount(it.next());
        }
        return size;
    }

    public static int getFolderAllVideosCount(UsbFolderInfo usbFolderInfo) {
        int size = usbFolderInfo.videoInfos.size();
        Iterator<UsbFolderInfo> it = usbFolderInfo.subFolderInfos.iterator();
        while (it.hasNext()) {
            size += getFolderAllVideosCount(it.next());
        }
        return size;
    }

    public static int getFolderAllPicturesCount(UsbFolderInfo usbFolderInfo) {
        int size = usbFolderInfo.pictureInfos.size();
        Iterator<UsbFolderInfo> it = usbFolderInfo.subFolderInfos.iterator();
        while (it.hasNext()) {
            size += getFolderAllPicturesCount(it.next());
        }
        return size;
    }

    public static class LocalMusicInfo extends FileBaseInfo {
        public UsbMusicInfo originalMusicInfo;

        public LocalMusicInfo(String str) {
            super(str);
        }

        @Override // com.chery.media.model.business.MediaDef.FileBaseInfo
        public String toString() {
            return "LocalMusicInfo{dir='" + this.dir + "', fileName='" + this.fileName + "', path='" + this.path + "', originalMusicInfo=" + this.originalMusicInfo + '}';
        }
    }
}
