package com.yfve.t19c.projection.carplay.proxy;

import android.media.session.MediaSession;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ICPServiceListener extends IInterface {

    public static class Default implements ICPServiceListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onNotiftIApAuthStatus(int r1, int r2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onNotifyCPReadyToAuth(String str, int r2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onNotifyDisableBt(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onNotifyVideoChange(boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onNotifyWifi(int r1, boolean z, String str, String str2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onNotifyWirelessCPEnalbe(boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onUSBIAP2DeviceStsChanged(boolean z, String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onUpdateCallInfo(int r1, String str, String str2, long j) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onUpdateMediaToken(MediaSession.Token token) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onUpdateNaviInfo(String str, int r2, int r3, int r4, String str2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onUpdateSiriSts(boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onUpdateVideoFocus(boolean z) throws RemoteException {
        }
    }

    void onNotiftIApAuthStatus(int r1, int r2) throws RemoteException;

    void onNotifyCPReadyToAuth(String str, int r2) throws RemoteException;

    void onNotifyDisableBt(String str) throws RemoteException;

    void onNotifyVideoChange(boolean z) throws RemoteException;

    void onNotifyWifi(int r1, boolean z, String str, String str2) throws RemoteException;

    void onNotifyWirelessCPEnalbe(boolean z) throws RemoteException;

    void onUSBIAP2DeviceStsChanged(boolean z, String str) throws RemoteException;

    void onUpdateCallInfo(int r1, String str, String str2, long j) throws RemoteException;

    void onUpdateMediaToken(MediaSession.Token token) throws RemoteException;

    void onUpdateNaviInfo(String str, int r2, int r3, int r4, String str2) throws RemoteException;

    void onUpdateSiriSts(boolean z) throws RemoteException;

    void onUpdateVideoFocus(boolean z) throws RemoteException;

    public static abstract class Stub extends Binder implements ICPServiceListener {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.carplay.proxy.ICPServiceListener";
        static final int TRANSACTION_onNotiftIApAuthStatus = 12;
        static final int TRANSACTION_onNotifyCPReadyToAuth = 9;
        static final int TRANSACTION_onNotifyDisableBt = 6;
        static final int TRANSACTION_onNotifyVideoChange = 7;
        static final int TRANSACTION_onNotifyWifi = 11;
        static final int TRANSACTION_onNotifyWirelessCPEnalbe = 8;
        static final int TRANSACTION_onUSBIAP2DeviceStsChanged = 10;
        static final int TRANSACTION_onUpdateCallInfo = 3;
        static final int TRANSACTION_onUpdateMediaToken = 1;
        static final int TRANSACTION_onUpdateNaviInfo = 4;
        static final int TRANSACTION_onUpdateSiriSts = 5;
        static final int TRANSACTION_onUpdateVideoFocus = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICPServiceListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICPServiceListener)) {
                return (ICPServiceListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r10, Parcel parcel, Parcel parcel2, int r13) throws RemoteException {
            if (r10 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (r10) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUpdateMediaToken(parcel.readInt() != 0 ? (MediaSession.Token) MediaSession.Token.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUpdateVideoFocus(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUpdateCallInfo(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUpdateNaviInfo(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUpdateSiriSts(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onNotifyDisableBt(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onNotifyVideoChange(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onNotifyWirelessCPEnalbe(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onNotifyCPReadyToAuth(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUSBIAP2DeviceStsChanged(parcel.readInt() != 0, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    onNotifyWifi(parcel.readInt(), parcel.readInt() != 0, parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onNotiftIApAuthStatus(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(r10, parcel, parcel2, r13);
            }
        }

        private static class Proxy implements ICPServiceListener {
            public static ICPServiceListener sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
            public void onUpdateMediaToken(MediaSession.Token token) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (token != null) {
                        parcelObtain.writeInt(1);
                        token.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUpdateMediaToken(token);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
            public void onUpdateVideoFocus(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUpdateVideoFocus(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
            public void onUpdateCallInfo(int r9, String str, String str2, long j) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r9);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeLong(j);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUpdateCallInfo(r9, str, str2, j);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
            public void onUpdateNaviInfo(String str, int r10, int r11, int r12, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(r10);
                    parcelObtain.writeInt(r11);
                    parcelObtain.writeInt(r12);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUpdateNaviInfo(str, r10, r11, r12, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
            public void onUpdateSiriSts(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUpdateSiriSts(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
            public void onNotifyDisableBt(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNotifyDisableBt(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
            public void onNotifyVideoChange(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNotifyVideoChange(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
            public void onNotifyWirelessCPEnalbe(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNotifyWirelessCPEnalbe(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
            public void onNotifyCPReadyToAuth(String str, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNotifyCPReadyToAuth(str, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
            public void onUSBIAP2DeviceStsChanged(boolean z, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUSBIAP2DeviceStsChanged(z, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
            public void onNotifyWifi(int r5, boolean z, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNotifyWifi(r5, z, str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
            public void onNotiftIApAuthStatus(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNotiftIApAuthStatus(r5, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICPServiceListener iCPServiceListener) {
            if (Proxy.sDefaultImpl != null || iCPServiceListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCPServiceListener;
            return true;
        }

        public static ICPServiceListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
