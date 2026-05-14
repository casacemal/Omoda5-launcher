package com.chery.media.model.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.common.PackageConstants;
import com.chery.common.PageConstants;
import com.chery.common.PageManager;
import com.chery.eol.IEolMediaService;
import com.chery.media.model.business.BtMusicBusiness;
import com.chery.media.model.business.LocalMusicBusiness;
import com.chery.media.model.business.MediaBusiness;
import com.chery.media.model.business.RadioBusiness;
import com.chery.media.model.business.UsbMusicBusiness;
import java.util.Arrays;

/* loaded from: classes.dex */
public class EolMediaService extends Service {
    static final byte SRC_AM = 2;
    static final byte SRC_BT_AUDIO = 5;
    static final byte SRC_DAB = 1;
    static final byte SRC_FM = 3;
    static final byte SRC_IPOD = 7;
    static final byte SRC_LOCAL_MUSIC = 6;
    static final byte SRC_ONLINE_MUSIC = 8;
    static final byte SRC_UNKNOWN = 0;
    static final byte SRC_USB1_MUSIC = 4;
    private static final String TAG = CarLog.concatTag("MEDIA", EolMediaService.class);
    private IEolMediaService.Stub stub = new IEolMediaService.Stub() { // from class: com.chery.media.model.service.EolMediaService.1
        @Override // com.chery.eol.IEolMediaService
        public int getCurrentSrc() throws RemoteException {
            PFLog.m25d(EolMediaService.TAG, "getCurrentSrc");
            int currentAudioSource = MediaBusiness.getInstance().getCurrentAudioSource();
            PFLog.m25d(EolMediaService.TAG, "currentAudioSource " + currentAudioSource);
            int r0 = 6;
            if (currentAudioSource == 1) {
                r0 = 3;
            } else if (currentAudioSource == 2) {
                r0 = 2;
            } else if (currentAudioSource == 3) {
                r0 = 1;
            } else if (currentAudioSource == 5) {
                r0 = 5;
            } else if (currentAudioSource == 6) {
                r0 = 4;
            } else if (currentAudioSource != 12) {
                r0 = 0;
            }
            PFLog.m25d(EolMediaService.TAG, "ret currentSrc " + r0);
            return r0;
        }

        @Override // com.chery.eol.IEolMediaService
        public void changeCurrentSrc(byte b) throws RemoteException {
            PFLog.m25d(EolMediaService.TAG, "changeCurrentSrc " + ((int) b));
            if (b == 2) {
                if (!RadioBusiness.getInstance().requestAudioFocus(0)) {
                    PFLog.m27e(EolMediaService.TAG, "cannot request audio focus for AM");
                    return;
                } else {
                    RadioBusiness.getInstance().setPlayingState(true);
                    new PageManager(EolMediaService.this).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_RADIO_PLAYER);
                    return;
                }
            }
            if (b == 3) {
                if (!RadioBusiness.getInstance().requestAudioFocus(1)) {
                    PFLog.m27e(EolMediaService.TAG, "cannot request audio focus for FM");
                    return;
                } else {
                    RadioBusiness.getInstance().setPlayingState(true);
                    new PageManager(EolMediaService.this).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_RADIO_PLAYER);
                    return;
                }
            }
            if (b == 4) {
                if (!UsbMusicBusiness.getInstance().requestAudioFocus(0)) {
                    PFLog.m27e(EolMediaService.TAG, "cannot request audio focus for usb1 music");
                    return;
                } else {
                    UsbMusicBusiness.getInstance().play(0);
                    new PageManager(EolMediaService.this).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_USB_MUSIC_PLAYER);
                    return;
                }
            }
            if (b == 5) {
                if (!BtMusicBusiness.getInstance().requestBtMusicAudioFocus()) {
                    PFLog.m27e(EolMediaService.TAG, "cannot request audio focus for bt music");
                    return;
                } else {
                    BtMusicBusiness.getInstance().play();
                    new PageManager(EolMediaService.this).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_BT_MUSIC_PLAYER);
                    return;
                }
            }
            if (b != 6) {
                return;
            }
            if (!LocalMusicBusiness.getInstance().requestAudioFocus()) {
                PFLog.m27e(EolMediaService.TAG, "cannot request audio focus for local music");
            } else {
                LocalMusicBusiness.getInstance().play();
                new PageManager(EolMediaService.this).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.MediaPageId.PAGE_LOCAL_MUSIC_PLAYER);
            }
        }

        @Override // com.chery.eol.IEolMediaService
        public void setPlayPauseState(byte b) throws RemoteException {
            PFLog.m25d(EolMediaService.TAG, "setPlayPauseState " + ((int) b));
            if (b == 0) {
                UsbMusicBusiness.getInstance().play(0);
            } else {
                if (b != 1) {
                    return;
                }
                UsbMusicBusiness.getInstance().pause(0);
            }
        }

        @Override // com.chery.eol.IEolMediaService
        public void setPlayMode(byte[] bArr) throws RemoteException {
            PFLog.m25d(EolMediaService.TAG, "setPlayMode " + Arrays.toString(bArr));
            if (bArr.length < 2) {
                PFLog.m27e(EolMediaService.TAG, "mode invalid");
                return;
            }
            byte b = bArr[0];
            byte b2 = bArr[1];
            if (b == 0) {
                if (b2 == 0) {
                    UsbMusicBusiness.getInstance().changePlayMode(0, 2);
                    return;
                } else {
                    if (b2 != 1) {
                        return;
                    }
                    UsbMusicBusiness.getInstance().changePlayMode(0, 1);
                    return;
                }
            }
            if (b != 1) {
                return;
            }
            if (b2 == 0) {
                UsbMusicBusiness.getInstance().changePlayMode(0, 0);
            } else {
                if (b2 != 2) {
                    return;
                }
                UsbMusicBusiness.getInstance().changePlaylist(0, 0, null);
                UsbMusicBusiness.getInstance().changePlayMode(0, 2);
            }
        }

        @Override // com.chery.eol.IEolMediaService
        public void setFastPlayMode(byte b) throws RemoteException {
            PFLog.m25d(EolMediaService.TAG, "setPlayMode " + ((int) b));
            if (!UsbMusicBusiness.getInstance().requestAudioFocus(0)) {
                PFLog.m27e(EolMediaService.TAG, "cannot request audio focus for usb1 music");
                return;
            }
            if (UsbMusicBusiness.getInstance().getCurrentPlaying(0) == null) {
                UsbMusicBusiness.getInstance().changeCurrentPlaying(0, 0);
            }
            if (UsbMusicBusiness.getInstance().getCurrentPlaying(0) == null) {
                PFLog.m27e(EolMediaService.TAG, "current playing null");
            } else if (b == 0) {
                UsbMusicBusiness.getInstance().fastForward(0);
            } else {
                if (b != 1) {
                    return;
                }
                UsbMusicBusiness.getInstance().fastBackward(0);
            }
        }

        @Override // com.chery.eol.IEolMediaService
        public void setSkipTrack(byte b) throws RemoteException {
            PFLog.m25d(EolMediaService.TAG, "setPlayMode " + ((int) b));
            if (!UsbMusicBusiness.getInstance().requestAudioFocus(0)) {
                PFLog.m27e(EolMediaService.TAG, "cannot request audio focus for usb1 music");
            } else if (b == 0) {
                UsbMusicBusiness.getInstance().playNext(0);
            } else {
                if (b != 1) {
                    return;
                }
                UsbMusicBusiness.getInstance().playPrior(0);
            }
        }

        @Override // com.chery.eol.IEolMediaService
        public void setDesiredFileOrTime(byte[] bArr) throws RemoteException {
            PFLog.m25d(EolMediaService.TAG, "setDesiredFileOrTime " + Arrays.toString(bArr));
            if (bArr == null || bArr.length < 1) {
                PFLog.m27e(EolMediaService.TAG, "data invalid");
                return;
            }
            byte b = bArr[0];
            if (b == 0) {
                if (bArr.length < 3) {
                    PFLog.m27e(EolMediaService.TAG, "data length < 3");
                    return;
                }
                int r7 = bArr[2] | (bArr[1] << EolMediaService.SRC_ONLINE_MUSIC);
                PFLog.m25d(EolMediaService.TAG, "trackNum:" + r7);
                UsbMusicBusiness.getInstance().changeCurrentPlaying(0, r7);
                return;
            }
            if (b != 1) {
                return;
            }
            if (bArr.length < 4) {
                PFLog.m27e(EolMediaService.TAG, "data length < 4");
                return;
            }
            int r0 = (bArr[1] << EolMediaService.SRC_ONLINE_MUSIC) | bArr[2];
            PFLog.m25d(EolMediaService.TAG, "minute num:" + r0);
            byte b2 = bArr[3];
            PFLog.m25d(EolMediaService.TAG, "second num:" + ((int) b2));
            if (b2 < 0 || b2 > 59) {
                PFLog.m27e(EolMediaService.TAG, "second num invalid");
            } else {
                UsbMusicBusiness.getInstance().seekTo(0, ((r0 * 60) + b2) * 1000);
            }
        }

        @Override // com.chery.eol.IEolMediaService
        public byte[] getDesiredFileAndTime() throws RemoteException {
            PFLog.m27e(EolMediaService.TAG, "getDesiredFileAndTime");
            int currentPlayingPosition = UsbMusicBusiness.getInstance().getCurrentPlayingPosition(0);
            PFLog.m25d(EolMediaService.TAG, "trackNum:" + currentPlayingPosition);
            byte[] bArr = new byte[6];
            if (currentPlayingPosition < 0) {
                bArr[0] = EolMediaService.SRC_DAB;
            } else {
                bArr[0] = EolMediaService.SRC_UNKNOWN;
                long position = UsbMusicBusiness.getInstance().getPosition(0);
                long j = position / 1000;
                PFLog.m25d(EolMediaService.TAG, String.format("trackTime:%s minuteNum:%s secondNum:%s", Long.valueOf(position), Long.valueOf(j / 60), Long.valueOf(j % 60)));
                bArr[1] = (byte) (bArr[1] | (currentPlayingPosition >> 8));
                bArr[2] = (byte) (currentPlayingPosition | bArr[2]);
                bArr[3] = (byte) (bArr[3] | (r9 >> 8));
                bArr[4] = (byte) (bArr[4] | r9);
                bArr[5] = (byte) (bArr[5] | r5);
            }
            PFLog.m25d(EolMediaService.TAG, "ret data:" + Arrays.toString(bArr));
            return bArr;
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.stub;
    }
}
