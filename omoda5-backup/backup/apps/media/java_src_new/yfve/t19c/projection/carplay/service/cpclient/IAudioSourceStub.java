package com.yfve.t19c.projection.carplay.service.cpclient;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IAudioSourceStub extends IInterface {

    public static class Default implements IAudioSourceStub {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSourceStub
        public void close(int r1) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSourceStub
        public void data(int r1, int r2, byte[] bArr) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSourceStub
        public void init(int r1) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSourceStub
        public void open(int r1) throws RemoteException {
        }
    }

    void close(int r1) throws RemoteException;

    void data(int r1, int r2, byte[] bArr) throws RemoteException;

    void init(int r1) throws RemoteException;

    void open(int r1) throws RemoteException;

    public static abstract class Stub extends Binder implements IAudioSourceStub {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.carplay.service.cpclient.IAudioSourceStub";
        static final int TRANSACTION_close = 3;
        static final int TRANSACTION_data = 4;
        static final int TRANSACTION_init = 1;
        static final int TRANSACTION_open = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAudioSourceStub asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IAudioSourceStub)) {
                return (IAudioSourceStub) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                init(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (r4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                open(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (r4 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                close(parcel.readInt());
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
            int r42 = parcel.readInt();
            int r72 = parcel.readInt();
            int r5 = parcel.readInt();
            byte[] bArr = r5 < 0 ? null : new byte[r5];
            data(r42, r72, bArr);
            parcel2.writeNoException();
            parcel2.writeByteArray(bArr);
            return true;
        }

        private static class Proxy implements IAudioSourceStub {
            public static IAudioSourceStub sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSourceStub
            public void init(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().init(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSourceStub
            public void open(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().open(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSourceStub
            public void close(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().close(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.IAudioSourceStub
            public void data(int r5, int r6, byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (bArr == null) {
                        parcelObtain.writeInt(-1);
                    } else {
                        parcelObtain.writeInt(bArr.length);
                    }
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().data(r5, r6, bArr);
                    } else {
                        parcelObtain2.readException();
                        parcelObtain2.readByteArray(bArr);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IAudioSourceStub iAudioSourceStub) {
            if (Proxy.sDefaultImpl != null || iAudioSourceStub == null) {
                return false;
            }
            Proxy.sDefaultImpl = iAudioSourceStub;
            return true;
        }

        public static IAudioSourceStub getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
