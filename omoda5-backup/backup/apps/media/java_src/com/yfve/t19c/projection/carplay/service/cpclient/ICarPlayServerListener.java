package com.yfve.t19c.projection.carplay.service.cpclient;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ICarPlayServerListener extends IInterface {

    public static class Default implements ICarPlayServerListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayServerListener
        public void onSessionCreated() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayServerListener
        public void onSessionFailed() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayServerListener
        public void onSessionPluginInfo(String str, String str2, int r3) throws RemoteException {
        }
    }

    void onSessionCreated() throws RemoteException;

    void onSessionFailed() throws RemoteException;

    void onSessionPluginInfo(String str, String str2, int r3) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarPlayServerListener {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayServerListener";
        static final int TRANSACTION_onSessionCreated = 2;
        static final int TRANSACTION_onSessionFailed = 3;
        static final int TRANSACTION_onSessionPluginInfo = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarPlayServerListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarPlayServerListener)) {
                return (ICarPlayServerListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onSessionPluginInfo(parcel.readString(), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onSessionCreated();
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
            onSessionFailed();
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements ICarPlayServerListener {
            public static ICarPlayServerListener sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayServerListener
            public void onSessionPluginInfo(String str, String str2, int r7) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(r7);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSessionPluginInfo(str, str2, r7);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayServerListener
            public void onSessionCreated() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSessionCreated();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayServerListener
            public void onSessionFailed() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSessionFailed();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarPlayServerListener iCarPlayServerListener) {
            if (Proxy.sDefaultImpl != null || iCarPlayServerListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarPlayServerListener;
            return true;
        }

        public static ICarPlayServerListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
