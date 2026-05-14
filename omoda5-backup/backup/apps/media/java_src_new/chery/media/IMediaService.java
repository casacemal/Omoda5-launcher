package com.chery.media;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.chery.media.IMediaServiceListener;

/* loaded from: classes.dex */
public interface IMediaService extends IInterface {
    public static final int USB_SCAN_COMPLETED = 35;
    public static final int USB_SCAN_INCOMPLETE = 37;
    public static final int USB_SCAN_IN_PROGRESS = 34;
    public static final int USB_SCAN_NONE = 32;
    public static final int USB_SCAN_STARTED = 33;
    public static final int USB_SCAN_TIMEOUT = 36;

    public static class Default implements IMediaService {
        @Override // com.chery.media.IMediaService
        public void addListener(IMediaServiceListener iMediaServiceListener) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.media.IMediaService
        public String getUsbMountPath() throws RemoteException {
            return null;
        }

        @Override // com.chery.media.IMediaService
        public int getUsbScanStatus() throws RemoteException {
            return 0;
        }

        @Override // com.chery.media.IMediaService
        public boolean isUsbMounted() throws RemoteException {
            return false;
        }

        @Override // com.chery.media.IMediaService
        public void removeListener(IMediaServiceListener iMediaServiceListener) throws RemoteException {
        }
    }

    void addListener(IMediaServiceListener iMediaServiceListener) throws RemoteException;

    String getUsbMountPath() throws RemoteException;

    int getUsbScanStatus() throws RemoteException;

    boolean isUsbMounted() throws RemoteException;

    void removeListener(IMediaServiceListener iMediaServiceListener) throws RemoteException;

    public static abstract class Stub extends Binder implements IMediaService {
        private static final String DESCRIPTOR = "com.chery.media.IMediaService";
        static final int TRANSACTION_addListener = 4;
        static final int TRANSACTION_getUsbMountPath = 2;
        static final int TRANSACTION_getUsbScanStatus = 3;
        static final int TRANSACTION_isUsbMounted = 1;
        static final int TRANSACTION_removeListener = 5;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMediaService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IMediaService)) {
                return (IMediaService) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zIsUsbMounted = isUsbMounted();
                parcel2.writeNoException();
                parcel2.writeInt(zIsUsbMounted ? 1 : 0);
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                String usbMountPath = getUsbMountPath();
                parcel2.writeNoException();
                parcel2.writeString(usbMountPath);
                return true;
            }
            if (r4 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                int usbScanStatus = getUsbScanStatus();
                parcel2.writeNoException();
                parcel2.writeInt(usbScanStatus);
                return true;
            }
            if (r4 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                addListener(IMediaServiceListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (r4 != 5) {
                if (r4 == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(r4, parcel, parcel2, r7);
            }
            parcel.enforceInterface(DESCRIPTOR);
            removeListener(IMediaServiceListener.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements IMediaService {
            public static IMediaService sDefaultImpl;
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

            @Override // com.chery.media.IMediaService
            public boolean isUsbMounted() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isUsbMounted();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.IMediaService
            public String getUsbMountPath() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUsbMountPath();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.IMediaService
            public int getUsbScanStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUsbScanStatus();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.IMediaService
            public void addListener(IMediaServiceListener iMediaServiceListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMediaServiceListener != null ? iMediaServiceListener.asBinder() : null);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().addListener(iMediaServiceListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.media.IMediaService
            public void removeListener(IMediaServiceListener iMediaServiceListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMediaServiceListener != null ? iMediaServiceListener.asBinder() : null);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().removeListener(iMediaServiceListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IMediaService iMediaService) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iMediaService == null) {
                return false;
            }
            Proxy.sDefaultImpl = iMediaService;
            return true;
        }

        public static IMediaService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
