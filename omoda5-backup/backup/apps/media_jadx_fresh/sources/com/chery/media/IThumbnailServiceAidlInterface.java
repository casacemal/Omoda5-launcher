package com.chery.media;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IThumbnailServiceAidlInterface extends IInterface {

    public static class Default implements IThumbnailServiceAidlInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.media.IThumbnailServiceAidlInterface
        public void basicTypes(int r1, long j, boolean z, float f, double d, String str) throws RemoteException {
        }

        @Override // com.chery.media.IThumbnailServiceAidlInterface
        public Bitmap createAudioThumbnail(String str) throws RemoteException {
            return null;
        }

        @Override // com.chery.media.IThumbnailServiceAidlInterface
        public Bitmap createImageThumbnail(String str) throws RemoteException {
            return null;
        }

        @Override // com.chery.media.IThumbnailServiceAidlInterface
        public Bitmap createVideoThumbnail(String str) throws RemoteException {
            return null;
        }
    }

    void basicTypes(int r1, long j, boolean z, float f, double d, String str) throws RemoteException;

    Bitmap createAudioThumbnail(String str) throws RemoteException;

    Bitmap createImageThumbnail(String str) throws RemoteException;

    Bitmap createVideoThumbnail(String str) throws RemoteException;

    public static abstract class Stub extends Binder implements IThumbnailServiceAidlInterface {
        private static final String DESCRIPTOR = "com.chery.media.IThumbnailServiceAidlInterface";
        static final int TRANSACTION_basicTypes = 1;
        static final int TRANSACTION_createAudioThumbnail = 2;
        static final int TRANSACTION_createImageThumbnail = 4;
        static final int TRANSACTION_createVideoThumbnail = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IThumbnailServiceAidlInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IThumbnailServiceAidlInterface)) {
                return (IThumbnailServiceAidlInterface) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r12, Parcel parcel, Parcel parcel2, int r15) throws RemoteException {
            if (r12 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                basicTypes(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (r12 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                Bitmap bitmapCreateAudioThumbnail = createAudioThumbnail(parcel.readString());
                parcel2.writeNoException();
                if (bitmapCreateAudioThumbnail != null) {
                    parcel2.writeInt(1);
                    bitmapCreateAudioThumbnail.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (r12 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                Bitmap bitmapCreateVideoThumbnail = createVideoThumbnail(parcel.readString());
                parcel2.writeNoException();
                if (bitmapCreateVideoThumbnail != null) {
                    parcel2.writeInt(1);
                    bitmapCreateVideoThumbnail.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (r12 != 4) {
                if (r12 == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(r12, parcel, parcel2, r15);
            }
            parcel.enforceInterface(DESCRIPTOR);
            Bitmap bitmapCreateImageThumbnail = createImageThumbnail(parcel.readString());
            parcel2.writeNoException();
            if (bitmapCreateImageThumbnail != null) {
                parcel2.writeInt(1);
                bitmapCreateImageThumbnail.writeToParcel(parcel2, 1);
            } else {
                parcel2.writeInt(0);
            }
            return true;
        }

        private static class Proxy implements IThumbnailServiceAidlInterface {
            public static IThumbnailServiceAidlInterface sDefaultImpl;
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

            @Override // com.chery.media.IThumbnailServiceAidlInterface
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

            @Override // com.chery.media.IThumbnailServiceAidlInterface
            public Bitmap createAudioThumbnail(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().createAudioThumbnail(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Bitmap) Bitmap.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.IThumbnailServiceAidlInterface
            public Bitmap createVideoThumbnail(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().createVideoThumbnail(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Bitmap) Bitmap.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.IThumbnailServiceAidlInterface
            public Bitmap createImageThumbnail(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().createImageThumbnail(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Bitmap) Bitmap.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IThumbnailServiceAidlInterface iThumbnailServiceAidlInterface) {
            if (Proxy.sDefaultImpl != null || iThumbnailServiceAidlInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = iThumbnailServiceAidlInterface;
            return true;
        }

        public static IThumbnailServiceAidlInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
