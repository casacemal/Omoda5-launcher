package com.chery.media;

import android.bluetooth.BluetoothA2dpSink;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.content.ComponentName;
import android.content.Context;
import android.media.MediaMetadata;
import android.media.browse.MediaBrowser;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.avn.tools.log.PFLog;
import java.util.List;

/* loaded from: classes.dex */
public class BtAudioManager {
    private static final String BT_NAME = "com.android.bluetooth";
    private static final String BT_SERVICE = "com.android.bluetooth.avrcpcontroller.BluetoothMediaBrowserService";
    private static final int MSG_MEDIASESSION_INIT = 0;
    private static final int MSG_METADATA_CHANGED = 1;
    private static final int MSG_PLAYBACK_STATE_CHANGED = 2;
    private static String TAG = "BA.Mgr";
    private static BtAudioManager sBtAudioManager;
    private BluetoothA2dpSink mBluetoothA2dpSink;
    private Context mContext;
    private Handler mHandler;
    private MediaBrowser mMediaBrowser;
    private MediaController mMediaController;
    private MediaSessionListener mMediaSessionListener;
    private MediaController.TransportControls mTransport;
    private final MediaBrowser.ConnectionCallback connectionCallback = new MediaBrowser.ConnectionCallback() { // from class: com.chery.media.BtAudioManager.3
        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public void onConnected() {
            PFLog.m29i(BtAudioManager.TAG, "onConnected: ");
            MediaSession.Token sessionToken = BtAudioManager.this.mMediaBrowser.getSessionToken();
            BtAudioManager.this.mMediaController = new MediaController(BtAudioManager.this.mContext, sessionToken);
            BtAudioManager btAudioManager = BtAudioManager.this;
            btAudioManager.mTransport = btAudioManager.mMediaController.getTransportControls();
            BtAudioManager.this.mHandler.obtainMessage(0, 1, 0).sendToTarget();
            BtAudioManager.this.mMediaController.registerCallback(BtAudioManager.this.mMediaCallBack);
        }

        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public void onConnectionSuspended() {
            PFLog.m29i(BtAudioManager.TAG, "onConnectionSuspended: ");
        }

        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public void onConnectionFailed() {
            PFLog.m29i(BtAudioManager.TAG, "onConnectionFailed: ");
            BtAudioManager.this.disconnectMediaBrowser();
            BtAudioManager.this.mHandler.obtainMessage(0, 0, 0).sendToTarget();
        }
    };
    private final MediaController.Callback mMediaCallBack = new MediaController.Callback() { // from class: com.chery.media.BtAudioManager.4
        @Override // android.media.session.MediaController.Callback
        public void onExtrasChanged(Bundle bundle) {
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueChanged(List<MediaSession.QueueItem> list) {
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionEvent(String str, Bundle bundle) {
        }

        @Override // android.media.session.MediaController.Callback
        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            PFLog.m29i(BtAudioManager.TAG, "onMetadataChanged");
            BtAudioManager.this.mHandler.sendMessage(BtAudioManager.this.mHandler.obtainMessage(1, mediaMetadata));
        }

        @Override // android.media.session.MediaController.Callback
        public void onPlaybackStateChanged(PlaybackState playbackState) {
            PFLog.m29i(BtAudioManager.TAG, "onPlaybackStateChanged");
            BtAudioManager.this.mHandler.sendMessage(BtAudioManager.this.mHandler.obtainMessage(2, playbackState));
        }
    };

    public interface MediaSessionListener {
        void onConnectState(boolean z);

        void updateMetadata(MediaMetadata mediaMetadata);

        void updatePlaybackState(PlaybackState playbackState);
    }

    public static BtAudioManager init(Context context) {
        if (sBtAudioManager == null) {
            BtAudioManager btAudioManager = new BtAudioManager(context);
            sBtAudioManager = btAudioManager;
            return btAudioManager;
        }
        throw new IllegalStateException("UiCallManager has been initialized.");
    }

    public static BtAudioManager get() {
        BtAudioManager btAudioManager = sBtAudioManager;
        if (btAudioManager != null) {
            return btAudioManager;
        }
        throw new IllegalStateException("Call BtAudioManager.init(Context) before calling this function");
    }

    public static void set(BtAudioManager btAudioManager) {
        sBtAudioManager = btAudioManager;
    }

    private BtAudioManager(Context context) {
        Log.d(TAG, "SetUp");
        this.mContext = context;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null) {
            defaultAdapter.getProfileProxy(this.mContext, new BluetoothProfile.ServiceListener() { // from class: com.chery.media.BtAudioManager.1
                @Override // android.bluetooth.BluetoothProfile.ServiceListener
                public void onServiceConnected(int r2, BluetoothProfile bluetoothProfile) {
                    if (r2 == 11) {
                        PFLog.m29i(BtAudioManager.TAG, "A2DP connected");
                        BtAudioManager.this.mBluetoothA2dpSink = (BluetoothA2dpSink) bluetoothProfile;
                    }
                }

                @Override // android.bluetooth.BluetoothProfile.ServiceListener
                public void onServiceDisconnected(int r2) {
                    if (r2 == 11) {
                        BtAudioManager.this.mBluetoothA2dpSink = null;
                    }
                }
            }, 11);
        }
    }

    public void tearDown() {
        this.mContext = null;
        sBtAudioManager = null;
    }

    public BluetoothDevice getA2dpDevice() {
        BluetoothA2dpSink bluetoothA2dpSink = this.mBluetoothA2dpSink;
        if (bluetoothA2dpSink != null) {
            List connectedDevices = bluetoothA2dpSink.getConnectedDevices();
            if (connectedDevices == null || connectedDevices.isEmpty()) {
                return null;
            }
            return (BluetoothDevice) connectedDevices.get(0);
        }
        Log.w(TAG, "getA2dpDevice is null");
        return null;
    }

    public void startA2dpRender() {
        BluetoothDevice a2dpDevice = getA2dpDevice();
        BluetoothA2dpSink bluetoothA2dpSink = this.mBluetoothA2dpSink;
        if (bluetoothA2dpSink != null && a2dpDevice != null) {
            bluetoothA2dpSink.startA2dpRender(a2dpDevice);
        } else {
            Log.w(TAG, "startA2dpRender is failed");
        }
    }

    public void stopA2dpRender() {
        BluetoothDevice a2dpDevice = getA2dpDevice();
        BluetoothA2dpSink bluetoothA2dpSink = this.mBluetoothA2dpSink;
        if (bluetoothA2dpSink != null && a2dpDevice != null) {
            bluetoothA2dpSink.stopA2dpRender(a2dpDevice);
        } else {
            Log.w(TAG, "stopA2dpRender is failed");
        }
    }

    public void initMediaSession(MediaSessionListener mediaSessionListener) {
        this.mMediaSessionListener = mediaSessionListener;
        this.mHandler = new Handler(this.mContext.getMainLooper()) { // from class: com.chery.media.BtAudioManager.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int r0 = message.what;
                if (r0 == 0) {
                    if (BtAudioManager.this.mMediaSessionListener != null) {
                        BtAudioManager.this.mMediaSessionListener.onConnectState(message.arg1 == 1);
                    }
                } else {
                    if (r0 != 1) {
                        if (r0 == 2 && BtAudioManager.this.mMediaSessionListener != null) {
                            BtAudioManager.this.mMediaSessionListener.updatePlaybackState((PlaybackState) message.obj);
                            return;
                        }
                        return;
                    }
                    if (BtAudioManager.this.mMediaSessionListener != null) {
                        BtAudioManager.this.mMediaSessionListener.updateMetadata((MediaMetadata) message.obj);
                    }
                }
            }
        };
        connectMediaBrowser();
    }

    private void connectMediaBrowser() {
        PFLog.m29i(TAG, "connectMediaBrowser");
        if (this.mMediaBrowser != null) {
            disconnectMediaBrowser();
        }
        MediaBrowser mediaBrowser = new MediaBrowser(this.mContext, new ComponentName("com.android.bluetooth", "com.android.bluetooth.avrcpcontroller.BluetoothMediaBrowserService"), this.connectionCallback, null);
        this.mMediaBrowser = mediaBrowser;
        try {
            mediaBrowser.connect();
        } catch (IllegalStateException e) {
            PFLog.m27e(TAG, "Connection exception: " + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnectMediaBrowser() {
        PFLog.m29i(TAG, "disconnectMediaBrowser");
        MediaBrowser mediaBrowser = this.mMediaBrowser;
        if (mediaBrowser != null) {
            mediaBrowser.disconnect();
            this.mMediaBrowser = null;
        }
    }

    public PlaybackState getPlaybackState() {
        MediaController mediaController = this.mMediaController;
        if (mediaController == null) {
            return null;
        }
        return mediaController.getPlaybackState();
    }

    public MediaMetadata getMediaMetadata() {
        MediaController mediaController = this.mMediaController;
        if (mediaController == null) {
            return null;
        }
        return mediaController.getMetadata();
    }

    public void previous() {
        MediaController.TransportControls transportControls = this.mTransport;
        if (transportControls != null) {
            transportControls.skipToPrevious();
        } else {
            Log.w(TAG, "mTransport is null when skipToPrevious");
        }
    }

    public void next() {
        MediaController.TransportControls transportControls = this.mTransport;
        if (transportControls != null) {
            transportControls.skipToNext();
        } else {
            Log.w(TAG, "mTransport is null when skipToNext");
        }
    }

    public void play() {
        MediaController.TransportControls transportControls = this.mTransport;
        if (transportControls != null) {
            transportControls.play();
        } else {
            Log.w(TAG, "mTransport is null when play");
        }
    }

    public void pause() {
        MediaController.TransportControls transportControls = this.mTransport;
        if (transportControls != null) {
            transportControls.pause();
        } else {
            Log.w(TAG, "mTransport is null when pause");
        }
    }

    public boolean isCanController() {
        return this.mTransport != null;
    }
}
