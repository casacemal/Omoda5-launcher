package com.yfve.t19c.projection.carplay.service.iap2client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate;
import com.yfve.t19c.projection.carplay.service.iap2client.IIAP2MessageListener;
import com.yfve.t19c.projection.carplay.service.iap2client.IIdentifyStatusListener;
import com.yfve.t19c.projection.carplay.service.iap2client.IRoleSwitchStatusListener;

/* loaded from: classes.dex */
public interface IIAP2Comm extends IInterface {

    public static class Default implements IIAP2Comm {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void createIAP2(String str, int r2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void destroyIAP2(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public ConnectionInfo getConnectionInfo(String str) throws RemoteException {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public int getCurIdentifyStatus(String str) throws RemoteException {
            return 0;
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public int getCurIdentifyType(String str) throws RemoteException {
            return 0;
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void iAP2MediaControl(int r1, String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void registerIAP2LinkTransferDelegate(IIAP2LinkTransferDelegate iIAP2LinkTransferDelegate, String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void registerIdentifyStatusListener(IIdentifyStatusListener iIdentifyStatusListener, String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void registerMessageListener(IIAP2MessageListener iIAP2MessageListener, String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void registerRoleSwitchStatusListener(IRoleSwitchStatusListener iRoleSwitchStatusListener, String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void requestIdentify(int r1, IdentifyInfo identifyInfo, String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void requestRoleSwitch(boolean z, String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void sendEmptyAckMessage(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void sendMessage(int r1, byte[] bArr, String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void setConnectionInfo(ConnectionInfo connectionInfo, String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void setPluginInfoInfo(String str, String str2, int r3, String str3) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void setStartSession(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void setUSBNCMorWifiApInfo(String str, String str2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void setVehicleBtMac(String str, String str2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void setWifiInfo(String str, String str2, int r3, int r4, String str3) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void terminateIdentify(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void unregisterIAP2LinkTransferDelegate(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void unregisterIdentifyStatusListener(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void unregisterMessageListener(IIAP2MessageListener iIAP2MessageListener, String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void unregisterRoleSwitchStatusListener(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
        public void updateLocationInfo(String str, String str2) throws RemoteException {
        }
    }

    void createIAP2(String str, int r2) throws RemoteException;

    void destroyIAP2(String str) throws RemoteException;

    ConnectionInfo getConnectionInfo(String str) throws RemoteException;

    int getCurIdentifyStatus(String str) throws RemoteException;

    int getCurIdentifyType(String str) throws RemoteException;

    void iAP2MediaControl(int r1, String str) throws RemoteException;

    void registerIAP2LinkTransferDelegate(IIAP2LinkTransferDelegate iIAP2LinkTransferDelegate, String str) throws RemoteException;

    void registerIdentifyStatusListener(IIdentifyStatusListener iIdentifyStatusListener, String str) throws RemoteException;

    void registerMessageListener(IIAP2MessageListener iIAP2MessageListener, String str) throws RemoteException;

    void registerRoleSwitchStatusListener(IRoleSwitchStatusListener iRoleSwitchStatusListener, String str) throws RemoteException;

    void requestIdentify(int r1, IdentifyInfo identifyInfo, String str) throws RemoteException;

    void requestRoleSwitch(boolean z, String str) throws RemoteException;

    void sendEmptyAckMessage(String str) throws RemoteException;

    void sendMessage(int r1, byte[] bArr, String str) throws RemoteException;

    void setConnectionInfo(ConnectionInfo connectionInfo, String str) throws RemoteException;

    void setPluginInfoInfo(String str, String str2, int r3, String str3) throws RemoteException;

    void setStartSession(String str) throws RemoteException;

    void setUSBNCMorWifiApInfo(String str, String str2) throws RemoteException;

    void setVehicleBtMac(String str, String str2) throws RemoteException;

    void setWifiInfo(String str, String str2, int r3, int r4, String str3) throws RemoteException;

    void terminateIdentify(String str) throws RemoteException;

    void unregisterIAP2LinkTransferDelegate(String str) throws RemoteException;

    void unregisterIdentifyStatusListener(String str) throws RemoteException;

    void unregisterMessageListener(IIAP2MessageListener iIAP2MessageListener, String str) throws RemoteException;

    void unregisterRoleSwitchStatusListener(String str) throws RemoteException;

    void updateLocationInfo(String str, String str2) throws RemoteException;

    public static abstract class Stub extends Binder implements IIAP2Comm {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm";
        static final int TRANSACTION_createIAP2 = 16;
        static final int TRANSACTION_destroyIAP2 = 17;
        static final int TRANSACTION_getConnectionInfo = 2;
        static final int TRANSACTION_getCurIdentifyStatus = 8;
        static final int TRANSACTION_getCurIdentifyType = 7;
        static final int TRANSACTION_iAP2MediaControl = 24;
        static final int TRANSACTION_registerIAP2LinkTransferDelegate = 18;
        static final int TRANSACTION_registerIdentifyStatusListener = 5;
        static final int TRANSACTION_registerMessageListener = 14;
        static final int TRANSACTION_registerRoleSwitchStatusListener = 10;
        static final int TRANSACTION_requestIdentify = 3;
        static final int TRANSACTION_requestRoleSwitch = 9;
        static final int TRANSACTION_sendEmptyAckMessage = 13;
        static final int TRANSACTION_sendMessage = 12;
        static final int TRANSACTION_setConnectionInfo = 1;
        static final int TRANSACTION_setPluginInfoInfo = 23;
        static final int TRANSACTION_setStartSession = 26;
        static final int TRANSACTION_setUSBNCMorWifiApInfo = 21;
        static final int TRANSACTION_setVehicleBtMac = 22;
        static final int TRANSACTION_setWifiInfo = 20;
        static final int TRANSACTION_terminateIdentify = 4;
        static final int TRANSACTION_unregisterIAP2LinkTransferDelegate = 19;
        static final int TRANSACTION_unregisterIdentifyStatusListener = 6;
        static final int TRANSACTION_unregisterMessageListener = 15;
        static final int TRANSACTION_unregisterRoleSwitchStatusListener = 11;
        static final int TRANSACTION_updateLocationInfo = 25;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IIAP2Comm asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IIAP2Comm)) {
                return (IIAP2Comm) iInterfaceQueryLocalInterface;
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
                    setConnectionInfo(parcel.readInt() != 0 ? ConnectionInfo.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    ConnectionInfo connectionInfo = getConnectionInfo(parcel.readString());
                    parcel2.writeNoException();
                    if (connectionInfo != null) {
                        parcel2.writeInt(1);
                        connectionInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestIdentify(parcel.readInt(), parcel.readInt() != 0 ? IdentifyInfo.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    terminateIdentify(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerIdentifyStatusListener(IIdentifyStatusListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterIdentifyStatusListener(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int curIdentifyType = getCurIdentifyType(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(curIdentifyType);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int curIdentifyStatus = getCurIdentifyStatus(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(curIdentifyStatus);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestRoleSwitch(parcel.readInt() != 0, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerRoleSwitchStatusListener(IRoleSwitchStatusListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterRoleSwitchStatusListener(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendMessage(parcel.readInt(), parcel.createByteArray(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendEmptyAckMessage(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerMessageListener(IIAP2MessageListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterMessageListener(IIAP2MessageListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    createIAP2(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    destroyIAP2(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerIAP2LinkTransferDelegate(IIAP2LinkTransferDelegate.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterIAP2LinkTransferDelegate(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWifiInfo(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    setUSBNCMorWifiApInfo(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVehicleBtMac(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPluginInfoInfo(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    iAP2MediaControl(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateLocationInfo(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    setStartSession(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(r9, parcel, parcel2, r12);
            }
        }

        private static class Proxy implements IIAP2Comm {
            public static IIAP2Comm sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void setConnectionInfo(ConnectionInfo connectionInfo, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (connectionInfo != null) {
                        parcelObtain.writeInt(1);
                        connectionInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setConnectionInfo(connectionInfo, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public ConnectionInfo getConnectionInfo(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getConnectionInfo(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ConnectionInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void requestIdentify(int r5, IdentifyInfo identifyInfo, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (identifyInfo != null) {
                        parcelObtain.writeInt(1);
                        identifyInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestIdentify(r5, identifyInfo, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void terminateIdentify(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().terminateIdentify(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void registerIdentifyStatusListener(IIdentifyStatusListener iIdentifyStatusListener, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIdentifyStatusListener != null ? iIdentifyStatusListener.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerIdentifyStatusListener(iIdentifyStatusListener, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void unregisterIdentifyStatusListener(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterIdentifyStatusListener(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public int getCurIdentifyType(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurIdentifyType(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public int getCurIdentifyStatus(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurIdentifyStatus(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void requestRoleSwitch(boolean z, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestRoleSwitch(z, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void registerRoleSwitchStatusListener(IRoleSwitchStatusListener iRoleSwitchStatusListener, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRoleSwitchStatusListener != null ? iRoleSwitchStatusListener.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerRoleSwitchStatusListener(iRoleSwitchStatusListener, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void unregisterRoleSwitchStatusListener(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterRoleSwitchStatusListener(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void sendMessage(int r5, byte[] bArr, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().sendMessage(r5, bArr, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void sendEmptyAckMessage(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().sendEmptyAckMessage(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void registerMessageListener(IIAP2MessageListener iIAP2MessageListener, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIAP2MessageListener != null ? iIAP2MessageListener.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerMessageListener(iIAP2MessageListener, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void unregisterMessageListener(IIAP2MessageListener iIAP2MessageListener, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIAP2MessageListener != null ? iIAP2MessageListener.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterMessageListener(iIAP2MessageListener, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void createIAP2(String str, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().createIAP2(str, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void destroyIAP2(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().destroyIAP2(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void registerIAP2LinkTransferDelegate(IIAP2LinkTransferDelegate iIAP2LinkTransferDelegate, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIAP2LinkTransferDelegate != null ? iIAP2LinkTransferDelegate.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerIAP2LinkTransferDelegate(iIAP2LinkTransferDelegate, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void unregisterIAP2LinkTransferDelegate(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterIAP2LinkTransferDelegate(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void setWifiInfo(String str, String str2, int r11, int r12, String str3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(r11);
                    parcelObtain.writeInt(r12);
                    parcelObtain.writeString(str3);
                    if (!this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setWifiInfo(str, str2, r11, r12, str3);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void setUSBNCMorWifiApInfo(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setUSBNCMorWifiApInfo(str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void setVehicleBtMac(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setVehicleBtMac(str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void setPluginInfoInfo(String str, String str2, int r7, String str3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(r7);
                    parcelObtain.writeString(str3);
                    if (!this.mRemote.transact(23, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setPluginInfoInfo(str, str2, r7, str3);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void iAP2MediaControl(int r5, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(24, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().iAP2MediaControl(r5, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void updateLocationInfo(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(25, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().updateLocationInfo(str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IIAP2Comm
            public void setStartSession(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(26, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setStartSession(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IIAP2Comm iIAP2Comm) {
            if (Proxy.sDefaultImpl != null || iIAP2Comm == null) {
                return false;
            }
            Proxy.sDefaultImpl = iIAP2Comm;
            return true;
        }

        public static IIAP2Comm getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
