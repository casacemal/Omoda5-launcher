package android.car.content.p000pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ICarAppBlockingPolicySetter extends IInterface {

    public static class Default implements ICarAppBlockingPolicySetter {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.content.p000pm.ICarAppBlockingPolicySetter
        public void setAppBlockingPolicy(CarAppBlockingPolicy carAppBlockingPolicy) throws RemoteException {
        }
    }

    void setAppBlockingPolicy(CarAppBlockingPolicy carAppBlockingPolicy) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarAppBlockingPolicySetter {
        private static final String DESCRIPTOR = "android.car.content.pm.ICarAppBlockingPolicySetter";
        static final int TRANSACTION_setAppBlockingPolicy = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarAppBlockingPolicySetter asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarAppBlockingPolicySetter)) {
                return (ICarAppBlockingPolicySetter) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 != 1) {
                if (r4 == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(r4, parcel, parcel2, r7);
            }
            parcel.enforceInterface(DESCRIPTOR);
            setAppBlockingPolicy(parcel.readInt() != 0 ? CarAppBlockingPolicy.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements ICarAppBlockingPolicySetter {
            public static ICarAppBlockingPolicySetter sDefaultImpl;
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

            @Override // android.car.content.p000pm.ICarAppBlockingPolicySetter
            public void setAppBlockingPolicy(CarAppBlockingPolicy carAppBlockingPolicy) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (carAppBlockingPolicy != null) {
                        parcelObtain.writeInt(1);
                        carAppBlockingPolicy.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setAppBlockingPolicy(carAppBlockingPolicy);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarAppBlockingPolicySetter iCarAppBlockingPolicySetter) {
            if (Proxy.sDefaultImpl != null || iCarAppBlockingPolicySetter == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarAppBlockingPolicySetter;
            return true;
        }

        public static ICarAppBlockingPolicySetter getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
