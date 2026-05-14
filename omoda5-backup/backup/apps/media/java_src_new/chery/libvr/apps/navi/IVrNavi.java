package com.chery.libvr.apps.navi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.chery.libvr.apps.navi.IVrNaviCallback;

/* loaded from: classes.dex */
public interface IVrNavi extends IInterface {

    public static class Default implements IVrNavi {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.libvr.apps.navi.IVrNavi
        public int onResponse(String str, String str2, String str3, String str4) throws RemoteException {
            return 0;
        }

        @Override // com.chery.libvr.apps.navi.IVrNavi
        public void registerVrNaviCallback(IVrNaviCallback iVrNaviCallback) throws RemoteException {
        }

        @Override // com.chery.libvr.apps.navi.IVrNavi
        public void unregisterVrNaviCallback(IVrNaviCallback iVrNaviCallback) throws RemoteException {
        }
    }

    int onResponse(String str, String str2, String str3, String str4) throws RemoteException;

    void registerVrNaviCallback(IVrNaviCallback iVrNaviCallback) throws RemoteException;

    void unregisterVrNaviCallback(IVrNaviCallback iVrNaviCallback) throws RemoteException;

    public static abstract class Stub extends Binder implements IVrNavi {
        private static final String DESCRIPTOR = "com.chery.libvr.apps.navi.IVrNavi";
        static final int TRANSACTION_onResponse = 3;
        static final int TRANSACTION_registerVrNaviCallback = 1;
        static final int TRANSACTION_unregisterVrNaviCallback = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVrNavi asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IVrNavi)) {
                return (IVrNavi) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                registerVrNaviCallback(IVrNaviCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                unregisterVrNaviCallback(IVrNaviCallback.Stub.asInterface(parcel.readStrongBinder()));
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

        private static class Proxy implements IVrNavi {
            public static IVrNavi sDefaultImpl;
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

            @Override // com.chery.libvr.apps.navi.IVrNavi
            public void registerVrNaviCallback(IVrNaviCallback iVrNaviCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVrNaviCallback != null ? iVrNaviCallback.asBinder() : null);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerVrNaviCallback(iVrNaviCallback);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.libvr.apps.navi.IVrNavi
            public void unregisterVrNaviCallback(IVrNaviCallback iVrNaviCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVrNaviCallback != null ? iVrNaviCallback.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterVrNaviCallback(iVrNaviCallback);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.libvr.apps.navi.IVrNavi
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

        public static boolean setDefaultImpl(IVrNavi iVrNavi) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iVrNavi == null) {
                return false;
            }
            Proxy.sDefaultImpl = iVrNavi;
            return true;
        }

        public static IVrNavi getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
