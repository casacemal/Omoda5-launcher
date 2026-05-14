package android.car.media;

import android.media.AudioSetting;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ICarAudioSettingCallback extends IInterface {

    public static class Default implements ICarAudioSettingCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.car.media.ICarAudioSettingCallback
        public void onAudioSettingChanged(AudioSetting audioSetting) throws RemoteException {
        }
    }

    void onAudioSettingChanged(AudioSetting audioSetting) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarAudioSettingCallback {
        private static final String DESCRIPTOR = "android.car.media.ICarAudioSettingCallback";
        static final int TRANSACTION_onAudioSettingChanged = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarAudioSettingCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarAudioSettingCallback)) {
                return (ICarAudioSettingCallback) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int r4, Parcel parcel, Parcel parcel2, int r7) throws RemoteException {
            if (r4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onAudioSettingChanged(parcel.readInt() != 0 ? (AudioSetting) AudioSetting.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (r4 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(r4, parcel, parcel2, r7);
        }

        private static class Proxy implements ICarAudioSettingCallback {
            public static ICarAudioSettingCallback sDefaultImpl;
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

            @Override // android.car.media.ICarAudioSettingCallback
            public void onAudioSettingChanged(AudioSetting audioSetting) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (audioSetting != null) {
                        parcelObtain.writeInt(1);
                        audioSetting.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onAudioSettingChanged(audioSetting);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarAudioSettingCallback iCarAudioSettingCallback) {
            if (Proxy.sDefaultImpl != null || iCarAudioSettingCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarAudioSettingCallback;
            return true;
        }

        public static ICarAudioSettingCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
