package com.yfve.t19c.projection.carplay.proxy;

import android.media.session.MediaSession;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.yfve.t19c.projection.carplay.proxy.ICPServiceListener;

/* loaded from: classes.dex */
public interface ICPServiceInterface extends IInterface {

    public static class Default implements ICPServiceInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
        public void exitActivity() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
        public boolean getCarPlayVideoState() throws RemoteException {
            return false;
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
        public MediaSession.Token getMediaToken() throws RemoteException {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
        public String getSerialNumber() throws RemoteException {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
        public boolean isCPStarted() throws RemoteException {
            return false;
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
        public void registeListener(ICPServiceListener iCPServiceListener) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
        public void requestCPMedia() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
        public void requestResource(boolean z, boolean z2, boolean z3, int r4) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
        public void requestVideoResource() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
        public void roleSwitchComplete(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
        public void setCarPlayConnect() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
        public void startCarPlaySession(String str, boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
        public void unregisteListener(ICPServiceListener iCPServiceListener) throws RemoteException {
        }
    }

    void exitActivity() throws RemoteException;

    boolean getCarPlayVideoState() throws RemoteException;

    MediaSession.Token getMediaToken() throws RemoteException;

    String getSerialNumber() throws RemoteException;

    boolean isCPStarted() throws RemoteException;

    void registeListener(ICPServiceListener iCPServiceListener) throws RemoteException;

    void requestCPMedia() throws RemoteException;

    void requestResource(boolean z, boolean z2, boolean z3, int r4) throws RemoteException;

    void requestVideoResource() throws RemoteException;

    void roleSwitchComplete(String str) throws RemoteException;

    void setCarPlayConnect() throws RemoteException;

    void startCarPlaySession(String str, boolean z) throws RemoteException;

    void unregisteListener(ICPServiceListener iCPServiceListener) throws RemoteException;

    public static abstract class Stub extends Binder implements ICPServiceInterface {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface";
        static final int TRANSACTION_exitActivity = 8;
        static final int TRANSACTION_getCarPlayVideoState = 3;
        static final int TRANSACTION_getMediaToken = 2;
        static final int TRANSACTION_getSerialNumber = 13;
        static final int TRANSACTION_isCPStarted = 12;
        static final int TRANSACTION_registeListener = 5;
        static final int TRANSACTION_requestCPMedia = 11;
        static final int TRANSACTION_requestResource = 9;
        static final int TRANSACTION_requestVideoResource = 10;
        static final int TRANSACTION_roleSwitchComplete = 7;
        static final int TRANSACTION_setCarPlayConnect = 4;
        static final int TRANSACTION_startCarPlaySession = 1;
        static final int TRANSACTION_unregisteListener = 6;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICPServiceInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICPServiceInterface)) {
                return (ICPServiceInterface) iInterfaceQueryLocalInterface;
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
                    startCarPlaySession(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    MediaSession.Token mediaToken = getMediaToken();
                    parcel2.writeNoException();
                    if (mediaToken != null) {
                        parcel2.writeInt(1);
                        mediaToken.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean carPlayVideoState = getCarPlayVideoState();
                    parcel2.writeNoException();
                    parcel2.writeInt(carPlayVideoState ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCarPlayConnect();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    registeListener(ICPServiceListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisteListener(ICPServiceListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    roleSwitchComplete(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    exitActivity();
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestResource(parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestVideoResource();
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestCPMedia();
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsCPStarted = isCPStarted();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsCPStarted ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    String serialNumber = getSerialNumber();
                    parcel2.writeNoException();
                    parcel2.writeString(serialNumber);
                    return true;
                default:
                    return super.onTransact(r4, parcel, parcel2, r7);
            }
        }

        private static class Proxy implements ICPServiceInterface {
            public static ICPServiceInterface sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
            public void startCarPlaySession(String str, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startCarPlaySession(str, z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
            public MediaSession.Token getMediaToken() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getMediaToken();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (MediaSession.Token) MediaSession.Token.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
            public boolean getCarPlayVideoState() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCarPlayVideoState();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
            public void setCarPlayConnect() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setCarPlayConnect();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
            public void registeListener(ICPServiceListener iCPServiceListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCPServiceListener != null ? iCPServiceListener.asBinder() : null);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registeListener(iCPServiceListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
            public void unregisteListener(ICPServiceListener iCPServiceListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCPServiceListener != null ? iCPServiceListener.asBinder() : null);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisteListener(iCPServiceListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
            public void roleSwitchComplete(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().roleSwitchComplete(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
            public void exitActivity() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().exitActivity();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
            public void requestResource(boolean z, boolean z2, boolean z3, int r9) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int r2 = 1;
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!z3) {
                        r2 = 0;
                    }
                    parcelObtain.writeInt(r2);
                    parcelObtain.writeInt(r9);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestResource(z, z2, z3, r9);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
            public void requestVideoResource() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestVideoResource();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
            public void requestCPMedia() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestCPMedia();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
            public boolean isCPStarted() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isCPStarted();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface
            public String getSerialNumber() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSerialNumber();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICPServiceInterface iCPServiceInterface) {
            if (Proxy.sDefaultImpl != null || iCPServiceInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCPServiceInterface;
            return true;
        }

        public static ICPServiceInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
