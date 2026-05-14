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
import com.chery.media.model.business.UsbMusicBusiness;
import java.util.List;

/* loaded from: classes.dex */
public class UsbMusicBrowserService extends MediaBrowserService {
    private static final String TAG = CarLog.concatTag("MEDIA", UsbMusicBrowserService.class);
    private MediaSession mediaSession;
    private MediaSession.Callback mediaSessionCallback;
    private UsbMusicBusiness.OnPlaylistInfoListener playlistInfoListener;
    private int thisUsbType;

    public UsbMusicBrowserService(int r1) {
        this.thisUsbType = r1;
    }

    @Override // android.service.media.MediaBrowserService, android.app.Service
    public void onCreate() {
        PFLog.m25d(TAG, "onCreate");
        super.onCreate();
        MediaSession mediaSession = new MediaSession(this, "UsbMusic" + this.thisUsbType);
        this.mediaSession = mediaSession;
        setSessionToken(mediaSession.getSessionToken());
        MediaSession.Callback callback = new MediaSession.Callback() { // from class: com.chery.media.model.service.UsbMusicBrowserService.1
        };
        this.mediaSessionCallback = callback;
        this.mediaSession.setCallback(callback);
        this.playlistInfoListener = new UsbMusicBusiness.OnPlaylistInfoListener() { // from class: com.chery.media.model.service.UsbMusicBrowserService.2
            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlaylistInfoListener
            public void onPlaylistChanged(int r1, int r2, List<MediaDef.UsbMusicInfo> list) {
            }

            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlaylistInfoListener
            public void onCurrentPlayingChanged(int r1, MediaDef.UsbMusicInfo usbMusicInfo) {
                if (r1 == UsbMusicBrowserService.this.thisUsbType) {
                    UsbMusicBrowserService.this.setMetaData();
                }
            }
        };
        UsbMusicBusiness.getInstance().addPlaylistInfoListener(this.playlistInfoListener);
        setMetaData();
    }

    @Override // android.app.Service
    public void onDestroy() {
        PFLog.m25d(TAG, "onDestroy");
        super.onDestroy();
        UsbMusicBusiness.getInstance().removePlaylistInfoListener(this.playlistInfoListener);
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
        MediaDef.UsbMusicInfo currentPlaying = UsbMusicBusiness.getInstance().getCurrentPlaying(this.thisUsbType);
        this.mediaSession.setMetadata(new MediaMetadata.Builder().putString(MediaMetadataCompat.METADATA_KEY_TITLE, currentPlaying != null ? currentPlaying.title : null).putString(MediaMetadataCompat.METADATA_KEY_ARTIST, currentPlaying != null ? currentPlaying.artist : null).build());
    }
}
