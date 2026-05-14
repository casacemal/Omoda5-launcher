package android.car.hardware.power;

import android.car.hardware.power.ICarPowerStateListener;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ICarPower extends IInterface {

    public static class Default implements ICarPower {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.hardware.power.ICarPower
        public void finished(ICarPowerStateListener iCarPowerStateListener) throws RemoteException {
        }

        @Override // android.car.hardware.power.ICarPower
        public boolean getBackLightStatus() throws RemoteException {
            return false;
        }

        @Override // android.car.hardware.power.ICarPower
        public int getBootReason() throws RemoteException {
            return 0;
        }

        @Override // android.car.hardware.power.ICarPower
        public int getCurrentPowerMode() throws RemoteException {
            return 0;
        }

        @Override // android.car.hardware.power.ICarPower
        public String getMCUVersion() throws RemoteException {
            return null;
        }

        @Override // android.car.hardware.power.ICarPower
        public String getMCUVersionForApp() throws RemoteException {
            return null;
        }

        @Override // android.car.hardware.power.ICarPower
        public int getTempRunTime() throws RemoteException {
            return 0;
        }

        @Override // android.car.hardware.power.ICarPower
        public void reEnterTempRunMode() throws RemoteException {
        }

        @Override // android.car.hardware.power.ICarPower
        public void registerListener(ICarPowerStateListener iCarPowerStateListener) throws RemoteException {
        }

        @Override // android.car.hardware.power.ICarPower
        public void registerListenerWithCompletion(ICarPowerStateListener iCarPowerStateListener) throws RemoteException {
        }

        @Override // android.car.hardware.power.ICarPower
        public void requestMCUDoFactoryReset() throws RemoteException {
        }

        @Override // android.car.hardware.power.ICarPower
        public void requestRestartNow() throws RemoteException {
        }

        @Override // android.car.hardware.power.ICarPower
        public void requestShutdownOnNextSuspend() throws RemoteException {
        }

        @Override // android.car.hardware.power.ICarPower
        public void scheduleNextWakeupTime(int r1) throws RemoteException {
        }

        @Override // android.car.hardware.power.ICarPower
        public void sendEventToMCU(boolean z) throws RemoteException {
        }

        @Override // android.car.hardware.power.ICarPower
        public void sendPROModeExit(boolean z) throws RemoteException {
        }

        @Override // android.car.hardware.power.ICarPower
        public void setBackLightEnable(boolean z) throws RemoteException {
        }

        @Override // android.car.hardware.power.ICarPower
        public void setTempRunTime(int r1) throws RemoteException {
        }

        @Override // android.car.hardware.power.ICarPower
        public void unregisterListener(ICarPowerStateListener iCarPowerStateListener) throws RemoteException {
        }

        @Override // android.car.hardware.power.ICarPower
        public float voltageInfoQuery() throws RemoteException {
            return 0.0f;
        }
    }

    void finished(ICarPowerStateListener iCarPowerStateListener) throws RemoteException;

    boolean getBackLightStatus() throws RemoteException;

    int getBootReason() throws RemoteException;

    int getCurrentPowerMode() throws RemoteException;

    String getMCUVersion() throws RemoteException;

    String getMCUVersionForApp() throws RemoteException;

    int getTempRunTime() throws RemoteException;

    void reEnterTempRunMode() throws RemoteException;

    void registerListener(ICarPowerStateListener iCarPowerStateListener) throws RemoteException;

    void registerListenerWithCompletion(ICarPowerStateListener iCarPowerStateListener) throws RemoteException;

    void requestMCUDoFactoryReset() throws RemoteException;

    void requestRestartNow() throws RemoteException;

    void requestShutdownOnNextSuspend() throws RemoteException;

    void scheduleNextWakeupTime(int r1) throws RemoteException;

    void sendEventToMCU(boolean z) throws RemoteException;

    void sendPROModeExit(boolean z) throws RemoteException;

    void setBackLightEnable(boolean z) throws RemoteException;

    void setTempRunTime(int r1) throws RemoteException;

    void unregisterListener(ICarPowerStateListener iCarPowerStateListener) throws RemoteException;

    float voltageInfoQuery() throws RemoteException;

    public static abstract class Stub extends Binder implements ICarPower {
        private static final String DESCRIPTOR = "android.car.hardware.power.ICarPower";
        static final int TRANSACTION_finished = 4;
        static final int TRANSACTION_getBackLightStatus = 8;
        static final int TRANSACTION_getBootReason = 15;
        static final int TRANSACTION_getCurrentPowerMode = 14;
        static final int TRANSACTION_getMCUVersion = 10;
        static final int TRANSACTION_getMCUVersionForApp = 17;
        static final int TRANSACTION_getTempRunTime = 13;
        static final int TRANSACTION_reEnterTempRunMode = 11;
        static final int TRANSACTION_registerListener = 1;
        static final int TRANSACTION_registerListenerWithCompletion = 6;
        static final int TRANSACTION_requestMCUDoFactoryReset = 19;
        static final int TRANSACTION_requestRestartNow = 9;
        static final int TRANSACTION_requestShutdownOnNextSuspend = 3;
        static final int TRANSACTION_scheduleNextWakeupTime = 5;
        static final int TRANSACTION_sendEventToMCU = 16;
        static final int TRANSACTION_sendPROModeExit = 18;
        static final int TRANSACTION_setBackLightEnable = 7;
        static final int TRANSACTION_setTempRunTime = 12;
        static final int TRANSACTION_unregisterListener = 2;
        static final int TRANSACTION_voltageInfoQuery = 20;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarPower asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarPower)) {
                return (ICarPower) iInterfaceQueryLocalInterface;
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
                    registerListener(ICarPowerStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterListener(ICarPowerStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestShutdownOnNextSuspend();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    finished(ICarPowerStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    scheduleNextWakeupTime(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerListenerWithCompletion(ICarPowerStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setBackLightEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean backLightStatus = getBackLightStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(backLightStatus ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestRestartNow();
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    String mCUVersion = getMCUVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(mCUVersion);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    reEnterTempRunMode();
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTempRunTime(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int tempRunTime = getTempRunTime();
                    parcel2.writeNoException();
                    parcel2.writeInt(tempRunTime);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    int currentPowerMode = getCurrentPowerMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(currentPowerMode);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    int bootReason = getBootReason();
                    parcel2.writeNoException();
                    parcel2.writeInt(bootReason);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendEventToMCU(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    String mCUVersionForApp = getMCUVersionForApp();
                    parcel2.writeNoException();
                    parcel2.writeString(mCUVersionForApp);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendPROModeExit(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestMCUDoFactoryReset();
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    float fVoltageInfoQuery = voltageInfoQuery();
                    parcel2.writeNoException();
                    parcel2.writeFloat(fVoltageInfoQuery);
                    return true;
                default:
                    return super.onTransact(r4, parcel, parcel2, r7);
            }
        }

        private static class Proxy implements ICarPower {
            public static ICarPower sDefaultImpl;
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

            @Override // android.car.hardware.power.ICarPower
            public void registerListener(ICarPowerStateListener iCarPowerStateListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarPowerStateListener != null ? iCarPowerStateListener.asBinder() : null);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerListener(iCarPowerStateListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public void unregisterListener(ICarPowerStateListener iCarPowerStateListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarPowerStateListener != null ? iCarPowerStateListener.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterListener(iCarPowerStateListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public void requestShutdownOnNextSuspend() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestShutdownOnNextSuspend();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public void finished(ICarPowerStateListener iCarPowerStateListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarPowerStateListener != null ? iCarPowerStateListener.asBinder() : null);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().finished(iCarPowerStateListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public void scheduleNextWakeupTime(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().scheduleNextWakeupTime(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public void registerListenerWithCompletion(ICarPowerStateListener iCarPowerStateListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarPowerStateListener != null ? iCarPowerStateListener.asBinder() : null);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerListenerWithCompletion(iCarPowerStateListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public void setBackLightEnable(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setBackLightEnable(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public boolean getBackLightStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getBackLightStatus();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public void requestRestartNow() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestRestartNow();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public String getMCUVersion() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getMCUVersion();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public void reEnterTempRunMode() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().reEnterTempRunMode();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public void setTempRunTime(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setTempRunTime(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public int getTempRunTime() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getTempRunTime();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public int getCurrentPowerMode() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentPowerMode();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public int getBootReason() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getBootReason();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public void sendEventToMCU(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().sendEventToMCU(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public String getMCUVersionForApp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getMCUVersionForApp();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public void sendPROModeExit(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().sendPROModeExit(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public void requestMCUDoFactoryReset() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestMCUDoFactoryReset();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.hardware.power.ICarPower
            public float voltageInfoQuery() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().voltageInfoQuery();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readFloat();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarPower iCarPower) {
            if (Proxy.sDefaultImpl != null || iCarPower == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarPower;
            return true;
        }

        public static ICarPower getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
