package android.hardware.automotive.vehicle.V2_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public final class SubscribeOptions {
    public int flags;
    public int propId;
    public float sampleRate;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != SubscribeOptions.class) {
            return false;
        }
        SubscribeOptions subscribeOptions = (SubscribeOptions) obj;
        return this.propId == subscribeOptions.propId && this.sampleRate == subscribeOptions.sampleRate && this.flags == subscribeOptions.flags;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.propId))), Integer.valueOf(HidlSupport.deepHashCode(Float.valueOf(this.sampleRate))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.flags))));
    }

    public final String toString() {
        return "{.propId = " + this.propId + ", .sampleRate = " + this.sampleRate + ", .flags = " + SubscribeFlags.toString(this.flags) + "}";
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(12L), 0L);
    }

    public static final ArrayList<SubscribeOptions> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<SubscribeOptions> arrayList = new ArrayList<>();
        HwBlob buffer = hwParcel.readBuffer(16L);
        int int32 = buffer.getInt32(8L);
        HwBlob embeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 12, buffer.handle(), 0L, true);
        arrayList.clear();
        for (int r3 = 0; r3 < int32; r3++) {
            SubscribeOptions subscribeOptions = new SubscribeOptions();
            subscribeOptions.readEmbeddedFromParcel(hwParcel, embeddedBuffer, r3 * 12);
            arrayList.add(subscribeOptions);
        }
        return arrayList;
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.propId = hwBlob.getInt32(0 + j);
        this.sampleRate = hwBlob.getFloat(4 + j);
        this.flags = hwBlob.getInt32(j + 8);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(12);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<SubscribeOptions> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 12);
        for (int r4 = 0; r4 < size; r4++) {
            arrayList.get(r4).writeEmbeddedToBlob(hwBlob2, r4 * 12);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.propId);
        hwBlob.putFloat(4 + j, this.sampleRate);
        hwBlob.putInt32(j + 8, this.flags);
    }
}
