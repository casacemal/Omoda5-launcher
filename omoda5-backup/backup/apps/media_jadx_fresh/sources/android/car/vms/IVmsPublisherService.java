package android.car.vms;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IVmsPublisherService extends IInterface {

    public static class Default implements IVmsPublisherService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.vms.IVmsPublisherService
        public int getPublisherId(byte[] bArr) throws RemoteException {
            return 0;
        }

        @Override // android.car.vms.IVmsPublisherService
        public VmsSubscriptionState getSubscriptions() throws RemoteException {
            return null;
        }

        @Override // android.car.vms.IVmsPublisherService
        public void publish(IBinder iBinder, VmsLayer vmsLayer, int r3, byte[] bArr) throws RemoteException {
        }

        @Override // android.car.vms.IVmsPublisherService
        public void setLayersOffering(IBinder iBinder, VmsLayersOffering vmsLayersOffering) throws RemoteException {
        }
    }

    int getPublisherId(byte[] bArr) throws RemoteException;

    VmsSubscriptionState getSubscriptions() throws RemoteException;

    void publish(IBinder iBinder, VmsLayer vmsLayer, int r3, byte[] bArr) throws RemoteException;

    void setLayersOffering(IBinder iBinder, VmsLayersOffering vmsLayersOffering) throws RemoteException;

    public static abstract class Stub extends Binder implements IVmsPublisherService {
        private static final String DESCRIPTOR = "android.car.vms.IVmsPublisherService";
        static final int TRANSACTION_getPublisherId = 4;
        static final int TRANSACTION_getSubscriptions = 2;
        static final int TRANSACTION_publish = 1;
        static final int TRANSACTION_setLayersOffering = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVmsPublisherService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IVmsPublisherService)) {
                return (IVmsPublisherService) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r5, Parcel parcel, Parcel parcel2, int r8) throws RemoteException {
            if (r5 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                publish(parcel.readStrongBinder(), parcel.readInt() != 0 ? VmsLayer.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.createByteArray());
                return true;
            }
            if (r5 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                VmsSubscriptionState subscriptions = getSubscriptions();
                parcel2.writeNoException();
                if (subscriptions != null) {
                    parcel2.writeInt(1);
                    subscriptions.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (r5 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                setLayersOffering(parcel.readStrongBinder(), parcel.readInt() != 0 ? VmsLayersOffering.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (r5 != 4) {
                if (r5 == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(r5, parcel, parcel2, r8);
            }
            parcel.enforceInterface(DESCRIPTOR);
            int publisherId = getPublisherId(parcel.createByteArray());
            parcel2.writeNoException();
            parcel2.writeInt(publisherId);
            return true;
        }

        private static class Proxy implements IVmsPublisherService {
            public static IVmsPublisherService sDefaultImpl;
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

            @Override // android.car.vms.IVmsPublisherService
            public void publish(IBinder iBinder, VmsLayer vmsLayer, int r6, byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (vmsLayer != null) {
                        parcelObtain.writeInt(1);
                        vmsLayer.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeByteArray(bArr);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().publish(iBinder, vmsLayer, r6, bArr);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.vms.IVmsPublisherService
            public VmsSubscriptionState getSubscriptions() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSubscriptions();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? VmsSubscriptionState.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.vms.IVmsPublisherService
            public void setLayersOffering(IBinder iBinder, VmsLayersOffering vmsLayersOffering) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (vmsLayersOffering != null) {
                        parcelObtain.writeInt(1);
                        vmsLayersOffering.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().setLayersOffering(iBinder, vmsLayersOffering);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.vms.IVmsPublisherService
            public int getPublisherId(byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPublisherId(bArr);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IVmsPublisherService iVmsPublisherService) {
            if (Proxy.sDefaultImpl != null || iVmsPublisherService == null) {
                return false;
            }
            Proxy.sDefaultImpl = iVmsPublisherService;
            return true;
        }

        public static IVmsPublisherService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
