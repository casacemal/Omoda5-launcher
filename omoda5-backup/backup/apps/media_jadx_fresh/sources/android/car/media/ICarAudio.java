package android.car.media;

import android.media.AudioSetting;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ICarAudio extends IInterface {

    public static class Default implements ICarAudio {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.media.ICarAudio
        public boolean clearZoneIdForUid(int r1) throws RemoteException {
            return false;
        }

        @Override // android.car.media.ICarAudio
        public CarAudioPatchHandle createAudioPatch(String str, int r2, int r3) throws RemoteException {
            return null;
        }

        @Override // android.car.media.ICarAudio
        public int getAudioSetting(AudioSetting audioSetting) throws RemoteException {
            return 0;
        }

        @Override // android.car.media.ICarAudio
        public int[] getAudioZoneIds() throws RemoteException {
            return null;
        }

        @Override // android.car.media.ICarAudio
        public int[] getEQBand(int r1) throws RemoteException {
            return null;
        }

        @Override // android.car.media.ICarAudio
        public String[] getExternalSources() throws RemoteException {
            return null;
        }

        @Override // android.car.media.ICarAudio
        public int getGroupMaxVolume(int r1, int r2) throws RemoteException {
            return 0;
        }

        @Override // android.car.media.ICarAudio
        public int getGroupMinVolume(int r1, int r2) throws RemoteException {
            return 0;
        }

        @Override // android.car.media.ICarAudio
        public boolean getGroupMute(int r1, int r2) throws RemoteException {
            return false;
        }

        @Override // android.car.media.ICarAudio
        public int getGroupVolume(int r1, int r2) throws RemoteException {
            return 0;
        }

        @Override // android.car.media.ICarAudio
        public int getOnVolumeMax(int r1, int r2) throws RemoteException {
            return 0;
        }

        @Override // android.car.media.ICarAudio
        public int getOnVolumeMin(int r1, int r2) throws RemoteException {
            return 0;
        }

        @Override // android.car.media.ICarAudio
        public int[] getUsagesForVolumeGroupId(int r1, int r2) throws RemoteException {
            return null;
        }

        @Override // android.car.media.ICarAudio
        public int getVolumeGroupCount(int r1) throws RemoteException {
            return 0;
        }

        @Override // android.car.media.ICarAudio
        public int getVolumeGroupIdForUsage(int r1, int r2) throws RemoteException {
            return 0;
        }

        @Override // android.car.media.ICarAudio
        public int getZoneIdForDisplayPortId(byte b) throws RemoteException {
            return 0;
        }

        @Override // android.car.media.ICarAudio
        public int getZoneIdForUid(int r1) throws RemoteException {
            return 0;
        }

        @Override // android.car.media.ICarAudio
        public boolean isDynamicRoutingEnabled() throws RemoteException {
            return false;
        }

        @Override // android.car.media.ICarAudio
        public void registerAudioSettingCallback(IBinder iBinder) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public void registerVolumeCallback(IBinder iBinder) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public void releaseAudioPatch(CarAudioPatchHandle carAudioPatchHandle) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public void setAudioSetting(AudioSetting audioSetting) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public void setBalanceTowardRight(float f) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public void setFadeTowardFront(float f) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public void setGroupChannelGain(int r1, int r2, int r3, int r4) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public void setGroupMute(int r1, int r2, boolean z, int r4) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public void setGroupVolume(int r1, int r2, int r3, int r4) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public void setNaviDucking(boolean z) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public void setPresetEQForSmart(int r1) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public void setSourceMute(int r1, int r2, boolean z) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public boolean setZoneIdForUid(int r1, int r2) throws RemoteException {
            return false;
        }

        @Override // android.car.media.ICarAudio
        public void setupOnVolumeMax(int r1, int r2, int r3) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public void setupOnVolumeMin(int r1, int r2, int r3) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public void unregisterAudioSettingCallback(IBinder iBinder) throws RemoteException {
        }

        @Override // android.car.media.ICarAudio
        public void unregisterVolumeCallback(IBinder iBinder) throws RemoteException {
        }
    }

    boolean clearZoneIdForUid(int r1) throws RemoteException;

    CarAudioPatchHandle createAudioPatch(String str, int r2, int r3) throws RemoteException;

    int getAudioSetting(AudioSetting audioSetting) throws RemoteException;

    int[] getAudioZoneIds() throws RemoteException;

    int[] getEQBand(int r1) throws RemoteException;

    String[] getExternalSources() throws RemoteException;

    int getGroupMaxVolume(int r1, int r2) throws RemoteException;

    int getGroupMinVolume(int r1, int r2) throws RemoteException;

    boolean getGroupMute(int r1, int r2) throws RemoteException;

    int getGroupVolume(int r1, int r2) throws RemoteException;

    int getOnVolumeMax(int r1, int r2) throws RemoteException;

    int getOnVolumeMin(int r1, int r2) throws RemoteException;

    int[] getUsagesForVolumeGroupId(int r1, int r2) throws RemoteException;

    int getVolumeGroupCount(int r1) throws RemoteException;

    int getVolumeGroupIdForUsage(int r1, int r2) throws RemoteException;

    int getZoneIdForDisplayPortId(byte b) throws RemoteException;

    int getZoneIdForUid(int r1) throws RemoteException;

    boolean isDynamicRoutingEnabled() throws RemoteException;

    void registerAudioSettingCallback(IBinder iBinder) throws RemoteException;

    void registerVolumeCallback(IBinder iBinder) throws RemoteException;

    void releaseAudioPatch(CarAudioPatchHandle carAudioPatchHandle) throws RemoteException;

    void setAudioSetting(AudioSetting audioSetting) throws RemoteException;

    void setBalanceTowardRight(float f) throws RemoteException;

    void setFadeTowardFront(float f) throws RemoteException;

    void setGroupChannelGain(int r1, int r2, int r3, int r4) throws RemoteException;

    void setGroupMute(int r1, int r2, boolean z, int r4) throws RemoteException;

    void setGroupVolume(int r1, int r2, int r3, int r4) throws RemoteException;

    void setNaviDucking(boolean z) throws RemoteException;

    void setPresetEQForSmart(int r1) throws RemoteException;

    void setSourceMute(int r1, int r2, boolean z) throws RemoteException;

    boolean setZoneIdForUid(int r1, int r2) throws RemoteException;

    void setupOnVolumeMax(int r1, int r2, int r3) throws RemoteException;

    void setupOnVolumeMin(int r1, int r2, int r3) throws RemoteException;

    void unregisterAudioSettingCallback(IBinder iBinder) throws RemoteException;

    void unregisterVolumeCallback(IBinder iBinder) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarAudio {
        private static final String DESCRIPTOR = "android.car.media.ICarAudio";
        static final int TRANSACTION_clearZoneIdForUid = 21;
        static final int TRANSACTION_createAudioPatch = 13;
        static final int TRANSACTION_getAudioSetting = 32;
        static final int TRANSACTION_getAudioZoneIds = 18;
        static final int TRANSACTION_getEQBand = 33;
        static final int TRANSACTION_getExternalSources = 12;
        static final int TRANSACTION_getGroupMaxVolume = 3;
        static final int TRANSACTION_getGroupMinVolume = 4;
        static final int TRANSACTION_getGroupMute = 7;
        static final int TRANSACTION_getGroupVolume = 5;
        static final int TRANSACTION_getOnVolumeMax = 29;
        static final int TRANSACTION_getOnVolumeMin = 30;
        static final int TRANSACTION_getUsagesForVolumeGroupId = 17;
        static final int TRANSACTION_getVolumeGroupCount = 15;
        static final int TRANSACTION_getVolumeGroupIdForUsage = 16;
        static final int TRANSACTION_getZoneIdForDisplayPortId = 22;
        static final int TRANSACTION_getZoneIdForUid = 19;
        static final int TRANSACTION_isDynamicRoutingEnabled = 1;
        static final int TRANSACTION_registerAudioSettingCallback = 25;
        static final int TRANSACTION_registerVolumeCallback = 23;
        static final int TRANSACTION_releaseAudioPatch = 14;
        static final int TRANSACTION_setAudioSetting = 31;
        static final int TRANSACTION_setBalanceTowardRight = 11;
        static final int TRANSACTION_setFadeTowardFront = 10;
        static final int TRANSACTION_setGroupChannelGain = 9;
        static final int TRANSACTION_setGroupMute = 6;
        static final int TRANSACTION_setGroupVolume = 2;
        static final int TRANSACTION_setNaviDucking = 35;
        static final int TRANSACTION_setPresetEQForSmart = 34;
        static final int TRANSACTION_setSourceMute = 8;
        static final int TRANSACTION_setZoneIdForUid = 20;
        static final int TRANSACTION_setupOnVolumeMax = 27;
        static final int TRANSACTION_setupOnVolumeMin = 28;
        static final int TRANSACTION_unregisterAudioSettingCallback = 26;
        static final int TRANSACTION_unregisterVolumeCallback = 24;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarAudio asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarAudio)) {
                return (ICarAudio) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r5, Parcel parcel, Parcel parcel2, int r8) throws RemoteException {
            if (r5 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (r5) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsDynamicRoutingEnabled = isDynamicRoutingEnabled();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsDynamicRoutingEnabled ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGroupVolume(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int groupMaxVolume = getGroupMaxVolume(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(groupMaxVolume);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int groupMinVolume = getGroupMinVolume(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(groupMinVolume);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int groupVolume = getGroupVolume(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(groupVolume);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGroupMute(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean groupMute = getGroupMute(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(groupMute ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSourceMute(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGroupChannelGain(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFadeTowardFront(parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    setBalanceTowardRight(parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] externalSources = getExternalSources();
                    parcel2.writeNoException();
                    parcel2.writeStringArray(externalSources);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    CarAudioPatchHandle carAudioPatchHandleCreateAudioPatch = createAudioPatch(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (carAudioPatchHandleCreateAudioPatch != null) {
                        parcel2.writeInt(1);
                        carAudioPatchHandleCreateAudioPatch.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    releaseAudioPatch(parcel.readInt() != 0 ? (CarAudioPatchHandle) CarAudioPatchHandle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    int volumeGroupCount = getVolumeGroupCount(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(volumeGroupCount);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    int volumeGroupIdForUsage = getVolumeGroupIdForUsage(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(volumeGroupIdForUsage);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] usagesForVolumeGroupId = getUsagesForVolumeGroupId(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeIntArray(usagesForVolumeGroupId);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] audioZoneIds = getAudioZoneIds();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(audioZoneIds);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int zoneIdForUid = getZoneIdForUid(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zoneIdForUid);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zoneIdForUid2 = setZoneIdForUid(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zoneIdForUid2 ? 1 : 0);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zClearZoneIdForUid = clearZoneIdForUid(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zClearZoneIdForUid ? 1 : 0);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    int zoneIdForDisplayPortId = getZoneIdForDisplayPortId(parcel.readByte());
                    parcel2.writeNoException();
                    parcel2.writeInt(zoneIdForDisplayPortId);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerVolumeCallback(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterVolumeCallback(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAudioSettingCallback(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAudioSettingCallback(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    setupOnVolumeMax(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    setupOnVolumeMin(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onVolumeMax = getOnVolumeMax(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onVolumeMax);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onVolumeMin = getOnVolumeMin(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onVolumeMin);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAudioSetting(parcel.readInt() != 0 ? (AudioSetting) AudioSetting.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    int audioSetting = getAudioSetting(parcel.readInt() != 0 ? (AudioSetting) AudioSetting.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(audioSetting);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] eQBand = getEQBand(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeIntArray(eQBand);
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPresetEQForSmart(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNaviDucking(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(r5, parcel, parcel2, r8);
            }
        }

        private static class Proxy implements ICarAudio {
            public static ICarAudio sDefaultImpl;
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

            @Override // android.car.media.ICarAudio
            public boolean isDynamicRoutingEnabled() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isDynamicRoutingEnabled();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void setGroupVolume(int r5, int r6, int r7, int r8) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(r7);
                    parcelObtain.writeInt(r8);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setGroupVolume(r5, r6, r7, r8);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public int getGroupMaxVolume(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getGroupMaxVolume(r5, r6);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public int getGroupMinVolume(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getGroupMinVolume(r5, r6);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public int getGroupVolume(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getGroupVolume(r5, r6);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void setGroupMute(int r5, int r6, boolean z, int r8) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(r8);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setGroupMute(r5, r6, z, r8);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public boolean getGroupMute(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getGroupMute(r5, r6);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void setSourceMute(int r5, int r6, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setSourceMute(r5, r6, z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void setGroupChannelGain(int r5, int r6, int r7, int r8) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(r7);
                    parcelObtain.writeInt(r8);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setGroupChannelGain(r5, r6, r7, r8);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void setFadeTowardFront(float f) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setFadeTowardFront(f);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void setBalanceTowardRight(float f) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setBalanceTowardRight(f);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public String[] getExternalSources() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getExternalSources();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public CarAudioPatchHandle createAudioPatch(String str, int r6, int r7) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(r7);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().createAudioPatch(str, r6, r7);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? CarAudioPatchHandle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void releaseAudioPatch(CarAudioPatchHandle carAudioPatchHandle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (carAudioPatchHandle != null) {
                        parcelObtain.writeInt(1);
                        carAudioPatchHandle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().releaseAudioPatch(carAudioPatchHandle);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public int getVolumeGroupCount(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getVolumeGroupCount(r5);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public int getVolumeGroupIdForUsage(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getVolumeGroupIdForUsage(r5, r6);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public int[] getUsagesForVolumeGroupId(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUsagesForVolumeGroupId(r5, r6);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public int[] getAudioZoneIds() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAudioZoneIds();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public int getZoneIdForUid(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getZoneIdForUid(r5);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public boolean setZoneIdForUid(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setZoneIdForUid(r5, r6);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public boolean clearZoneIdForUid(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().clearZoneIdForUid(r5);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public int getZoneIdForDisplayPortId(byte b) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b);
                    if (!this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getZoneIdForDisplayPortId(b);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void registerVolumeCallback(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (!this.mRemote.transact(23, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerVolumeCallback(iBinder);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void unregisterVolumeCallback(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (!this.mRemote.transact(24, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterVolumeCallback(iBinder);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void registerAudioSettingCallback(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (!this.mRemote.transact(25, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerAudioSettingCallback(iBinder);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void unregisterAudioSettingCallback(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (!this.mRemote.transact(26, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterAudioSettingCallback(iBinder);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void setupOnVolumeMax(int r5, int r6, int r7) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(r7);
                    if (!this.mRemote.transact(27, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setupOnVolumeMax(r5, r6, r7);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void setupOnVolumeMin(int r5, int r6, int r7) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    parcelObtain.writeInt(r7);
                    if (!this.mRemote.transact(28, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setupOnVolumeMin(r5, r6, r7);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public int getOnVolumeMax(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(29, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getOnVolumeMax(r5, r6);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public int getOnVolumeMin(int r5, int r6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    parcelObtain.writeInt(r6);
                    if (!this.mRemote.transact(30, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getOnVolumeMin(r5, r6);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void setAudioSetting(AudioSetting audioSetting) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (audioSetting != null) {
                        parcelObtain.writeInt(1);
                        audioSetting.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(31, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setAudioSetting(audioSetting);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public int getAudioSetting(AudioSetting audioSetting) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (audioSetting != null) {
                        parcelObtain.writeInt(1);
                        audioSetting.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(32, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAudioSetting(audioSetting);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public int[] getEQBand(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(33, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getEQBand(r5);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void setPresetEQForSmart(int r5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(r5);
                    if (!this.mRemote.transact(34, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setPresetEQForSmart(r5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.car.media.ICarAudio
            public void setNaviDucking(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(35, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setNaviDucking(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarAudio iCarAudio) {
            if (Proxy.sDefaultImpl != null || iCarAudio == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarAudio;
            return true;
        }

        public static ICarAudio getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
