package com.chery.media;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ITunerListener extends IInterface {

    public static class Default implements ITunerListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.media.ITunerListener
        public void basicTypes(int r1, long j, boolean z, float f, double d, String str) throws RemoteException {
        }

        @Override // com.chery.media.ITunerListener
        public void callback(int r1, boolean z, int r3) throws RemoteException {
        }

        @Override // com.chery.media.ITunerListener
        public void regionCallback(int r1) throws RemoteException {
        }
    }

    void basicTypes(int r1, long j, boolean z, float f, double d, String str) throws RemoteException;

    void callback(int r1, boolean z, int r3) throws RemoteException;

    void regionCallback(int r1) throws RemoteException;

    public static abstract class Stub extends Binder implements ITunerListener {
        private static final String DESCRIPTOR = "com.chery.media.ITunerListener";
        static final int TRANSACTION_basicTypes = 1;
        static final int TRANSACTION_callback = 2;
        static final int TRANSACTION_regionCallback = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITunerListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ITunerListener)) {
                return (ITunerListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r12, Parcel parcel, Parcel parcel2, int r15) throws RemoteException {
            if (r12 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                basicTypes(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (r12 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                callback(parcel.readInt(), parcel.readInt() != 0, parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (r12 != 3) {
                if (r12 == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(r12, parcel, parcel2, r15);
            }
            parcel.enforceInterface(DESCRIPTOR);
            regionCallback(parcel.readInt());
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements ITunerListener {
            public static ITunerListener sDefaultImpl;
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

            @Override // com.chery.media.ITunerListener
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

            @Override // com.chery.media.ITunerListener
            public void callback(int r5, boolean z, int r7) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(r7);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().callback(r5, z, r7);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.ITunerListener
            public void regionCallback(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().regionCallback(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ITunerListener iTunerListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTunerListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iTunerListener;
            return true;
        }

        public static ITunerListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
