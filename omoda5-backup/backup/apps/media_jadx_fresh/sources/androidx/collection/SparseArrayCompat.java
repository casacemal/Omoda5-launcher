package androidx.collection;

/* loaded from: classes.dex */
public class SparseArrayCompat<E> implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private int[] mKeys;
    private int mSize;
    private Object[] mValues;

    public SparseArrayCompat() {
        this(10);
    }

    public SparseArrayCompat(int r2) {
        this.mGarbage = false;
        if (r2 == 0) {
            this.mKeys = ContainerHelpers.EMPTY_INTS;
            this.mValues = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            int r22 = ContainerHelpers.idealIntArraySize(r2);
            this.mKeys = new int[r22];
            this.mValues = new Object[r22];
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseArrayCompat<E> m39clone() {
        try {
            SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) super.clone();
            sparseArrayCompat.mKeys = (int[]) this.mKeys.clone();
            sparseArrayCompat.mValues = (Object[]) this.mValues.clone();
            return sparseArrayCompat;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public E get(int r2) {
        return get(r2, null);
    }

    public E get(int r3, E e) {
        int r32 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, r3);
        if (r32 >= 0) {
            Object[] objArr = this.mValues;
            if (objArr[r32] != DELETED) {
                return (E) objArr[r32];
            }
        }
        return e;
    }

    @Deprecated
    public void delete(int r1) {
        remove(r1);
    }

    public void remove(int r4) {
        int r42 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, r4);
        if (r42 >= 0) {
            Object[] objArr = this.mValues;
            Object obj = objArr[r42];
            Object obj2 = DELETED;
            if (obj != obj2) {
                objArr[r42] = obj2;
                this.mGarbage = true;
            }
        }
    }

    public boolean remove(int r2, Object obj) {
        int r22 = indexOfKey(r2);
        if (r22 < 0) {
            return false;
        }
        E eValueAt = valueAt(r22);
        if (obj != eValueAt && (obj == null || !obj.equals(eValueAt))) {
            return false;
        }
        removeAt(r22);
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

    public void removeAtRange(int r2, int r3) {
        int r32 = Math.min(this.mSize, r3 + r2);
        while (r2 < r32) {
            removeAt(r2);
            r2++;
        }
    }

    public E replace(int r2, E e) {
        int r22 = indexOfKey(r2);
        if (r22 < 0) {
            return null;
        }
        Object[] objArr = this.mValues;
        E e2 = (E) objArr[r22];
        objArr[r22] = e;
        return e2;
    }

    public boolean replace(int r2, E e, E e2) {
        int r22 = indexOfKey(r2);
        if (r22 < 0) {
            return false;
        }
        Object obj = this.mValues[r22];
        if (obj != e && (e == null || !e.equals(obj))) {
            return false;
        }
        this.mValues[r22] = e2;
        return true;
    }

    /* renamed from: gc */
    private void m7gc() {
        int r0 = this.mSize;
        int[] r1 = this.mKeys;
        Object[] objArr = this.mValues;
        int r5 = 0;
        for (int r4 = 0; r4 < r0; r4++) {
            Object obj = objArr[r4];
            if (obj != DELETED) {
                if (r4 != r5) {
                    r1[r5] = r1[r4];
                    objArr[r5] = obj;
                    objArr[r4] = null;
                }
                r5++;
            }
        }
        this.mGarbage = false;
        this.mSize = r5;
    }

    public void put(int r7, E e) {
        int r0 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, r7);
        if (r0 >= 0) {
            this.mValues[r0] = e;
            return;
        }
        int r02 = ~r0;
        if (r02 < this.mSize) {
            Object[] objArr = this.mValues;
            if (objArr[r02] == DELETED) {
                this.mKeys[r02] = r7;
                objArr[r02] = e;
                return;
            }
        }
        if (this.mGarbage && this.mSize >= this.mKeys.length) {
            m7gc();
            r02 = ~ContainerHelpers.binarySearch(this.mKeys, this.mSize, r7);
        }
        int r1 = this.mSize;
        if (r1 >= this.mKeys.length) {
            int r12 = ContainerHelpers.idealIntArraySize(r1 + 1);
            int[] r2 = new int[r12];
            Object[] objArr2 = new Object[r12];
            int[] r3 = this.mKeys;
            System.arraycopy(r3, 0, r2, 0, r3.length);
            Object[] objArr3 = this.mValues;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.mKeys = r2;
            this.mValues = objArr2;
        }
        int r13 = this.mSize;
        if (r13 - r02 != 0) {
            int[] r22 = this.mKeys;
            int r32 = r02 + 1;
            System.arraycopy(r22, r02, r22, r32, r13 - r02);
            Object[] objArr4 = this.mValues;
            System.arraycopy(objArr4, r02, objArr4, r32, this.mSize - r02);
        }
        this.mKeys[r02] = r7;
        this.mValues[r02] = e;
        this.mSize++;
    }

    public void putAll(SparseArrayCompat<? extends E> sparseArrayCompat) {
        int size = sparseArrayCompat.size();
        for (int r1 = 0; r1 < size; r1++) {
            put(sparseArrayCompat.keyAt(r1), sparseArrayCompat.valueAt(r1));
        }
    }

    public E putIfAbsent(int r2, E e) {
        E e2 = get(r2);
        if (e2 == null) {
            put(r2, e);
        }
        return e2;
    }

    public int size() {
        if (this.mGarbage) {
            m7gc();
        }
        return this.mSize;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public int keyAt(int r2) {
        if (this.mGarbage) {
            m7gc();
        }
        return this.mKeys[r2];
    }

    public E valueAt(int r2) {
        if (this.mGarbage) {
            m7gc();
        }
        return (E) this.mValues[r2];
    }

    public void setValueAt(int r2, E e) {
        if (this.mGarbage) {
            m7gc();
        }
        this.mValues[r2] = e;
    }

    public int indexOfKey(int r2) {
        if (this.mGarbage) {
            m7gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, r2);
    }

    public int indexOfValue(E e) {
        if (this.mGarbage) {
            m7gc();
        }
        for (int r0 = 0; r0 < this.mSize; r0++) {
            if (this.mValues[r0] == e) {
                return r0;
            }
        }
        return -1;
    }

    public boolean containsKey(int r1) {
        return indexOfKey(r1) >= 0;
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

    public void append(int r7, E e) {
        int r0 = this.mSize;
        if (r0 != 0 && r7 <= this.mKeys[r0 - 1]) {
            put(r7, e);
            return;
        }
        if (this.mGarbage && this.mSize >= this.mKeys.length) {
            m7gc();
        }
        int r02 = this.mSize;
        if (r02 >= this.mKeys.length) {
            int r1 = ContainerHelpers.idealIntArraySize(r02 + 1);
            int[] r2 = new int[r1];
            Object[] objArr = new Object[r1];
            int[] r3 = this.mKeys;
            System.arraycopy(r3, 0, r2, 0, r3.length);
            Object[] objArr2 = this.mValues;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.mKeys = r2;
            this.mValues = objArr;
        }
        this.mKeys[r02] = r7;
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
