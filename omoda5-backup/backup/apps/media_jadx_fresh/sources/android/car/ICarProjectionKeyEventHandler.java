package android.car;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ICarProjectionKeyEventHandler extends IInterface {

    public static class Default implements ICarProjectionKeyEventHandler {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.ICarProjectionKeyEventHandler
        public void onKeyEvent(int r1) throws RemoteException {
        }
    }

    void onKeyEvent(int r1) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarProjectionKeyEventHandler {
        private static final String DESCRIPTOR = "android.car.ICarProjectionKeyEventHandler";
        static final int TRANSACTION_onKeyEvent = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarProjectionKeyEventHandler asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarProjectionKeyEventHandler)) {
                return (ICarProjectionKeyEventHandler) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onKeyEvent(parcel.readInt());
                return true;
            }
            if (r4 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(r4, parcel, parcel2, r7);
        }

        private static class Proxy implements ICarProjectionKeyEventHandler {
            public static ICarProjectionKeyEventHandler sDefaultImpl;
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

            @Override // android.car.ICarProjectionKeyEventHandler
            public void onKeyEvent(int r4) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r4);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onKeyEvent(r4);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarProjectionKeyEventHandler iCarProjectionKeyEventHandler) {
            if (Proxy.sDefaultImpl != null || iCarProjectionKeyEventHandler == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarProjectionKeyEventHandler;
            return true;
        }

        public static ICarProjectionKeyEventHandler getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
