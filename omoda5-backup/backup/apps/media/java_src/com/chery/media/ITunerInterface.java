package com.chery.media;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.chery.media.ITunerListener;

/* loaded from: classes.dex */
public interface ITunerInterface extends IInterface {

    public static class Default implements ITunerInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.media.ITunerInterface
        public void basicTypes(int r1, long j, boolean z, float f, double d, String str) throws RemoteException {
        }

        @Override // com.chery.media.ITunerInterface
        public int getArea() throws RemoteException {
            return 0;
        }

        @Override // com.chery.media.ITunerInterface
        public int getBand() throws RemoteException {
            return 0;
        }

        @Override // com.chery.media.ITunerInterface
        public int getFreq() throws RemoteException {
            return 0;
        }

        @Override // com.chery.media.ITunerInterface
        public int getRadioSignal() throws RemoteException {
            return 0;
        }

        @Override // com.chery.media.ITunerInterface
        public void registerCallback(ITunerListener iTunerListener) throws RemoteException {
        }

        @Override // com.chery.media.ITunerInterface
        public void scanbackward() throws RemoteException {
        }

        @Override // com.chery.media.ITunerInterface
        public void scanforward() throws RemoteException {
        }

        @Override // com.chery.media.ITunerInterface
        public void setAera(int r1) throws RemoteException {
        }

        @Override // com.chery.media.ITunerInterface
        public void setBand(int r1) throws RemoteException {
        }

        @Override // com.chery.media.ITunerInterface
        public void unregisterCallback(ITunerListener iTunerListener) throws RemoteException {
        }
    }

    void basicTypes(int r1, long j, boolean z, float f, double d, String str) throws RemoteException;

    int getArea() throws RemoteException;

    int getBand() throws RemoteException;

    int getFreq() throws RemoteException;

    int getRadioSignal() throws RemoteException;

    void registerCallback(ITunerListener iTunerListener) throws RemoteException;

    void scanbackward() throws RemoteException;

    void scanforward() throws RemoteException;

    void setAera(int r1) throws RemoteException;

    void setBand(int r1) throws RemoteException;

    void unregisterCallback(ITunerListener iTunerListener) throws RemoteException;

    public static abstract class Stub extends Binder implements ITunerInterface {
        private static final String DESCRIPTOR = "com.chery.media.ITunerInterface";
        static final int TRANSACTION_basicTypes = 1;
        static final int TRANSACTION_getArea = 3;
        static final int TRANSACTION_getBand = 5;
        static final int TRANSACTION_getFreq = 9;
        static final int TRANSACTION_getRadioSignal = 8;
        static final int TRANSACTION_registerCallback = 10;
        static final int TRANSACTION_scanbackward = 6;
        static final int TRANSACTION_scanforward = 7;
        static final int TRANSACTION_setAera = 2;
        static final int TRANSACTION_setBand = 4;
        static final int TRANSACTION_unregisterCallback = 11;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITunerInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ITunerInterface)) {
                return (ITunerInterface) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r12, Parcel parcel, Parcel parcel2, int r15) throws RemoteException {
            if (r12 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (r12) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    basicTypes(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAera(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int area = getArea();
                    parcel2.writeNoException();
                    parcel2.writeInt(area);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    setBand(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int band = getBand();
                    parcel2.writeNoException();
                    parcel2.writeInt(band);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    scanbackward();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    scanforward();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int radioSignal = getRadioSignal();
                    parcel2.writeNoException();
                    parcel2.writeInt(radioSignal);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int freq = getFreq();
                    parcel2.writeNoException();
                    parcel2.writeInt(freq);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCallback(ITunerListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCallback(ITunerListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(r12, parcel, parcel2, r15);
            }
        }

        private static class Proxy implements ITunerInterface {
            public static ITunerInterface sDefaultImpl;
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

            @Override // com.chery.media.ITunerInterface
            public void basicTypes(int r13, long j, boolean z, float f, double d, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r13);
                    parcelObtain.writeLong(j);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeFloat(f);
                    parcelObtain.writeDouble(d);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().basicTypes(r13, j, z, f, d, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.ITunerInterface
            public void setAera(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setAera(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.ITunerInterface
            public int getArea() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getArea();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.ITunerInterface
            public void setBand(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setBand(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.ITunerInterface
            public int getBand() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getBand();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.ITunerInterface
            public void scanbackward() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().scanbackward();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.ITunerInterface
            public void scanforward() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().scanforward();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.ITunerInterface
            public int getRadioSignal() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getRadioSignal();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.ITunerInterface
            public int getFreq() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getFreq();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.ITunerInterface
            public void registerCallback(ITunerListener iTunerListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTunerListener != null ? iTunerListener.asBinder() : null);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCallback(iTunerListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.ITunerInterface
            public void unregisterCallback(ITunerListener iTunerListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTunerListener != null ? iTunerListener.asBinder() : null);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCallback(iTunerListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ITunerInterface iTunerInterface) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTunerInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = iTunerInterface;
            return true;
        }

        public static ITunerInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
