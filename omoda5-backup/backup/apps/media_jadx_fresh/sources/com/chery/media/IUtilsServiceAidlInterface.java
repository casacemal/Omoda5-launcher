package com.chery.media;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IUtilsServiceAidlInterface extends IInterface {

    public static class Default implements IUtilsServiceAidlInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.media.IUtilsServiceAidlInterface
        public void basicTypes(int r1, long j, boolean z, float f, double d, String str) throws RemoteException {
        }

        @Override // com.chery.media.IUtilsServiceAidlInterface
        public boolean copyFile(String str, String str2) throws RemoteException {
            return false;
        }
    }

    void basicTypes(int r1, long j, boolean z, float f, double d, String str) throws RemoteException;

    boolean copyFile(String str, String str2) throws RemoteException;

    public static abstract class Stub extends Binder implements IUtilsServiceAidlInterface {
        private static final String DESCRIPTOR = "com.chery.media.IUtilsServiceAidlInterface";
        static final int TRANSACTION_basicTypes = 1;
        static final int TRANSACTION_copyFile = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IUtilsServiceAidlInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IUtilsServiceAidlInterface)) {
                return (IUtilsServiceAidlInterface) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r11, Parcel parcel, Parcel parcel2, int r14) throws RemoteException {
            if (r11 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                basicTypes(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (r11 != 2) {
                if (r11 == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(r11, parcel, parcel2, r14);
            }
            parcel.enforceInterface(DESCRIPTOR);
            boolean zCopyFile = copyFile(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(zCopyFile ? 1 : 0);
            return true;
        }

        private static class Proxy implements IUtilsServiceAidlInterface {
            public static IUtilsServiceAidlInterface sDefaultImpl;
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

            @Override // com.chery.media.IUtilsServiceAidlInterface
            public void basicTypes(int r13, long j, boolean z, float f, double d, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r13);
                    parcelObtain.writeLong(j);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeFloat(f);
                    parcelObtain.writeDouble(d);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().basicTypes(r13, j, z, f, d, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.IUtilsServiceAidlInterface
            public boolean copyFile(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().copyFile(str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IUtilsServiceAidlInterface iUtilsServiceAidlInterface) {
            if (Proxy.sDefaultImpl != null || iUtilsServiceAidlInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = iUtilsServiceAidlInterface;
            return true;
        }

        public static IUtilsServiceAidlInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
