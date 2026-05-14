package androidx.collection;

/* loaded from: classes.dex */
public class LongSparseArray<E> implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private long[] mKeys;
    private int mSize;
    private Object[] mValues;

    public LongSparseArray() {
        this(10);
    }

    public LongSparseArray(int r2) {
        this.mGarbage = false;
        if (r2 == 0) {
            this.mKeys = ContainerHelpers.EMPTY_LONGS;
            this.mValues = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            int r22 = ContainerHelpers.idealLongArraySize(r2);
            this.mKeys = new long[r22];
            this.mValues = new Object[r22];
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LongSparseArray<E> m38clone() {
        try {
            LongSparseArray<E> longSparseArray = (LongSparseArray) super.clone();
            longSparseArray.mKeys = (long[]) this.mKeys.clone();
            longSparseArray.mValues = (Object[]) this.mValues.clone();
            return longSparseArray;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public E get(long j) {
        return get(j, null);
    }

    public E get(long j, E e) {
        int r3 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
        if (r3 >= 0) {
            Object[] objArr = this.mValues;
            if (objArr[r3] != DELETED) {
                return (E) objArr[r3];
            }
        }
        return e;
    }

    @Deprecated
    public void delete(long j) {
        remove(j);
    }

    public void remove(long j) {
        int r3 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
        if (r3 >= 0) {
            Object[] objArr = this.mValues;
            Object obj = objArr[r3];
            Object obj2 = DELETED;
            if (obj != obj2) {
                objArr[r3] = obj2;
                this.mGarbage = true;
            }
        }
    }

    public boolean remove(long j, Object obj) {
        int r1 = indexOfKey(j);
        if (r1 < 0) {
            return false;
        }
        E eValueAt = valueAt(r1);
        if (obj != eValueAt && (obj == null || !obj.equals(eValueAt))) {
            return false;
        }
        removeAt(r1);
        return true;
    }

    public void removeAt(int r4) {
        Object[] objArr = this.mValues;
        Object obj = objArr[r4];
        Object obj2 = DELETED;
        if (obj != obj2) {
            objArr[r4] = obj2;
            this.mGarbage = true;
        }
    }

    public E replace(long j, E e) {
        int r1 = indexOfKey(j);
        if (r1 < 0) {
            return null;
        }
        Object[] objArr = this.mValues;
        E e2 = (E) objArr[r1];
        objArr[r1] = e;
        return e2;
    }

    public boolean replace(long j, E e, E e2) {
        int r1 = indexOfKey(j);
        if (r1 < 0) {
            return false;
        }
        Object obj = this.mValues[r1];
        if (obj != e && (e == null || !e.equals(obj))) {
            return false;
        }
        this.mValues[r1] = e2;
        return true;
    }

    /* renamed from: gc */
    private void m6gc() {
        int r0 = this.mSize;
        long[] jArr = this.mKeys;
        Object[] objArr = this.mValues;
        int r5 = 0;
        for (int r4 = 0; r4 < r0; r4++) {
            Object obj = objArr[r4];
            if (obj != DELETED) {
                if (r4 != r5) {
                    jArr[r5] = jArr[r4];
                    objArr[r5] = obj;
                    objArr[r4] = null;
                }
                r5++;
            }
        }
        this.mGarbage = false;
        this.mSize = r5;
    }

    public void put(long j, E e) {
        int r0 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
        if (r0 >= 0) {
            this.mValues[r0] = e;
            return;
        }
        int r02 = ~r0;
        if (r02 < this.mSize) {
            Object[] objArr = this.mValues;
            if (objArr[r02] == DELETED) {
                this.mKeys[r02] = j;
                objArr[r02] = e;
                return;
            }
        }
        if (this.mGarbage && this.mSize >= this.mKeys.length) {
            m6gc();
            r02 = ~ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
        }
        int r1 = this.mSize;
        if (r1 >= this.mKeys.length) {
            int r12 = ContainerHelpers.idealLongArraySize(r1 + 1);
            long[] jArr = new long[r12];
            Object[] objArr2 = new Object[r12];
            long[] jArr2 = this.mKeys;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.mValues;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.mKeys = jArr;
            this.mValues = objArr2;
        }
        int r13 = this.mSize;
        if (r13 - r02 != 0) {
            long[] jArr3 = this.mKeys;
            int r3 = r02 + 1;
            System.arraycopy(jArr3, r02, jArr3, r3, r13 - r02);
            Object[] objArr4 = this.mValues;
            System.arraycopy(objArr4, r02, objArr4, r3, this.mSize - r02);
        }
        this.mKeys[r02] = j;
        this.mValues[r02] = e;
        this.mSize++;
    }

    public void putAll(LongSparseArray<? extends E> longSparseArray) {
        int size = longSparseArray.size();
        for (int r1 = 0; r1 < size; r1++) {
            put(longSparseArray.keyAt(r1), longSparseArray.valueAt(r1));
        }
    }

    public E putIfAbsent(long j, E e) {
        E e2 = get(j);
        if (e2 == null) {
            put(j, e);
        }
        return e2;
    }

    public int size() {
        if (this.mGarbage) {
            m6gc();
        }
        return this.mSize;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public long keyAt(int r2) {
        if (this.mGarbage) {
            m6gc();
        }
        return this.mKeys[r2];
    }

    public E valueAt(int r2) {
        if (this.mGarbage) {
            m6gc();
        }
        return (E) this.mValues[r2];
    }

    public void setValueAt(int r2, E e) {
        if (this.mGarbage) {
            m6gc();
        }
        this.mValues[r2] = e;
    }

    public int indexOfKey(long j) {
        if (this.mGarbage) {
            m6gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
    }

    public int indexOfValue(E e) {
        if (this.mGarbage) {
            m6gc();
        }
        for (int r0 = 0; r0 < this.mSize; r0++) {
            if (this.mValues[r0] == e) {
                return r0;
            }
        }
        return -1;
    }

    public boolean containsKey(long j) {
        return indexOfKey(j) >= 0;
    }

    public boolean containsValue(E e) {
        return indexOfValue(e) >= 0;
    }

    public void clear() {
        int r0 = this.mSize;
        Object[] objArr = this.mValues;
        for (int r3 = 0; r3 < r0; r3++) {
            objArr[r3] = null;
        }
        this.mSize = 0;
        this.mGarbage = false;
    }

    public void append(long j, E e) {
        int r0 = this.mSize;
        if (r0 != 0 && j <= this.mKeys[r0 - 1]) {
            put(j, e);
            return;
        }
        if (this.mGarbage && this.mSize >= this.mKeys.length) {
            m6gc();
        }
        int r02 = this.mSize;
        if (r02 >= this.mKeys.length) {
            int r1 = ContainerHelpers.idealLongArraySize(r02 + 1);
            long[] jArr = new long[r1];
            Object[] objArr = new Object[r1];
            long[] jArr2 = this.mKeys;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.mValues;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.mKeys = jArr;
            this.mValues = objArr;
        }
        this.mKeys[r02] = j;
        this.mValues[r02] = e;
        this.mSize = r02 + 1;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.mSize * 28);
        sb.append('{');
        for (int r1 = 0; r1 < this.mSize; r1++) {
            if (r1 > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(r1));
            sb.append('=');
            E eValueAt = valueAt(r1);
            if (eValueAt != this) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
