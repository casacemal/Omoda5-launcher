package com.chery.window;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.chery.window.IUiVisibilityListener;

/* loaded from: classes.dex */
public interface IWindowUiVisibility extends IInterface {

    public static class Default implements IWindowUiVisibility {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.window.IWindowUiVisibility
        public int isUiVisibility(int r1) throws RemoteException {
            return 0;
        }

        @Override // com.chery.window.IWindowUiVisibility
        public void registerUiListener(IUiVisibilityListener iUiVisibilityListener, int r2, String str, String str2) throws RemoteException {
        }

        @Override // com.chery.window.IWindowUiVisibility
        public void registerUiTarget(IUiVisibilityListener iUiVisibilityListener, int r2, String str, String str2) throws RemoteException {
        }

        @Override // com.chery.window.IWindowUiVisibility
        public void setTargetUiVisibility(int r1, int r2, String str, String str2) throws RemoteException {
        }

        @Override // com.chery.window.IWindowUiVisibility
        public void setUiVisibility(int r1, int r2, String str, String str2) throws RemoteException {
        }

        @Override // com.chery.window.IWindowUiVisibility
        public void unregisterUiListener(IUiVisibilityListener iUiVisibilityListener, int r2) throws RemoteException {
        }

        @Override // com.chery.window.IWindowUiVisibility
        public void unregisterUiTarget(IUiVisibilityListener iUiVisibilityListener, int r2) throws RemoteException {
        }
    }

    int isUiVisibility(int r1) throws RemoteException;

    void registerUiListener(IUiVisibilityListener iUiVisibilityListener, int r2, String str, String str2) throws RemoteException;

    void registerUiTarget(IUiVisibilityListener iUiVisibilityListener, int r2, String str, String str2) throws RemoteException;

    void setTargetUiVisibility(int r1, int r2, String str, String str2) throws RemoteException;

    void setUiVisibility(int r1, int r2, String str, String str2) throws RemoteException;

    void unregisterUiListener(IUiVisibilityListener iUiVisibilityListener, int r2) throws RemoteException;

    void unregisterUiTarget(IUiVisibilityListener iUiVisibilityListener, int r2) throws RemoteException;

    public static abstract class Stub extends Binder implements IWindowUiVisibility {
        private static final String DESCRIPTOR = "com.chery.window.IWindowUiVisibility";
        static final int TRANSACTION_isUiVisibility = 1;
        static final int TRANSACTION_registerUiListener = 4;
        static final int TRANSACTION_registerUiTarget = 6;
        static final int TRANSACTION_setTargetUiVisibility = 3;
        static final int TRANSACTION_setUiVisibility = 2;
        static final int TRANSACTION_unregisterUiListener = 5;
        static final int TRANSACTION_unregisterUiTarget = 7;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWindowUiVisibility asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IWindowUiVisibility)) {
                return (IWindowUiVisibility) iInterfaceQueryLocalInterface;
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
                    int r3 = isUiVisibility(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(r3);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    setUiVisibility(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTargetUiVisibility(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerUiListener(IUiVisibilityListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterUiListener(IUiVisibilityListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerUiTarget(IUiVisibilityListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterUiTarget(IUiVisibilityListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(r4, parcel, parcel2, r7);
            }
        }

        private static class Proxy implements IWindowUiVisibility {
            public static IWindowUiVisibility sDefaultImpl;
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

            @Override // com.chery.window.IWindowUiVisibility
            public int isUiVisibility(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isUiVisibility(r5);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.window.IWindowUiVisibility
            public void setUiVisibility(int r5, int r6, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setUiVisibility(r5, r6, str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.window.IWindowUiVisibility
            public void setTargetUiVisibility(int r5, int r6, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setTargetUiVisibility(r5, r6, str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.window.IWindowUiVisibility
            public void registerUiListener(IUiVisibilityListener iUiVisibilityListener, int r6, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iUiVisibilityListener != null ? iUiVisibilityListener.asBinder() : null);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerUiListener(iUiVisibilityListener, r6, str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.window.IWindowUiVisibility
            public void unregisterUiListener(IUiVisibilityListener iUiVisibilityListener, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iUiVisibilityListener != null ? iUiVisibilityListener.asBinder() : null);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterUiListener(iUiVisibilityListener, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.window.IWindowUiVisibility
            public void registerUiTarget(IUiVisibilityListener iUiVisibilityListener, int r6, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iUiVisibilityListener != null ? iUiVisibilityListener.asBinder() : null);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerUiTarget(iUiVisibilityListener, r6, str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.window.IWindowUiVisibility
            public void unregisterUiTarget(IUiVisibilityListener iUiVisibilityListener, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iUiVisibilityListener != null ? iUiVisibilityListener.asBinder() : null);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterUiTarget(iUiVisibilityListener, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IWindowUiVisibility iWindowUiVisibility) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iWindowUiVisibility == null) {
                return false;
            }
            Proxy.sDefaultImpl = iWindowUiVisibility;
            return true;
        }

        public static IWindowUiVisibility getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
