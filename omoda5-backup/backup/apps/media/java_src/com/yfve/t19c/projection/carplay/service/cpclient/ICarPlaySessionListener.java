package com.yfve.t19c.projection.carplay.service.cpclient;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface ICarPlaySessionListener extends IInterface {

    public static class Default implements ICarPlaySessionListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onControl(int r1, byte[] bArr) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onDuckAudio(int r1, int r2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onFinalize(String str, String str2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onInitialize() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onModesChanged(int r1, int r2, boolean z, boolean z2, int r5) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onPrepareCpSession(String str, boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onRequestUI(byte[] bArr) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onSetEnhancedSiriParams(int r1, int r2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onStarted(String str, String str2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onSuggestUI(List<String> list) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onUnduckAudio(int r1) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onVideoChange(boolean z) throws RemoteException {
        }
    }

    void onControl(int r1, byte[] bArr) throws RemoteException;

    void onDuckAudio(int r1, int r2) throws RemoteException;

    void onFinalize(String str, String str2) throws RemoteException;

    void onInitialize() throws RemoteException;

    void onModesChanged(int r1, int r2, boolean z, boolean z2, int r5) throws RemoteException;

    void onPrepareCpSession(String str, boolean z) throws RemoteException;

    void onRequestUI(byte[] bArr) throws RemoteException;

    void onSetEnhancedSiriParams(int r1, int r2) throws RemoteException;

    void onStarted(String str, String str2) throws RemoteException;

    void onSuggestUI(List<String> list) throws RemoteException;

    void onUnduckAudio(int r1) throws RemoteException;

    void onVideoChange(boolean z) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarPlaySessionListener {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener";
        static final int TRANSACTION_onControl = 4;
        static final int TRANSACTION_onDuckAudio = 6;
        static final int TRANSACTION_onFinalize = 2;
        static final int TRANSACTION_onInitialize = 1;
        static final int TRANSACTION_onModesChanged = 5;
        static final int TRANSACTION_onPrepareCpSession = 10;
        static final int TRANSACTION_onRequestUI = 8;
        static final int TRANSACTION_onSetEnhancedSiriParams = 9;
        static final int TRANSACTION_onStarted = 3;
        static final int TRANSACTION_onSuggestUI = 11;
        static final int TRANSACTION_onUnduckAudio = 7;
        static final int TRANSACTION_onVideoChange = 12;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarPlaySessionListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarPlaySessionListener)) {
                return (ICarPlaySessionListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r9, Parcel parcel, Parcel parcel2, int r12) throws RemoteException {
            if (r9 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (r9) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    onInitialize();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFinalize(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onStarted(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onControl(parcel.readInt(), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onModesChanged(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDuckAudio(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUnduckAudio(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onRequestUI(parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSetEnhancedSiriParams(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPrepareCpSession(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSuggestUI(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onVideoChange(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(r9, parcel, parcel2, r12);
            }
        }

        private static class Proxy implements ICarPlaySessionListener {
            public static ICarPlaySessionListener sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
            public void onInitialize() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onInitialize();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
            public void onFinalize(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onFinalize(str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
            public void onStarted(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onStarted(str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
            public void onControl(int r5, byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeByteArray(bArr);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onControl(r5, bArr);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
            public void onModesChanged(int r9, int r10, boolean z, boolean z2, int r13) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r9);
                    parcelObtain.writeInt(r10);
                    int r2 = 1;
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!z2) {
                        r2 = 0;
                    }
                    parcelObtain.writeInt(r2);
                    parcelObtain.writeInt(r13);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onModesChanged(r9, r10, z, z2, r13);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
            public void onDuckAudio(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onDuckAudio(r5, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
            public void onUnduckAudio(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUnduckAudio(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
            public void onRequestUI(byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onRequestUI(bArr);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
            public void onSetEnhancedSiriParams(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSetEnhancedSiriParams(r5, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
            public void onPrepareCpSession(String str, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onPrepareCpSession(str, z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
            public void onSuggestUI(List<String> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSuggestUI(list);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
            public void onVideoChange(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onVideoChange(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarPlaySessionListener iCarPlaySessionListener) {
            if (Proxy.sDefaultImpl != null || iCarPlaySessionListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarPlaySessionListener;
            return true;
        }

        public static ICarPlaySessionListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
