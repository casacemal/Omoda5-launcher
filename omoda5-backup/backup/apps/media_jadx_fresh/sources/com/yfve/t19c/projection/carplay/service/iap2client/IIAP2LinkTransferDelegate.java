package com.yfve.t19c.projection.carplay.service.iap2client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkDataReceiveListener;

/* loaded from: classes.dex */
public interface IIAP2LinkTransferDelegate extends IInterface {

    public static class Default implements IIAP2LinkTransferDelegate {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate
        public ConnectionInfo getConnectionInfo() throws RemoteException {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate
        public void registerIAP2LinkDataReceiveListener(IIAP2LinkDataReceiveListener iIAP2LinkDataReceiveListener) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate
        public void sendData(byte[] bArr) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate
        public void unregisterIAP2LinkDataReceiveListener() throws RemoteException {
        }
    }

    ConnectionInfo getConnectionInfo() throws RemoteException;

    void registerIAP2LinkDataReceiveListener(IIAP2LinkDataReceiveListener iIAP2LinkDataReceiveListener) throws RemoteException;

    void sendData(byte[] bArr) throws RemoteException;

    void unregisterIAP2LinkDataReceiveListener() throws RemoteException;

    public static abstract class Stub extends Binder implements IIAP2LinkTransferDelegate {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate";
        static final int TRANSACTION_getConnectionInfo = 4;
        static final int TRANSACTION_registerIAP2LinkDataReceiveListener = 2;
        static final int TRANSACTION_sendData = 1;
        static final int TRANSACTION_unregisterIAP2LinkDataReceiveListener = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IIAP2LinkTransferDelegate asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IIAP2LinkTransferDelegate)) {
                return (IIAP2LinkTransferDelegate) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                sendData(parcel.createByteArray());
                parcel2.writeNoException();
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                registerIAP2LinkDataReceiveListener(IIAP2LinkDataReceiveListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (r4 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                unregisterIAP2LinkDataReceiveListener();
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
            ConnectionInfo connectionInfo = getConnectionInfo();
            parcel2.writeNoException();
            if (connectionInfo != null) {
                parcel2.writeInt(1);
                connectionInfo.writeToParcel(parcel2, 1);
            } else {
                parcel2.writeInt(0);
            }
            return true;
        }

        private static class Proxy implements IIAP2LinkTransferDelegate {
            public static IIAP2LinkTransferDelegate sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate
            public void sendData(byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().sendData(bArr);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate
            public void registerIAP2LinkDataReceiveListener(IIAP2LinkDataReceiveListener iIAP2LinkDataReceiveListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIAP2LinkDataReceiveListener != null ? iIAP2LinkDataReceiveListener.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerIAP2LinkDataReceiveListener(iIAP2LinkDataReceiveListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate
            public void unregisterIAP2LinkDataReceiveListener() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterIAP2LinkDataReceiveListener();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate
            public ConnectionInfo getConnectionInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getConnectionInfo();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ConnectionInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IIAP2LinkTransferDelegate iIAP2LinkTransferDelegate) {
            if (Proxy.sDefaultImpl != null || iIAP2LinkTransferDelegate == null) {
                return false;
            }
            Proxy.sDefaultImpl = iIAP2LinkTransferDelegate;
            return true;
        }

        public static IIAP2LinkTransferDelegate getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
