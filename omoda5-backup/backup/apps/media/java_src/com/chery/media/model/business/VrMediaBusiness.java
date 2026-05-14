package com.chery.media.model.business;

import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import androidx.lifecycle.LifecycleService;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.avn.tools.activity.ActivityUtils;
import com.avn.tools.json.JsonUtil;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.common.PackageConstants;
import com.chery.common.PageConstants;
import com.chery.common.PageManager;
import com.chery.libvr.bean.action.ActionCommon;
import com.chery.libvr.bean.action.ActionMusicCommonn;
import com.chery.libvr.bean.action.ActionMusicPLay;
import com.chery.libvr.bean.action.Response;
import com.chery.libvr.bean.params.ParamsResValue;
import com.chery.libvr.bean.params.ParamsSource;
import com.chery.libvr.bean.responsedetail.MediaSourceStateResDetail;
import com.chery.libvr.bean.responsedetail.MediaStatusResDetail;
import com.chery.libvr.bean.responsekey.MusicResKey;
import com.chery.libvr.manager.funtionmanager.VrMediaManager;
import com.chery.media.model.business.BtMusicBusiness;
import com.chery.media.model.business.LocalMusicBusiness;
import com.chery.media.model.business.MediaBusiness;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.UsbMusicBusiness;
import com.chery.media.model.business.UsbScannerBusiness;
import com.chery.media.view.activity.MediaActivity;
import com.chery.media.view.fragment.BtMusicPlayerFragment;
import com.chery.media.view.fragment.LocalMusicListFragment;
import com.chery.media.view.fragment.LocalMusicPlayerFragment;
import com.chery.media.view.fragment.MediaMainFragment;
import com.chery.media.view.fragment.UsbMusicListFragment;
import com.chery.media.view.fragment.UsbMusicPlayerFragment;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class VrMediaBusiness {
    private static final String TAG = CarLog.concatTag("MEDIA", VrMediaBusiness.class);
    private static VrMediaBusiness instance;
    private Context context;
    private Handler handler;
    private VrMediaManager vrMediaManager;
    private boolean isInit = false;
    private int currentMediaSource = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public String getUsbTypeSource(int r1) {
        return r1 != 0 ? r1 != 1 ? "" : "USB1" : ParamsSource.USB0;
    }

    public static VrMediaBusiness getInstance() {
        if (instance == null) {
            instance = new VrMediaBusiness();
        }
        return instance;
    }

    public void init(Context context) {
        if (this.isInit) {
            return;
        }
        this.context = context;
        this.handler = new Handler();
        VrMediaManager vrMediaManager = VrMediaManager.getInstance();
        this.vrMediaManager = vrMediaManager;
        vrMediaManager.setMediaTool(new VrMediaManager.MediaTool() { // from class: com.chery.media.model.business.VrMediaBusiness.1
            @Override // com.chery.libvr.manager.funtionmanager.VrMediaManager.MediaTool
            public int onRequest(final String str, final String str2, final String str3) {
                VrMediaBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.VrMediaBusiness.1.1
                    @Override // java.lang.Runnable
                    public void run() throws SecurityException, UnsupportedEncodingException {
                        VrMediaBusiness.this.onVrRequest(str, str2, str3);
                    }
                });
                return 1;
            }
        });
        this.vrMediaManager.init();
        int currentAudioSource = MediaBusiness.getInstance().getCurrentAudioSource();
        if (currentAudioSource == 12 || currentAudioSource == 6 || currentAudioSource == 5) {
            setCurrentMediaSource(currentAudioSource);
        }
        uploadSourceAvailable(ParamsSource.LOCAL, !LocalMusicBusiness.getInstance().getLocalMusics().isEmpty());
        uploadMusicList(ParamsSource.LOCAL);
        LocalMusicBusiness.getInstance().addMusicsListener(new LocalMusicBusiness.OnMusicsListener() { // from class: com.chery.media.model.business.VrMediaBusiness.2
            @Override // com.chery.media.model.business.LocalMusicBusiness.OnMusicsListener
            public void onMusicsChanged(List<MediaDef.LocalMusicInfo> list) {
                VrMediaBusiness.this.uploadSourceAvailable(ParamsSource.LOCAL, !list.isEmpty());
                VrMediaBusiness.this.uploadMusicList(ParamsSource.LOCAL);
            }
        });
        LocalMusicBusiness.getInstance().addCurrentPlayingListener(new LocalMusicBusiness.OnCurrentPlayingListener() { // from class: com.chery.media.model.business.VrMediaBusiness.3
            @Override // com.chery.media.model.business.LocalMusicBusiness.OnCurrentPlayingListener
            public void onPlaylistChanged(int r1, List<MediaDef.LocalMusicInfo> list) {
            }

            @Override // com.chery.media.model.business.LocalMusicBusiness.OnCurrentPlayingListener
            public void onCurrentPlayingChanged(MediaDef.LocalMusicInfo localMusicInfo) {
                if (VrMediaBusiness.this.currentMediaSource == 12) {
                    VrMediaBusiness.this.uploadSourcePlayingInfo();
                }
            }
        });
        LocalMusicBusiness.getInstance().addPlayingInfoListener(new LocalMusicBusiness.OnPlayingInfoListener() { // from class: com.chery.media.model.business.VrMediaBusiness.4
            @Override // com.chery.media.model.business.LocalMusicBusiness.OnPlayingInfoListener
            public void onDurationChanged(long j) {
            }

            @Override // com.chery.media.model.business.LocalMusicBusiness.OnPlayingInfoListener
            public void onFastPlayStatusChanged(int r1) {
            }

            @Override // com.chery.media.model.business.LocalMusicBusiness.OnPlayingInfoListener
            public void onPositionChanged(long j) {
            }

            @Override // com.chery.media.model.business.LocalMusicBusiness.OnPlayingInfoListener
            public void onPlayingStateChanged(boolean z) {
                if (VrMediaBusiness.this.currentMediaSource == 12) {
                    VrMediaBusiness.this.uploadSourcePlayingInfo();
                }
            }
        });
        for (int r4 = 0; r4 <= 0; r4++) {
            String usbTypeSource = getUsbTypeSource(r4);
            uploadSourceAvailable(usbTypeSource, !UsbScannerBusiness.getInstance().getMusics(r4).isEmpty());
            uploadMusicList(usbTypeSource);
        }
        UsbScannerBusiness.getInstance().addUsbDeviceInfoListener(new UsbScannerBusiness.OnUsbDeviceInfoListener() { // from class: com.chery.media.model.business.VrMediaBusiness.5
            @Override // com.chery.media.model.business.UsbScannerBusiness.OnUsbDeviceInfoListener
            public void onMountStatusChanged(int r1, boolean z) {
                if (z) {
                    return;
                }
                VrMediaBusiness vrMediaBusiness = VrMediaBusiness.this;
                vrMediaBusiness.uploadSourceAvailable(vrMediaBusiness.getUsbTypeSource(r1), false);
            }

            @Override // com.chery.media.model.business.UsbScannerBusiness.OnUsbDeviceInfoListener
            public void onScanInfoUpdate(int r3, int r42) {
                if (r42 != 35 || UsbScannerBusiness.getInstance().getUsbDeviceInfo(r3).musicsCount <= 0) {
                    return;
                }
                VrMediaBusiness vrMediaBusiness = VrMediaBusiness.this;
                vrMediaBusiness.uploadSourceAvailable(vrMediaBusiness.getUsbTypeSource(r3), true);
                VrMediaBusiness vrMediaBusiness2 = VrMediaBusiness.this;
                vrMediaBusiness2.uploadMusicList(vrMediaBusiness2.getUsbTypeSource(r3));
            }
        });
        UsbMusicBusiness.getInstance().addPlaylistInfoListener(new UsbMusicBusiness.OnPlaylistInfoListener() { // from class: com.chery.media.model.business.VrMediaBusiness.6
            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlaylistInfoListener
            public void onPlaylistChanged(int r1, int r2, List<MediaDef.UsbMusicInfo> list) {
            }

            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlaylistInfoListener
            public void onCurrentPlayingChanged(int r1, MediaDef.UsbMusicInfo usbMusicInfo) {
                if (MediaDef.getUsbMusicAudioSource(r1) == VrMediaBusiness.this.currentMediaSource) {
                    VrMediaBusiness.this.uploadSourcePlayingInfo();
                }
            }
        });
        UsbMusicBusiness.getInstance().addPlayingInfoListener(new UsbMusicBusiness.OnPlayingInfoListener() { // from class: com.chery.media.model.business.VrMediaBusiness.7
            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlayingInfoListener
            public void onDurationChanged(int r1, long j) {
            }

            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlayingInfoListener
            public void onFastPlayStatusChanged(int r1, int r2) {
            }

            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlayingInfoListener
            public void onPositionChanged(int r1, long j) {
            }

            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlayingInfoListener
            public void onPlayingStateChanged(int r1, boolean z) {
                if (MediaDef.getUsbMusicAudioSource(r1) == VrMediaBusiness.this.currentMediaSource) {
                    VrMediaBusiness.this.uploadSourcePlayingInfo();
                }
            }
        });
        uploadSourceAvailable("BT", BtMusicBusiness.getInstance().getBtMusicState().getValue().booleanValue());
        BtMusicBusiness.getInstance().getBtMusicState().observe((LifecycleService) this.context, new Observer<Boolean>() { // from class: com.chery.media.model.business.VrMediaBusiness.8
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                VrMediaBusiness.this.uploadSourceAvailable("BT", bool.booleanValue());
            }
        });
        BtMusicBusiness.getInstance().getBtMusicInfo().observe((LifecycleService) this.context, new Observer<BtMusicBusiness.BtMusicInfo>() { // from class: com.chery.media.model.business.VrMediaBusiness.9
            @Override // androidx.lifecycle.Observer
            public void onChanged(BtMusicBusiness.BtMusicInfo btMusicInfo) {
                if (VrMediaBusiness.this.currentMediaSource == 5) {
                    VrMediaBusiness.this.uploadSourcePlayingInfo();
                }
            }
        });
        BtMusicBusiness.getInstance().getPlaybackState().observe((LifecycleService) this.context, new Observer<Boolean>() { // from class: com.chery.media.model.business.VrMediaBusiness.10
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                if (VrMediaBusiness.this.currentMediaSource == 5) {
                    VrMediaBusiness.this.uploadSourcePlayingInfo();
                }
            }
        });
        MediaBusiness.getInstance().addAudioSourceChangeListener(new MediaBusiness.OnAudioSourceChangeListener() { // from class: com.chery.media.model.business.VrMediaBusiness.11
            @Override // com.chery.media.model.business.MediaBusiness.OnAudioSourceChangeListener
            public void onAudioSourceChanged(int r1, int r2) {
                if (r2 == 12 || r2 == 6 || r2 == 5) {
                    VrMediaBusiness.this.setCurrentMediaSource(r2);
                }
            }
        });
        uploadSourcePlayingInfo();
        this.isInit = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentMediaSource(int r4) {
        PFLog.m25d(TAG, "setCurrentMediaSource " + r4);
        if (r4 == this.currentMediaSource) {
            return;
        }
        this.currentMediaSource = r4;
        uploadSourcePlayingInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onVrRequest(java.lang.String r2, java.lang.String r3, java.lang.String r4) throws java.lang.SecurityException, java.io.UnsupportedEncodingException {
        /*
            r1 = this;
            int r0 = r2.hashCode()
            switch(r0) {
                case -1894100143: goto L44;
                case -1459176161: goto L3a;
                case -500065420: goto L30;
                case 179978509: goto L26;
                case 846423119: goto L1c;
                case 1683528928: goto L12;
                case 1781567592: goto L8;
                default: goto L7;
            }
        L7:
            goto L4e
        L8:
            java.lang.String r0 = "requestMusicStatus"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 2
            goto L4f
        L12:
            java.lang.String r0 = "controlPlayState"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 0
            goto L4f
        L1c:
            java.lang.String r0 = "controlPlayingList"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 4
            goto L4f
        L26:
            java.lang.String r0 = "controlCollect"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 5
            goto L4f
        L30:
            java.lang.String r0 = "controlPlayMode"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 3
            goto L4f
        L3a:
            java.lang.String r0 = "PlaySpecificMusic"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 6
            goto L4f
        L44:
            java.lang.String r0 = "playMusic"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 1
            goto L4f
        L4e:
            r0 = -1
        L4f:
            switch(r0) {
                case 0: goto L6b;
                case 1: goto L67;
                case 2: goto L63;
                case 3: goto L5f;
                case 4: goto L5b;
                case 5: goto L57;
                case 6: goto L53;
                default: goto L52;
            }
        L52:
            goto L6e
        L53:
            r1.handlePlaySpecificMusic(r2, r3, r4)
            goto L6e
        L57:
            r1.handleControlCollect(r2, r3, r4)
            goto L6e
        L5b:
            r1.handleControlPlayList(r2, r3, r4)
            goto L6e
        L5f:
            r1.handleControlPlayMode(r2, r3, r4)
            goto L6e
        L63:
            r1.handleRequestMusicStatus(r2, r3, r4)
            goto L6e
        L67:
            r1.handlePlayMusic(r2, r3, r4)
            goto L6e
        L6b:
            r1.handlePlayState(r2, r3, r4)
        L6e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.VrMediaBusiness.onVrRequest(java.lang.String, java.lang.String, java.lang.String):void");
    }

    private void sendUploadResponse(String str, String str2) {
        Response response = new Response();
        response.setResultCode(4);
        response.setDetail(str2);
        response.setPkgName("com.chery.media");
        String jSONString = JsonUtil.toJSONString(response);
        PFLog.m25d(TAG, "sendUploadResponse value -> " + jSONString);
        this.vrMediaManager.onResponse(str, jSONString, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendResponse(String str, String str2, String str3) {
        Response response = new Response();
        response.setResultCode(0);
        response.setDetail(str2);
        response.setPkgName("com.chery.media");
        String jSONString = JsonUtil.toJSONString(response);
        PFLog.m25d(TAG, "sendResponse value -> " + jSONString);
        this.vrMediaManager.onResponse(str, jSONString, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadSourceAvailable(String str, boolean z) {
        MediaSourceStateResDetail mediaSourceStateResDetail = new MediaSourceStateResDetail();
        mediaSourceStateResDetail.setSource(str);
        mediaSourceStateResDetail.setAvailable(z);
        sendUploadResponse(MusicResKey.NOTIFY_SOURCE_STATUS, JsonUtil.toJSONString(mediaSourceStateResDetail));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadSourcePlayingInfo() {
        PFLog.m25d(TAG, "uploadSourcePlayingInfo");
        MediaStatusResDetail mediaStatusResDetail = new MediaStatusResDetail();
        int r1 = this.currentMediaSource;
        String str = ParamsResValue.MusicPlayState.PLAYING;
        if (r1 == 5) {
            mediaStatusResDetail.setSource("BT");
            MutableLiveData<BtMusicBusiness.BtMusicInfo> btMusicInfo = BtMusicBusiness.getInstance().getBtMusicInfo();
            if (btMusicInfo != null && btMusicInfo.getValue() != null) {
                mediaStatusResDetail.setName(btMusicInfo.getValue().title);
                mediaStatusResDetail.setActiveStatus(ParamsResValue.MusicActiveStatus.BACKGROUND);
                mediaStatusResDetail.setAlbum(btMusicInfo.getValue().album);
                mediaStatusResDetail.setArtist(btMusicInfo.getValue().artist);
                if (!BtMusicBusiness.getInstance().getPlaybackState().getValue().booleanValue()) {
                    str = ParamsResValue.MusicPlayState.STOP;
                }
                mediaStatusResDetail.setSceneStatus(str);
            } else {
                mediaStatusResDetail.setName("");
                mediaStatusResDetail.setActiveStatus("");
                mediaStatusResDetail.setAlbum("");
                mediaStatusResDetail.setArtist("");
                mediaStatusResDetail.setSceneStatus("");
            }
            sendUploadResponse("notifyMusicStatus", JsonUtil.toJSONString(mediaStatusResDetail));
            return;
        }
        if (r1 == 6) {
            int usbMusicTypeOfAudioSource = MediaDef.getUsbMusicTypeOfAudioSource(r1);
            mediaStatusResDetail.setSource(ParamsSource.USB0);
            MediaDef.UsbMusicInfo currentPlaying = UsbMusicBusiness.getInstance().getCurrentPlaying(usbMusicTypeOfAudioSource);
            if (currentPlaying != null) {
                mediaStatusResDetail.setName(currentPlaying.title);
                mediaStatusResDetail.setActiveStatus(ParamsResValue.MusicActiveStatus.BACKGROUND);
                mediaStatusResDetail.setAlbum(currentPlaying.album);
                mediaStatusResDetail.setArtist(currentPlaying.artist);
                if (!UsbMusicBusiness.getInstance().isPlaying(usbMusicTypeOfAudioSource)) {
                    str = ParamsResValue.MusicPlayState.STOP;
                }
                mediaStatusResDetail.setSceneStatus(str);
            } else {
                mediaStatusResDetail.setName("");
                mediaStatusResDetail.setActiveStatus("");
                mediaStatusResDetail.setAlbum("");
                mediaStatusResDetail.setArtist("");
                mediaStatusResDetail.setSceneStatus("");
            }
            sendUploadResponse("notifyMusicStatus", JsonUtil.toJSONString(mediaStatusResDetail));
            return;
        }
        if (r1 == 12) {
            mediaStatusResDetail.setSource(ParamsSource.LOCAL);
            MediaDef.LocalMusicInfo currentPlaying2 = LocalMusicBusiness.getInstance().getCurrentPlaying();
            if (currentPlaying2 != null) {
                mediaStatusResDetail.setName(currentPlaying2.originalMusicInfo.title);
                mediaStatusResDetail.setActiveStatus(ParamsResValue.MusicActiveStatus.BACKGROUND);
                mediaStatusResDetail.setAlbum(currentPlaying2.originalMusicInfo.album);
                mediaStatusResDetail.setArtist(currentPlaying2.originalMusicInfo.artist);
                if (!LocalMusicBusiness.getInstance().isPlaying()) {
                    str = ParamsResValue.MusicPlayState.STOP;
                }
                mediaStatusResDetail.setSceneStatus(str);
            } else {
                mediaStatusResDetail.setName("");
                mediaStatusResDetail.setActiveStatus("");
                mediaStatusResDetail.setAlbum("");
                mediaStatusResDetail.setArtist("");
                mediaStatusResDetail.setSceneStatus("");
            }
            sendUploadResponse("notifyMusicStatus", JsonUtil.toJSONString(mediaStatusResDetail));
            return;
        }
        mediaStatusResDetail.setSource("");
        mediaStatusResDetail.setName("");
        mediaStatusResDetail.setActiveStatus("");
        mediaStatusResDetail.setAlbum("");
        mediaStatusResDetail.setArtist("");
        mediaStatusResDetail.setSceneStatus("");
        sendUploadResponse("notifyMusicStatus", JsonUtil.toJSONString(mediaStatusResDetail));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void uploadMusicList(java.lang.String r8) {
        /*
            r7 = this;
            com.chery.libvr.bean.responsedetail.MusicListResDetail r0 = new com.chery.libvr.bean.responsedetail.MusicListResDetail
            r0.<init>()
            com.chery.libvr.bean.responsedetail.MusicListResDetail$Semantic r1 = new com.chery.libvr.bean.responsedetail.MusicListResDetail$Semantic
            r1.<init>()
            r0.setSemantic(r1)
            r1.setSource(r8)
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            int r3 = r8.hashCode()
            r4 = 2614092(0x27e34c, float:3.663123E-39)
            r5 = 1
            if (r3 == r4) goto L2f
            r4 = 72607563(0x453e74b, float:2.4909135E-36)
            if (r3 == r4) goto L25
            goto L39
        L25:
            java.lang.String r3 = "LOCAL"
            boolean r3 = r8.equals(r3)
            if (r3 == 0) goto L39
            r3 = 0
            goto L3a
        L2f:
            java.lang.String r3 = "USB0"
            boolean r3 = r8.equals(r3)
            if (r3 == 0) goto L39
            r3 = r5
            goto L3a
        L39:
            r3 = -1
        L3a:
            java.lang.String r4 = "notifyMusicList"
            java.lang.String r6 = "ALL"
            if (r3 == 0) goto L86
            if (r3 == r5) goto L44
            goto Lc9
        L44:
            r0.setUser(r6)
            com.chery.media.model.business.UsbScannerBusiness r3 = com.chery.media.model.business.UsbScannerBusiness.getInstance()
            int r8 = r7.getSourceUsbType(r8)
            java.util.List r8 = r3.getMusics(r8)
            java.util.Iterator r8 = r8.iterator()
        L57:
            boolean r3 = r8.hasNext()
            if (r3 == 0) goto L7b
            java.lang.Object r3 = r8.next()
            com.chery.media.model.business.MediaDef$UsbMusicInfo r3 = (com.chery.media.model.business.MediaDef.UsbMusicInfo) r3
            com.chery.libvr.bean.responsedetail.MusicInfo r5 = new com.chery.libvr.bean.responsedetail.MusicInfo
            r5.<init>()
            java.lang.String r6 = r3.title
            r5.setName(r6)
            java.lang.String r6 = r3.artist
            r5.setArtist(r6)
            java.lang.String r3 = r3.album
            r5.setAlbum(r3)
            r2.add(r5)
            goto L57
        L7b:
            r1.setMusicInfos(r2)
            java.lang.String r8 = com.avn.tools.json.JsonUtil.toJSONString(r0)
            r7.sendUploadResponse(r4, r8)
            goto Lc9
        L86:
            r0.setUser(r6)
            com.chery.media.model.business.LocalMusicBusiness r8 = com.chery.media.model.business.LocalMusicBusiness.getInstance()
            java.util.List r8 = r8.getLocalMusics()
            java.util.Iterator r8 = r8.iterator()
        L95:
            boolean r3 = r8.hasNext()
            if (r3 == 0) goto Lbf
            java.lang.Object r3 = r8.next()
            com.chery.media.model.business.MediaDef$LocalMusicInfo r3 = (com.chery.media.model.business.MediaDef.LocalMusicInfo) r3
            com.chery.libvr.bean.responsedetail.MusicInfo r5 = new com.chery.libvr.bean.responsedetail.MusicInfo
            r5.<init>()
            com.chery.media.model.business.MediaDef$UsbMusicInfo r6 = r3.originalMusicInfo
            java.lang.String r6 = r6.title
            r5.setName(r6)
            com.chery.media.model.business.MediaDef$UsbMusicInfo r6 = r3.originalMusicInfo
            java.lang.String r6 = r6.artist
            r5.setArtist(r6)
            com.chery.media.model.business.MediaDef$UsbMusicInfo r3 = r3.originalMusicInfo
            java.lang.String r3 = r3.album
            r5.setAlbum(r3)
            r2.add(r5)
            goto L95
        Lbf:
            r1.setMusicInfos(r2)
            java.lang.String r8 = com.avn.tools.json.JsonUtil.toJSONString(r0)
            r7.sendUploadResponse(r4, r8)
        Lc9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.VrMediaBusiness.uploadMusicList(java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handlePlayState(java.lang.String r16, java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.VrMediaBusiness.handlePlayState(java.lang.String, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handlePlayMusic(java.lang.String r5, java.lang.String r6, java.lang.String r7) throws java.lang.SecurityException, java.io.UnsupportedEncodingException {
        /*
            r4 = this;
            java.lang.Class<com.chery.libvr.bean.action.ActionMusicCommonn> r0 = com.chery.libvr.bean.action.ActionMusicCommonn.class
            java.lang.Object r6 = com.avn.tools.json.JsonUtil.parseObject(r6, r0)
            com.chery.libvr.bean.action.ActionMusicCommonn r6 = (com.chery.libvr.bean.action.ActionMusicCommonn) r6
            java.lang.String r0 = com.chery.media.model.business.VrMediaBusiness.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "handlePlayState actionMusicCommonn -> "
            r1.append(r2)
            r1.append(r6)
            java.lang.String r1 = r1.toString()
            com.avn.tools.log.PFLog.m33w(r0, r1)
            com.chery.libvr.bean.action.ActionMusicCommonn$SematicBean r0 = r6.getSematic()
            java.lang.String r0 = r0.getAction()
            int r1 = r0.hashCode()
            r2 = 2432586(0x251e4a, float:3.408779E-39)
            r3 = 1
            if (r1 == r2) goto L40
            r2 = 64218584(0x3d3e5d8, float:1.2454235E-36)
            if (r1 == r2) goto L36
            goto L4a
        L36:
            java.lang.String r1 = "CLOSE"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4a
            r0 = r3
            goto L4b
        L40:
            java.lang.String r1 = "OPEN"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4a
            r0 = 0
            goto L4b
        L4a:
            r0 = -1
        L4b:
            if (r0 == 0) goto L54
            if (r0 == r3) goto L50
            goto L57
        L50:
            r4.handlePlayMusicClose(r5, r6, r7)
            goto L57
        L54:
            r4.handlePlayMusicOpen(r5, r6, r7)
        L57:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.VrMediaBusiness.handlePlayMusic(java.lang.String, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handlePlayMusicOpen(java.lang.String r8, com.chery.libvr.bean.action.ActionMusicCommonn r9, java.lang.String r10) throws java.lang.SecurityException, java.io.UnsupportedEncodingException {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.VrMediaBusiness.handlePlayMusicOpen(java.lang.String, com.chery.libvr.bean.action.ActionMusicCommonn, java.lang.String):void");
    }

    private boolean duringNaviActivity() throws SecurityException {
        ComponentName topActivityComponentName = ActivityUtils.getTopActivityComponentName(this.context);
        if (topActivityComponentName == null) {
            return false;
        }
        return PackageConstants.TurboDog.PACKAGE_NAME.equals(topActivityComponentName.getPackageName());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handlePlayMusicClose(java.lang.String r7, com.chery.libvr.bean.action.ActionMusicCommonn r8, java.lang.String r9) {
        /*
            r6 = this;
            java.lang.String r0 = com.chery.media.model.business.VrMediaBusiness.TAG
            java.lang.String r1 = "handlePlayMusicClose"
            com.avn.tools.log.PFLog.m25d(r0, r1)
            com.chery.libvr.bean.action.ActionMusicCommonn$SematicBean r0 = r8.getSematic()
            java.lang.String r0 = r0.getType()
            int r1 = r0.hashCode()
            r2 = 2130(0x852, float:2.985E-42)
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == r2) goto L39
            r2 = 2614092(0x27e34c, float:3.663123E-39)
            if (r1 == r2) goto L2f
            r2 = 72607563(0x453e74b, float:2.4909135E-36)
            if (r1 == r2) goto L25
            goto L43
        L25:
            java.lang.String r1 = "LOCAL"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L43
            r1 = r5
            goto L44
        L2f:
            java.lang.String r1 = "USB0"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L43
            r1 = r4
            goto L44
        L39:
            java.lang.String r1 = "BT"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L43
            r1 = r3
            goto L44
        L43:
            r1 = -1
        L44:
            if (r1 == 0) goto L71
            if (r1 == r4) goto L5a
            if (r1 == r3) goto L4b
            return
        L4b:
            com.chery.media.model.business.BtMusicBusiness r0 = com.chery.media.model.business.BtMusicBusiness.getInstance()
            r0.pause()
            com.chery.media.model.business.BtMusicBusiness r0 = com.chery.media.model.business.BtMusicBusiness.getInstance()
            r0.setPlayOnCanPlay(r5)
            goto L7f
        L5a:
            com.chery.media.model.business.UsbMusicBusiness r1 = com.chery.media.model.business.UsbMusicBusiness.getInstance()
            int r2 = r6.getSourceUsbType(r0)
            r1.pause(r2)
            com.chery.media.model.business.UsbMusicBusiness r1 = com.chery.media.model.business.UsbMusicBusiness.getInstance()
            int r0 = r6.getSourceUsbType(r0)
            r1.setPlayOnCanPlay(r0, r5)
            goto L7f
        L71:
            com.chery.media.model.business.LocalMusicBusiness r0 = com.chery.media.model.business.LocalMusicBusiness.getInstance()
            r0.pause()
            com.chery.media.model.business.LocalMusicBusiness r0 = com.chery.media.model.business.LocalMusicBusiness.getInstance()
            r0.setPlayOnCanPlay(r5)
        L7f:
            com.chery.media.view.activity.MediaActivity r0 = com.chery.media.view.activity.MediaActivity.getInstance()
            if (r0 == 0) goto La5
            androidx.fragment.app.Fragment r1 = r0.getCurrentFragment()
            if (r1 == 0) goto La5
            boolean r2 = r1.isResumed()
            if (r2 == 0) goto La5
            boolean r2 = r1 instanceof com.chery.media.view.fragment.LocalMusicPlayerFragment
            if (r2 != 0) goto L9d
            boolean r2 = r1 instanceof com.chery.media.view.fragment.UsbMusicPlayerFragment
            if (r2 != 0) goto L9d
            boolean r1 = r1 instanceof com.chery.media.view.fragment.BtMusicPlayerFragment
            if (r1 == 0) goto La5
        L9d:
            r1 = 0
            com.chery.media.view.fragment.MediaMainFragment r1 = com.chery.media.view.fragment.MediaMainFragment.newInstance(r1, r1)
            r0.replaceAll(r1)
        La5:
            com.chery.libvr.bean.action.ActionCommon r0 = new com.chery.libvr.bean.action.ActionCommon
            r0.<init>()
            java.lang.String r1 = "ALL"
            r0.setUser(r1)
            com.chery.libvr.bean.action.ActionCommon$SemanticBean r1 = new com.chery.libvr.bean.action.ActionCommon$SemanticBean
            r1.<init>()
            com.chery.libvr.bean.action.ActionMusicCommonn$SematicBean r2 = r8.getSematic()
            java.lang.String r2 = r2.getAction()
            r1.setAction(r2)
            com.chery.libvr.bean.action.ActionMusicCommonn$SematicBean r8 = r8.getSematic()
            java.lang.String r8 = r8.getType()
            r1.setType(r8)
            r0.setSemantic(r1)
            java.lang.String r8 = com.avn.tools.json.JsonUtil.toJSONString(r0)
            r6.sendResponse(r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.VrMediaBusiness.handlePlayMusicClose(java.lang.String, com.chery.libvr.bean.action.ActionMusicCommonn, java.lang.String):void");
    }

    private void handleRequestMusicStatus(String str, String str2, String str3) {
        ActionMusicCommonn actionMusicCommonn = (ActionMusicCommonn) JsonUtil.parseObject(str2, ActionMusicCommonn.class);
        PFLog.m33w(TAG, "handleRequestMusicStatus actionMusicCommonn -> " + actionMusicCommonn);
        uploadSourcePlayingInfo();
        ActionCommon actionCommon = new ActionCommon();
        actionCommon.setUser("ALL");
        actionCommon.setSemantic(new ActionCommon.SemanticBean());
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handleControlPlayMode(java.lang.String r12, java.lang.String r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.VrMediaBusiness.handleControlPlayMode(java.lang.String, java.lang.String, java.lang.String):void");
    }

    private void handleControlPlayList(String str, String str2, String str3) {
        ActionMusicCommonn actionMusicCommonn = (ActionMusicCommonn) JsonUtil.parseObject(str2, ActionMusicCommonn.class);
        PFLog.m33w(TAG, "handleControlPlayMode actionMusicCommonn -> " + actionMusicCommonn);
        String action = actionMusicCommonn.getSematic().getAction();
        String type = actionMusicCommonn.getSematic().getType();
        char c = 65535;
        if (!((action.hashCode() == 2432586 && action.equals("OPEN")) ? false : -1)) {
            int r4 = type.hashCode();
            if (r4 != 2614092) {
                if (r4 == 72607563 && type.equals(ParamsSource.LOCAL)) {
                    c = 0;
                }
            } else if (type.equals(ParamsSource.USB0)) {
                c = 1;
            }
            if (c == 0) {
                new PageManager(this.context).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_LOCAL_MUSIC_LIST);
            } else if (c == 1) {
                new PageManager(this.context).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, new String[]{PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.USB_TYPE_KEY}, new String[]{PageConstants.Media.MediaPageId.PAGE_USB_MUSIC_LIST, MediaDef.getUsbTypePage(getSourceUsbType(type))});
            }
        }
        ActionCommon actionCommon = new ActionCommon();
        actionCommon.setUser("ALL");
        ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
        semanticBean.setAction(action);
        semanticBean.setType(actionMusicCommonn.getSematic().getType());
        actionCommon.setSemantic(semanticBean);
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handleControlCollect(java.lang.String r5, java.lang.String r6, java.lang.String r7) throws java.lang.SecurityException, java.io.UnsupportedEncodingException {
        /*
            r4 = this;
            java.lang.Class<com.chery.libvr.bean.action.ActionMusicCommonn> r0 = com.chery.libvr.bean.action.ActionMusicCommonn.class
            java.lang.Object r6 = com.avn.tools.json.JsonUtil.parseObject(r6, r0)
            com.chery.libvr.bean.action.ActionMusicCommonn r6 = (com.chery.libvr.bean.action.ActionMusicCommonn) r6
            java.lang.String r0 = com.chery.media.model.business.VrMediaBusiness.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "handleControlCollect actionMusicCommonn -> "
            r1.append(r2)
            r1.append(r6)
            java.lang.String r1 = r1.toString()
            com.avn.tools.log.PFLog.m33w(r0, r1)
            com.chery.libvr.bean.action.ActionMusicCommonn$SematicBean r6 = r6.getSematic()
            java.lang.String r6 = r6.getAction()
            int r0 = r6.hashCode()
            r1 = -933585851(0xffffffffc85a9c45, float:-223857.08)
            r2 = 2
            r3 = 1
            if (r0 == r1) goto L50
            r1 = 2458420(0x258334, float:3.44498E-39)
            if (r0 == r1) goto L46
            r1 = 1667427594(0x6362ed0a, float:4.1860446E21)
            if (r0 == r1) goto L3c
            goto L5a
        L3c:
            java.lang.String r0 = "COLLECT"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L5a
            r0 = r3
            goto L5b
        L46:
            java.lang.String r0 = "PLAY"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L5a
            r0 = 0
            goto L5b
        L50:
            java.lang.String r0 = "CANCEL_COLLECT"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L5a
            r0 = r2
            goto L5b
        L5a:
            r0 = -1
        L5b:
            if (r0 == 0) goto L6a
            if (r0 == r3) goto L66
            if (r0 == r2) goto L62
            goto L6d
        L62:
            r4.handleRemoveCollectResponse(r5, r6, r7)
            goto L6d
        L66:
            r4.handleAddCollectResponse(r5, r6, r7)
            goto L6d
        L6a:
            r4.handlePlayCollectResponse(r5, r6, r7)
        L6d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.VrMediaBusiness.handleControlCollect(java.lang.String, java.lang.String, java.lang.String):void");
    }

    private void handlePlayCollectResponse(String str, String str2, String str3) throws SecurityException, UnsupportedEncodingException {
        PFLog.m25d(TAG, "handlePlayCollectResponse");
        if (!LocalMusicBusiness.getInstance().getLocalMusics().isEmpty()) {
            if (LocalMusicBusiness.getInstance().getPlaylist().isEmpty()) {
                LocalMusicBusiness.getInstance().changePlaylist(0);
                LocalMusicBusiness.getInstance().changeCurrentPlaying(0);
            }
            LocalMusicBusiness.getInstance().play();
            checkLocalMusicPage();
            responsePlayCollectResponse(str, str2, str3, "1");
            return;
        }
        if (playOtherMusic()) {
            responsePlayCollectResponse(str, str2, str3, "0");
        } else {
            responsePlayCollectResponse(str, str2, str3, "-1");
        }
    }

    private void responsePlayCollectResponse(String str, String str2, String str3, String str4) {
        ActionCommon actionCommon = new ActionCommon();
        actionCommon.setUser("ALL");
        ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
        semanticBean.setAction(str2);
        semanticBean.setValue(str4);
        actionCommon.setSemantic(semanticBean);
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
    }

    private void handleAddCollectResponse(final String str, final String str2, final String str3) {
        PFLog.m25d(TAG, "handleAddCollectResponse");
        if (this.currentMediaSource != 6) {
            PFLog.m25d(TAG, "current media source not usb music");
            return;
        }
        MediaDef.UsbMusicInfo currentPlaying = UsbMusicBusiness.getInstance().getCurrentPlaying(MediaDef.getUsbMusicTypeOfAudioSource(this.currentMediaSource));
        if (currentPlaying == null) {
            PFLog.m25d(TAG, "current usb music null");
            ActionCommon actionCommon = new ActionCommon();
            actionCommon.setUser("ALL");
            ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
            semanticBean.setAction(str2);
            semanticBean.setValue("-1");
            actionCommon.setSemantic(semanticBean);
            sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
            return;
        }
        LocalMusicBusiness.getInstance().addToLocal(currentPlaying, new LocalMusicBusiness.HandleAddResponse() { // from class: com.chery.media.model.business.VrMediaBusiness.12
            @Override // com.chery.media.model.business.LocalMusicBusiness.HandleAddResponse
            public void onAddResult(MediaDef.UsbMusicInfo usbMusicInfo, int r5) {
                PFLog.m25d(VrMediaBusiness.TAG, "onAddResult " + r5);
                ActionCommon actionCommon2 = new ActionCommon();
                actionCommon2.setUser("ALL");
                ActionCommon.SemanticBean semanticBean2 = new ActionCommon.SemanticBean();
                semanticBean2.setAction(str2);
                if (r5 == 0) {
                    semanticBean2.setValue("1");
                } else if (r5 == -2) {
                    semanticBean2.setValue("-2");
                } else if (r5 != -1 && r5 == 1) {
                    semanticBean2.setValue("0");
                } else {
                    semanticBean2.setValue("-1");
                }
                actionCommon2.setSemantic(semanticBean2);
                VrMediaBusiness.this.sendResponse(str, JsonUtil.toJSONString(actionCommon2), str3);
            }
        });
    }

    private void handleRemoveCollectResponse(final String str, final String str2, final String str3) {
        MediaDef.LocalMusicInfo localMusicInfoCheckLocalMusicInfo;
        PFLog.m25d(TAG, "handleRemoveCollectResponse");
        int r0 = this.currentMediaSource;
        if (r0 == 12) {
            localMusicInfoCheckLocalMusicInfo = LocalMusicBusiness.getInstance().getCurrentPlaying();
        } else {
            int usbMusicTypeOfAudioSource = MediaDef.getUsbMusicTypeOfAudioSource(r0);
            if (usbMusicTypeOfAudioSource == -1) {
                PFLog.m25d(TAG, "current media source not local or usb music");
                return;
            }
            localMusicInfoCheckLocalMusicInfo = LocalMusicBusiness.getInstance().checkLocalMusicInfo(UsbMusicBusiness.getInstance().getCurrentPlaying(usbMusicTypeOfAudioSource));
        }
        if (localMusicInfoCheckLocalMusicInfo == null) {
            PFLog.m25d(TAG, "current local music null");
            ActionCommon actionCommon = new ActionCommon();
            actionCommon.setUser("ALL");
            ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
            semanticBean.setAction(str2);
            semanticBean.setValue("0");
            actionCommon.setSemantic(semanticBean);
            sendResponse(str, JsonUtil.toJSONString(actionCommon), str3);
            return;
        }
        LocalMusicBusiness.getInstance().deleteLocal(localMusicInfoCheckLocalMusicInfo, new LocalMusicBusiness.HandleDeleteResponse() { // from class: com.chery.media.model.business.VrMediaBusiness.13
            @Override // com.chery.media.model.business.LocalMusicBusiness.HandleDeleteResponse
            public void onDeleteResult(MediaDef.LocalMusicInfo localMusicInfo, int r5) {
                PFLog.m25d(VrMediaBusiness.TAG, "onDeleteResult " + r5);
                ActionCommon actionCommon2 = new ActionCommon();
                actionCommon2.setUser("ALL");
                ActionCommon.SemanticBean semanticBean2 = new ActionCommon.SemanticBean();
                semanticBean2.setAction(str2);
                if (r5 == 0) {
                    semanticBean2.setValue("1");
                } else if (r5 != -1 && r5 == -2) {
                    semanticBean2.setValue("0");
                } else {
                    semanticBean2.setValue("-1");
                }
                actionCommon2.setSemantic(semanticBean2);
                VrMediaBusiness.this.sendResponse(str, JsonUtil.toJSONString(actionCommon2), str3);
            }
        });
    }

    private void handlePlaySpecificMusic(String str, String str2, String str3) throws SecurityException, UnsupportedEncodingException {
        ActionMusicPLay actionMusicPLay = (ActionMusicPLay) JsonUtil.parseObject(str2, ActionMusicPLay.class);
        PFLog.m33w(TAG, "handlePlaySpecificMusic actionMusicPLay -> " + actionMusicPLay);
        String name = actionMusicPLay.getSemantic().getName();
        String artist = actionMusicPLay.getSemantic().getArtist();
        String album = actionMusicPLay.getSemantic().getAlbum();
        int usbMusicTypeOfAudioSource = MediaDef.getUsbMusicTypeOfAudioSource(this.currentMediaSource);
        int r3 = 0;
        if (usbMusicTypeOfAudioSource != -1) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(Integer.valueOf(usbMusicTypeOfAudioSource));
            while (r3 <= 0) {
                if (r3 != usbMusicTypeOfAudioSource) {
                    arrayList.add(Integer.valueOf(r3));
                }
                r3++;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (playSpecificMusicOfUsb(((Integer) it.next()).intValue(), name, artist, album)) {
                    checkUsbMusicPage();
                    responsePlaySpecificMusicResponse(str, str3, "1");
                    return;
                }
            }
            if (playSpecificMusicOfLocal(name, artist, album)) {
                checkLocalMusicPage();
                responsePlaySpecificMusicResponse(str, str3, "1");
                return;
            }
        } else {
            if (playSpecificMusicOfLocal(name, artist, album)) {
                checkLocalMusicPage();
                responsePlaySpecificMusicResponse(str, str3, "1");
                return;
            }
            while (r3 <= 0) {
                if (playSpecificMusicOfUsb(r3, name, artist, album)) {
                    checkUsbMusicPage();
                    responsePlaySpecificMusicResponse(str, str3, "1");
                    return;
                }
                r3++;
            }
        }
        if (playOtherMusic()) {
            responsePlaySpecificMusicResponse(str, str3, "0");
        } else {
            responsePlaySpecificMusicResponse(str, str3, "-1");
        }
    }

    private void responsePlaySpecificMusicResponse(String str, String str2, String str3) {
        ActionCommon actionCommon = new ActionCommon();
        actionCommon.setUser("ALL");
        ActionCommon.SemanticBean semanticBean = new ActionCommon.SemanticBean();
        semanticBean.setAction("");
        semanticBean.setValue(str3);
        actionCommon.setSemantic(semanticBean);
        sendResponse(str, JsonUtil.toJSONString(actionCommon), str2);
    }

    private boolean playSpecificMusicOfLocal(String str, String str2, String str3) {
        PFLog.m25d(TAG, String.format("playSpecificMusicOfLocal %s %s %s", str, str2, str3));
        List<MediaDef.LocalMusicInfo> listQueryLocalMusics = queryLocalMusics(str, str2, str3);
        if (!listQueryLocalMusics.isEmpty()) {
            LocalMusicBusiness.getInstance().changePlaylist(1, listQueryLocalMusics);
            LocalMusicBusiness.getInstance().changeCurrentPlaying(0);
            LocalMusicBusiness.getInstance().play();
        }
        return !listQueryLocalMusics.isEmpty();
    }

    private List<MediaDef.LocalMusicInfo> queryLocalMusics(String str, String str2, String str3) {
        PFLog.m25d(TAG, String.format("queryLocalMusics %s %s %s", str, str2, str3));
        ArrayList arrayList = new ArrayList();
        for (MediaDef.LocalMusicInfo localMusicInfo : LocalMusicBusiness.getInstance().getLocalMusics()) {
            if (TextUtils.isEmpty(str) || str.equals(localMusicInfo.originalMusicInfo.title)) {
                if (TextUtils.isEmpty(str2) || str2.equals(localMusicInfo.originalMusicInfo.artist)) {
                    if (TextUtils.isEmpty(str3) || str.equals(localMusicInfo.originalMusicInfo.album)) {
                        arrayList.add(localMusicInfo);
                    }
                }
            }
        }
        PFLog.m25d(TAG, String.format("queryLocalMusics result: %s", arrayList));
        return arrayList;
    }

    private boolean playSpecificMusicOfUsb(int r7, String str, String str2, String str3) {
        PFLog.m25d(TAG, String.format("playSpecificMusicOfUsb %s %s %s", str, str2, str3));
        List<MediaDef.UsbMusicInfo> listQueryUsbMusics = queryUsbMusics(r7, str, str2, str3);
        if (!listQueryUsbMusics.isEmpty()) {
            UsbMusicBusiness.getInstance().changePlaylist(r7, 2, null, listQueryUsbMusics);
            UsbMusicBusiness.getInstance().changeCurrentPlaying(r7, 0);
            UsbMusicBusiness.getInstance().play(r7);
        }
        return !listQueryUsbMusics.isEmpty();
    }

    private List<MediaDef.UsbMusicInfo> queryUsbMusics(int r5, String str, String str2, String str3) {
        PFLog.m25d(TAG, String.format("queryUsbMusics %s %s %s", str, str2, str3));
        ArrayList arrayList = new ArrayList();
        for (MediaDef.UsbMusicInfo usbMusicInfo : UsbScannerBusiness.getInstance().getMusics(r5)) {
            if (TextUtils.isEmpty(str) || str.equals(usbMusicInfo.title)) {
                if (TextUtils.isEmpty(str2) || str2.equals(usbMusicInfo.artist)) {
                    if (TextUtils.isEmpty(str3) || str.equals(usbMusicInfo.album)) {
                        arrayList.add(usbMusicInfo);
                    }
                }
            }
        }
        PFLog.m25d(TAG, String.format("queryUsbMusics result: %s", arrayList));
        return arrayList;
    }

    private boolean playOtherMusic() throws SecurityException, UnsupportedEncodingException {
        PFLog.m25d(TAG, "playOtherMusic");
        if (this.currentMediaSource == 12 && !LocalMusicBusiness.getInstance().getLocalMusics().isEmpty()) {
            if (LocalMusicBusiness.getInstance().getPlaylist().isEmpty()) {
                LocalMusicBusiness.getInstance().changePlaylist(0);
                LocalMusicBusiness.getInstance().changeCurrentPlaying(0);
            }
            LocalMusicBusiness.getInstance().play();
            checkLocalMusicPage();
            return true;
        }
        int usbMusicTypeOfAudioSource = MediaDef.getUsbMusicTypeOfAudioSource(this.currentMediaSource);
        if (usbMusicTypeOfAudioSource != -1 && !UsbMusicBusiness.getInstance().getPlaylist(usbMusicTypeOfAudioSource).isEmpty()) {
            UsbMusicBusiness.getInstance().play(usbMusicTypeOfAudioSource);
            checkUsbMusicPage();
            return true;
        }
        if (this.currentMediaSource == 5 && BtMusicBusiness.getInstance().getBtMusicState().getValue().booleanValue()) {
            BtMusicBusiness.getInstance().requestBtMusicAudioFocus();
            BtMusicBusiness.getInstance().play();
            checkBtMusicPage();
            return true;
        }
        if (!LocalMusicBusiness.getInstance().getLocalMusics().isEmpty()) {
            if (LocalMusicBusiness.getInstance().getPlaylist().isEmpty()) {
                LocalMusicBusiness.getInstance().changePlaylist(0);
                LocalMusicBusiness.getInstance().changeCurrentPlaying(0);
            }
            LocalMusicBusiness.getInstance().play();
            checkLocalMusicPage();
            return true;
        }
        for (int r0 = 0; r0 <= 0; r0++) {
            if (!UsbMusicBusiness.getInstance().getPlaylist(r0).isEmpty()) {
                UsbMusicBusiness.getInstance().play(r0);
                checkUsbMusicPage();
                return true;
            }
        }
        if (!BtMusicBusiness.getInstance().getBtMusicState().getValue().booleanValue()) {
            return false;
        }
        BtMusicBusiness.getInstance().requestBtMusicAudioFocus();
        BtMusicBusiness.getInstance().play();
        checkBtMusicPage();
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getSourceUsbType(java.lang.String r4) {
        /*
            r3 = this;
            int r3 = r4.hashCode()
            r0 = 0
            r1 = -1
            r2 = 1
            switch(r3) {
                case 2614092: goto L15;
                case 2614093: goto Lb;
                default: goto La;
            }
        La:
            goto L1f
        Lb:
            java.lang.String r3 = "USB1"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L1f
            r3 = r2
            goto L20
        L15:
            java.lang.String r3 = "USB0"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L1f
            r3 = r0
            goto L20
        L1f:
            r3 = r1
        L20:
            if (r3 == 0) goto L26
            if (r3 == r2) goto L25
            return r1
        L25:
            return r2
        L26:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.VrMediaBusiness.getSourceUsbType(java.lang.String):int");
    }

    private void checkUsbMusicPage() throws SecurityException, UnsupportedEncodingException {
        ComponentName topActivityComponentName = ActivityUtils.getTopActivityComponentName(this.context);
        if (topActivityComponentName == null) {
            return;
        }
        if (PackageConstants.CarPlay.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || MediaBusiness.getInstance().getCarplayModel().isVideoStarted() || PackageConstants.AndroidAuto.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || ("com.chery.media".equals(topActivityComponentName.getPackageName()) && (PackageConstants.Media.VIDEO_ACTIVITY_NAME.equals(topActivityComponentName.getClassName()) || PackageConstants.Media.VIDEO_PLAYER_ACTIVITY_NAME.equals(topActivityComponentName.getClassName())))) {
            new PageManager(this.context).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_USB_MUSIC_PLAYER);
            MediaBusiness.getInstance().getCarplayModel().requestVideoResource(false);
        }
        MediaActivity mediaActivity = MediaActivity.getInstance();
        if (mediaActivity == null || !mediaActivity.isStarted() || (mediaActivity.getCurrentFragment() instanceof UsbMusicPlayerFragment) || (mediaActivity.getCurrentFragment() instanceof UsbMusicListFragment) || (mediaActivity.getCurrentFragment() instanceof MediaMainFragment)) {
            return;
        }
        mediaActivity.replaceFragment(UsbMusicPlayerFragment.newInstance(null, null));
    }

    private void checkLocalMusicPage() throws SecurityException, UnsupportedEncodingException {
        ComponentName topActivityComponentName = ActivityUtils.getTopActivityComponentName(this.context);
        if (topActivityComponentName == null) {
            return;
        }
        if (PackageConstants.CarPlay.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || MediaBusiness.getInstance().getCarplayModel().isVideoStarted() || PackageConstants.AndroidAuto.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || ("com.chery.media".equals(topActivityComponentName.getPackageName()) && (PackageConstants.Media.VIDEO_ACTIVITY_NAME.equals(topActivityComponentName.getClassName()) || PackageConstants.Media.VIDEO_PLAYER_ACTIVITY_NAME.equals(topActivityComponentName.getClassName())))) {
            new PageManager(this.context).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_LOCAL_MUSIC_PLAYER);
            MediaBusiness.getInstance().getCarplayModel().requestVideoResource(false);
        }
        MediaActivity mediaActivity = MediaActivity.getInstance();
        if (mediaActivity == null || !mediaActivity.isStarted() || (mediaActivity.getCurrentFragment() instanceof LocalMusicPlayerFragment) || (mediaActivity.getCurrentFragment() instanceof LocalMusicListFragment) || (mediaActivity.getCurrentFragment() instanceof MediaMainFragment)) {
            return;
        }
        mediaActivity.replaceFragment(LocalMusicPlayerFragment.newInstance(null, null));
    }

    private void checkBtMusicPage() throws SecurityException, UnsupportedEncodingException {
        ComponentName topActivityComponentName = ActivityUtils.getTopActivityComponentName(this.context);
        if (topActivityComponentName == null) {
            return;
        }
        if (PackageConstants.CarPlay.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || MediaBusiness.getInstance().getCarplayModel().isVideoStarted() || PackageConstants.AndroidAuto.PACKAGE_NAME.equals(topActivityComponentName.getPackageName()) || ("com.chery.media".equals(topActivityComponentName.getPackageName()) && (PackageConstants.Media.VIDEO_ACTIVITY_NAME.equals(topActivityComponentName.getClassName()) || PackageConstants.Media.VIDEO_PLAYER_ACTIVITY_NAME.equals(topActivityComponentName.getClassName())))) {
            new PageManager(this.context).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_BT_MUSIC_PLAYER);
            MediaBusiness.getInstance().getCarplayModel().requestVideoResource(false);
        }
        MediaActivity mediaActivity = MediaActivity.getInstance();
        if (mediaActivity == null || !mediaActivity.isStarted() || (mediaActivity.getCurrentFragment() instanceof BtMusicPlayerFragment) || (mediaActivity.getCurrentFragment() instanceof MediaMainFragment)) {
            return;
        }
        mediaActivity.replaceFragment(BtMusicPlayerFragment.newInstance(null, null));
    }
}
