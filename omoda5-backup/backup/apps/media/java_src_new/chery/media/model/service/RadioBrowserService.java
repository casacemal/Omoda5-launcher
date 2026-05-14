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
import com.chery.common.PackageConstants;
import com.chery.media.model.business.RadioBusiness;
import com.chery.media.model.business.RadioDef;
import java.util.List;

/* loaded from: classes.dex */
public class RadioBrowserService extends MediaBrowserService {
    private static final String TAG = CarLog.concatTag("MEDIA", RadioBrowserService.class);
    private MediaSession mSession;
    private MediaSession.Callback mediaSessionCallback;
    private RadioBusiness.OnTunerInfoListener tunerInfoListener;
    int mFrequencyKhz = 87500;
    int mSignalStrength = 0;
    int mTunerState = 1;

    public int stateSwitch(int r3) {
        return (r3 == 0 || !(r3 == 2 || r3 == 3 || r3 == 4 || r3 == 5)) ? 1 : 2;
    }

    @Override // android.service.media.MediaBrowserService, android.app.Service
    public void onCreate() {
        super.onCreate();
        MediaSession mediaSession = new MediaSession(this, "RadioMBService");
        this.mSession = mediaSession;
        setSessionToken(mediaSession.getSessionToken());
        PFLog.m25d(TAG, "onCreate");
        MediaSession.Callback callback = new MediaSession.Callback() { // from class: com.chery.media.model.service.RadioBrowserService.1
            @Override // android.media.session.MediaSession.Callback
            public void onSkipToNext() {
                Log.i(RadioBrowserService.TAG, "onSkipToNext");
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToPrevious() {
                Log.i(RadioBrowserService.TAG, "onSkipToPrevious");
            }
        };
        this.mediaSessionCallback = callback;
        this.mSession.setCallback(callback);
        this.tunerInfoListener = new RadioBusiness.OnTunerInfoListener() { // from class: com.chery.media.model.service.RadioBrowserService.2
            @Override // com.chery.media.model.business.RadioBusiness.OnTunerInfoListener
            public void onAreaChanged(int r1) {
            }

            @Override // com.chery.media.model.business.RadioBusiness.OnTunerInfoListener
            public void onChannelChanged(RadioDef radioDef, int r3) {
                RadioBrowserService.this.mFrequencyKhz = radioDef.frequencyKhz;
                RadioBrowserService radioBrowserService = RadioBrowserService.this;
                int r32 = radioBrowserService.mFrequencyKhz;
                RadioBrowserService radioBrowserService2 = RadioBrowserService.this;
                radioBrowserService.setMetaData(r32, radioBrowserService2.stateSwitch(radioBrowserService2.mTunerState));
            }

            @Override // com.chery.media.model.business.RadioBusiness.OnTunerInfoListener
            public void onStateChanged(int r3) {
                RadioBrowserService.this.mTunerState = r3;
                RadioBrowserService radioBrowserService = RadioBrowserService.this;
                int r0 = radioBrowserService.mFrequencyKhz;
                RadioBrowserService radioBrowserService2 = RadioBrowserService.this;
                radioBrowserService.setMetaData(r0, radioBrowserService2.stateSwitch(radioBrowserService2.mTunerState));
            }
        };
        RadioBusiness.getInstance().addTunerInfoListener(this.tunerInfoListener);
        if (RadioBusiness.getInstance().getCurrentChannel().getValue() != null) {
            int r0 = RadioBusiness.getInstance().getCurrentChannel().getValue().frequencyKhz;
            int r1 = RadioBusiness.getInstance().getCurrentState().intValue();
            this.mFrequencyKhz = r0;
            this.mTunerState = r1;
            setMetaData(r0, stateSwitch(r1));
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        RadioBusiness.getInstance().removeTunerInfoListener(this.tunerInfoListener);
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
    public void setMetaData(int r5, int r6) {
        PFLog.m25d(TAG, "setMetaData " + r5 + " " + r6);
        this.mSession.setMetadata(new MediaMetadata.Builder().putString(MediaMetadataCompat.METADATA_KEY_TITLE, "" + r5).putString(MediaMetadataCompat.METADATA_KEY_ARTIST, r5 > RadioBusiness.FREQ_DIVIDE_BAND.intValue() ? PackageConstants.Media.BAND_MEDIA_SESSION_FM : PackageConstants.Media.BAND_MEDIA_SESSION_AM).putString(MediaMetadataCompat.METADATA_KEY_ALBUM, "" + stateSwitch(r6)).build());
    }
}
