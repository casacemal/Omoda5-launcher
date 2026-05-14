package com.yfve.t19c.projection.carplay.service.cpclient;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IAudioSinkStub extends IInterface {

    public static class Default implements IAudioSinkStub {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub
        public void data(int r1, int r2, byte[] bArr) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub
        public void init(int r1, int[] r2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub
        public void start(int r1) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub
        public void stop(int r1) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub
        public void updateConfigure(int r1, int[] r2) throws RemoteException {
        }
    }

    void data(int r1, int r2, byte[] bArr) throws RemoteException;

    void init(int r1, int[] r2) throws RemoteException;

    void start(int r1) throws RemoteException;

    void stop(int r1) throws RemoteException;

    void updateConfigure(int r1, int[] r2) throws RemoteException;

    public static abstract class Stub extends Binder implements IAudioSinkStub {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub";
        static final int TRANSACTION_data = 3;
        static final int TRANSACTION_init = 1;
        static final int TRANSACTION_start = 4;
        static final int TRANSACTION_stop = 5;
        static final int TRANSACTION_updateConfigure = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAudioSinkStub asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IAudioSinkStub)) {
                return (IAudioSinkStub) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                init(parcel.readInt(), parcel.createIntArray());
                parcel2.writeNoException();
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                updateConfigure(parcel.readInt(), parcel.createIntArray());
                parcel2.writeNoException();
                return true;
            }
            if (r4 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                data(parcel.readInt(), parcel.readInt(), parcel.createByteArray());
                parcel2.writeNoException();
                return true;
            }
            if (r4 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                start(parcel.readInt());
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
            stop(parcel.readInt());
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements IAudioSinkStub {
            public static IAudioSinkStub sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub
            public void init(int r5, int[] r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeIntArray(r6);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().init(r5, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub
            public void updateConfigure(int r5, int[] r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeIntArray(r6);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().updateConfigure(r5, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub
            public void data(int r5, int r6, byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeByteArray(bArr);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().data(r5, r6, bArr);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub
            public void start(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().start(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSinkStub
            public void stop(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().stop(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IAudioSinkStub iAudioSinkStub) {
            if (Proxy.sDefaultImpl != null || iAudioSinkStub == null) {
                return false;
            }
            Proxy.sDefaultImpl = iAudioSinkStub;
            return true;
        }

        public static IAudioSinkStub getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
