package p004sw.com.dabdrmradio;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface IDabCallBack extends IInterface {

    public static class Default implements IDabCallBack {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabAnnouncementState(byte b, byte b2) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabAnnouncementSwitch(int r1) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabBandSelect(byte b) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabChipPara(byte b, byte b2) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabCurrentDynamicLabel(String str) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabCurrentServiceInfor(String str) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabCurrentServiceSignallevel(int r1) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabDateTime(DabEPGTime dabEPGTime) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabEPGInfo(String str, DabEPGTime dabEPGTime, DabEPGTime dabEPGTime2, int r4, int r5, List<DabEPGProgramInfo> list) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabErrorState(byte b) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabFmRdsInfo(String str) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabFmRdsScan(byte b) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabImage(DabImage dabImage) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabLinkingOption(byte b) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabLinkingServiceInfor(String str) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabLogo(String str, DabImage dabImage) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabPlayState(int r1, int r2) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabScanState(int r1, int r2) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabServiceList(String str) throws RemoteException {
        }

        @Override // p004sw.com.dabdrmradio.IDabCallBack
        public void notifyDabVBERState(byte b, byte b2, byte b3) throws RemoteException {
        }
    }

    void notifyDabAnnouncementState(byte b, byte b2) throws RemoteException;

    void notifyDabAnnouncementSwitch(int r1) throws RemoteException;

    void notifyDabBandSelect(byte b) throws RemoteException;

    void notifyDabChipPara(byte b, byte b2) throws RemoteException;

    void notifyDabCurrentDynamicLabel(String str) throws RemoteException;

    void notifyDabCurrentServiceInfor(String str) throws RemoteException;

    void notifyDabCurrentServiceSignallevel(int r1) throws RemoteException;

    void notifyDabDateTime(DabEPGTime dabEPGTime) throws RemoteException;

    void notifyDabEPGInfo(String str, DabEPGTime dabEPGTime, DabEPGTime dabEPGTime2, int r4, int r5, List<DabEPGProgramInfo> list) throws RemoteException;

    void notifyDabErrorState(byte b) throws RemoteException;

    void notifyDabFmRdsInfo(String str) throws RemoteException;

    void notifyDabFmRdsScan(byte b) throws RemoteException;

    void notifyDabImage(DabImage dabImage) throws RemoteException;

    void notifyDabLinkingOption(byte b) throws RemoteException;

    void notifyDabLinkingServiceInfor(String str) throws RemoteException;

    void notifyDabLogo(String str, DabImage dabImage) throws RemoteException;

    void notifyDabPlayState(int r1, int r2) throws RemoteException;

    void notifyDabScanState(int r1, int r2) throws RemoteException;

    void notifyDabServiceList(String str) throws RemoteException;

    void notifyDabVBERState(byte b, byte b2, byte b3) throws RemoteException;

    public static abstract class Stub extends Binder implements IDabCallBack {
        private static final String DESCRIPTOR = "sw.com.dabdrmradio.IDabCallBack";
        static final int TRANSACTION_notifyDabAnnouncementState = 10;
        static final int TRANSACTION_notifyDabAnnouncementSwitch = 8;
        static final int TRANSACTION_notifyDabBandSelect = 7;
        static final int TRANSACTION_notifyDabChipPara = 11;
        static final int TRANSACTION_notifyDabCurrentDynamicLabel = 6;
        static final int TRANSACTION_notifyDabCurrentServiceInfor = 2;
        static final int TRANSACTION_notifyDabCurrentServiceSignallevel = 3;
        static final int TRANSACTION_notifyDabDateTime = 18;
        static final int TRANSACTION_notifyDabEPGInfo = 20;
        static final int TRANSACTION_notifyDabErrorState = 17;
        static final int TRANSACTION_notifyDabFmRdsInfo = 14;
        static final int TRANSACTION_notifyDabFmRdsScan = 15;
        static final int TRANSACTION_notifyDabImage = 9;
        static final int TRANSACTION_notifyDabLinkingOption = 16;
        static final int TRANSACTION_notifyDabLinkingServiceInfor = 12;
        static final int TRANSACTION_notifyDabLogo = 19;
        static final int TRANSACTION_notifyDabPlayState = 1;
        static final int TRANSACTION_notifyDabScanState = 5;
        static final int TRANSACTION_notifyDabServiceList = 4;
        static final int TRANSACTION_notifyDabVBERState = 13;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IDabCallBack asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IDabCallBack)) {
                return (IDabCallBack) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r10, Parcel parcel, Parcel parcel2, int r13) throws RemoteException {
            if (r10 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (r10) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabPlayState(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabCurrentServiceInfor(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabCurrentServiceSignallevel(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabServiceList(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabScanState(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabCurrentDynamicLabel(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabBandSelect(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabAnnouncementSwitch(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabImage(parcel.readInt() != 0 ? DabImage.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabAnnouncementState(parcel.readByte(), parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabChipPara(parcel.readByte(), parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabLinkingServiceInfor(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabVBERState(parcel.readByte(), parcel.readByte(), parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabFmRdsInfo(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabFmRdsScan(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabLinkingOption(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabErrorState(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabDateTime(parcel.readInt() != 0 ? DabEPGTime.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabLogo(parcel.readString(), parcel.readInt() != 0 ? DabImage.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDabEPGInfo(parcel.readString(), parcel.readInt() != 0 ? DabEPGTime.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? DabEPGTime.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.createTypedArrayList(DabEPGProgramInfo.CREATOR));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(r10, parcel, parcel2, r13);
            }
        }

        private static class Proxy implements IDabCallBack {
            public static IDabCallBack sDefaultImpl;
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

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabPlayState(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabPlayState(r5, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabCurrentServiceInfor(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabCurrentServiceInfor(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabCurrentServiceSignallevel(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabCurrentServiceSignallevel(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabServiceList(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabServiceList(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabScanState(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabScanState(r5, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabCurrentDynamicLabel(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabCurrentDynamicLabel(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabBandSelect(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabBandSelect(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabAnnouncementSwitch(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabAnnouncementSwitch(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabImage(DabImage dabImage) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (dabImage != null) {
                        parcelObtain.writeInt(1);
                        dabImage.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabImage(dabImage);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabAnnouncementState(byte b, byte b2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    parcelObtain.writeByte(b2);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabAnnouncementState(b, b2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabChipPara(byte b, byte b2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    parcelObtain.writeByte(b2);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabChipPara(b, b2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabLinkingServiceInfor(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabLinkingServiceInfor(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabVBERState(byte b, byte b2, byte b3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    parcelObtain.writeByte(b2);
                    parcelObtain.writeByte(b3);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabVBERState(b, b2, b3);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabFmRdsInfo(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabFmRdsInfo(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabFmRdsScan(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabFmRdsScan(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabLinkingOption(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabLinkingOption(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabErrorState(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabErrorState(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabDateTime(DabEPGTime dabEPGTime) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (dabEPGTime != null) {
                        parcelObtain.writeInt(1);
                        dabEPGTime.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabDateTime(dabEPGTime);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabLogo(String str, DabImage dabImage) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (dabImage != null) {
                        parcelObtain.writeInt(1);
                        dabImage.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabLogo(str, dabImage);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p004sw.com.dabdrmradio.IDabCallBack
            public void notifyDabEPGInfo(String str, DabEPGTime dabEPGTime, DabEPGTime dabEPGTime2, int r13, int r14, List<DabEPGProgramInfo> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (dabEPGTime != null) {
                        parcelObtain.writeInt(1);
                        dabEPGTime.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (dabEPGTime2 != null) {
                        parcelObtain.writeInt(1);
                        dabEPGTime2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(r13);
                    parcelObtain.writeInt(r14);
                    parcelObtain.writeTypedList(list);
                    if (!this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDabEPGInfo(str, dabEPGTime, dabEPGTime2, r13, r14, list);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IDabCallBack iDabCallBack) {
            if (Proxy.sDefaultImpl != null || iDabCallBack == null) {
                return false;
            }
            Proxy.sDefaultImpl = iDabCallBack;
            return true;
        }

        public static IDabCallBack getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
