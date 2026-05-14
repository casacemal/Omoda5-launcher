package com.chery.eol;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IEOLSettingInterface extends IInterface {

    public static class Default implements IEOLSettingInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public int getArkamysSettingsStatus() throws RemoteException {
            return 0;
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public int getBalanceLevel() throws RemoteException {
            return 0;
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public int getEQSettingsStatus() throws RemoteException {
            return 0;
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public int getEQUserDefineBaseValue() throws RemoteException {
            return 0;
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public int getEQUserDefineHighValue() throws RemoteException {
            return 0;
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public int getEQUserDefineMidValue() throws RemoteException {
            return 0;
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public int getFadeLevel() throws RemoteException {
            return 0;
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public int getLoudnessStatus() throws RemoteException {
            return 0;
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public int getSpeedVolumeStatus() throws RemoteException {
            return 0;
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public int getVolumeLevel(int r1) throws RemoteException {
            return 0;
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public void setArkamysSettingsStatus(int r1) throws RemoteException {
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public void setBalanceLevel(int r1) throws RemoteException {
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public void setEQSettingsStatus(int r1) throws RemoteException {
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public void setEQUserDefineBaseValue(int r1) throws RemoteException {
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public void setEQUserDefineHighValue(int r1) throws RemoteException {
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public void setEQUserDefineMidValue(int r1) throws RemoteException {
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public void setFadeLevel(int r1) throws RemoteException {
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public void setLoudnessStatus(int r1) throws RemoteException {
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public void setSpeedVolumeStatus(int r1) throws RemoteException {
        }

        @Override // com.chery.eol.IEOLSettingInterface
        public void setVolumeLevel(int r1, int r2) throws RemoteException {
        }
    }

    int getArkamysSettingsStatus() throws RemoteException;

    int getBalanceLevel() throws RemoteException;

    int getEQSettingsStatus() throws RemoteException;

    int getEQUserDefineBaseValue() throws RemoteException;

    int getEQUserDefineHighValue() throws RemoteException;

    int getEQUserDefineMidValue() throws RemoteException;

    int getFadeLevel() throws RemoteException;

    int getLoudnessStatus() throws RemoteException;

    int getSpeedVolumeStatus() throws RemoteException;

    int getVolumeLevel(int r1) throws RemoteException;

    void setArkamysSettingsStatus(int r1) throws RemoteException;

    void setBalanceLevel(int r1) throws RemoteException;

    void setEQSettingsStatus(int r1) throws RemoteException;

    void setEQUserDefineBaseValue(int r1) throws RemoteException;

    void setEQUserDefineHighValue(int r1) throws RemoteException;

    void setEQUserDefineMidValue(int r1) throws RemoteException;

    void setFadeLevel(int r1) throws RemoteException;

    void setLoudnessStatus(int r1) throws RemoteException;

    void setSpeedVolumeStatus(int r1) throws RemoteException;

    void setVolumeLevel(int r1, int r2) throws RemoteException;

    public static abstract class Stub extends Binder implements IEOLSettingInterface {
        private static final String DESCRIPTOR = "com.chery.eol.IEOLSettingInterface";
        static final int TRANSACTION_getArkamysSettingsStatus = 19;
        static final int TRANSACTION_getBalanceLevel = 5;
        static final int TRANSACTION_getEQSettingsStatus = 11;
        static final int TRANSACTION_getEQUserDefineBaseValue = 13;
        static final int TRANSACTION_getEQUserDefineHighValue = 17;
        static final int TRANSACTION_getEQUserDefineMidValue = 15;
        static final int TRANSACTION_getFadeLevel = 3;
        static final int TRANSACTION_getLoudnessStatus = 7;
        static final int TRANSACTION_getSpeedVolumeStatus = 9;
        static final int TRANSACTION_getVolumeLevel = 1;
        static final int TRANSACTION_setArkamysSettingsStatus = 20;
        static final int TRANSACTION_setBalanceLevel = 6;
        static final int TRANSACTION_setEQSettingsStatus = 12;
        static final int TRANSACTION_setEQUserDefineBaseValue = 14;
        static final int TRANSACTION_setEQUserDefineHighValue = 18;
        static final int TRANSACTION_setEQUserDefineMidValue = 16;
        static final int TRANSACTION_setFadeLevel = 4;
        static final int TRANSACTION_setLoudnessStatus = 8;
        static final int TRANSACTION_setSpeedVolumeStatus = 10;
        static final int TRANSACTION_setVolumeLevel = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IEOLSettingInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IEOLSettingInterface)) {
                return (IEOLSettingInterface) iInterfaceQueryLocalInterface;
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
                    int volumeLevel = getVolumeLevel(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(volumeLevel);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVolumeLevel(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int fadeLevel = getFadeLevel();
                    parcel2.writeNoException();
                    parcel2.writeInt(fadeLevel);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFadeLevel(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int balanceLevel = getBalanceLevel();
                    parcel2.writeNoException();
                    parcel2.writeInt(balanceLevel);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    setBalanceLevel(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int loudnessStatus = getLoudnessStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(loudnessStatus);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    setLoudnessStatus(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int speedVolumeStatus = getSpeedVolumeStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(speedVolumeStatus);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSpeedVolumeStatus(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int eQSettingsStatus = getEQSettingsStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(eQSettingsStatus);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    setEQSettingsStatus(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int eQUserDefineBaseValue = getEQUserDefineBaseValue();
                    parcel2.writeNoException();
                    parcel2.writeInt(eQUserDefineBaseValue);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    setEQUserDefineBaseValue(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    int eQUserDefineMidValue = getEQUserDefineMidValue();
                    parcel2.writeNoException();
                    parcel2.writeInt(eQUserDefineMidValue);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    setEQUserDefineMidValue(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    int eQUserDefineHighValue = getEQUserDefineHighValue();
                    parcel2.writeNoException();
                    parcel2.writeInt(eQUserDefineHighValue);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    setEQUserDefineHighValue(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int arkamysSettingsStatus = getArkamysSettingsStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(arkamysSettingsStatus);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    setArkamysSettingsStatus(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(r4, parcel, parcel2, r7);
            }
        }

        private static class Proxy implements IEOLSettingInterface {
            public static IEOLSettingInterface sDefaultImpl;
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

            @Override // com.chery.eol.IEOLSettingInterface
            public int getVolumeLevel(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getVolumeLevel(r5);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public void setVolumeLevel(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setVolumeLevel(r5, r6);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public int getFadeLevel() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getFadeLevel();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public void setFadeLevel(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setFadeLevel(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public int getBalanceLevel() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getBalanceLevel();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public void setBalanceLevel(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setBalanceLevel(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public int getLoudnessStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLoudnessStatus();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public void setLoudnessStatus(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setLoudnessStatus(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public int getSpeedVolumeStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSpeedVolumeStatus();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public void setSpeedVolumeStatus(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setSpeedVolumeStatus(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public int getEQSettingsStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getEQSettingsStatus();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public void setEQSettingsStatus(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setEQSettingsStatus(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public int getEQUserDefineBaseValue() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getEQUserDefineBaseValue();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public void setEQUserDefineBaseValue(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setEQUserDefineBaseValue(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public int getEQUserDefineMidValue() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getEQUserDefineMidValue();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public void setEQUserDefineMidValue(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setEQUserDefineMidValue(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public int getEQUserDefineHighValue() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getEQUserDefineHighValue();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public void setEQUserDefineHighValue(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setEQUserDefineHighValue(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public int getArkamysSettingsStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getArkamysSettingsStatus();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.chery.eol.IEOLSettingInterface
            public void setArkamysSettingsStatus(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setArkamysSettingsStatus(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IEOLSettingInterface iEOLSettingInterface) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iEOLSettingInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = iEOLSettingInterface;
            return true;
        }

        public static IEOLSettingInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
