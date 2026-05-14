package android.hidl.base.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public final class DebugInfo {
    public int arch;
    public int pid;
    public long ptr;

    public static final class Architecture {
        public static final int IS_32BIT = 2;
        public static final int IS_64BIT = 1;
        public static final int UNKNOWN = 0;

        public static final String toString(int r2) {
            if (r2 == 0) {
                return "UNKNOWN";
            }
            if (r2 == 1) {
                return "IS_64BIT";
            }
            if (r2 == 2) {
                return "IS_32BIT";
            }
            return "0x" + Integer.toHexString(r2);
        }

        public static final String dumpBitfield(int r4) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("UNKNOWN");
            int r2 = 1;
            if ((r4 & 1) == 1) {
                arrayList.add("IS_64BIT");
            } else {
                r2 = 0;
            }
            if ((r4 & 2) == 2) {
                arrayList.add("IS_32BIT");
                r2 |= 2;
            }
            if (r4 != r2) {
                arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
            }
            return String.join(" | ", arrayList);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != DebugInfo.class) {
            return false;
        }
        DebugInfo debugInfo = (DebugInfo) obj;
        return this.pid == debugInfo.pid && this.ptr == debugInfo.ptr && this.arch == debugInfo.arch;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.pid))), Integer.valueOf(HidlSupport.deepHashCode(Long.valueOf(this.ptr))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.arch))));
    }

    public final String toString() {
        return "{.pid = " + this.pid + ", .ptr = " + this.ptr + ", .arch = " + Architecture.toString(this.arch) + "}";
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(24L), 0L);
    }

    public static final ArrayList<DebugInfo> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<DebugInfo> arrayList = new ArrayList<>();
        HwBlob buffer = hwParcel.readBuffer(16L);
        int int32 = buffer.getInt32(8L);
        HwBlob embeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 24, buffer.handle(), 0L, true);
        arrayList.clear();
        for (int r3 = 0; r3 < int32; r3++) {
            DebugInfo debugInfo = new DebugInfo();
            debugInfo.readEmbeddedFromParcel(hwParcel, embeddedBuffer, r3 * 24);
            arrayList.add(debugInfo);
        }
        return arrayList;
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.pid = hwBlob.getInt32(0 + j);
        this.ptr = hwBlob.getInt64(8 + j);
        this.arch = hwBlob.getInt32(j + 16);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(24);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<DebugInfo> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 24);
        for (int r4 = 0; r4 < size; r4++) {
            arrayList.get(r4).writeEmbeddedToBlob(hwBlob2, r4 * 24);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.pid);
        hwBlob.putInt64(8 + j, this.ptr);
        hwBlob.putInt32(j + 16, this.arch);
    }
}
