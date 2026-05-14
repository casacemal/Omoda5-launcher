package com.chery.media.model.service;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.eol.IEolRadioService;
import com.chery.media.model.business.RadioBusiness;

/* loaded from: classes.dex */
public class EolRadioService extends Service {
    private static final int ACTION_setTunerFavorite = 1;
    private static final String TAG = CarLog.concatTag(CarLog.TAG_TUNER, EolRadioService.class);

    /* renamed from: FM */
    private final byte f280FM = 1;

    /* renamed from: AM */
    private final byte f279AM = 2;
    private final Handler mHandler = new Handler() { // from class: com.chery.media.model.service.EolRadioService.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 1) {
                return;
            }
            RadioBusiness.getInstance().addCollection(RadioBusiness.getInstance().getChannel(), message.arg1 > 0);
        }
    };
    private IEolRadioService.Stub stub = new IEolRadioService.Stub() { // from class: com.chery.media.model.service.EolRadioService.2
        @Override // com.chery.eol.IEolRadioService
        public byte[] getTunerCurrentStatus() throws RemoteException {
            int channel = RadioBusiness.getInstance().getChannel();
            int r0 = RadioBusiness.getInstance().indexOfCollection(channel);
            PFLog.m25d(EolRadioService.TAG, "getTunerCurrentStatus " + channel + " index:" + r0);
            if (channel > RadioBusiness.FREQ_DIVIDE_BAND.intValue()) {
                channel /= 10;
            }
            byte[] bArr = new byte[6];
            bArr[0] = (byte) (bArr[0] | 0);
            bArr[1] = (byte) (bArr[1] | (channel > RadioBusiness.FREQ_DIVIDE_BAND.intValue() ? (byte) 1 : (byte) 2));
            bArr[2] = (byte) (r0 | bArr[2]);
            bArr[3] = (byte) (0 | bArr[3]);
            bArr[4] = (byte) (bArr[4] | ((channel >> 8) & 255));
            bArr[5] = (byte) ((channel & 255) | bArr[5]);
            return bArr;
        }

        @Override // com.chery.eol.IEolRadioService
        public void setBand(byte b) throws RemoteException {
            PFLog.m25d(EolRadioService.TAG, "setBand " + ((int) b));
            if (b == 1) {
                RadioBusiness.getInstance().requestAudioFocus(1);
            } else {
                if (b != 2) {
                    return;
                }
                RadioBusiness.getInstance().requestAudioFocus(0);
            }
        }

        @Override // com.chery.eol.IEolRadioService
        public void setFrequency(byte[] bArr) throws RemoteException {
            PFLog.m25d(EolRadioService.TAG, "setFrequency 0:" + ((int) bArr[0]) + " 1:" + ((int) bArr[1]));
            int r4 = (bArr[0] << 8) + bArr[1];
            RadioBusiness radioBusiness = RadioBusiness.getInstance();
            if (r4 > RadioBusiness.FREQ_DIVIDE_BAND.intValue()) {
                r4 *= 10;
            }
            radioBusiness.tune(r4);
        }

        @Override // com.chery.eol.IEolRadioService
        public void setTunerFavorite(byte b) throws RemoteException {
            PFLog.m25d(EolRadioService.TAG, "setTunerFavorite " + ((int) b));
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.arg1 = b;
            EolRadioService.this.mHandler.sendMessage(messageObtain);
        }

        @Override // com.chery.eol.IEolRadioService
        public void setTunerPreset(byte b) throws RemoteException {
            PFLog.m25d(EolRadioService.TAG, "setTunerPreset " + ((int) b));
        }

        @Override // com.chery.eol.IEolRadioService
        public void setTunerSeek(byte b) throws RemoteException {
            PFLog.m25d(EolRadioService.TAG, "setTunerSeek " + ((int) b));
            if (b == 1) {
                RadioBusiness.getInstance().seek(0, true);
                return;
            }
            if (b == 2) {
                RadioBusiness.getInstance().seek(1, true);
            } else if (b == 3) {
                RadioBusiness.getInstance().step(0);
            } else {
                if (b != 4) {
                    return;
                }
                RadioBusiness.getInstance().step(1);
            }
        }

        @Override // com.chery.eol.IEolRadioService
        public void setTunerAutoStore(byte b) throws RemoteException {
            PFLog.m25d(EolRadioService.TAG, "setTunerAutoStore " + ((int) b));
            if (b == 0) {
                RadioBusiness.getInstance().scan(0, true);
            } else {
                if (b != 1) {
                    return;
                }
                RadioBusiness.getInstance().cancel();
            }
        }

        @Override // com.chery.eol.IEolRadioService
        public void setTunerAutoScanUp(byte b) throws RemoteException {
            PFLog.m25d(EolRadioService.TAG, "setTunerAutoScanUp " + ((int) b));
            if (b == 0) {
                RadioBusiness.getInstance().scan(0, true);
            } else {
                if (b != 1) {
                    return;
                }
                RadioBusiness.getInstance().cancel();
            }
        }

        @Override // com.chery.eol.IEolRadioService
        public void setTunerUpdateStationList(byte b) throws RemoteException {
            PFLog.m25d(EolRadioService.TAG, "setTunerUpdateStationList " + ((int) b));
        }

        @Override // com.chery.eol.IEolRadioService
        public int getSignalStrength() throws RemoteException {
            PFLog.m25d(EolRadioService.TAG, "getSignalStrength ");
            return RadioBusiness.getInstance().getSignalStrength();
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.stub;
    }
}
