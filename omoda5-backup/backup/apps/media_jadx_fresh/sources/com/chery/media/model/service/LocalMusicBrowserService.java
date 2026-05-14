package com.chery.media.model.service;

import android.media.MediaMetadata;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaMetadataCompat;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.media.model.business.LocalMusicBusiness;
import com.chery.media.model.business.MediaDef;
import java.util.List;

/* loaded from: classes.dex */
public class LocalMusicBrowserService extends MediaBrowserService {
    private static final String TAG = CarLog.concatTag("MEDIA", LocalMusicBrowserService.class);
    private LocalMusicBusiness.OnCurrentPlayingListener currentPlayingListener;
    private MediaSession mediaSession;
    private MediaSession.Callback mediaSessionCallback;

    @Override // android.service.media.MediaBrowserService, android.app.Service
    public void onCreate() {
        PFLog.m25d(TAG, "onCreate");
        super.onCreate();
        MediaSession mediaSession = new MediaSession(this, "LocalMusic");
        this.mediaSession = mediaSession;
        setSessionToken(mediaSession.getSessionToken());
        MediaSession.Callback callback = new MediaSession.Callback() { // from class: com.chery.media.model.service.LocalMusicBrowserService.1
        };
        this.mediaSessionCallback = callback;
        this.mediaSession.setCallback(callback);
        this.currentPlayingListener = new LocalMusicBusiness.OnCurrentPlayingListener() { // from class: com.chery.media.model.service.LocalMusicBrowserService.2
            @Override // com.chery.media.model.business.LocalMusicBusiness.OnCurrentPlayingListener
            public void onPlaylistChanged(int r1, List<MediaDef.LocalMusicInfo> list) {
            }

            @Override // com.chery.media.model.business.LocalMusicBusiness.OnCurrentPlayingListener
            public void onCurrentPlayingChanged(MediaDef.LocalMusicInfo localMusicInfo) {
                LocalMusicBrowserService.this.setMetaData();
            }
        };
        LocalMusicBusiness.getInstance().addCurrentPlayingListener(this.currentPlayingListener);
        setMetaData();
    }

    @Override // android.app.Service
    public void onDestroy() {
        PFLog.m25d(TAG, "onDestroy");
        super.onDestroy();
        LocalMusicBusiness.getInstance().removeCurrentPlayingListener(this.currentPlayingListener);
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
        MediaDef.LocalMusicInfo currentPlaying = LocalMusicBusiness.getInstance().getCurrentPlaying();
        this.mediaSession.setMetadata(new MediaMetadata.Builder().putString(MediaMetadataCompat.METADATA_KEY_TITLE, currentPlaying != null ? currentPlaying.originalMusicInfo.title : null).putString(MediaMetadataCompat.METADATA_KEY_ARTIST, currentPlaying != null ? currentPlaying.originalMusicInfo.artist : null).build());
    }
}
