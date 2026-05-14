package android.car.drivingstate;

import android.car.drivingstate.ICarUxRestrictionsChangeListener;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface ICarUxRestrictionsManager extends IInterface {

    public static class Default implements ICarUxRestrictionsManager {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.drivingstate.ICarUxRestrictionsManager
        public List<CarUxRestrictionsConfiguration> getConfigs() throws RemoteException {
            return null;
        }

        @Override // android.car.drivingstate.ICarUxRestrictionsManager
        public CarUxRestrictions getCurrentUxRestrictions(int r1) throws RemoteException {
            return null;
        }

        @Override // android.car.drivingstate.ICarUxRestrictionsManager
        public int getRestrictionMode() throws RemoteException {
            return 0;
        }

        @Override // android.car.drivingstate.ICarUxRestrictionsManager
        public List<CarUxRestrictionsConfiguration> getStagedConfigs() throws RemoteException {
            return null;
        }

        @Override // android.car.drivingstate.ICarUxRestrictionsManager
        public void registerUxRestrictionsChangeListener(ICarUxRestrictionsChangeListener iCarUxRestrictionsChangeListener, int r2) throws RemoteException {
        }

        @Override // android.car.drivingstate.ICarUxRestrictionsManager
        public boolean saveUxRestrictionsConfigurationForNextBoot(List<CarUxRestrictionsConfiguration> list) throws RemoteException {
            return false;
        }

        @Override // android.car.drivingstate.ICarUxRestrictionsManager
        public boolean setRestrictionMode(int r1) throws RemoteException {
            return false;
        }

        @Override // android.car.drivingstate.ICarUxRestrictionsManager
        public void unregisterUxRestrictionsChangeListener(ICarUxRestrictionsChangeListener iCarUxRestrictionsChangeListener) throws RemoteException {
        }
    }

    List<CarUxRestrictionsConfiguration> getConfigs() throws RemoteException;

    CarUxRestrictions getCurrentUxRestrictions(int r1) throws RemoteException;

    int getRestrictionMode() throws RemoteException;

    List<CarUxRestrictionsConfiguration> getStagedConfigs() throws RemoteException;

    void registerUxRestrictionsChangeListener(ICarUxRestrictionsChangeListener iCarUxRestrictionsChangeListener, int r2) throws RemoteException;

    boolean saveUxRestrictionsConfigurationForNextBoot(List<CarUxRestrictionsConfiguration> list) throws RemoteException;

    boolean setRestrictionMode(int r1) throws RemoteException;

    void unregisterUxRestrictionsChangeListener(ICarUxRestrictionsChangeListener iCarUxRestrictionsChangeListener) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarUxRestrictionsManager {
        private static final String DESCRIPTOR = "android.car.drivingstate.ICarUxRestrictionsManager";
        static final int TRANSACTION_getConfigs = 6;
        static final int TRANSACTION_getCurrentUxRestrictions = 3;
        static final int TRANSACTION_getRestrictionMode = 8;
        static final int TRANSACTION_getStagedConfigs = 5;
        static final int TRANSACTION_registerUxRestrictionsChangeListener = 1;
        static final int TRANSACTION_saveUxRestrictionsConfigurationForNextBoot = 4;
        static final int TRANSACTION_setRestrictionMode = 7;
        static final int TRANSACTION_unregisterUxRestrictionsChangeListener = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarUxRestrictionsManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarUxRestrictionsManager)) {
                return (ICarUxRestrictionsManager) iInterfaceQueryLocalInterface;
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
                    registerUxRestrictionsChangeListener(ICarUxRestrictionsChangeListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterUxRestrictionsChangeListener(ICarUxRestrictionsChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    CarUxRestrictions currentUxRestrictions = getCurrentUxRestrictions(parcel.readInt());
                    parcel2.writeNoException();
                    if (currentUxRestrictions != null) {
                        parcel2.writeInt(1);
                        currentUxRestrictions.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSaveUxRestrictionsConfigurationForNextBoot = saveUxRestrictionsConfigurationForNextBoot(parcel.createTypedArrayList(CarUxRestrictionsConfiguration.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zSaveUxRestrictionsConfigurationForNextBoot ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<CarUxRestrictionsConfiguration> stagedConfigs = getStagedConfigs();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(stagedConfigs);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<CarUxRestrictionsConfiguration> configs = getConfigs();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(configs);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean restrictionMode = setRestrictionMode(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(restrictionMode ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int restrictionMode2 = getRestrictionMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(restrictionMode2);
                    return true;
                default:
                    return super.onTransact(r4, parcel, parcel2, r7);
            }
        }

        private static class Proxy implements ICarUxRestrictionsManager {
            public static ICarUxRestrictionsManager sDefaultImpl;
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

            @Override // android.car.drivingstate.ICarUxRestrictionsManager
            public void registerUxRestrictionsChangeListener(ICarUxRestrictionsChangeListener iCarUxRestrictionsChangeListener, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarUxRestrictionsChangeListener != null ? iCarUxRestrictionsChangeListener.asBinder() : null);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerUxRestrictionsChangeListener(iCarUxRestrictionsChangeListener, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.drivingstate.ICarUxRestrictionsManager
            public void unregisterUxRestrictionsChangeListener(ICarUxRestrictionsChangeListener iCarUxRestrictionsChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarUxRestrictionsChangeListener != null ? iCarUxRestrictionsChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterUxRestrictionsChangeListener(iCarUxRestrictionsChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.drivingstate.ICarUxRestrictionsManager
            public CarUxRestrictions getCurrentUxRestrictions(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentUxRestrictions(r5);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? CarUxRestrictions.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.drivingstate.ICarUxRestrictionsManager
            public boolean saveUxRestrictionsConfigurationForNextBoot(List<CarUxRestrictionsConfiguration> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedList(list);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().saveUxRestrictionsConfigurationForNextBoot(list);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.drivingstate.ICarUxRestrictionsManager
            public List<CarUxRestrictionsConfiguration> getStagedConfigs() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getStagedConfigs();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(CarUxRestrictionsConfiguration.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.drivingstate.ICarUxRestrictionsManager
            public List<CarUxRestrictionsConfiguration> getConfigs() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getConfigs();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(CarUxRestrictionsConfiguration.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.drivingstate.ICarUxRestrictionsManager
            public boolean setRestrictionMode(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setRestrictionMode(r5);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.drivingstate.ICarUxRestrictionsManager
            public int getRestrictionMode() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getRestrictionMode();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarUxRestrictionsManager iCarUxRestrictionsManager) {
            if (Proxy.sDefaultImpl != null || iCarUxRestrictionsManager == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarUxRestrictionsManager;
            return true;
        }

        public static ICarUxRestrictionsManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
