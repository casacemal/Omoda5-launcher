package com.yfve.t19c.projection.devicelist;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface OnConnectListener extends IInterface {

    public static class Default implements OnConnectListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
        public void onDeviceUpdate(Device device) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
        public void onNotification(int r1, String str, String str2, String str3, int r5) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
        public void onRequestBluetoothPair(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
        public void onSessionStateUpdate(String str, String str2, int r3, String str3) throws RemoteException {
        }
    }

    void onDeviceUpdate(Device device) throws RemoteException;

    void onNotification(int r1, String str, String str2, String str3, int r5) throws RemoteException;

    void onRequestBluetoothPair(String str) throws RemoteException;

    void onSessionStateUpdate(String str, String str2, int r3, String str3) throws RemoteException;

    public static abstract class Stub extends Binder implements OnConnectListener {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.devicelist.OnConnectListener";
        static final int TRANSACTION_onDeviceUpdate = 1;
        static final int TRANSACTION_onNotification = 2;
        static final int TRANSACTION_onRequestBluetoothPair = 3;
        static final int TRANSACTION_onSessionStateUpdate = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static OnConnectListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof OnConnectListener)) {
                return (OnConnectListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r8, Parcel parcel, Parcel parcel2, int r11) throws RemoteException {
            if (r8 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onDeviceUpdate(parcel.readInt() != 0 ? Device.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            }
            if (r8 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onNotification(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (r8 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onRequestBluetoothPair(parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (r8 != 4) {
                if (r8 == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(r8, parcel, parcel2, r11);
            }
            parcel.enforceInterface(DESCRIPTOR);
            onSessionStateUpdate(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString());
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements OnConnectListener {
            public static OnConnectListener sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
            public void onDeviceUpdate(Device device) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (device != null) {
                        parcelObtain.writeInt(1);
                        device.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onDeviceUpdate(device);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
            public void onNotification(int r9, String str, String str2, String str3, int r13) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r9);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(r13);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNotification(r9, str, str2, str3, r13);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
            public void onRequestBluetoothPair(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onRequestBluetoothPair(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
            public void onSessionStateUpdate(String str, String str2, int r7, String str3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(r7);
                    parcelObtain.writeString(str3);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSessionStateUpdate(str, str2, r7, str3);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(OnConnectListener onConnectListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (onConnectListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = onConnectListener;
            return true;
        }

        public static OnConnectListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
