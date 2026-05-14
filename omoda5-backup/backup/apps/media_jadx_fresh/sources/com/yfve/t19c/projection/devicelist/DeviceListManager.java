package com.yfve.t19c.projection.devicelist;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.yfve.t19c.projection.devicelist.OnConnectListener;
import java.util.List;

/* loaded from: classes.dex */
public interface DeviceListManager extends IInterface {

    public static class Default implements DeviceListManager {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.devicelist.DeviceListManager
        public List<Device> getAliveDevices() throws RemoteException {
            return null;
        }

        @Override // com.yfve.t19c.projection.devicelist.DeviceListManager
        public List<Device> getHistoryDevices() throws RemoteException {
            return null;
        }

        @Override // com.yfve.t19c.projection.devicelist.DeviceListManager
        public void onBluetoothPairResult(String str, int r2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.devicelist.DeviceListManager
        public void registerListener(OnConnectListener onConnectListener) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.devicelist.DeviceListManager
        public void startSession(String str, String str2, int r3) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.devicelist.DeviceListManager
        public void unregisterListener(OnConnectListener onConnectListener) throws RemoteException {
        }
    }

    List<Device> getAliveDevices() throws RemoteException;

    List<Device> getHistoryDevices() throws RemoteException;

    void onBluetoothPairResult(String str, int r2) throws RemoteException;

    void registerListener(OnConnectListener onConnectListener) throws RemoteException;

    void startSession(String str, String str2, int r3) throws RemoteException;

    void unregisterListener(OnConnectListener onConnectListener) throws RemoteException;

    public static abstract class Stub extends Binder implements DeviceListManager {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.devicelist.DeviceListManager";
        static final int TRANSACTION_getAliveDevices = 4;
        static final int TRANSACTION_getHistoryDevices = 5;
        static final int TRANSACTION_onBluetoothPairResult = 6;
        static final int TRANSACTION_registerListener = 1;
        static final int TRANSACTION_startSession = 3;
        static final int TRANSACTION_unregisterListener = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static DeviceListManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof DeviceListManager)) {
                return (DeviceListManager) iInterfaceQueryLocalInterface;
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
                    registerListener(OnConnectListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterListener(OnConnectListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    startSession(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<Device> aliveDevices = getAliveDevices();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(aliveDevices);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<Device> historyDevices = getHistoryDevices();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(historyDevices);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onBluetoothPairResult(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(r4, parcel, parcel2, r7);
            }
        }

        private static class Proxy implements DeviceListManager {
            public static DeviceListManager sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.devicelist.DeviceListManager
            public void registerListener(OnConnectListener onConnectListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(onConnectListener != null ? onConnectListener.asBinder() : null);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerListener(onConnectListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.devicelist.DeviceListManager
            public void unregisterListener(OnConnectListener onConnectListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(onConnectListener != null ? onConnectListener.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterListener(onConnectListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.devicelist.DeviceListManager
            public void startSession(String str, String str2, int r7) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(r7);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startSession(str, str2, r7);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.devicelist.DeviceListManager
            public List<Device> getAliveDevices() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAliveDevices();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(Device.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.devicelist.DeviceListManager
            public List<Device> getHistoryDevices() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getHistoryDevices();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(Device.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.devicelist.DeviceListManager
            public void onBluetoothPairResult(String str, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onBluetoothPairResult(str, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(DeviceListManager deviceListManager) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (deviceListManager == null) {
                return false;
            }
            Proxy.sDefaultImpl = deviceListManager;
            return true;
        }

        public static DeviceListManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
