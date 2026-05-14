package android.car.vms;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IVmsSubscriberClient extends IInterface {

    public static class Default implements IVmsSubscriberClient {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.vms.IVmsSubscriberClient
        public void onLayersAvailabilityChanged(VmsAvailableLayers vmsAvailableLayers) throws RemoteException {
        }

        @Override // android.car.vms.IVmsSubscriberClient
        public void onVmsMessageReceived(VmsLayer vmsLayer, byte[] bArr) throws RemoteException {
        }
    }

    void onLayersAvailabilityChanged(VmsAvailableLayers vmsAvailableLayers) throws RemoteException;

    void onVmsMessageReceived(VmsLayer vmsLayer, byte[] bArr) throws RemoteException;

    public static abstract class Stub extends Binder implements IVmsSubscriberClient {
        private static final String DESCRIPTOR = "android.car.vms.IVmsSubscriberClient";
        static final int TRANSACTION_onLayersAvailabilityChanged = 2;
        static final int TRANSACTION_onVmsMessageReceived = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVmsSubscriberClient asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IVmsSubscriberClient)) {
                return (IVmsSubscriberClient) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r5, Parcel parcel, Parcel parcel2, int r8) throws RemoteException {
            if (r5 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onVmsMessageReceived(parcel.readInt() != 0 ? VmsLayer.CREATOR.createFromParcel(parcel) : null, parcel.createByteArray());
                return true;
            }
            if (r5 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onLayersAvailabilityChanged(parcel.readInt() != 0 ? VmsAvailableLayers.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (r5 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(r5, parcel, parcel2, r8);
        }

        private static class Proxy implements IVmsSubscriberClient {
            public static IVmsSubscriberClient sDefaultImpl;
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

            @Override // android.car.vms.IVmsSubscriberClient
            public void onVmsMessageReceived(VmsLayer vmsLayer, byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (vmsLayer != null) {
                        parcelObtain.writeInt(1);
                        vmsLayer.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeByteArray(bArr);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onVmsMessageReceived(vmsLayer, bArr);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.vms.IVmsSubscriberClient
            public void onLayersAvailabilityChanged(VmsAvailableLayers vmsAvailableLayers) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (vmsAvailableLayers != null) {
                        parcelObtain.writeInt(1);
                        vmsAvailableLayers.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onLayersAvailabilityChanged(vmsAvailableLayers);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IVmsSubscriberClient iVmsSubscriberClient) {
            if (Proxy.sDefaultImpl != null || iVmsSubscriberClient == null) {
                return false;
            }
            Proxy.sDefaultImpl = iVmsSubscriberClient;
            return true;
        }

        public static IVmsSubscriberClient getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
