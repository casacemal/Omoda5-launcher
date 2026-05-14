package android.car;

import android.car.projection.ProjectionStatus;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface ICarProjectionStatusListener extends IInterface {

    public static class Default implements ICarProjectionStatusListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.ICarProjectionStatusListener
        public void onProjectionStatusChanged(int r1, String str, List<ProjectionStatus> list) throws RemoteException {
        }
    }

    void onProjectionStatusChanged(int r1, String str, List<ProjectionStatus> list) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarProjectionStatusListener {
        private static final String DESCRIPTOR = "android.car.ICarProjectionStatusListener";
        static final int TRANSACTION_onProjectionStatusChanged = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarProjectionStatusListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarProjectionStatusListener)) {
                return (ICarProjectionStatusListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onProjectionStatusChanged(parcel.readInt(), parcel.readString(), parcel.createTypedArrayList(ProjectionStatus.CREATOR));
                return true;
            }
            if (r4 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(r4, parcel, parcel2, r7);
        }

        private static class Proxy implements ICarProjectionStatusListener {
            public static ICarProjectionStatusListener sDefaultImpl;
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

            @Override // android.car.ICarProjectionStatusListener
            public void onProjectionStatusChanged(int r4, String str, List<ProjectionStatus> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r4);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedList(list);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onProjectionStatusChanged(r4, str, list);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarProjectionStatusListener iCarProjectionStatusListener) {
            if (Proxy.sDefaultImpl != null || iCarProjectionStatusListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarProjectionStatusListener;
            return true;
        }

        public static ICarProjectionStatusListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
