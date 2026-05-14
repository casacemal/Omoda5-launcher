package com.yfve.t19c.projection.androidauto.proxy;

import android.media.session.MediaSession;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IAndroidAutoListener extends IInterface {

    public static class Default implements IAndroidAutoListener {
        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void OnPrepareRemoteHfpDevice(String str) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onAAMediaSourceResponse(int r1) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onAuthenticationResult(int r1) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onHidePermissionPrompt() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onNotification(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onNotifyDevTransport(String str, String str2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onResizeSurfaceView(int r1, int r2, int r3) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onSessionStatusUpdate(int r1, String str, String str2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onSetVideoFocus(int r1) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onShowPermissionPrompt() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onTakeOverDilarPage(boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onUpdateActivityState(int r1) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onUpdateMediaToken(MediaSession.Token token) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
        public void onUpdateVoiceSessionState(int r1) throws RemoteException {
        }
    }

    void OnPrepareRemoteHfpDevice(String str) throws RemoteException;

    void onAAMediaSourceResponse(int r1) throws RemoteException;

    void onAuthenticationResult(int r1) throws RemoteException;

    void onHidePermissionPrompt() throws RemoteException;

    void onNotification(String str) throws RemoteException;

    void onNotifyDevTransport(String str, String str2) throws RemoteException;

    void onResizeSurfaceView(int r1, int r2, int r3) throws RemoteException;

    void onSessionStatusUpdate(int r1, String str, String str2) throws RemoteException;

    void onSetVideoFocus(int r1) throws RemoteException;

    void onShowPermissionPrompt() throws RemoteException;

    void onTakeOverDilarPage(boolean z) throws RemoteException;

    void onUpdateActivityState(int r1) throws RemoteException;

    void onUpdateMediaToken(MediaSession.Token token) throws RemoteException;

    void onUpdateVoiceSessionState(int r1) throws RemoteException;

    public static abstract class Stub extends Binder implements IAndroidAutoListener {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener";
        static final int TRANSACTION_OnPrepareRemoteHfpDevice = 10;
        static final int TRANSACTION_onAAMediaSourceResponse = 13;
        static final int TRANSACTION_onAuthenticationResult = 11;
        static final int TRANSACTION_onHidePermissionPrompt = 7;
        static final int TRANSACTION_onNotification = 4;
        static final int TRANSACTION_onNotifyDevTransport = 1;
        static final int TRANSACTION_onResizeSurfaceView = 9;
        static final int TRANSACTION_onSessionStatusUpdate = 3;
        static final int TRANSACTION_onSetVideoFocus = 2;
        static final int TRANSACTION_onShowPermissionPrompt = 6;
        static final int TRANSACTION_onTakeOverDilarPage = 12;
        static final int TRANSACTION_onUpdateActivityState = 14;
        static final int TRANSACTION_onUpdateMediaToken = 5;
        static final int TRANSACTION_onUpdateVoiceSessionState = 8;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAndroidAutoListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IAndroidAutoListener)) {
                return (IAndroidAutoListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (r4) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    onNotifyDevTransport(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSetVideoFocus(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSessionStatusUpdate(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onNotification(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUpdateMediaToken(parcel.readInt() != 0 ? (MediaSession.Token) MediaSession.Token.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onShowPermissionPrompt();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onHidePermissionPrompt();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUpdateVoiceSessionState(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onResizeSurfaceView(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    OnPrepareRemoteHfpDevice(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAuthenticationResult(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTakeOverDilarPage(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAAMediaSourceResponse(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUpdateActivityState(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(r4, parcel, parcel2, r7);
            }
        }

        private static class Proxy implements IAndroidAutoListener {
            public static IAndroidAutoListener sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
            public void onNotifyDevTransport(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNotifyDevTransport(str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
            public void onSetVideoFocus(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSetVideoFocus(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
            public void onSessionStatusUpdate(int r5, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSessionStatusUpdate(r5, str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
            public void onNotification(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNotification(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
            public void onUpdateMediaToken(MediaSession.Token token) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (token != null) {
                        parcelObtain.writeInt(1);
                        token.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUpdateMediaToken(token);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
            public void onShowPermissionPrompt() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onShowPermissionPrompt();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
            public void onHidePermissionPrompt() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onHidePermissionPrompt();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
            public void onUpdateVoiceSessionState(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUpdateVoiceSessionState(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
            public void onResizeSurfaceView(int r5, int r6, int r7) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(r7);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onResizeSurfaceView(r5, r6, r7);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
            public void OnPrepareRemoteHfpDevice(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().OnPrepareRemoteHfpDevice(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
            public void onAuthenticationResult(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onAuthenticationResult(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
            public void onTakeOverDilarPage(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onTakeOverDilarPage(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
            public void onAAMediaSourceResponse(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onAAMediaSourceResponse(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener
            public void onUpdateActivityState(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUpdateActivityState(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IAndroidAutoListener iAndroidAutoListener) {
            if (Proxy.sDefaultImpl != null || iAndroidAutoListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iAndroidAutoListener;
            return true;
        }

        public static IAndroidAutoListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
