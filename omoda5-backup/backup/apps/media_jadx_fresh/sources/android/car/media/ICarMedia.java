package android.car.media;

import android.car.media.ICarMediaSourceListener;
import android.content.ComponentName;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ICarMedia extends IInterface {

    public static class Default implements ICarMedia {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.media.ICarMedia
        public ComponentName getMediaSource() throws RemoteException {
            return null;
        }

        @Override // android.car.media.ICarMedia
        public void registerMediaSourceListener(ICarMediaSourceListener iCarMediaSourceListener) throws RemoteException {
        }

        @Override // android.car.media.ICarMedia
        public void setMediaSource(ComponentName componentName) throws RemoteException {
        }

        @Override // android.car.media.ICarMedia
        public void unregisterMediaSourceListener(ICarMediaSourceListener iCarMediaSourceListener) throws RemoteException {
        }
    }

    ComponentName getMediaSource() throws RemoteException;

    void registerMediaSourceListener(ICarMediaSourceListener iCarMediaSourceListener) throws RemoteException;

    void setMediaSource(ComponentName componentName) throws RemoteException;

    void unregisterMediaSourceListener(ICarMediaSourceListener iCarMediaSourceListener) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarMedia {
        private static final String DESCRIPTOR = "android.car.media.ICarMedia";
        static final int TRANSACTION_getMediaSource = 1;
        static final int TRANSACTION_registerMediaSourceListener = 3;
        static final int TRANSACTION_setMediaSource = 2;
        static final int TRANSACTION_unregisterMediaSourceListener = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarMedia asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarMedia)) {
                return (ICarMedia) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                ComponentName mediaSource = getMediaSource();
                parcel2.writeNoException();
                if (mediaSource != null) {
                    parcel2.writeInt(1);
                    mediaSource.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                setMediaSource(parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            }
            if (r4 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                registerMediaSourceListener(ICarMediaSourceListener.Stub.asInterface(parcel.readStrongBinder()));
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
            unregisterMediaSourceListener(ICarMediaSourceListener.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements ICarMedia {
            public static ICarMedia sDefaultImpl;
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

            @Override // android.car.media.ICarMedia
            public ComponentName getMediaSource() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getMediaSource();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarMedia
            public void setMediaSource(ComponentName componentName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setMediaSource(componentName);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarMedia
            public void registerMediaSourceListener(ICarMediaSourceListener iCarMediaSourceListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarMediaSourceListener != null ? iCarMediaSourceListener.asBinder() : null);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerMediaSourceListener(iCarMediaSourceListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarMedia
            public void unregisterMediaSourceListener(ICarMediaSourceListener iCarMediaSourceListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarMediaSourceListener != null ? iCarMediaSourceListener.asBinder() : null);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterMediaSourceListener(iCarMediaSourceListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarMedia iCarMedia) {
            if (Proxy.sDefaultImpl != null || iCarMedia == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarMedia;
            return true;
        }

        public static ICarMedia getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
