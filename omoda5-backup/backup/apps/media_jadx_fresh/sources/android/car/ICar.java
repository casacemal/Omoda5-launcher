package android.car;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ICar extends IInterface {

    public static class Default implements ICar {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.ICar
        public int getCarConnectionType() throws RemoteException {
            return 0;
        }

        @Override // android.car.ICar
        public IBinder getCarService(String str) throws RemoteException {
            return null;
        }

        @Override // android.car.ICar
        public void onSwitchUser(int r1) throws RemoteException {
        }

        @Override // android.car.ICar
        public void setCarServiceHelper(IBinder iBinder) throws RemoteException {
        }

        @Override // android.car.ICar
        public void setUserLockStatus(int r1, int r2) throws RemoteException {
        }
    }

    int getCarConnectionType() throws RemoteException;

    IBinder getCarService(String str) throws RemoteException;

    void onSwitchUser(int r1) throws RemoteException;

    void setCarServiceHelper(IBinder iBinder) throws RemoteException;

    void setUserLockStatus(int r1, int r2) throws RemoteException;

    public static abstract class Stub extends Binder implements ICar {
        private static final String DESCRIPTOR = "android.car.ICar";
        static final int TRANSACTION_getCarConnectionType = 5;
        static final int TRANSACTION_getCarService = 4;
        static final int TRANSACTION_onSwitchUser = 3;
        static final int TRANSACTION_setCarServiceHelper = 1;
        static final int TRANSACTION_setUserLockStatus = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, "android.car.ICar");
        }

        public static ICar asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.car.ICar");
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICar)) {
                return (ICar) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface("android.car.ICar");
                setCarServiceHelper(parcel.readStrongBinder());
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface("android.car.ICar");
                setUserLockStatus(parcel.readInt(), parcel.readInt());
                return true;
            }
            if (r4 == 3) {
                parcel.enforceInterface("android.car.ICar");
                onSwitchUser(parcel.readInt());
                return true;
            }
            if (r4 == 4) {
                parcel.enforceInterface("android.car.ICar");
                IBinder carService = getCarService(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeStrongBinder(carService);
                return true;
            }
            if (r4 != 5) {
                if (r4 == 1598968902) {
                    parcel2.writeString("android.car.ICar");
                    return true;
                }
                return super.onTransact(r4, parcel, parcel2, r7);
            }
            parcel.enforceInterface("android.car.ICar");
            int carConnectionType = getCarConnectionType();
            parcel2.writeNoException();
            parcel2.writeInt(carConnectionType);
            return true;
        }

        private static class Proxy implements ICar {
            public static ICar sDefaultImpl;
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return "android.car.ICar";
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.car.ICar
            public void setCarServiceHelper(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.car.ICar");
                    parcelObtain.writeStrongBinder(iBinder);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().setCarServiceHelper(iBinder);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.ICar
            public void setUserLockStatus(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.car.ICar");
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().setUserLockStatus(r5, r6);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.ICar
            public void onSwitchUser(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.car.ICar");
                    parcelObtain.writeInt(r5);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onSwitchUser(r5);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.ICar
            public IBinder getCarService(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.car.ICar");
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCarService(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.ICar
            public int getCarConnectionType() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.car.ICar");
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCarConnectionType();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICar iCar) {
            if (Proxy.sDefaultImpl != null || iCar == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCar;
            return true;
        }

        public static ICar getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
