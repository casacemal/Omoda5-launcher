package p004sw.com.dabdrmradio;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import p004sw.com.dabdrmradio.IDabCallBack;

/* loaded from: classes.dex */
public interface IAIDLDabService extends IInterface {

    public static class Default implements IAIDLDabService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // p004sw.com.dabdrmradio.IAIDLDabService
        public void nativeCmdDabAnnouncementSwitch(int r1) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IAIDLDabService
        public void nativeCmdDabBandSelect(byte b) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IAIDLDabService
        public void nativeCmdDabChipPara(byte b, byte b2) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IAIDLDabService
        public void nativeCmdDabClose() throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IAIDLDabService
        public void nativeCmdDabEnsembleServiceComponentSeek(byte b, byte b2) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IAIDLDabService
        public void nativeCmdDabInitAnnounceBandScanFreq(int r1, byte b, byte b2, int r4, int r5, int r6, int r7) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IAIDLDabService
        public void nativeCmdDabLinkingOption(byte b) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IAIDLDabService
        public void nativeCmdDabScanStart(byte b) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IAIDLDabService
        public void nativeCmdDabServiceComponentSelectPlay(int r1, int r2, int r3, int r4) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IAIDLDabService
        public void nativeCmdDabSetFmRdsInfo(int r1, int r2, String str, byte b, byte b2, byte b3, byte b4) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IAIDLDabService
        public void nativeCmdDabSetFmRdsScan(byte b, int r2, int r3) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IAIDLDabService
        public void nativeCmdDabSetVBER(byte b, int r2) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IAIDLDabService
        public String nativeGetVersion() throws RemoteException {
            return null;
        }

        @Override // p004sw.com.dabdrmradio.IAIDLDabService
        public void registerCallBack(IDabCallBack iDabCallBack) throws RemoteException {
        }
    }

    void nativeCmdDabAnnouncementSwitch(int r1) throws RemoteException;

    void nativeCmdDabBandSelect(byte b) throws RemoteException;

    void nativeCmdDabChipPara(byte b, byte b2) throws RemoteException;

    void nativeCmdDabClose() throws RemoteException;

    void nativeCmdDabEnsembleServiceComponentSeek(byte b, byte b2) throws RemoteException;

    void nativeCmdDabInitAnnounceBandScanFreq(int r1, byte b, byte b2, int r4, int r5, int r6, int r7) throws RemoteException;

    void nativeCmdDabLinkingOption(byte b) throws RemoteException;

    void nativeCmdDabScanStart(byte b) throws RemoteException;

    void nativeCmdDabServiceComponentSelectPlay(int r1, int r2, int r3, int r4) throws RemoteException;

    void nativeCmdDabSetFmRdsInfo(int r1, int r2, String str, byte b, byte b2, byte b3, byte b4) throws RemoteException;

    void nativeCmdDabSetFmRdsScan(byte b, int r2, int r3) throws RemoteException;

    void nativeCmdDabSetVBER(byte b, int r2) throws RemoteException;

    String nativeGetVersion() throws RemoteException;

    void registerCallBack(IDabCallBack iDabCallBack) throws RemoteException;

    public static abstract class Stub extends Binder implements IAIDLDabService {
        private static final String DESCRIPTOR = "sw.com.dabdrmradio.IAIDLDabService";
        static final int TRANSACTION_nativeCmdDabAnnouncementSwitch = 6;
        static final int TRANSACTION_nativeCmdDabBandSelect = 5;
        static final int TRANSACTION_nativeCmdDabChipPara = 10;
        static final int TRANSACTION_nativeCmdDabClose = 1;
        static final int TRANSACTION_nativeCmdDabEnsembleServiceComponentSeek = 4;
        static final int TRANSACTION_nativeCmdDabInitAnnounceBandScanFreq = 7;
        static final int TRANSACTION_nativeCmdDabLinkingOption = 14;
        static final int TRANSACTION_nativeCmdDabScanStart = 2;
        static final int TRANSACTION_nativeCmdDabServiceComponentSelectPlay = 3;
        static final int TRANSACTION_nativeCmdDabSetFmRdsInfo = 12;
        static final int TRANSACTION_nativeCmdDabSetFmRdsScan = 13;
        static final int TRANSACTION_nativeCmdDabSetVBER = 11;
        static final int TRANSACTION_nativeGetVersion = 8;
        static final int TRANSACTION_registerCallBack = 9;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAIDLDabService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IAIDLDabService)) {
                return (IAIDLDabService) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r11, Parcel parcel, Parcel parcel2, int r14) throws RemoteException {
            if (r11 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (r11) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    nativeCmdDabClose();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    nativeCmdDabScanStart(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    nativeCmdDabServiceComponentSelectPlay(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    nativeCmdDabEnsembleServiceComponentSeek(parcel.readByte(), parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    nativeCmdDabBandSelect(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    nativeCmdDabAnnouncementSwitch(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    nativeCmdDabInitAnnounceBandScanFreq(parcel.readInt(), parcel.readByte(), parcel.readByte(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strNativeGetVersion = nativeGetVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(strNativeGetVersion);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCallBack(IDabCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    nativeCmdDabChipPara(parcel.readByte(), parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    nativeCmdDabSetVBER(parcel.readByte(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    nativeCmdDabSetFmRdsInfo(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readByte(), parcel.readByte(), parcel.readByte(), parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    nativeCmdDabSetFmRdsScan(parcel.readByte(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    nativeCmdDabLinkingOption(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(r11, parcel, parcel2, r14);
            }
        }

        private static class Proxy implements IAIDLDabService {
            public static IAIDLDabService sDefaultImpl;
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

            @Override // p004sw.com.dabdrmradio.IAIDLDabService
            public void nativeCmdDabClose() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().nativeCmdDabClose();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IAIDLDabService
            public void nativeCmdDabScanStart(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().nativeCmdDabScanStart(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IAIDLDabService
            public void nativeCmdDabServiceComponentSelectPlay(int r5, int r6, int r7, int r8) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(r7);
                    parcelObtain.writeInt(r8);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().nativeCmdDabServiceComponentSelectPlay(r5, r6, r7, r8);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IAIDLDabService
            public void nativeCmdDabEnsembleServiceComponentSeek(byte b, byte b2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    parcelObtain.writeByte(b2);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().nativeCmdDabEnsembleServiceComponentSeek(b, b2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IAIDLDabService
            public void nativeCmdDabBandSelect(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().nativeCmdDabBandSelect(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IAIDLDabService
            public void nativeCmdDabAnnouncementSwitch(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().nativeCmdDabAnnouncementSwitch(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IAIDLDabService
            public void nativeCmdDabInitAnnounceBandScanFreq(int r13, byte b, byte b2, int r16, int r17, int r18, int r19) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r13);
                    parcelObtain.writeByte(b);
                    parcelObtain.writeByte(b2);
                    parcelObtain.writeInt(r16);
                    parcelObtain.writeInt(r17);
                    parcelObtain.writeInt(r18);
                    parcelObtain.writeInt(r19);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().nativeCmdDabInitAnnounceBandScanFreq(r13, b, b2, r16, r17, r18, r19);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IAIDLDabService
            public String nativeGetVersion() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().nativeGetVersion();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IAIDLDabService
            public void registerCallBack(IDabCallBack iDabCallBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iDabCallBack != null ? iDabCallBack.asBinder() : null);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCallBack(iDabCallBack);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IAIDLDabService
            public void nativeCmdDabChipPara(byte b, byte b2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    parcelObtain.writeByte(b2);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().nativeCmdDabChipPara(b, b2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IAIDLDabService
            public void nativeCmdDabSetVBER(byte b, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().nativeCmdDabSetVBER(b, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IAIDLDabService
            public void nativeCmdDabSetFmRdsInfo(int r13, int r14, String str, byte b, byte b2, byte b3, byte b4) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r13);
                    parcelObtain.writeInt(r14);
                    parcelObtain.writeString(str);
                    parcelObtain.writeByte(b);
                    parcelObtain.writeByte(b2);
                    parcelObtain.writeByte(b3);
                    parcelObtain.writeByte(b4);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().nativeCmdDabSetFmRdsInfo(r13, r14, str, b, b2, b3, b4);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IAIDLDabService
            public void nativeCmdDabSetFmRdsScan(byte b, int r6, int r7) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(r7);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().nativeCmdDabSetFmRdsScan(b, r6, r7);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IAIDLDabService
            public void nativeCmdDabLinkingOption(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().nativeCmdDabLinkingOption(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IAIDLDabService iAIDLDabService) {
            if (Proxy.sDefaultImpl != null || iAIDLDabService == null) {
                return false;
            }
            Proxy.sDefaultImpl = iAIDLDabService;
            return true;
        }

        public static IAIDLDabService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
