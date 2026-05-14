package com.chery.eol;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IEolRadioService extends IInterface {

    public static class Default implements IEolRadioService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.eol.IEolRadioService
        public int getSignalStrength() throws RemoteException {
            return 0;
        }

        @Override // com.chery.eol.IEolRadioService
        public byte[] getTunerCurrentStatus() throws RemoteException {
            return null;
        }

        @Override // com.chery.eol.IEolRadioService
        public void setBand(byte b) throws RemoteException {
        }

        @Override // com.chery.eol.IEolRadioService
        public void setFrequency(byte[] bArr) throws RemoteException {
        }

        @Override // com.chery.eol.IEolRadioService
        public void setTunerAutoScanUp(byte b) throws RemoteException {
        }

        @Override // com.chery.eol.IEolRadioService
        public void setTunerAutoStore(byte b) throws RemoteException {
        }

        @Override // com.chery.eol.IEolRadioService
        public void setTunerFavorite(byte b) throws RemoteException {
        }

        @Override // com.chery.eol.IEolRadioService
        public void setTunerPreset(byte b) throws RemoteException {
        }

        @Override // com.chery.eol.IEolRadioService
        public void setTunerSeek(byte b) throws RemoteException {
        }

        @Override // com.chery.eol.IEolRadioService
        public void setTunerUpdateStationList(byte b) throws RemoteException {
        }
    }

    int getSignalStrength() throws RemoteException;

    byte[] getTunerCurrentStatus() throws RemoteException;

    void setBand(byte b) throws RemoteException;

    void setFrequency(byte[] bArr) throws RemoteException;

    void setTunerAutoScanUp(byte b) throws RemoteException;

    void setTunerAutoStore(byte b) throws RemoteException;

    void setTunerFavorite(byte b) throws RemoteException;

    void setTunerPreset(byte b) throws RemoteException;

    void setTunerSeek(byte b) throws RemoteException;

    void setTunerUpdateStationList(byte b) throws RemoteException;

    public static abstract class Stub extends Binder implements IEolRadioService {
        private static final String DESCRIPTOR = "com.chery.eol.IEolRadioService";
        static final int TRANSACTION_getSignalStrength = 10;
        static final int TRANSACTION_getTunerCurrentStatus = 1;
        static final int TRANSACTION_setBand = 2;
        static final int TRANSACTION_setFrequency = 3;
        static final int TRANSACTION_setTunerAutoScanUp = 8;
        static final int TRANSACTION_setTunerAutoStore = 7;
        static final int TRANSACTION_setTunerFavorite = 4;
        static final int TRANSACTION_setTunerPreset = 5;
        static final int TRANSACTION_setTunerSeek = 6;
        static final int TRANSACTION_setTunerUpdateStationList = 9;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IEolRadioService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IEolRadioService)) {
                return (IEolRadioService) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (r4) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] tunerCurrentStatus = getTunerCurrentStatus();
                    parcel2.writeNoException();
                    parcel2.writeByteArray(tunerCurrentStatus);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    setBand(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFrequency(parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTunerFavorite(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTunerPreset(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTunerSeek(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTunerAutoStore(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTunerAutoScanUp(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTunerUpdateStationList(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int signalStrength = getSignalStrength();
                    parcel2.writeNoException();
                    parcel2.writeInt(signalStrength);
                    return true;
                default:
                    return super.onTransact(r4, parcel, parcel2, r7);
            }
        }

        private static class Proxy implements IEolRadioService {
            public static IEolRadioService sDefaultImpl;
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

            @Override // com.chery.eol.IEolRadioService
            public byte[] getTunerCurrentStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getTunerCurrentStatus();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolRadioService
            public void setBand(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setBand(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolRadioService
            public void setFrequency(byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setFrequency(bArr);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolRadioService
            public void setTunerFavorite(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setTunerFavorite(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolRadioService
            public void setTunerPreset(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setTunerPreset(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolRadioService
            public void setTunerSeek(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setTunerSeek(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolRadioService
            public void setTunerAutoStore(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setTunerAutoStore(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolRadioService
            public void setTunerAutoScanUp(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setTunerAutoScanUp(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolRadioService
            public void setTunerUpdateStationList(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setTunerUpdateStationList(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolRadioService
            public int getSignalStrength() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSignalStrength();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IEolRadioService iEolRadioService) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iEolRadioService == null) {
                return false;
            }
            Proxy.sDefaultImpl = iEolRadioService;
            return true;
        }

        public static IEolRadioService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
