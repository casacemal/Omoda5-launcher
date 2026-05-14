package com.yfve.t19c.projection.androidauto.proxy;

import android.media.session.MediaSession;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.Surface;
import com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoListener;
import com.yfve.t19c.projection.androidauto.proxy.ICallStatusListener;

/* loaded from: classes.dex */
public interface IAndroidAutoClient extends IInterface {

    public static class Default implements IAndroidAutoClient {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public void exitActivity() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public int getActivityState() throws RemoteException {
            return 0;
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public MediaSession.Token getMediaToken() throws RemoteException {
            return null;
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public int getSessionState() throws RemoteException {
            return 0;
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public boolean getWhetherTakeOverPage() throws RemoteException {
            return false;
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public void lunchApp(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public void registerCallStatusListener(ICallStatusListener iCallStatusListener) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public void registerListener(IAndroidAutoListener iAndroidAutoListener) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public void requestUI(String str) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public void responsePrepareHfpDevice(int r1) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public void setSurface(Surface surface) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public void startSession(String str, boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public void stopSession() throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public void switchMediaSource(int r1) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public void unregisterCallStatusListener(ICallStatusListener iCallStatusListener) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public void unregisterListener(IAndroidAutoListener iAndroidAutoListener) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
        public void userInputTouch(long j, int[] r3, int[] r4, int[] r5, int r6, int r7) throws RemoteException {
        }
    }

    void exitActivity() throws RemoteException;

    int getActivityState() throws RemoteException;

    MediaSession.Token getMediaToken() throws RemoteException;

    int getSessionState() throws RemoteException;

    boolean getWhetherTakeOverPage() throws RemoteException;

    void lunchApp(String str) throws RemoteException;

    void registerCallStatusListener(ICallStatusListener iCallStatusListener) throws RemoteException;

    void registerListener(IAndroidAutoListener iAndroidAutoListener) throws RemoteException;

    void requestUI(String str) throws RemoteException;

    void responsePrepareHfpDevice(int r1) throws RemoteException;

    void setSurface(Surface surface) throws RemoteException;

    void startSession(String str, boolean z) throws RemoteException;

    void stopSession() throws RemoteException;

    void switchMediaSource(int r1) throws RemoteException;

    void unregisterCallStatusListener(ICallStatusListener iCallStatusListener) throws RemoteException;

    void unregisterListener(IAndroidAutoListener iAndroidAutoListener) throws RemoteException;

    void userInputTouch(long j, int[] r3, int[] r4, int[] r5, int r6, int r7) throws RemoteException;

    public static abstract class Stub extends Binder implements IAndroidAutoClient {
        private static final String DESCRIPTOR = "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient";
        static final int TRANSACTION_exitActivity = 3;
        static final int TRANSACTION_getActivityState = 17;
        static final int TRANSACTION_getMediaToken = 10;
        static final int TRANSACTION_getSessionState = 11;
        static final int TRANSACTION_getWhetherTakeOverPage = 15;
        static final int TRANSACTION_lunchApp = 7;
        static final int TRANSACTION_registerCallStatusListener = 12;
        static final int TRANSACTION_registerListener = 2;
        static final int TRANSACTION_requestUI = 4;
        static final int TRANSACTION_responsePrepareHfpDevice = 14;
        static final int TRANSACTION_setSurface = 8;
        static final int TRANSACTION_startSession = 5;
        static final int TRANSACTION_stopSession = 6;
        static final int TRANSACTION_switchMediaSource = 16;
        static final int TRANSACTION_unregisterCallStatusListener = 13;
        static final int TRANSACTION_unregisterListener = 1;
        static final int TRANSACTION_userInputTouch = 9;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAndroidAutoClient asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IAndroidAutoClient)) {
                return (IAndroidAutoClient) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r11, Parcel parcel, Parcel parcel2, int r14) throws RemoteException {
            if (r11 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (r11) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterListener(IAndroidAutoListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerListener(IAndroidAutoListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    exitActivity();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestUI(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    startSession(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopSession();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    lunchApp(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSurface(parcel.readInt() != 0 ? (Surface) Surface.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    userInputTouch(parcel.readLong(), parcel.createIntArray(), parcel.createIntArray(), parcel.createIntArray(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    MediaSession.Token mediaToken = getMediaToken();
                    parcel2.writeNoException();
                    if (mediaToken != null) {
                        parcel2.writeInt(1);
                        mediaToken.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int sessionState = getSessionState();
                    parcel2.writeNoException();
                    parcel2.writeInt(sessionState);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCallStatusListener(ICallStatusListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCallStatusListener(ICallStatusListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    responsePrepareHfpDevice(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean whetherTakeOverPage = getWhetherTakeOverPage();
                    parcel2.writeNoException();
                    parcel2.writeInt(whetherTakeOverPage ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    switchMediaSource(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    int activityState = getActivityState();
                    parcel2.writeNoException();
                    parcel2.writeInt(activityState);
                    return true;
                default:
                    return super.onTransact(r11, parcel, parcel2, r14);
            }
        }

        private static class Proxy implements IAndroidAutoClient {
            public static IAndroidAutoClient sDefaultImpl;
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

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public void unregisterListener(IAndroidAutoListener iAndroidAutoListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAndroidAutoListener != null ? iAndroidAutoListener.asBinder() : null);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterListener(iAndroidAutoListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public void registerListener(IAndroidAutoListener iAndroidAutoListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAndroidAutoListener != null ? iAndroidAutoListener.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerListener(iAndroidAutoListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public void exitActivity() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().exitActivity();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public void requestUI(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestUI(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public void startSession(String str, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startSession(str, z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public void stopSession() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().stopSession();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public void lunchApp(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().lunchApp(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public void setSurface(Surface surface) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (surface != null) {
                        parcelObtain.writeInt(1);
                        surface.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setSurface(surface);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public void userInputTouch(long j, int[] r15, int[] r16, int[] r17, int r18, int r19) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j);
                    parcelObtain.writeIntArray(r15);
                    parcelObtain.writeIntArray(r16);
                    parcelObtain.writeIntArray(r17);
                    parcelObtain.writeInt(r18);
                    parcelObtain.writeInt(r19);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().userInputTouch(j, r15, r16, r17, r18, r19);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public MediaSession.Token getMediaToken() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getMediaToken();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (MediaSession.Token) MediaSession.Token.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public int getSessionState() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSessionState();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public void registerCallStatusListener(ICallStatusListener iCallStatusListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCallStatusListener != null ? iCallStatusListener.asBinder() : null);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCallStatusListener(iCallStatusListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public void unregisterCallStatusListener(ICallStatusListener iCallStatusListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCallStatusListener != null ? iCallStatusListener.asBinder() : null);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCallStatusListener(iCallStatusListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public void responsePrepareHfpDevice(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().responsePrepareHfpDevice(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public boolean getWhetherTakeOverPage() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getWhetherTakeOverPage();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public void switchMediaSource(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().switchMediaSource(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient
            public int getActivityState() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getActivityState();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IAndroidAutoClient iAndroidAutoClient) {
            if (Proxy.sDefaultImpl != null || iAndroidAutoClient == null) {
                return false;
            }
            Proxy.sDefaultImpl = iAndroidAutoClient;
            return true;
        }

        public static IAndroidAutoClient getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
