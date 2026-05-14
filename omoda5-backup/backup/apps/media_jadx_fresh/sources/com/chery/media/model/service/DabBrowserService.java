package com.chery.media.model.service;

import android.media.MediaMetadata;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.media.model.business.DabBusiness;
import com.chery.media.model.business.DabInfo;
import java.util.List;

/* loaded from: classes.dex */
public class DabBrowserService extends MediaBrowserService {
    private static final String TAG = CarLog.concatTag("MEDIA", DabBrowserService.class);
    private DabBusiness.DabBusinessCallback dabInfoCallback;
    private MediaSession mSession;
    private MediaSession.Callback mediaSessionCallback;
    private String programName = "";

    @Override // android.service.media.MediaBrowserService, android.app.Service
    public void onCreate() {
        super.onCreate();
        MediaSession mediaSession = new MediaSession(this, "DabMBService");
        this.mSession = mediaSession;
        setSessionToken(mediaSession.getSessionToken());
        PFLog.m25d(TAG, "onCreate");
        MediaSession.Callback callback = new MediaSession.Callback() { // from class: com.chery.media.model.service.DabBrowserService.1
            @Override // android.media.session.MediaSession.Callback
            public void onSkipToNext() {
                Log.i(DabBrowserService.TAG, "onSkipToNext");
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToPrevious() {
                Log.i(DabBrowserService.TAG, "onSkipToPrevious");
            }
        };
        this.mediaSessionCallback = callback;
        this.mSession.setCallback(callback);
        this.dabInfoCallback = new DabBusiness.DabBusinessCallback() { // from class: com.chery.media.model.service.DabBrowserService.2
            @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
            public void allListChanged() {
            }

            @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
            public void favorInfoChanged() {
            }

            @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
            public void curDabInfoChanged(DabInfo dabInfo) {
                DabBrowserService.this.programName = dabInfo.serviceName;
                DabBrowserService dabBrowserService = DabBrowserService.this;
                dabBrowserService.setMetaData(dabBrowserService.programName);
            }
        };
        DabBusiness.getInstance().addCallback(this.dabInfoCallback);
        if (DabBusiness.getInstance().getCurPlayInfo().getValue() != null) {
            String str = DabBusiness.getInstance().getCurPlayInfo().getValue().serviceName;
            this.programName = str;
            setMetaData(str);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        DabBusiness.getInstance().removeCallback(this.dabInfoCallback);
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
    public void setMetaData(String str) {
        PFLog.m25d(TAG, "setMetaData " + str);
        this.mSession.setMetadata(new MediaMetadata.Builder().putString(MediaMetadataCompat.METADATA_KEY_TITLE, str).build());
    }
}
