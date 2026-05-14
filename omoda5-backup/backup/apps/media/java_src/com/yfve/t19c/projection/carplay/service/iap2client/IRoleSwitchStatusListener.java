package com.yfve.t19c.projection.carplay.service.iap2client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IRoleSwitchStatusListener extends IInterface {
    public static final int ROLE_SWITCH_FAILURE = 1;
    public static final int ROLE_SWITCH_SUCCESS = 0;

    public static class Default implements IRoleSwitchStatusListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.service.iap2client.IRoleSwitchStatusListener
        public void onRoleSwitchStatusChanged(int r1, int r2) throws RemoteException {
        }
    }

    void onRoleSwitchStatusChanged(int r1, int r2) throws RemoteException;

    public static abstract class Stub extends Binder implements IRoleSwitchStatusListener {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.carplay.service.iap2client.IRoleSwitchStatusListener";
        static final int TRANSACTION_onRoleSwitchStatusChanged = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRoleSwitchStatusListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IRoleSwitchStatusListener)) {
                return (IRoleSwitchStatusListener) iInterfaceQueryLocalInterface;
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
            onRoleSwitchStatusChanged(parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements IRoleSwitchStatusListener {
            public static IRoleSwitchStatusListener sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.carplay.service.iap2client.IRoleSwitchStatusListener
            public void onRoleSwitchStatusChanged(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onRoleSwitchStatusChanged(r5, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IRoleSwitchStatusListener iRoleSwitchStatusListener) {
            if (Proxy.sDefaultImpl != null || iRoleSwitchStatusListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iRoleSwitchStatusListener;
            return true;
        }

        public static IRoleSwitchStatusListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
