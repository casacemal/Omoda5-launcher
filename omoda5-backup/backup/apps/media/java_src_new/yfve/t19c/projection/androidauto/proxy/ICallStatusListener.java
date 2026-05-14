package com.yfve.t19c.projection.androidauto.proxy;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ICallStatusListener extends IInterface {

    public static class Default implements ICallStatusListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.ICallStatusListener
        public void onUpdateCallStatus(ICallStatus iCallStatus) throws RemoteException {
        }
    }

    void onUpdateCallStatus(ICallStatus iCallStatus) throws RemoteException;

    public static abstract class Stub extends Binder implements ICallStatusListener {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.androidauto.proxy.ICallStatusListener";
        static final int TRANSACTION_onUpdateCallStatus = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICallStatusListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICallStatusListener)) {
                return (ICallStatusListener) iInterfaceQueryLocalInterface;
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
            onUpdateCallStatus(parcel.readInt() != 0 ? ICallStatus.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements ICallStatusListener {
            public static ICallStatusListener sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.androidauto.proxy.ICallStatusListener
            public void onUpdateCallStatus(ICallStatus iCallStatus) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (iCallStatus != null) {
                        parcelObtain.writeInt(1);
                        iCallStatus.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUpdateCallStatus(iCallStatus);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICallStatusListener iCallStatusListener) {
            if (Proxy.sDefaultImpl != null || iCallStatusListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCallStatusListener;
            return true;
        }

        public static ICallStatusListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
