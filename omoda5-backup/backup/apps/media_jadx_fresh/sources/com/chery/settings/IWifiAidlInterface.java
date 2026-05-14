package com.chery.settings;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IWifiAidlInterface extends IInterface {

    public static class Default implements IWifiAidlInterface {
        @Override // com.chery.settings.IWifiAidlInterface
        public int apOff() throws RemoteException {
            return 0;
        }

        @Override // com.chery.settings.IWifiAidlInterface
        public int apOn() throws RemoteException {
            return 0;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.settings.IWifiAidlInterface
        public boolean getAPHz() throws RemoteException {
            return false;
        }

        @Override // com.chery.settings.IWifiAidlInterface
        public boolean isAPOn() throws RemoteException {
            return false;
        }
    }

    int apOff() throws RemoteException;

    int apOn() throws RemoteException;

    boolean getAPHz() throws RemoteException;

    boolean isAPOn() throws RemoteException;

    public static abstract class Stub extends Binder implements IWifiAidlInterface {
        private static final String DESCRIPTOR = "com.chery.settings.IWifiAidlInterface";
        static final int TRANSACTION_apOff = 4;
        static final int TRANSACTION_apOn = 3;
        static final int TRANSACTION_getAPHz = 2;
        static final int TRANSACTION_isAPOn = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWifiAidlInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IWifiAidlInterface)) {
                return (IWifiAidlInterface) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zIsAPOn = isAPOn();
                parcel2.writeNoException();
                parcel2.writeInt(zIsAPOn ? 1 : 0);
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean aPHz = getAPHz();
                parcel2.writeNoException();
                parcel2.writeInt(aPHz ? 1 : 0);
                return true;
            }
            if (r4 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                int r3 = apOn();
                parcel2.writeNoException();
                parcel2.writeInt(r3);
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
            int r32 = apOff();
            parcel2.writeNoException();
            parcel2.writeInt(r32);
            return true;
        }

        private static class Proxy implements IWifiAidlInterface {
            public static IWifiAidlInterface sDefaultImpl;
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

            @Override // com.chery.settings.IWifiAidlInterface
            public boolean isAPOn() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isAPOn();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.settings.IWifiAidlInterface
            public boolean getAPHz() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAPHz();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.settings.IWifiAidlInterface
            public int apOn() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().apOn();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.settings.IWifiAidlInterface
            public int apOff() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().apOff();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IWifiAidlInterface iWifiAidlInterface) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iWifiAidlInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = iWifiAidlInterface;
            return true;
        }

        public static IWifiAidlInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
