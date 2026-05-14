package android.car.media;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ICarVolumeCallback extends IInterface {

    public static class Default implements ICarVolumeCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.media.ICarVolumeCallback
        public void onGroupMuteChanged(int r1, int r2, int r3) throws RemoteException {
        }

        @Override // android.car.media.ICarVolumeCallback
        public void onGroupVolumeChanged(int r1, int r2, int r3) throws RemoteException {
        }

        @Override // android.car.media.ICarVolumeCallback
        public void onMasterMuteChanged(int r1, int r2) throws RemoteException {
        }
    }

    void onGroupMuteChanged(int r1, int r2, int r3) throws RemoteException;

    void onGroupVolumeChanged(int r1, int r2, int r3) throws RemoteException;

    void onMasterMuteChanged(int r1, int r2) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarVolumeCallback {
        private static final String DESCRIPTOR = "android.car.media.ICarVolumeCallback";
        static final int TRANSACTION_onGroupMuteChanged = 3;
        static final int TRANSACTION_onGroupVolumeChanged = 1;
        static final int TRANSACTION_onMasterMuteChanged = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarVolumeCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarVolumeCallback)) {
                return (ICarVolumeCallback) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onGroupVolumeChanged(parcel.readInt(), parcel.readInt(), parcel.readInt());
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onMasterMuteChanged(parcel.readInt(), parcel.readInt());
                return true;
            }
            if (r4 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onGroupMuteChanged(parcel.readInt(), parcel.readInt(), parcel.readInt());
                return true;
            }
            if (r4 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(r4, parcel, parcel2, r7);
        }

        private static class Proxy implements ICarVolumeCallback {
            public static ICarVolumeCallback sDefaultImpl;
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

            @Override // android.car.media.ICarVolumeCallback
            public void onGroupVolumeChanged(int r4, int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r4);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onGroupVolumeChanged(r4, r5, r6);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarVolumeCallback
            public void onMasterMuteChanged(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onMasterMuteChanged(r5, r6);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarVolumeCallback
            public void onGroupMuteChanged(int r5, int r6, int r7) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(r7);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onGroupMuteChanged(r5, r6, r7);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarVolumeCallback iCarVolumeCallback) {
            if (Proxy.sDefaultImpl != null || iCarVolumeCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarVolumeCallback;
            return true;
        }

        public static ICarVolumeCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
