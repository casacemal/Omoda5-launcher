package com.chery.power;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.chery.power.IWakeLockListener;

/* loaded from: classes.dex */
public interface IPowerWakeLock extends IInterface {

    public static class Default implements IPowerWakeLock {
        @Override // com.chery.power.IPowerWakeLock
        public void acquireWakeLock(IWakeLockListener iWakeLockListener, int r2, String str, String str2) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.power.IPowerWakeLock
        public boolean hasWakeLock(int r1) throws RemoteException {
            return false;
        }

        @Override // com.chery.power.IPowerWakeLock
        public void releaseWakeLock(IWakeLockListener iWakeLockListener, int r2) throws RemoteException {
        }
    }

    void acquireWakeLock(IWakeLockListener iWakeLockListener, int r2, String str, String str2) throws RemoteException;

    boolean hasWakeLock(int r1) throws RemoteException;

    void releaseWakeLock(IWakeLockListener iWakeLockListener, int r2) throws RemoteException;

    public static abstract class Stub extends Binder implements IPowerWakeLock {
        private static final String DESCRIPTOR = "com.chery.power.IPowerWakeLock";
        static final int TRANSACTION_acquireWakeLock = 2;
        static final int TRANSACTION_hasWakeLock = 1;
        static final int TRANSACTION_releaseWakeLock = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPowerWakeLock asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IPowerWakeLock)) {
                return (IPowerWakeLock) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zHasWakeLock = hasWakeLock(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(zHasWakeLock ? 1 : 0);
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                acquireWakeLock(IWakeLockListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (r4 != 3) {
                if (r4 == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(r4, parcel, parcel2, r7);
            }
            parcel.enforceInterface(DESCRIPTOR);
            releaseWakeLock(IWakeLockListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements IPowerWakeLock {
            public static IPowerWakeLock sDefaultImpl;
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

            @Override // com.chery.power.IPowerWakeLock
            public boolean hasWakeLock(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().hasWakeLock(r5);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.power.IPowerWakeLock
            public void acquireWakeLock(IWakeLockListener iWakeLockListener, int r6, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWakeLockListener != null ? iWakeLockListener.asBinder() : null);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().acquireWakeLock(iWakeLockListener, r6, str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.power.IPowerWakeLock
            public void releaseWakeLock(IWakeLockListener iWakeLockListener, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWakeLockListener != null ? iWakeLockListener.asBinder() : null);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().releaseWakeLock(iWakeLockListener, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IPowerWakeLock iPowerWakeLock) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iPowerWakeLock == null) {
                return false;
            }
            Proxy.sDefaultImpl = iPowerWakeLock;
            return true;
        }

        public static IPowerWakeLock getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
