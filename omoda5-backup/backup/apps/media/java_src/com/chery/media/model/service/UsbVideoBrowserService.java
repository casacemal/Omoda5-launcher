package com.chery.media.model.service;

import android.media.MediaMetadata;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaMetadataCompat;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.VideoBusiness;
import java.util.List;

/* loaded from: classes.dex */
public class UsbVideoBrowserService extends MediaBrowserService {
    private static final String TAG = CarLog.concatTag("MEDIA", UsbVideoBrowserService.class);
    private VideoBusiness.OnCurrentUsbListener currentUsbListener;
    private MediaSession mediaSession;
    private MediaSession.Callback mediaSessionCallback;
    private VideoBusiness.OnPlaylistInfoListener playlistInfoListener;

    @Override // android.service.media.MediaBrowserService, android.app.Service
    public void onCreate() {
        PFLog.m25d(TAG, "onCreate");
        super.onCreate();
        MediaSession mediaSession = new MediaSession(this, "Video");
        this.mediaSession = mediaSession;
        setSessionToken(mediaSession.getSessionToken());
        MediaSession.Callback callback = new MediaSession.Callback() { // from class: com.chery.media.model.service.UsbVideoBrowserService.1
        };
        this.mediaSessionCallback = callback;
        this.mediaSession.setCallback(callback);
        this.currentUsbListener = new VideoBusiness.OnCurrentUsbListener() { // from class: com.chery.media.model.service.UsbVideoBrowserService.2
            @Override // com.chery.media.model.business.VideoBusiness.OnCurrentUsbListener
            public void onCurrentUsbChanged(int r1) {
                UsbVideoBrowserService.this.setMetaData();
            }
        };
        VideoBusiness.getInstance().addCurrentUsbListener(this.currentUsbListener);
        this.playlistInfoListener = new VideoBusiness.OnPlaylistInfoListener() { // from class: com.chery.media.model.service.UsbVideoBrowserService.3
            @Override // com.chery.media.model.business.VideoBusiness.OnPlaylistInfoListener
            public void onPlaylistChanged(int r1, int r2, List<MediaDef.UsbVideoInfo> list) {
            }

            @Override // com.chery.media.model.business.VideoBusiness.OnPlaylistInfoListener
            public void onCurrentPlayingChanged(int r1, MediaDef.UsbVideoInfo usbVideoInfo) {
                UsbVideoBrowserService.this.setMetaData();
            }
        };
        VideoBusiness.getInstance().addPlaylistInfoListener(this.playlistInfoListener);
        setMetaData();
    }

    @Override // android.app.Service
    public void onDestroy() {
        PFLog.m25d(TAG, "onDestroy");
        super.onDestroy();
        VideoBusiness.getInstance().removeCurrentUsbListener(this.currentUsbListener);
        VideoBusiness.getInstance().removePlaylistInfoListener(this.playlistInfoListener);
    }

    @Override // android.service.media.MediaBrowserService
    public MediaBrowserService.BrowserRoot onGetRoot(String str, int r2, Bundle bundle) {
        PFLog.m25d(TAG, "onGetRoot");
        return new MediaBrowserService.BrowserRoot("_ROOT_", null);
    }

    @Override // android.service.media.MediaBrowserService
    public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
        PFLog.m25d(TAG, "onLoadChildren " + str);
        result.detach();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMetaData() {
        MediaDef.UsbVideoInfo currentPlaying = VideoBusiness.getInstance().getCurrentPlaying(VideoBusiness.getInstance().getCurrentUsb());
        this.mediaSession.setMetadata(new MediaMetadata.Builder().putString(MediaMetadataCompat.METADATA_KEY_TITLE, currentPlaying != null ? currentPlaying.name : null).build());
    }
}
