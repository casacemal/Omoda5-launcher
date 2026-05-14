package android.car.vms;

import android.car.vms.IVmsSubscriberClient;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IVmsSubscriberService extends IInterface {

    public static class Default implements IVmsSubscriberService {
        @Override // android.car.vms.IVmsSubscriberService
        public void addVmsSubscriber(IVmsSubscriberClient iVmsSubscriberClient, VmsLayer vmsLayer) throws RemoteException {
        }

        @Override // android.car.vms.IVmsSubscriberService
        public void addVmsSubscriberPassive(IVmsSubscriberClient iVmsSubscriberClient) throws RemoteException {
        }

        @Override // android.car.vms.IVmsSubscriberService
        public void addVmsSubscriberToNotifications(IVmsSubscriberClient iVmsSubscriberClient) throws RemoteException {
        }

        @Override // android.car.vms.IVmsSubscriberService
        public void addVmsSubscriberToPublisher(IVmsSubscriberClient iVmsSubscriberClient, VmsLayer vmsLayer, int r3) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.vms.IVmsSubscriberService
        public VmsAvailableLayers getAvailableLayers() throws RemoteException {
            return null;
        }

        @Override // android.car.vms.IVmsSubscriberService
        public byte[] getPublisherInfo(int r1) throws RemoteException {
            return null;
        }

        @Override // android.car.vms.IVmsSubscriberService
        public void removeVmsSubscriber(IVmsSubscriberClient iVmsSubscriberClient, VmsLayer vmsLayer) throws RemoteException {
        }

        @Override // android.car.vms.IVmsSubscriberService
        public void removeVmsSubscriberPassive(IVmsSubscriberClient iVmsSubscriberClient) throws RemoteException {
        }

        @Override // android.car.vms.IVmsSubscriberService
        public void removeVmsSubscriberToNotifications(IVmsSubscriberClient iVmsSubscriberClient) throws RemoteException {
        }

        @Override // android.car.vms.IVmsSubscriberService
        public void removeVmsSubscriberToPublisher(IVmsSubscriberClient iVmsSubscriberClient, VmsLayer vmsLayer, int r3) throws RemoteException {
        }
    }

    void addVmsSubscriber(IVmsSubscriberClient iVmsSubscriberClient, VmsLayer vmsLayer) throws RemoteException;

    void addVmsSubscriberPassive(IVmsSubscriberClient iVmsSubscriberClient) throws RemoteException;

    void addVmsSubscriberToNotifications(IVmsSubscriberClient iVmsSubscriberClient) throws RemoteException;

    void addVmsSubscriberToPublisher(IVmsSubscriberClient iVmsSubscriberClient, VmsLayer vmsLayer, int r3) throws RemoteException;

    VmsAvailableLayers getAvailableLayers() throws RemoteException;

    byte[] getPublisherInfo(int r1) throws RemoteException;

    void removeVmsSubscriber(IVmsSubscriberClient iVmsSubscriberClient, VmsLayer vmsLayer) throws RemoteException;

    void removeVmsSubscriberPassive(IVmsSubscriberClient iVmsSubscriberClient) throws RemoteException;

    void removeVmsSubscriberToNotifications(IVmsSubscriberClient iVmsSubscriberClient) throws RemoteException;

    void removeVmsSubscriberToPublisher(IVmsSubscriberClient iVmsSubscriberClient, VmsLayer vmsLayer, int r3) throws RemoteException;

    public static abstract class Stub extends Binder implements IVmsSubscriberService {
        private static final String DESCRIPTOR = "android.car.vms.IVmsSubscriberService";
        static final int TRANSACTION_addVmsSubscriber = 2;
        static final int TRANSACTION_addVmsSubscriberPassive = 3;
        static final int TRANSACTION_addVmsSubscriberToNotifications = 1;
        static final int TRANSACTION_addVmsSubscriberToPublisher = 4;
        static final int TRANSACTION_getAvailableLayers = 9;
        static final int TRANSACTION_getPublisherInfo = 10;
        static final int TRANSACTION_removeVmsSubscriber = 6;
        static final int TRANSACTION_removeVmsSubscriberPassive = 7;
        static final int TRANSACTION_removeVmsSubscriberToNotifications = 5;
        static final int TRANSACTION_removeVmsSubscriberToPublisher = 8;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVmsSubscriberService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IVmsSubscriberService)) {
                return (IVmsSubscriberService) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (r4) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    addVmsSubscriberToNotifications(IVmsSubscriberClient.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    addVmsSubscriber(IVmsSubscriberClient.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? VmsLayer.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    addVmsSubscriberPassive(IVmsSubscriberClient.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    addVmsSubscriberToPublisher(IVmsSubscriberClient.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? VmsLayer.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeVmsSubscriberToNotifications(IVmsSubscriberClient.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeVmsSubscriber(IVmsSubscriberClient.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? VmsLayer.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeVmsSubscriberPassive(IVmsSubscriberClient.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeVmsSubscriberToPublisher(IVmsSubscriberClient.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? VmsLayer.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    VmsAvailableLayers availableLayers = getAvailableLayers();
                    parcel2.writeNoException();
                    if (availableLayers != null) {
                        parcel2.writeInt(1);
                        availableLayers.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] publisherInfo = getPublisherInfo(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(publisherInfo);
                    return true;
                default:
                    return super.onTransact(r4, parcel, parcel2, r7);
            }
        }

        private static class Proxy implements IVmsSubscriberService {
            public static IVmsSubscriberService sDefaultImpl;
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

            @Override // android.car.vms.IVmsSubscriberService
            public void addVmsSubscriberToNotifications(IVmsSubscriberClient iVmsSubscriberClient) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVmsSubscriberClient != null ? iVmsSubscriberClient.asBinder() : null);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().addVmsSubscriberToNotifications(iVmsSubscriberClient);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.vms.IVmsSubscriberService
            public void addVmsSubscriber(IVmsSubscriberClient iVmsSubscriberClient, VmsLayer vmsLayer) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVmsSubscriberClient != null ? iVmsSubscriberClient.asBinder() : null);
                    if (vmsLayer != null) {
                        parcelObtain.writeInt(1);
                        vmsLayer.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().addVmsSubscriber(iVmsSubscriberClient, vmsLayer);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.vms.IVmsSubscriberService
            public void addVmsSubscriberPassive(IVmsSubscriberClient iVmsSubscriberClient) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVmsSubscriberClient != null ? iVmsSubscriberClient.asBinder() : null);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().addVmsSubscriberPassive(iVmsSubscriberClient);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.vms.IVmsSubscriberService
            public void addVmsSubscriberToPublisher(IVmsSubscriberClient iVmsSubscriberClient, VmsLayer vmsLayer, int r7) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVmsSubscriberClient != null ? iVmsSubscriberClient.asBinder() : null);
                    if (vmsLayer != null) {
                        parcelObtain.writeInt(1);
                        vmsLayer.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(r7);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().addVmsSubscriberToPublisher(iVmsSubscriberClient, vmsLayer, r7);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.vms.IVmsSubscriberService
            public void removeVmsSubscriberToNotifications(IVmsSubscriberClient iVmsSubscriberClient) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVmsSubscriberClient != null ? iVmsSubscriberClient.asBinder() : null);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().removeVmsSubscriberToNotifications(iVmsSubscriberClient);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.vms.IVmsSubscriberService
            public void removeVmsSubscriber(IVmsSubscriberClient iVmsSubscriberClient, VmsLayer vmsLayer) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVmsSubscriberClient != null ? iVmsSubscriberClient.asBinder() : null);
                    if (vmsLayer != null) {
                        parcelObtain.writeInt(1);
                        vmsLayer.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().removeVmsSubscriber(iVmsSubscriberClient, vmsLayer);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.vms.IVmsSubscriberService
            public void removeVmsSubscriberPassive(IVmsSubscriberClient iVmsSubscriberClient) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVmsSubscriberClient != null ? iVmsSubscriberClient.asBinder() : null);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().removeVmsSubscriberPassive(iVmsSubscriberClient);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.vms.IVmsSubscriberService
            public void removeVmsSubscriberToPublisher(IVmsSubscriberClient iVmsSubscriberClient, VmsLayer vmsLayer, int r7) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVmsSubscriberClient != null ? iVmsSubscriberClient.asBinder() : null);
                    if (vmsLayer != null) {
                        parcelObtain.writeInt(1);
                        vmsLayer.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(r7);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().removeVmsSubscriberToPublisher(iVmsSubscriberClient, vmsLayer, r7);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.vms.IVmsSubscriberService
            public VmsAvailableLayers getAvailableLayers() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAvailableLayers();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? VmsAvailableLayers.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.vms.IVmsSubscriberService
            public byte[] getPublisherInfo(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPublisherInfo(r5);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IVmsSubscriberService iVmsSubscriberService) {
            if (Proxy.sDefaultImpl != null || iVmsSubscriberService == null) {
                return false;
            }
            Proxy.sDefaultImpl = iVmsSubscriberService;
            return true;
        }

        public static IVmsSubscriberService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
