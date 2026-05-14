package com.yfve.t19c.projection.carplay.service.cpclient;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.Surface;
import com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayAudioListener;
import com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayCommListener;
import com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayServerListener;
import com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener;

/* loaded from: classes.dex */
public interface ICarPlayComm extends IInterface {
    public static final int TOUCH_STATE_NO_PRESSED = 0;
    public static final int TOUCH_STATE_PRESSED = 1;

    public static class Default implements ICarPlayComm {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void lunchCarPlayApp(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void prepareAltAudio() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void prepareMainAudio() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void refreshBonjour(boolean z, String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void registerCarPlayAudioListener(ICarPlayAudioListener iCarPlayAudioListener) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void registerCarPlayServerListener(ICarPlayServerListener iCarPlayServerListener) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void registerCarPlaySessionListener(ICarPlaySessionListener iCarPlaySessionListener) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void registerCommListener(ICarPlayCommListener iCarPlayCommListener) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public boolean requestAudioResource(int r1, boolean z) throws RemoteException {
            return false;
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void requestBorrowAudio(int r1, boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void requestBorrowVideo(int r1, boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public boolean requestResource(int r1, boolean z) throws RemoteException {
            return false;
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public boolean requestVideoResource(int r1, boolean z) throws RemoteException {
            return false;
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void sendChangeModeRequest(int r1, int r2, int r3, int r4, int r5, int r6, int r7, int r8, int r9, int r10, int r11) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void sendHardKey(int r1, boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void sendIAPMessage(byte[] bArr) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void sendLimitedUIRequest(boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void sendNightModeRequest(boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void sendSiriRequest(int r1) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void sendUIRequest(byte[] bArr) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void setBtMac(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void setGraphic(IGraphicBuffer iGraphicBuffer) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void setSurface(Surface surface) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void startAltAudio() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void startCarPlayServer() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void startCarPlaySession(String str, boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void startMainAudio() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void startVideoStream() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void stopAltAudio() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void stopCarPlayServer() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void stopCarPlaySession() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void stopMainAudio() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void stopVideoStream() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void touchScreenUpdate(byte b, int r2, int r3) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void unregisterCarPlayAudioListener() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void unregisterCarPlayServerListener() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void unregisterCarPlaySessionListener(ICarPlaySessionListener iCarPlaySessionListener) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void unregisterCommListener() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void updateAppSts(int r1, int r2, int r3, int r4) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
        public void updateRightHandDrive(boolean z) throws RemoteException {
        }
    }

    void lunchCarPlayApp(String str) throws RemoteException;

    void prepareAltAudio() throws RemoteException;

    void prepareMainAudio() throws RemoteException;

    void refreshBonjour(boolean z, String str) throws RemoteException;

    void registerCarPlayAudioListener(ICarPlayAudioListener iCarPlayAudioListener) throws RemoteException;

    void registerCarPlayServerListener(ICarPlayServerListener iCarPlayServerListener) throws RemoteException;

    void registerCarPlaySessionListener(ICarPlaySessionListener iCarPlaySessionListener) throws RemoteException;

    void registerCommListener(ICarPlayCommListener iCarPlayCommListener) throws RemoteException;

    boolean requestAudioResource(int r1, boolean z) throws RemoteException;

    void requestBorrowAudio(int r1, boolean z) throws RemoteException;

    void requestBorrowVideo(int r1, boolean z) throws RemoteException;

    boolean requestResource(int r1, boolean z) throws RemoteException;

    boolean requestVideoResource(int r1, boolean z) throws RemoteException;

    void sendChangeModeRequest(int r1, int r2, int r3, int r4, int r5, int r6, int r7, int r8, int r9, int r10, int r11) throws RemoteException;

    void sendHardKey(int r1, boolean z) throws RemoteException;

    void sendIAPMessage(byte[] bArr) throws RemoteException;

    void sendLimitedUIRequest(boolean z) throws RemoteException;

    void sendNightModeRequest(boolean z) throws RemoteException;

    void sendSiriRequest(int r1) throws RemoteException;

    void sendUIRequest(byte[] bArr) throws RemoteException;

    void setBtMac(String str) throws RemoteException;

    void setGraphic(IGraphicBuffer iGraphicBuffer) throws RemoteException;

    void setSurface(Surface surface) throws RemoteException;

    void startAltAudio() throws RemoteException;

    void startCarPlayServer() throws RemoteException;

    void startCarPlaySession(String str, boolean z) throws RemoteException;

    void startMainAudio() throws RemoteException;

    void startVideoStream() throws RemoteException;

    void stopAltAudio() throws RemoteException;

    void stopCarPlayServer() throws RemoteException;

    void stopCarPlaySession() throws RemoteException;

    void stopMainAudio() throws RemoteException;

    void stopVideoStream() throws RemoteException;

    void touchScreenUpdate(byte b, int r2, int r3) throws RemoteException;

    void unregisterCarPlayAudioListener() throws RemoteException;

    void unregisterCarPlayServerListener() throws RemoteException;

    void unregisterCarPlaySessionListener(ICarPlaySessionListener iCarPlaySessionListener) throws RemoteException;

    void unregisterCommListener() throws RemoteException;

    void updateAppSts(int r1, int r2, int r3, int r4) throws RemoteException;

    void updateRightHandDrive(boolean z) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarPlayComm {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm";
        static final int TRANSACTION_lunchCarPlayApp = 5;
        static final int TRANSACTION_prepareAltAudio = 28;
        static final int TRANSACTION_prepareMainAudio = 25;
        static final int TRANSACTION_refreshBonjour = 40;
        static final int TRANSACTION_registerCarPlayAudioListener = 23;
        static final int TRANSACTION_registerCarPlayServerListener = 10;
        static final int TRANSACTION_registerCarPlaySessionListener = 12;
        static final int TRANSACTION_registerCommListener = 21;
        static final int TRANSACTION_requestAudioResource = 17;
        static final int TRANSACTION_requestBorrowAudio = 37;
        static final int TRANSACTION_requestBorrowVideo = 38;
        static final int TRANSACTION_requestResource = 16;
        static final int TRANSACTION_requestVideoResource = 18;
        static final int TRANSACTION_sendChangeModeRequest = 15;
        static final int TRANSACTION_sendHardKey = 31;
        static final int TRANSACTION_sendIAPMessage = 14;
        static final int TRANSACTION_sendLimitedUIRequest = 36;
        static final int TRANSACTION_sendNightModeRequest = 35;
        static final int TRANSACTION_sendSiriRequest = 34;
        static final int TRANSACTION_sendUIRequest = 19;
        static final int TRANSACTION_setBtMac = 6;
        static final int TRANSACTION_setGraphic = 32;
        static final int TRANSACTION_setSurface = 7;
        static final int TRANSACTION_startAltAudio = 29;
        static final int TRANSACTION_startCarPlayServer = 3;
        static final int TRANSACTION_startCarPlaySession = 1;
        static final int TRANSACTION_startMainAudio = 26;
        static final int TRANSACTION_startVideoStream = 8;
        static final int TRANSACTION_stopAltAudio = 30;
        static final int TRANSACTION_stopCarPlayServer = 4;
        static final int TRANSACTION_stopCarPlaySession = 2;
        static final int TRANSACTION_stopMainAudio = 27;
        static final int TRANSACTION_stopVideoStream = 9;
        static final int TRANSACTION_touchScreenUpdate = 20;
        static final int TRANSACTION_unregisterCarPlayAudioListener = 24;
        static final int TRANSACTION_unregisterCarPlayServerListener = 11;
        static final int TRANSACTION_unregisterCarPlaySessionListener = 13;
        static final int TRANSACTION_unregisterCommListener = 22;
        static final int TRANSACTION_updateAppSts = 33;
        static final int TRANSACTION_updateRightHandDrive = 39;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarPlayComm asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarPlayComm)) {
                return (ICarPlayComm) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r16, Parcel parcel, Parcel parcel2, int r19) throws RemoteException {
            if (r16 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (r16) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    startCarPlaySession(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopCarPlaySession();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    startCarPlayServer();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopCarPlayServer();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    lunchCarPlayApp(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    setBtMac(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSurface(parcel.readInt() != 0 ? (Surface) Surface.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    startVideoStream();
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopVideoStream();
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarPlayServerListener(ICarPlayServerListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarPlayServerListener();
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarPlaySessionListener(ICarPlaySessionListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarPlaySessionListener(ICarPlaySessionListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendIAPMessage(parcel.createByteArray());
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendChangeModeRequest(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRequestResource = requestResource(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zRequestResource ? 1 : 0);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRequestAudioResource = requestAudioResource(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zRequestAudioResource ? 1 : 0);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRequestVideoResource = requestVideoResource(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zRequestVideoResource ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendUIRequest(parcel.createByteArray());
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    touchScreenUpdate(parcel.readByte(), parcel.readInt(), parcel.readInt());
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCommListener(ICarPlayCommListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCommListener();
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarPlayAudioListener(ICarPlayAudioListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarPlayAudioListener();
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    prepareMainAudio();
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    startMainAudio();
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopMainAudio();
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    prepareAltAudio();
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    startAltAudio();
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopAltAudio();
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendHardKey(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGraphic(parcel.readInt() != 0 ? IGraphicBuffer.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateAppSts(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendSiriRequest(parcel.readInt());
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendNightModeRequest(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendLimitedUIRequest(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestBorrowAudio(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestBorrowVideo(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateRightHandDrive(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    refreshBonjour(parcel.readInt() != 0, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(r16, parcel, parcel2, r19);
            }
        }

        private static class Proxy implements ICarPlayComm {
            public static ICarPlayComm sDefaultImpl;
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void startCarPlaySession(String str, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startCarPlaySession(str, z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void stopCarPlaySession() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().stopCarPlaySession();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void startCarPlayServer() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startCarPlayServer();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void stopCarPlayServer() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().stopCarPlayServer();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void lunchCarPlayApp(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().lunchCarPlayApp(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void setBtMac(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setBtMac(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void setSurface(Surface surface) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (surface != null) {
                        parcelObtain.writeInt(1);
                        surface.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setSurface(surface);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void startVideoStream() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startVideoStream();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void stopVideoStream() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().stopVideoStream();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void registerCarPlayServerListener(ICarPlayServerListener iCarPlayServerListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarPlayServerListener != null ? iCarPlayServerListener.asBinder() : null);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCarPlayServerListener(iCarPlayServerListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void unregisterCarPlayServerListener() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCarPlayServerListener();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void registerCarPlaySessionListener(ICarPlaySessionListener iCarPlaySessionListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarPlaySessionListener != null ? iCarPlaySessionListener.asBinder() : null);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCarPlaySessionListener(iCarPlaySessionListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void unregisterCarPlaySessionListener(ICarPlaySessionListener iCarPlaySessionListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarPlaySessionListener != null ? iCarPlaySessionListener.asBinder() : null);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCarPlaySessionListener(iCarPlaySessionListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void sendIAPMessage(byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (this.mRemote.transact(14, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().sendIAPMessage(bArr);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void sendChangeModeRequest(int r17, int r18, int r19, int r20, int r21, int r22, int r23, int r24, int r25, int r26, int r27) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r17);
                    parcelObtain.writeInt(r18);
                    parcelObtain.writeInt(r19);
                    parcelObtain.writeInt(r20);
                    parcelObtain.writeInt(r21);
                    parcelObtain.writeInt(r22);
                    parcelObtain.writeInt(r23);
                    parcelObtain.writeInt(r24);
                    parcelObtain.writeInt(r25);
                    parcelObtain.writeInt(r26);
                    parcelObtain.writeInt(r27);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().sendChangeModeRequest(r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public boolean requestResource(int r6, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().requestResource(r6, z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public boolean requestAudioResource(int r6, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().requestAudioResource(r6, z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public boolean requestVideoResource(int r6, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().requestVideoResource(r6, z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void sendUIRequest(byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (this.mRemote.transact(19, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().sendUIRequest(bArr);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void touchScreenUpdate(byte b, int r6, int r7) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(r7);
                    if (this.mRemote.transact(20, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().touchScreenUpdate(b, r6, r7);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void registerCommListener(ICarPlayCommListener iCarPlayCommListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarPlayCommListener != null ? iCarPlayCommListener.asBinder() : null);
                    if (!this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCommListener(iCarPlayCommListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void unregisterCommListener() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCommListener();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void registerCarPlayAudioListener(ICarPlayAudioListener iCarPlayAudioListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarPlayAudioListener != null ? iCarPlayAudioListener.asBinder() : null);
                    if (!this.mRemote.transact(23, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCarPlayAudioListener(iCarPlayAudioListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void unregisterCarPlayAudioListener() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(24, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCarPlayAudioListener();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void prepareMainAudio() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(25, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().prepareMainAudio();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void startMainAudio() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(26, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startMainAudio();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void stopMainAudio() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(27, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().stopMainAudio();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void prepareAltAudio() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(28, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().prepareAltAudio();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void startAltAudio() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(29, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startAltAudio();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void stopAltAudio() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(30, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().stopAltAudio();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void sendHardKey(int r5, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(31, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().sendHardKey(r5, z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void setGraphic(IGraphicBuffer iGraphicBuffer) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (iGraphicBuffer != null) {
                        parcelObtain.writeInt(1);
                        iGraphicBuffer.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(32, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setGraphic(iGraphicBuffer);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void updateAppSts(int r5, int r6, int r7, int r8) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(r7);
                    parcelObtain.writeInt(r8);
                    if (this.mRemote.transact(33, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().updateAppSts(r5, r6, r7, r8);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void sendSiriRequest(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (this.mRemote.transact(34, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().sendSiriRequest(r5);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void sendNightModeRequest(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(35, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().sendNightModeRequest(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void sendLimitedUIRequest(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(36, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().sendLimitedUIRequest(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void requestBorrowAudio(int r5, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(37, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestBorrowAudio(r5, z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void requestBorrowVideo(int r5, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(38, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestBorrowVideo(r5, z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void updateRightHandDrive(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(39, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().updateRightHandDrive(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm
            public void refreshBonjour(boolean z, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(40, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().refreshBonjour(z, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarPlayComm iCarPlayComm) {
            if (Proxy.sDefaultImpl != null || iCarPlayComm == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarPlayComm;
            return true;
        }

        public static ICarPlayComm getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
