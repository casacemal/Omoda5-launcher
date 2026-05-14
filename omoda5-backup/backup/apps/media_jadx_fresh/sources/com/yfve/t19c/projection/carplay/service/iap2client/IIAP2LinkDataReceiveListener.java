package com.yfve.t19c.projection.carplay.service.iap2client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IIAP2LinkDataReceiveListener extends IInterface {

    public static class Default implements IIAP2LinkDataReceiveListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkDataReceiveListener
        public void onDataReceived(byte[] bArr) throws RemoteException {
        }
    }

    void onDataReceived(byte[] bArr) throws RemoteException;

    public static abstract class Stub extends Binder implements IIAP2LinkDataReceiveListener {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkDataReceiveListener";
        static final int TRANSACTION_onDataReceived = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IIAP2LinkDataReceiveListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IIAP2LinkDataReceiveListener)) {
                return (IIAP2LinkDataReceiveListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 != 1) {
                if (r4 == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(r4, parcel, parcel2, r7);
            }
            parcel.enforceInterface(DESCRIPTOR);
            onDataReceived(parcel.createByteArray());
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements IIAP2LinkDataReceiveListener {
            public static IIAP2LinkDataReceiveListener sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkDataReceiveListener
            public void onDataReceived(byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onDataReceived(bArr);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IIAP2LinkDataReceiveListener iIAP2LinkDataReceiveListener) {
            if (Proxy.sDefaultImpl != null || iIAP2LinkDataReceiveListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iIAP2LinkDataReceiveListener;
            return true;
        }

        public static IIAP2LinkDataReceiveListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
