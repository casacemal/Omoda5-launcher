package androidx.media;

import android.media.VolumeProvider;

/* loaded from: classes.dex */
class VolumeProviderCompatApi21 {

    public interface Delegate {
        void onAdjustVolume(int r1);

        void onSetVolumeTo(int r1);
    }

    public static Object createVolumeProvider(int r1, int r2, int r3, final Delegate delegate) {
        return new VolumeProvider(r1, r2, r3) { // from class: androidx.media.VolumeProviderCompatApi21.1
            @Override // android.media.VolumeProvider
            public void onSetVolumeTo(int r12) {
                delegate.onSetVolumeTo(r12);
            }

            @Override // android.media.VolumeProvider
            public void onAdjustVolume(int r12) {
                delegate.onAdjustVolume(r12);
            }
        };
    }

    public static void setCurrentVolume(Object obj, int r1) {
        ((VolumeProvider) obj).setCurrentVolume(r1);
    }

    private VolumeProviderCompatApi21() {
    }
}
