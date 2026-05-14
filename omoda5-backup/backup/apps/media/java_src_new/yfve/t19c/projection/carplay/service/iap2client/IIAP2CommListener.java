package com.yfve.t19c.projection.carplay.service.iap2client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IIAP2CommListener extends IInterface {

    public static class Default implements IIAP2CommListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2CommListener
        public void onError(int r1, int r2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2CommListener
        public void onServiceStatus(int r1, int r2, int r3) throws RemoteException {
        }
    }

    void onError(int r1, int r2) throws RemoteException;

    void onServiceStatus(int r1, int r2, int r3) throws RemoteException;

    public static abstract class Stub extends Binder implements IIAP2CommListener {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2CommListener";
        static final int TRANSACTION_onError = 2;
        static final int TRANSACTION_onServiceStatus = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IIAP2CommListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IIAP2CommListener)) {
                return (IIAP2CommListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onServiceStatus(parcel.readInt(), parcel.readInt(), parcel.readInt());
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
            onError(parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements IIAP2CommListener {
            public static IIAP2CommListener sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2CommListener
            public void onServiceStatus(int r5, int r6, int r7) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(r7);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onServiceStatus(r5, r6, r7);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2CommListener
            public void onError(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onError(r5, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IIAP2CommListener iIAP2CommListener) {
            if (Proxy.sDefaultImpl != null || iIAP2CommListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iIAP2CommListener;
            return true;
        }

        public static IIAP2CommListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
