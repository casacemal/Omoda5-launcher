package android.car;

import android.car.ICarBluetoothUserService;
import android.car.ILocationManagerProxy;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ICarUserService extends IInterface {

    public static class Default implements ICarUserService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.ICarUserService
        public ICarBluetoothUserService getBluetoothUserService() throws RemoteException {
            return null;
        }

        @Override // android.car.ICarUserService
        public ILocationManagerProxy getLocationManagerProxy() throws RemoteException {
            return null;
        }
    }

    ICarBluetoothUserService getBluetoothUserService() throws RemoteException;

    ILocationManagerProxy getLocationManagerProxy() throws RemoteException;

    public static abstract class Stub extends Binder implements ICarUserService {
        private static final String DESCRIPTOR = "android.car.ICarUserService";
        static final int TRANSACTION_getBluetoothUserService = 1;
        static final int TRANSACTION_getLocationManagerProxy = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarUserService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarUserService)) {
                return (ICarUserService) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r5, Parcel parcel, Parcel parcel2, int r8) throws RemoteException {
            if (r5 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                ICarBluetoothUserService bluetoothUserService = getBluetoothUserService();
                parcel2.writeNoException();
                parcel2.writeStrongBinder(bluetoothUserService != null ? bluetoothUserService.asBinder() : null);
                return true;
            }
            if (r5 != 2) {
                if (r5 == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(r5, parcel, parcel2, r8);
            }
            parcel.enforceInterface(DESCRIPTOR);
            ILocationManagerProxy locationManagerProxy = getLocationManagerProxy();
            parcel2.writeNoException();
            parcel2.writeStrongBinder(locationManagerProxy != null ? locationManagerProxy.asBinder() : null);
            return true;
        }

        private static class Proxy implements ICarUserService {
            public static ICarUserService sDefaultImpl;
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

            @Override // android.car.ICarUserService
            public ICarBluetoothUserService getBluetoothUserService() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getBluetoothUserService();
                    }
                    parcelObtain2.readException();
                    return ICarBluetoothUserService.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.ICarUserService
            public ILocationManagerProxy getLocationManagerProxy() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLocationManagerProxy();
                    }
                    parcelObtain2.readException();
                    return ILocationManagerProxy.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarUserService iCarUserService) {
            if (Proxy.sDefaultImpl != null || iCarUserService == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarUserService;
            return true;
        }

        public static ICarUserService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
