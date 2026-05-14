package com.chery.eol;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IEolMediaService extends IInterface {

    public static class Default implements IEolMediaService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.eol.IEolMediaService
        public void changeCurrentSrc(byte b) throws RemoteException {
        }

        @Override // com.chery.eol.IEolMediaService
        public int getCurrentSrc() throws RemoteException {
            return 0;
        }

        @Override // com.chery.eol.IEolMediaService
        public byte[] getDesiredFileAndTime() throws RemoteException {
            return null;
        }

        @Override // com.chery.eol.IEolMediaService
        public void setDesiredFileOrTime(byte[] bArr) throws RemoteException {
        }

        @Override // com.chery.eol.IEolMediaService
        public void setFastPlayMode(byte b) throws RemoteException {
        }

        @Override // com.chery.eol.IEolMediaService
        public void setPlayMode(byte[] bArr) throws RemoteException {
        }

        @Override // com.chery.eol.IEolMediaService
        public void setPlayPauseState(byte b) throws RemoteException {
        }

        @Override // com.chery.eol.IEolMediaService
        public void setSkipTrack(byte b) throws RemoteException {
        }
    }

    void changeCurrentSrc(byte b) throws RemoteException;

    int getCurrentSrc() throws RemoteException;

    byte[] getDesiredFileAndTime() throws RemoteException;

    void setDesiredFileOrTime(byte[] bArr) throws RemoteException;

    void setFastPlayMode(byte b) throws RemoteException;

    void setPlayMode(byte[] bArr) throws RemoteException;

    void setPlayPauseState(byte b) throws RemoteException;

    void setSkipTrack(byte b) throws RemoteException;

    public static abstract class Stub extends Binder implements IEolMediaService {
        private static final String DESCRIPTOR = "com.chery.eol.IEolMediaService";
        static final int TRANSACTION_changeCurrentSrc = 2;
        static final int TRANSACTION_getCurrentSrc = 1;
        static final int TRANSACTION_getDesiredFileAndTime = 8;
        static final int TRANSACTION_setDesiredFileOrTime = 7;
        static final int TRANSACTION_setFastPlayMode = 5;
        static final int TRANSACTION_setPlayMode = 4;
        static final int TRANSACTION_setPlayPauseState = 3;
        static final int TRANSACTION_setSkipTrack = 6;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IEolMediaService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IEolMediaService)) {
                return (IEolMediaService) iInterfaceQueryLocalInterface;
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
                    int currentSrc = getCurrentSrc();
                    parcel2.writeNoException();
                    parcel2.writeInt(currentSrc);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    changeCurrentSrc(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPlayPauseState(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPlayMode(parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFastPlayMode(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSkipTrack(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDesiredFileOrTime(parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] desiredFileAndTime = getDesiredFileAndTime();
                    parcel2.writeNoException();
                    parcel2.writeByteArray(desiredFileAndTime);
                    return true;
                default:
                    return super.onTransact(r4, parcel, parcel2, r7);
            }
        }

        private static class Proxy implements IEolMediaService {
            public static IEolMediaService sDefaultImpl;
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

            @Override // com.chery.eol.IEolMediaService
            public int getCurrentSrc() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentSrc();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolMediaService
            public void changeCurrentSrc(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().changeCurrentSrc(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolMediaService
            public void setPlayPauseState(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setPlayPauseState(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolMediaService
            public void setPlayMode(byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setPlayMode(bArr);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolMediaService
            public void setFastPlayMode(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setFastPlayMode(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolMediaService
            public void setSkipTrack(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setSkipTrack(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolMediaService
            public void setDesiredFileOrTime(byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setDesiredFileOrTime(bArr);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEolMediaService
            public byte[] getDesiredFileAndTime() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getDesiredFileAndTime();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IEolMediaService iEolMediaService) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iEolMediaService == null) {
                return false;
            }
            Proxy.sDefaultImpl = iEolMediaService;
            return true;
        }

        public static IEolMediaService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
