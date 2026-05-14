package android.car.vms;

import android.car.vms.IVmsPublisherService;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IVmsPublisherClient extends IInterface {

    public static class Default implements IVmsPublisherClient {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.vms.IVmsPublisherClient
        public void onVmsSubscriptionChange(VmsSubscriptionState vmsSubscriptionState) throws RemoteException {
        }

        @Override // android.car.vms.IVmsPublisherClient
        public void setVmsPublisherService(IBinder iBinder, IVmsPublisherService iVmsPublisherService) throws RemoteException {
        }
    }

    void onVmsSubscriptionChange(VmsSubscriptionState vmsSubscriptionState) throws RemoteException;

    void setVmsPublisherService(IBinder iBinder, IVmsPublisherService iVmsPublisherService) throws RemoteException;

    public static abstract class Stub extends Binder implements IVmsPublisherClient {
        private static final String DESCRIPTOR = "android.car.vms.IVmsPublisherClient";
        static final int TRANSACTION_onVmsSubscriptionChange = 2;
        static final int TRANSACTION_setVmsPublisherService = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVmsPublisherClient asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IVmsPublisherClient)) {
                return (IVmsPublisherClient) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                setVmsPublisherService(parcel.readStrongBinder(), IVmsPublisherService.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onVmsSubscriptionChange(parcel.readInt() != 0 ? VmsSubscriptionState.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (r4 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(r4, parcel, parcel2, r7);
        }

        private static class Proxy implements IVmsPublisherClient {
            public static IVmsPublisherClient sDefaultImpl;
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

            @Override // android.car.vms.IVmsPublisherClient
            public void setVmsPublisherService(IBinder iBinder, IVmsPublisherService iVmsPublisherService) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeStrongBinder(iVmsPublisherService != null ? iVmsPublisherService.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().setVmsPublisherService(iBinder, iVmsPublisherService);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.vms.IVmsPublisherClient
            public void onVmsSubscriptionChange(VmsSubscriptionState vmsSubscriptionState) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (vmsSubscriptionState != null) {
                        parcelObtain.writeInt(1);
                        vmsSubscriptionState.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onVmsSubscriptionChange(vmsSubscriptionState);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IVmsPublisherClient iVmsPublisherClient) {
            if (Proxy.sDefaultImpl != null || iVmsPublisherClient == null) {
                return false;
            }
            Proxy.sDefaultImpl = iVmsPublisherClient;
            return true;
        }

        public static IVmsPublisherClient getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
