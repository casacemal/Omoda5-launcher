package android.car;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ICarBugreportCallback extends IInterface {

    public static class Default implements ICarBugreportCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.ICarBugreportCallback
        public void onError(int r1) throws RemoteException {
        }

        @Override // android.car.ICarBugreportCallback
        public void onFinished() throws RemoteException {
        }

        @Override // android.car.ICarBugreportCallback
        public void onProgress(float f) throws RemoteException {
        }
    }

    void onError(int r1) throws RemoteException;

    void onFinished() throws RemoteException;

    void onProgress(float f) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarBugreportCallback {
        private static final String DESCRIPTOR = "android.car.ICarBugreportCallback";
        static final int TRANSACTION_onError = 1;
        static final int TRANSACTION_onFinished = 3;
        static final int TRANSACTION_onProgress = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarBugreportCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarBugreportCallback)) {
                return (ICarBugreportCallback) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onError(parcel.readInt());
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onProgress(parcel.readFloat());
                return true;
            }
            if (r4 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onFinished();
                return true;
            }
            if (r4 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(r4, parcel, parcel2, r7);
        }

        private static class Proxy implements ICarBugreportCallback {
            public static ICarBugreportCallback sDefaultImpl;
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

            @Override // android.car.ICarBugreportCallback
            public void onError(int r4) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r4);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onError(r4);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.ICarBugreportCallback
            public void onProgress(float f) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onProgress(f);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.ICarBugreportCallback
            public void onFinished() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onFinished();
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarBugreportCallback iCarBugreportCallback) {
            if (Proxy.sDefaultImpl != null || iCarBugreportCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarBugreportCallback;
            return true;
        }

        public static ICarBugreportCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
