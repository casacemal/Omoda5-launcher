package com.chery.settings;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.chery.settings.IBrightnessCallback;

/* loaded from: classes.dex */
public interface IBrightnessInterface extends IInterface {

    public static class Default implements IBrightnessInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.settings.IBrightnessInterface
        public int getBrightness() throws RemoteException {
            return 0;
        }

        @Override // com.chery.settings.IBrightnessInterface
        public void registerCallBack(IBrightnessCallback iBrightnessCallback) throws RemoteException {
        }

        @Override // com.chery.settings.IBrightnessInterface
        public void setBrightness(int r1) throws RemoteException {
        }

        @Override // com.chery.settings.IBrightnessInterface
        public void unRegisterCallBack(IBrightnessCallback iBrightnessCallback) throws RemoteException {
        }
    }

    int getBrightness() throws RemoteException;

    void registerCallBack(IBrightnessCallback iBrightnessCallback) throws RemoteException;

    void setBrightness(int r1) throws RemoteException;

    void unRegisterCallBack(IBrightnessCallback iBrightnessCallback) throws RemoteException;

    public static abstract class Stub extends Binder implements IBrightnessInterface {
        private static final String DESCRIPTOR = "com.chery.settings.IBrightnessInterface";
        static final int TRANSACTION_getBrightness = 2;
        static final int TRANSACTION_registerCallBack = 3;
        static final int TRANSACTION_setBrightness = 1;
        static final int TRANSACTION_unRegisterCallBack = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBrightnessInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IBrightnessInterface)) {
                return (IBrightnessInterface) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                setBrightness(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                int brightness = getBrightness();
                parcel2.writeNoException();
                parcel2.writeInt(brightness);
                return true;
            }
            if (r4 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                registerCallBack(IBrightnessCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (r4 != 4) {
                if (r4 == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(r4, parcel, parcel2, r7);
            }
            parcel.enforceInterface(DESCRIPTOR);
            unRegisterCallBack(IBrightnessCallback.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements IBrightnessInterface {
            public static IBrightnessInterface sDefaultImpl;
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

            @Override // com.chery.settings.IBrightnessInterface
            public void setBrightness(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setBrightness(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.settings.IBrightnessInterface
            public int getBrightness() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getBrightness();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.settings.IBrightnessInterface
            public void registerCallBack(IBrightnessCallback iBrightnessCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBrightnessCallback != null ? iBrightnessCallback.asBinder() : null);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCallBack(iBrightnessCallback);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.settings.IBrightnessInterface
            public void unRegisterCallBack(IBrightnessCallback iBrightnessCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBrightnessCallback != null ? iBrightnessCallback.asBinder() : null);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unRegisterCallBack(iBrightnessCallback);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IBrightnessInterface iBrightnessInterface) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iBrightnessInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = iBrightnessInterface;
            return true;
        }

        public static IBrightnessInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
