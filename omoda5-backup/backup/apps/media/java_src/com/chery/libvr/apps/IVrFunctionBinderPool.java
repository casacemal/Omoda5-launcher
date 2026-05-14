package com.chery.libvr.apps;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.chery.libvr.apps.IVrInitStatusCallback;

/* loaded from: classes.dex */
public interface IVrFunctionBinderPool extends IInterface {

    public static class Default implements IVrFunctionBinderPool {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.libvr.apps.IVrFunctionBinderPool
        public boolean getVrInitStatus() throws RemoteException {
            return false;
        }

        @Override // com.chery.libvr.apps.IVrFunctionBinderPool
        public IBinder queryFunctionToolBinder(int r1) throws RemoteException {
            return null;
        }

        @Override // com.chery.libvr.apps.IVrFunctionBinderPool
        public void registerVrInitStatusCallback(IVrInitStatusCallback iVrInitStatusCallback) throws RemoteException {
        }

        @Override // com.chery.libvr.apps.IVrFunctionBinderPool
        public void unregisterVrInitStatusCallback(IVrInitStatusCallback iVrInitStatusCallback) throws RemoteException {
        }
    }

    boolean getVrInitStatus() throws RemoteException;

    IBinder queryFunctionToolBinder(int r1) throws RemoteException;

    void registerVrInitStatusCallback(IVrInitStatusCallback iVrInitStatusCallback) throws RemoteException;

    void unregisterVrInitStatusCallback(IVrInitStatusCallback iVrInitStatusCallback) throws RemoteException;

    public static abstract class Stub extends Binder implements IVrFunctionBinderPool {
        private static final String DESCRIPTOR = "com.chery.libvr.apps.IVrFunctionBinderPool";
        static final int TRANSACTION_getVrInitStatus = 4;
        static final int TRANSACTION_queryFunctionToolBinder = 1;
        static final int TRANSACTION_registerVrInitStatusCallback = 2;
        static final int TRANSACTION_unregisterVrInitStatusCallback = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVrFunctionBinderPool asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IVrFunctionBinderPool)) {
                return (IVrFunctionBinderPool) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                IBinder iBinderQueryFunctionToolBinder = queryFunctionToolBinder(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeStrongBinder(iBinderQueryFunctionToolBinder);
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                registerVrInitStatusCallback(IVrInitStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (r4 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                unregisterVrInitStatusCallback(IVrInitStatusCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (r4 != 4) {
                if (r4 == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(r4, parcel, parcel2, r7);
            }
            parcel.enforceInterface(DESCRIPTOR);
            boolean vrInitStatus = getVrInitStatus();
            parcel2.writeNoException();
            parcel2.writeInt(vrInitStatus ? 1 : 0);
            return true;
        }

        private static class Proxy implements IVrFunctionBinderPool {
            public static IVrFunctionBinderPool sDefaultImpl;
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

            @Override // com.chery.libvr.apps.IVrFunctionBinderPool
            public IBinder queryFunctionToolBinder(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().queryFunctionToolBinder(r5);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.libvr.apps.IVrFunctionBinderPool
            public void registerVrInitStatusCallback(IVrInitStatusCallback iVrInitStatusCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVrInitStatusCallback != null ? iVrInitStatusCallback.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerVrInitStatusCallback(iVrInitStatusCallback);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.libvr.apps.IVrFunctionBinderPool
            public void unregisterVrInitStatusCallback(IVrInitStatusCallback iVrInitStatusCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVrInitStatusCallback != null ? iVrInitStatusCallback.asBinder() : null);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterVrInitStatusCallback(iVrInitStatusCallback);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.libvr.apps.IVrFunctionBinderPool
            public boolean getVrInitStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getVrInitStatus();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IVrFunctionBinderPool iVrFunctionBinderPool) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iVrFunctionBinderPool == null) {
                return false;
            }
            Proxy.sDefaultImpl = iVrFunctionBinderPool;
            return true;
        }

        public static IVrFunctionBinderPool getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
