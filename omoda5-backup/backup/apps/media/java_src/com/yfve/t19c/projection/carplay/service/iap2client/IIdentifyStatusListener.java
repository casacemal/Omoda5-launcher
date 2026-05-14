package com.yfve.t19c.projection.carplay.service.iap2client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IIdentifyStatusListener extends IInterface {

    public static class Default implements IIdentifyStatusListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIdentifyStatusListener
        public void onIAP2NodeStatus(boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIdentifyStatusListener
        public void onIdentifyStatusChanged(int r1, int r2, int r3) throws RemoteException {
        }
    }

    void onIAP2NodeStatus(boolean z) throws RemoteException;

    void onIdentifyStatusChanged(int r1, int r2, int r3) throws RemoteException;

    public static abstract class Stub extends Binder implements IIdentifyStatusListener {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.carplay.service.iap2client.IIdentifyStatusListener";
        static final int TRANSACTION_onIAP2NodeStatus = 1;
        static final int TRANSACTION_onIdentifyStatusChanged = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IIdentifyStatusListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IIdentifyStatusListener)) {
                return (IIdentifyStatusListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onIAP2NodeStatus(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            }
            if (r4 != 2) {
                if (r4 == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(r4, parcel, parcel2, r7);
            }
            parcel.enforceInterface(DESCRIPTOR);
            onIdentifyStatusChanged(parcel.readInt(), parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements IIdentifyStatusListener {
            public static IIdentifyStatusListener sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIdentifyStatusListener
            public void onIAP2NodeStatus(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onIAP2NodeStatus(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIdentifyStatusListener
            public void onIdentifyStatusChanged(int r5, int r6, int r7) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(r7);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onIdentifyStatusChanged(r5, r6, r7);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IIdentifyStatusListener iIdentifyStatusListener) {
            if (Proxy.sDefaultImpl != null || iIdentifyStatusListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iIdentifyStatusListener;
            return true;
        }

        public static IIdentifyStatusListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
