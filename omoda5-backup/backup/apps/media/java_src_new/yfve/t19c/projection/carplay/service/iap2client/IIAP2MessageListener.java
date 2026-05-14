package com.yfve.t19c.projection.carplay.service.iap2client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IIAP2MessageListener extends IInterface {

    public static class Default implements IIAP2MessageListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
        public void onMessageReceived(int r1, byte[] bArr) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
        public void onNotifyCarPlayAvailability() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
        public void onNotifyCmd(int r1) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
        public void onNotifyDevTransport(String str, String str2, boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
        public void onNotifyWirelessCPSts(boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
        public void onStartLocationUpdate(byte b) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
        public void onStopLocationUpdate() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
        public void onUpdateCallInfo(ICallInfo iCallInfo) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
        public void onUpdateDevice(boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
        public void onUpdateNowPlayingInfo(IMediaInfo iMediaInfo) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
        public void onUpdateRouteGuidance(String str, int r2, int r3, int r4, String str2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
        public void onUpdateWifiInfo() throws RemoteException {
        }
    }

    void onMessageReceived(int r1, byte[] bArr) throws RemoteException;

    void onNotifyCarPlayAvailability() throws RemoteException;

    void onNotifyCmd(int r1) throws RemoteException;

    void onNotifyDevTransport(String str, String str2, boolean z) throws RemoteException;

    void onNotifyWirelessCPSts(boolean z) throws RemoteException;

    void onStartLocationUpdate(byte b) throws RemoteException;

    void onStopLocationUpdate() throws RemoteException;

    void onUpdateCallInfo(ICallInfo iCallInfo) throws RemoteException;

    void onUpdateDevice(boolean z) throws RemoteException;

    void onUpdateNowPlayingInfo(IMediaInfo iMediaInfo) throws RemoteException;

    void onUpdateRouteGuidance(String str, int r2, int r3, int r4, String str2) throws RemoteException;

    void onUpdateWifiInfo() throws RemoteException;

    public static abstract class Stub extends Binder implements IIAP2MessageListener {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener";
        static final int TRANSACTION_onMessageReceived = 1;
        static final int TRANSACTION_onNotifyCarPlayAvailability = 12;
        static final int TRANSACTION_onNotifyCmd = 8;
        static final int TRANSACTION_onNotifyDevTransport = 4;
        static final int TRANSACTION_onNotifyWirelessCPSts = 3;
        static final int TRANSACTION_onStartLocationUpdate = 9;
        static final int TRANSACTION_onStopLocationUpdate = 10;
        static final int TRANSACTION_onUpdateCallInfo = 6;
        static final int TRANSACTION_onUpdateDevice = 11;
        static final int TRANSACTION_onUpdateNowPlayingInfo = 5;
        static final int TRANSACTION_onUpdateRouteGuidance = 7;
        static final int TRANSACTION_onUpdateWifiInfo = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IIAP2MessageListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IIAP2MessageListener)) {
                return (IIAP2MessageListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r9, Parcel parcel, Parcel parcel2, int r12) throws RemoteException {
            if (r9 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (r9) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    onMessageReceived(parcel.readInt(), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUpdateWifiInfo();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onNotifyWirelessCPSts(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onNotifyDevTransport(parcel.readString(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUpdateNowPlayingInfo(parcel.readInt() != 0 ? IMediaInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUpdateCallInfo(parcel.readInt() != 0 ? ICallInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUpdateRouteGuidance(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onNotifyCmd(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onStartLocationUpdate(parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onStopLocationUpdate();
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUpdateDevice(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onNotifyCarPlayAvailability();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(r9, parcel, parcel2, r12);
            }
        }

        private static class Proxy implements IIAP2MessageListener {
            public static IIAP2MessageListener sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
            public void onMessageReceived(int r5, byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeByteArray(bArr);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onMessageReceived(r5, bArr);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
            public void onUpdateWifiInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUpdateWifiInfo();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
            public void onNotifyWirelessCPSts(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNotifyWirelessCPSts(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
            public void onNotifyDevTransport(String str, String str2, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNotifyDevTransport(str, str2, z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
            public void onUpdateNowPlayingInfo(IMediaInfo iMediaInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (iMediaInfo != null) {
                        parcelObtain.writeInt(1);
                        iMediaInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUpdateNowPlayingInfo(iMediaInfo);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
            public void onUpdateCallInfo(ICallInfo iCallInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (iCallInfo != null) {
                        parcelObtain.writeInt(1);
                        iCallInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUpdateCallInfo(iCallInfo);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
            public void onUpdateRouteGuidance(String str, int r10, int r11, int r12, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(r10);
                    parcelObtain.writeInt(r11);
                    parcelObtain.writeInt(r12);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUpdateRouteGuidance(str, r10, r11, r12, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
            public void onNotifyCmd(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNotifyCmd(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
            public void onStartLocationUpdate(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onStartLocationUpdate(b);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
            public void onStopLocationUpdate() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onStopLocationUpdate();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
            public void onUpdateDevice(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUpdateDevice(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener
            public void onNotifyCarPlayAvailability() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNotifyCarPlayAvailability();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IIAP2MessageListener iIAP2MessageListener) {
            if (Proxy.sDefaultImpl != null || iIAP2MessageListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iIAP2MessageListener;
            return true;
        }

        public static IIAP2MessageListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
