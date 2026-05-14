package androidx.versionedparcelable;

import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.NetworkOnMainThreadException;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseBooleanArray;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class VersionedParcel {
    private static final int EX_BAD_PARCELABLE = -2;
    private static final int EX_ILLEGAL_ARGUMENT = -3;
    private static final int EX_ILLEGAL_STATE = -5;
    private static final int EX_NETWORK_MAIN_THREAD = -6;
    private static final int EX_NULL_POINTER = -4;
    private static final int EX_PARCELABLE = -9;
    private static final int EX_SECURITY = -1;
    private static final int EX_UNSUPPORTED_OPERATION = -7;
    private static final String TAG = "VersionedParcel";
    private static final int TYPE_BINDER = 5;
    private static final int TYPE_FLOAT = 8;
    private static final int TYPE_INTEGER = 7;
    private static final int TYPE_PARCELABLE = 2;
    private static final int TYPE_SERIALIZABLE = 3;
    private static final int TYPE_STRING = 4;
    private static final int TYPE_VERSIONED_PARCELABLE = 1;
    protected final ArrayMap<String, Class> mParcelizerCache;
    protected final ArrayMap<String, Method> mReadCache;
    protected final ArrayMap<String, Method> mWriteCache;

    protected abstract void closeField();

    protected abstract VersionedParcel createSubParcel();

    public boolean isStream() {
        return false;
    }

    protected abstract boolean readBoolean();

    protected abstract Bundle readBundle();

    protected abstract byte[] readByteArray();

    protected abstract CharSequence readCharSequence();

    protected abstract double readDouble();

    protected abstract boolean readField(int r1);

    protected abstract float readFloat();

    protected abstract int readInt();

    protected abstract long readLong();

    protected abstract <T extends Parcelable> T readParcelable();

    protected abstract String readString();

    protected abstract IBinder readStrongBinder();

    protected abstract void setOutputField(int r1);

    public void setSerializationFlags(boolean z, boolean z2) {
    }

    protected abstract void writeBoolean(boolean z);

    protected abstract void writeBundle(Bundle bundle);

    protected abstract void writeByteArray(byte[] bArr);

    protected abstract void writeByteArray(byte[] bArr, int r2, int r3);

    protected abstract void writeCharSequence(CharSequence charSequence);

    protected abstract void writeDouble(double d);

    protected abstract void writeFloat(float f);

    protected abstract void writeInt(int r1);

    protected abstract void writeLong(long j);

    protected abstract void writeParcelable(Parcelable parcelable);

    protected abstract void writeString(String str);

    protected abstract void writeStrongBinder(IBinder iBinder);

    protected abstract void writeStrongInterface(IInterface iInterface);

    public VersionedParcel(ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        this.mReadCache = arrayMap;
        this.mWriteCache = arrayMap2;
        this.mParcelizerCache = arrayMap3;
    }

    public void writeStrongInterface(IInterface iInterface, int r2) {
        setOutputField(r2);
        writeStrongInterface(iInterface);
    }

    public void writeBundle(Bundle bundle, int r2) {
        setOutputField(r2);
        writeBundle(bundle);
    }

    public void writeBoolean(boolean z, int r2) {
        setOutputField(r2);
        writeBoolean(z);
    }

    public void writeByteArray(byte[] bArr, int r2) {
        setOutputField(r2);
        writeByteArray(bArr);
    }

    public void writeByteArray(byte[] bArr, int r2, int r3, int r4) {
        setOutputField(r4);
        writeByteArray(bArr, r2, r3);
    }

    public void writeCharSequence(CharSequence charSequence, int r2) {
        setOutputField(r2);
        writeCharSequence(charSequence);
    }

    public void writeInt(int r1, int r2) {
        setOutputField(r2);
        writeInt(r1);
    }

    public void writeLong(long j, int r3) {
        setOutputField(r3);
        writeLong(j);
    }

    public void writeFloat(float f, int r2) {
        setOutputField(r2);
        writeFloat(f);
    }

    public void writeDouble(double d, int r3) {
        setOutputField(r3);
        writeDouble(d);
    }

    public void writeString(String str, int r2) {
        setOutputField(r2);
        writeString(str);
    }

    public void writeStrongBinder(IBinder iBinder, int r2) {
        setOutputField(r2);
        writeStrongBinder(iBinder);
    }

    public void writeParcelable(Parcelable parcelable, int r2) {
        setOutputField(r2);
        writeParcelable(parcelable);
    }

    public boolean readBoolean(boolean z, int r2) {
        return !readField(r2) ? z : readBoolean();
    }

    public int readInt(int r1, int r2) {
        return !readField(r2) ? r1 : readInt();
    }

    public long readLong(long j, int r3) {
        return !readField(r3) ? j : readLong();
    }

    public float readFloat(float f, int r2) {
        return !readField(r2) ? f : readFloat();
    }

    public double readDouble(double d, int r3) {
        return !readField(r3) ? d : readDouble();
    }

    public String readString(String str, int r2) {
        return !readField(r2) ? str : readString();
    }

    public IBinder readStrongBinder(IBinder iBinder, int r2) {
        return !readField(r2) ? iBinder : readStrongBinder();
    }

    public byte[] readByteArray(byte[] bArr, int r2) {
        return !readField(r2) ? bArr : readByteArray();
    }

    public <T extends Parcelable> T readParcelable(T t, int r2) {
        return !readField(r2) ? t : (T) readParcelable();
    }

    public Bundle readBundle(Bundle bundle, int r2) {
        return !readField(r2) ? bundle : readBundle();
    }

    public void writeByte(byte b, int r2) {
        setOutputField(r2);
        writeInt(b);
    }

    public void writeSize(Size size, int r2) {
        setOutputField(r2);
        writeBoolean(size != null);
        if (size != null) {
            writeInt(size.getWidth());
            writeInt(size.getHeight());
        }
    }

    public void writeSizeF(SizeF sizeF, int r2) {
        setOutputField(r2);
        writeBoolean(sizeF != null);
        if (sizeF != null) {
            writeFloat(sizeF.getWidth());
            writeFloat(sizeF.getHeight());
        }
    }

    public void writeSparseBooleanArray(SparseBooleanArray sparseBooleanArray, int r4) {
        setOutputField(r4);
        if (sparseBooleanArray == null) {
            writeInt(-1);
            return;
        }
        int size = sparseBooleanArray.size();
        writeInt(size);
        for (int r0 = 0; r0 < size; r0++) {
            writeInt(sparseBooleanArray.keyAt(r0));
            writeBoolean(sparseBooleanArray.valueAt(r0));
        }
    }

    public void writeBooleanArray(boolean[] zArr, int r2) {
        setOutputField(r2);
        writeBooleanArray(zArr);
    }

    protected void writeBooleanArray(boolean[] zArr) {
        if (zArr != null) {
            writeInt(zArr.length);
            for (boolean z : zArr) {
                writeInt(z ? 1 : 0);
            }
            return;
        }
        writeInt(-1);
    }

    public boolean[] readBooleanArray(boolean[] zArr, int r2) {
        return !readField(r2) ? zArr : readBooleanArray();
    }

    protected boolean[] readBooleanArray() {
        int r0 = readInt();
        if (r0 < 0) {
            return null;
        }
        boolean[] zArr = new boolean[r0];
        for (int r3 = 0; r3 < r0; r3++) {
            zArr[r3] = readInt() != 0;
        }
        return zArr;
    }

    public void writeCharArray(char[] cArr, int r4) {
        setOutputField(r4);
        if (cArr != null) {
            writeInt(cArr.length);
            for (char c : cArr) {
                writeInt(c);
            }
            return;
        }
        writeInt(-1);
    }

    public CharSequence readCharSequence(CharSequence charSequence, int r2) {
        return !readField(r2) ? charSequence : readCharSequence();
    }

    public char[] readCharArray(char[] cArr, int r4) {
        if (!readField(r4)) {
            return cArr;
        }
        int r3 = readInt();
        if (r3 < 0) {
            return null;
        }
        char[] cArr2 = new char[r3];
        for (int r0 = 0; r0 < r3; r0++) {
            cArr2[r0] = (char) readInt();
        }
        return cArr2;
    }

    public void writeIntArray(int[] r1, int r2) {
        setOutputField(r2);
        writeIntArray(r1);
    }

    protected void writeIntArray(int[] r4) {
        if (r4 != null) {
            writeInt(r4.length);
            for (int r0 : r4) {
                writeInt(r0);
            }
            return;
        }
        writeInt(-1);
    }

    public int[] readIntArray(int[] r1, int r2) {
        return !readField(r2) ? r1 : readIntArray();
    }

    protected int[] readIntArray() {
        int r0 = readInt();
        if (r0 < 0) {
            return null;
        }
        int[] r1 = new int[r0];
        for (int r2 = 0; r2 < r0; r2++) {
            r1[r2] = readInt();
        }
        return r1;
    }

    public void writeLongArray(long[] jArr, int r2) {
        setOutputField(r2);
        writeLongArray(jArr);
    }

    protected void writeLongArray(long[] jArr) {
        if (jArr != null) {
            writeInt(jArr.length);
            for (long j : jArr) {
                writeLong(j);
            }
            return;
        }
        writeInt(-1);
    }

    public long[] readLongArray(long[] jArr, int r2) {
        return !readField(r2) ? jArr : readLongArray();
    }

    protected long[] readLongArray() {
        int r0 = readInt();
        if (r0 < 0) {
            return null;
        }
        long[] jArr = new long[r0];
        for (int r2 = 0; r2 < r0; r2++) {
            jArr[r2] = readLong();
        }
        return jArr;
    }

    public void writeFloatArray(float[] fArr, int r2) {
        setOutputField(r2);
        writeFloatArray(fArr);
    }

    protected void writeFloatArray(float[] fArr) {
        if (fArr != null) {
            writeInt(fArr.length);
            for (float f : fArr) {
                writeFloat(f);
            }
            return;
        }
        writeInt(-1);
    }

    public float[] readFloatArray(float[] fArr, int r2) {
        return !readField(r2) ? fArr : readFloatArray();
    }

    protected float[] readFloatArray() {
        int r0 = readInt();
        if (r0 < 0) {
            return null;
        }
        float[] fArr = new float[r0];
        for (int r2 = 0; r2 < r0; r2++) {
            fArr[r2] = readFloat();
        }
        return fArr;
    }

    public void writeDoubleArray(double[] dArr, int r2) {
        setOutputField(r2);
        writeDoubleArray(dArr);
    }

    protected void writeDoubleArray(double[] dArr) {
        if (dArr != null) {
            writeInt(dArr.length);
            for (double d : dArr) {
                writeDouble(d);
            }
            return;
        }
        writeInt(-1);
    }

    public double[] readDoubleArray(double[] dArr, int r2) {
        return !readField(r2) ? dArr : readDoubleArray();
    }

    protected double[] readDoubleArray() {
        int r0 = readInt();
        if (r0 < 0) {
            return null;
        }
        double[] dArr = new double[r0];
        for (int r2 = 0; r2 < r0; r2++) {
            dArr[r2] = readDouble();
        }
        return dArr;
    }

    public <T> void writeSet(Set<T> set, int r2) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        writeCollection(set, r2);
    }

    public <T> void writeList(List<T> list, int r2) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        writeCollection(list, r2);
    }

    public <K, V> void writeMap(Map<K, V> map, int r5) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        setOutputField(r5);
        if (map == null) {
            writeInt(-1);
            return;
        }
        int size = map.size();
        writeInt(size);
        if (size == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            arrayList.add(entry.getKey());
            arrayList2.add(entry.getValue());
        }
        writeCollection(arrayList);
        writeCollection(arrayList2);
    }

    private <T> void writeCollection(Collection<T> collection, int r2) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        setOutputField(r2);
        writeCollection(collection);
    }

    private <T> void writeCollection(Collection<T> collection) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        if (collection == null) {
            writeInt(-1);
        }
        int size = collection.size();
        writeInt(size);
        if (size > 0) {
            int type = getType(collection.iterator().next());
            writeInt(type);
            switch (type) {
                case 1:
                    Iterator<T> it = collection.iterator();
                    while (it.hasNext()) {
                        writeVersionedParcelable((VersionedParcelable) it.next());
                    }
                    break;
                case 2:
                    Iterator<T> it2 = collection.iterator();
                    while (it2.hasNext()) {
                        writeParcelable((Parcelable) it2.next());
                    }
                    break;
                case 3:
                    Iterator<T> it3 = collection.iterator();
                    while (it3.hasNext()) {
                        writeSerializable((Serializable) it3.next());
                    }
                    break;
                case 4:
                    Iterator<T> it4 = collection.iterator();
                    while (it4.hasNext()) {
                        writeString((String) it4.next());
                    }
                    break;
                case 5:
                    Iterator<T> it5 = collection.iterator();
                    while (it5.hasNext()) {
                        writeStrongBinder((IBinder) it5.next());
                    }
                    break;
                case 7:
                    Iterator<T> it6 = collection.iterator();
                    while (it6.hasNext()) {
                        writeInt(((Integer) it6.next()).intValue());
                    }
                    break;
                case 8:
                    Iterator<T> it7 = collection.iterator();
                    while (it7.hasNext()) {
                        writeFloat(((Float) it7.next()).floatValue());
                    }
                    break;
            }
        }
    }

    public <T> void writeArray(T[] tArr, int r2) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        setOutputField(r2);
        writeArray(tArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected <T> void writeArray(T[] tArr) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        if (tArr == 0) {
            writeInt(-1);
            return;
        }
        int length = tArr.length;
        writeInt(length);
        if (length > 0) {
            int r1 = 0;
            int type = getType(tArr[0]);
            writeInt(type);
            if (type == 1) {
                while (r1 < length) {
                    writeVersionedParcelable((VersionedParcelable) tArr[r1]);
                    r1++;
                }
                return;
            }
            if (type == 2) {
                while (r1 < length) {
                    writeParcelable((Parcelable) tArr[r1]);
                    r1++;
                }
                return;
            }
            if (type == 3) {
                while (r1 < length) {
                    writeSerializable((Serializable) tArr[r1]);
                    r1++;
                }
            } else if (type == 4) {
                while (r1 < length) {
                    writeString((String) tArr[r1]);
                    r1++;
                }
            } else {
                if (type != 5) {
                    return;
                }
                while (r1 < length) {
                    writeStrongBinder((IBinder) tArr[r1]);
                    r1++;
                }
            }
        }
    }

    private <T> int getType(T t) {
        if (t instanceof String) {
            return 4;
        }
        if (t instanceof Parcelable) {
            return 2;
        }
        if (t instanceof VersionedParcelable) {
            return 1;
        }
        if (t instanceof Serializable) {
            return 3;
        }
        if (t instanceof IBinder) {
            return 5;
        }
        if (t instanceof Integer) {
            return 7;
        }
        if (t instanceof Float) {
            return 8;
        }
        throw new IllegalArgumentException(t.getClass().getName() + " cannot be VersionedParcelled");
    }

    public void writeVersionedParcelable(VersionedParcelable versionedParcelable, int r2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        setOutputField(r2);
        writeVersionedParcelable(versionedParcelable);
    }

    protected void writeVersionedParcelable(VersionedParcelable versionedParcelable) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (versionedParcelable == null) {
            writeString(null);
            return;
        }
        writeVersionedParcelableCreator(versionedParcelable);
        VersionedParcel versionedParcelCreateSubParcel = createSubParcel();
        writeToParcel(versionedParcelable, versionedParcelCreateSubParcel);
        versionedParcelCreateSubParcel.closeField();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeVersionedParcelableCreator(VersionedParcelable versionedParcelable) {
        try {
            writeString(findParcelClass(versionedParcelable.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(versionedParcelable.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    public void writeSerializable(Serializable serializable, int r2) throws IOException {
        setOutputField(r2);
        writeSerializable(serializable);
    }

    private void writeSerializable(Serializable serializable) throws IOException {
        if (serializable == null) {
            writeString(null);
            return;
        }
        String name = serializable.getClass().getName();
        writeString(name);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            writeByteArray(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new RuntimeException("VersionedParcelable encountered IOException writing serializable object (name = " + name + ")", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void writeException(Exception exc, int r5) {
        setOutputField(r5);
        if (exc == 0) {
            writeNoException();
            return;
        }
        int r52 = 0;
        if ((exc instanceof Parcelable) && exc.getClass().getClassLoader() == Parcelable.class.getClassLoader()) {
            r52 = EX_PARCELABLE;
        } else if (exc instanceof SecurityException) {
            r52 = -1;
        } else if (exc instanceof BadParcelableException) {
            r52 = -2;
        } else if (exc instanceof IllegalArgumentException) {
            r52 = -3;
        } else if (exc instanceof NullPointerException) {
            r52 = -4;
        } else if (exc instanceof IllegalStateException) {
            r52 = EX_ILLEGAL_STATE;
        } else if (exc instanceof NetworkOnMainThreadException) {
            r52 = EX_NETWORK_MAIN_THREAD;
        } else if (exc instanceof UnsupportedOperationException) {
            r52 = EX_UNSUPPORTED_OPERATION;
        }
        writeInt(r52);
        if (r52 == 0) {
            if (exc instanceof RuntimeException) {
                throw ((RuntimeException) exc);
            }
            throw new RuntimeException(exc);
        }
        writeString(exc.getMessage());
        if (r52 != EX_PARCELABLE) {
            return;
        }
        writeParcelable((Parcelable) exc);
    }

    protected void writeNoException() {
        writeInt(0);
    }

    public Exception readException(Exception exc, int r2) {
        int exceptionCode;
        return (readField(r2) && (exceptionCode = readExceptionCode()) != 0) ? readException(exceptionCode, readString()) : exc;
    }

    private int readExceptionCode() {
        return readInt();
    }

    private Exception readException(int r1, String str) {
        return createException(r1, str);
    }

    protected static Throwable getRootCause(Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    private Exception createException(int r3, String str) {
        switch (r3) {
            case EX_PARCELABLE /* -9 */:
                return (Exception) readParcelable();
            case -8:
            default:
                return new RuntimeException("Unknown exception code: " + r3 + " msg " + str);
            case EX_UNSUPPORTED_OPERATION /* -7 */:
                return new UnsupportedOperationException(str);
            case EX_NETWORK_MAIN_THREAD /* -6 */:
                return new NetworkOnMainThreadException();
            case EX_ILLEGAL_STATE /* -5 */:
                return new IllegalStateException(str);
            case -4:
                return new NullPointerException(str);
            case -3:
                return new IllegalArgumentException(str);
            case -2:
                return new BadParcelableException(str);
            case -1:
                return new SecurityException(str);
        }
    }

    public byte readByte(byte b, int r2) {
        return !readField(r2) ? b : (byte) (readInt() & 255);
    }

    public Size readSize(Size size, int r2) {
        if (!readField(r2)) {
            return size;
        }
        if (readBoolean()) {
            return new Size(readInt(), readInt());
        }
        return null;
    }

    public SizeF readSizeF(SizeF sizeF, int r2) {
        if (!readField(r2)) {
            return sizeF;
        }
        if (readBoolean()) {
            return new SizeF(readFloat(), readFloat());
        }
        return null;
    }

    public SparseBooleanArray readSparseBooleanArray(SparseBooleanArray sparseBooleanArray, int r5) {
        if (!readField(r5)) {
            return sparseBooleanArray;
        }
        int r4 = readInt();
        if (r4 < 0) {
            return null;
        }
        SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray(r4);
        for (int r0 = 0; r0 < r4; r0++) {
            sparseBooleanArray2.put(readInt(), readBoolean());
        }
        return sparseBooleanArray2;
    }

    public <T> Set<T> readSet(Set<T> set, int r2) {
        return !readField(r2) ? set : (Set) readCollection(new ArraySet());
    }

    public <T> List<T> readList(List<T> list, int r2) {
        return !readField(r2) ? list : (List) readCollection(new ArrayList());
    }

    private <T, S extends Collection<T>> S readCollection(S s) {
        int r0 = readInt();
        if (r0 < 0) {
            return null;
        }
        if (r0 != 0) {
            int r2 = readInt();
            if (r0 < 0) {
                return null;
            }
            if (r2 == 1) {
                while (r0 > 0) {
                    s.add(readVersionedParcelable());
                    r0--;
                }
            } else if (r2 == 2) {
                while (r0 > 0) {
                    s.add(readParcelable());
                    r0--;
                }
            } else if (r2 == 3) {
                while (r0 > 0) {
                    s.add(readSerializable());
                    r0--;
                }
            } else if (r2 == 4) {
                while (r0 > 0) {
                    s.add(readString());
                    r0--;
                }
            } else if (r2 == 5) {
                while (r0 > 0) {
                    s.add(readStrongBinder());
                    r0--;
                }
            }
        }
        return s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <K, V> Map<K, V> readMap(Map<K, V> map, int r6) {
        if (!readField(r6)) {
            return map;
        }
        int r5 = readInt();
        if (r5 < 0) {
            return null;
        }
        ArrayMap arrayMap = new ArrayMap();
        if (r5 == 0) {
            return arrayMap;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        readCollection(arrayList);
        readCollection(arrayList2);
        for (int r4 = 0; r4 < r5; r4++) {
            arrayMap.put(arrayList.get(r4), arrayList2.get(r4));
        }
        return arrayMap;
    }

    public <T> T[] readArray(T[] tArr, int r2) {
        return !readField(r2) ? tArr : (T[]) readArray(tArr);
    }

    protected <T> T[] readArray(T[] tArr) {
        int r0 = readInt();
        if (r0 < 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(r0);
        if (r0 != 0) {
            int r3 = readInt();
            if (r0 < 0) {
                return null;
            }
            if (r3 == 1) {
                while (r0 > 0) {
                    arrayList.add(readVersionedParcelable());
                    r0--;
                }
            } else if (r3 == 2) {
                while (r0 > 0) {
                    arrayList.add(readParcelable());
                    r0--;
                }
            } else if (r3 == 3) {
                while (r0 > 0) {
                    arrayList.add(readSerializable());
                    r0--;
                }
            } else if (r3 == 4) {
                while (r0 > 0) {
                    arrayList.add(readString());
                    r0--;
                }
            } else if (r3 == 5) {
                while (r0 > 0) {
                    arrayList.add(readStrongBinder());
                    r0--;
                }
            }
        }
        return (T[]) arrayList.toArray(tArr);
    }

    public <T extends VersionedParcelable> T readVersionedParcelable(T t, int r2) {
        return !readField(r2) ? t : (T) readVersionedParcelable();
    }

    protected <T extends VersionedParcelable> T readVersionedParcelable() {
        String string = readString();
        if (string == null) {
            return null;
        }
        return (T) readFromParcel(string, createSubParcel());
    }

    protected Serializable readSerializable() {
        String string = readString();
        if (string == null) {
            return null;
        }
        try {
            return (Serializable) new ObjectInputStream(new ByteArrayInputStream(readByteArray())) { // from class: androidx.versionedparcelable.VersionedParcel.1
                @Override // java.io.ObjectInputStream
                protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws ClassNotFoundException, IOException {
                    Class<?> cls = Class.forName(objectStreamClass.getName(), false, getClass().getClassLoader());
                    return cls != null ? cls : super.resolveClass(objectStreamClass);
                }
            }.readObject();
        } catch (IOException e) {
            throw new RuntimeException("VersionedParcelable encountered IOException reading a Serializable object (name = " + string + ")", e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = " + string + ")", e2);
        }
    }

    protected <T extends VersionedParcelable> T readFromParcel(String str, VersionedParcel versionedParcel) {
        try {
            return (T) getReadMethod(str).invoke(null, versionedParcel);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    protected <T extends VersionedParcelable> void writeToParcel(T t, VersionedParcel versionedParcel) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            getWriteMethod(t.getClass()).invoke(null, t, versionedParcel);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    private Method getReadMethod(String str) throws IllegalAccessException, NoSuchMethodException, SecurityException, ClassNotFoundException {
        Method method = this.mReadCache.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
        this.mReadCache.put(str, declaredMethod);
        return declaredMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Method getWriteMethod(Class cls) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException {
        Method method = this.mWriteCache.get(cls.getName());
        if (method != null) {
            return method;
        }
        Class clsFindParcelClass = findParcelClass(cls);
        System.currentTimeMillis();
        Method declaredMethod = clsFindParcelClass.getDeclaredMethod("write", cls, VersionedParcel.class);
        this.mWriteCache.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    private Class findParcelClass(Class<? extends VersionedParcelable> cls) throws ClassNotFoundException {
        Class cls2 = this.mParcelizerCache.get(cls.getName());
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
        this.mParcelizerCache.put(cls.getName(), cls3);
        return cls3;
    }

    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th) {
            super(th);
        }
    }
}
