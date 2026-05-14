package com.chery.libvr.apps.setting;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.chery.libvr.apps.setting.IVrSettingCallback;

/* loaded from: classes.dex */
public interface IVrSetting extends IInterface {

    public static class Default implements IVrSetting {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.libvr.apps.setting.IVrSetting
        public int onResponse(String str, String str2, String str3, String str4) throws RemoteException {
            return 0;
        }

        @Override // com.chery.libvr.apps.setting.IVrSetting
        public void registerVrSettingCallback(IVrSettingCallback iVrSettingCallback) throws RemoteException {
        }

        @Override // com.chery.libvr.apps.setting.IVrSetting
        public void unregisterVrSettingCallback(IVrSettingCallback iVrSettingCallback) throws RemoteException {
        }
    }

    int onResponse(String str, String str2, String str3, String str4) throws RemoteException;

    void registerVrSettingCallback(IVrSettingCallback iVrSettingCallback) throws RemoteException;

    void unregisterVrSettingCallback(IVrSettingCallback iVrSettingCallback) throws RemoteException;

    public static abstract class Stub extends Binder implements IVrSetting {
        private static final String DESCRIPTOR = "com.chery.libvr.apps.setting.IVrSetting";
        static final int TRANSACTION_onResponse = 3;
        static final int TRANSACTION_registerVrSettingCallback = 1;
        static final int TRANSACTION_unregisterVrSettingCallback = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVrSetting asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IVrSetting)) {
                return (IVrSetting) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                registerVrSettingCallback(IVrSettingCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                unregisterVrSettingCallback(IVrSettingCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (r4 != 3) {
                if (r4 == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(r4, parcel, parcel2, r7);
            }
            parcel.enforceInterface(DESCRIPTOR);
            int r3 = onResponse(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(r3);
            return true;
        }

        private static class Proxy implements IVrSetting {
            public static IVrSetting sDefaultImpl;
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

            @Override // com.chery.libvr.apps.setting.IVrSetting
            public void registerVrSettingCallback(IVrSettingCallback iVrSettingCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVrSettingCallback != null ? iVrSettingCallback.asBinder() : null);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerVrSettingCallback(iVrSettingCallback);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.libvr.apps.setting.IVrSetting
            public void unregisterVrSettingCallback(IVrSettingCallback iVrSettingCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVrSettingCallback != null ? iVrSettingCallback.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterVrSettingCallback(iVrSettingCallback);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.libvr.apps.setting.IVrSetting
            public int onResponse(String str, String str2, String str3, String str4) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeString(str4);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().onResponse(str, str2, str3, str4);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IVrSetting iVrSetting) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iVrSetting == null) {
                return false;
            }
            Proxy.sDefaultImpl = iVrSetting;
            return true;
        }

        public static IVrSetting getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
