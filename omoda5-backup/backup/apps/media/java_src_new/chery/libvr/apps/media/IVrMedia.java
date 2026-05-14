package com.chery.libvr.apps.media;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.chery.libvr.apps.media.IVrMediaCallback;

/* loaded from: classes.dex */
public interface IVrMedia extends IInterface {

    public static class Default implements IVrMedia {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.libvr.apps.media.IVrMedia
        public int onResponse(String str, String str2, String str3, String str4) throws RemoteException {
            return 0;
        }

        @Override // com.chery.libvr.apps.media.IVrMedia
        public void registerVrMediaCallback(IVrMediaCallback iVrMediaCallback) throws RemoteException {
        }

        @Override // com.chery.libvr.apps.media.IVrMedia
        public void unregisterVrMediaCallback(IVrMediaCallback iVrMediaCallback) throws RemoteException {
        }
    }

    int onResponse(String str, String str2, String str3, String str4) throws RemoteException;

    void registerVrMediaCallback(IVrMediaCallback iVrMediaCallback) throws RemoteException;

    void unregisterVrMediaCallback(IVrMediaCallback iVrMediaCallback) throws RemoteException;

    public static abstract class Stub extends Binder implements IVrMedia {
        private static final String DESCRIPTOR = "com.chery.libvr.apps.media.IVrMedia";
        static final int TRANSACTION_onResponse = 3;
        static final int TRANSACTION_registerVrMediaCallback = 1;
        static final int TRANSACTION_unregisterVrMediaCallback = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVrMedia asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IVrMedia)) {
                return (IVrMedia) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                registerVrMediaCallback(IVrMediaCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                unregisterVrMediaCallback(IVrMediaCallback.Stub.asInterface(parcel.readStrongBinder()));
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
            int r3 = onResponse(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(r3);
            return true;
        }

        private static class Proxy implements IVrMedia {
            public static IVrMedia sDefaultImpl;
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

            @Override // com.chery.libvr.apps.media.IVrMedia
            public void registerVrMediaCallback(IVrMediaCallback iVrMediaCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVrMediaCallback != null ? iVrMediaCallback.asBinder() : null);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerVrMediaCallback(iVrMediaCallback);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.libvr.apps.media.IVrMedia
            public void unregisterVrMediaCallback(IVrMediaCallback iVrMediaCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVrMediaCallback != null ? iVrMediaCallback.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterVrMediaCallback(iVrMediaCallback);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.libvr.apps.media.IVrMedia
            public int onResponse(String str, String str2, String str3, String str4) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeString(str4);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().onResponse(str, str2, str3, str4);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IVrMedia iVrMedia) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iVrMedia == null) {
                return false;
            }
            Proxy.sDefaultImpl = iVrMedia;
            return true;
        }

        public static IVrMedia getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
