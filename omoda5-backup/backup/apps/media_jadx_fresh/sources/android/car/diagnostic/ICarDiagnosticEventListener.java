package android.car.diagnostic;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface ICarDiagnosticEventListener extends IInterface {

    public static class Default implements ICarDiagnosticEventListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.diagnostic.ICarDiagnosticEventListener
        public void onDiagnosticEvents(List<CarDiagnosticEvent> list) throws RemoteException {
        }
    }

    void onDiagnosticEvents(List<CarDiagnosticEvent> list) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarDiagnosticEventListener {
        private static final String DESCRIPTOR = "android.car.diagnostic.ICarDiagnosticEventListener";
        static final int TRANSACTION_onDiagnosticEvents = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarDiagnosticEventListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarDiagnosticEventListener)) {
                return (ICarDiagnosticEventListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onDiagnosticEvents(parcel.createTypedArrayList(CarDiagnosticEvent.CREATOR));
                return true;
            }
            if (r4 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(r4, parcel, parcel2, r7);
        }

        private static class Proxy implements ICarDiagnosticEventListener {
            public static ICarDiagnosticEventListener sDefaultImpl;
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

            @Override // android.car.diagnostic.ICarDiagnosticEventListener
            public void onDiagnosticEvents(List<CarDiagnosticEvent> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedList(list);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onDiagnosticEvents(list);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarDiagnosticEventListener iCarDiagnosticEventListener) {
            if (Proxy.sDefaultImpl != null || iCarDiagnosticEventListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarDiagnosticEventListener;
            return true;
        }

        public static ICarDiagnosticEventListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
