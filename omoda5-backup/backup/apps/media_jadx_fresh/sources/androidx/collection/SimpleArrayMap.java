package androidx.collection;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* loaded from: classes.dex */
public class SimpleArrayMap<K, V> {
    private static final int BASE_SIZE = 4;
    private static final int CACHE_SIZE = 10;
    private static final boolean CONCURRENT_MODIFICATION_EXCEPTIONS = true;
    private static final boolean DEBUG = false;
    private static final String TAG = "ArrayMap";
    static Object[] mBaseCache;
    static int mBaseCacheSize;
    static Object[] mTwiceBaseCache;
    static int mTwiceBaseCacheSize;
    Object[] mArray;
    int[] mHashes;
    int mSize;

    private static int binarySearchHashes(int[] r0, int r1, int r2) {
        try {
            return ContainerHelpers.binarySearch(r0, r1, r2);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    int indexOf(Object obj, int r7) {
        int r0 = this.mSize;
        if (r0 == 0) {
            return -1;
        }
        int r1 = binarySearchHashes(this.mHashes, r0, r7);
        if (r1 < 0 || obj.equals(this.mArray[r1 << 1])) {
            return r1;
        }
        int r2 = r1 + 1;
        while (r2 < r0 && this.mHashes[r2] == r7) {
            if (obj.equals(this.mArray[r2 << 1])) {
                return r2;
            }
            r2++;
        }
        for (int r12 = r1 - 1; r12 >= 0 && this.mHashes[r12] == r7; r12--) {
            if (obj.equals(this.mArray[r12 << 1])) {
                return r12;
            }
        }
        return ~r2;
    }

    int indexOfNull() {
        int r0 = this.mSize;
        if (r0 == 0) {
            return -1;
        }
        int r1 = binarySearchHashes(this.mHashes, r0, 0);
        if (r1 < 0 || this.mArray[r1 << 1] == null) {
            return r1;
        }
        int r2 = r1 + 1;
        while (r2 < r0 && this.mHashes[r2] == 0) {
            if (this.mArray[r2 << 1] == null) {
                return r2;
            }
            r2++;
        }
        for (int r12 = r1 - 1; r12 >= 0 && this.mHashes[r12] == 0; r12--) {
            if (this.mArray[r12 << 1] == null) {
                return r12;
            }
        }
        return ~r2;
    }

    private void allocArrays(int r6) {
        if (r6 == 8) {
            synchronized (SimpleArrayMap.class) {
                if (mTwiceBaseCache != null) {
                    Object[] objArr = mTwiceBaseCache;
                    this.mArray = objArr;
                    mTwiceBaseCache = (Object[]) objArr[0];
                    this.mHashes = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    mTwiceBaseCacheSize--;
                    return;
                }
            }
        } else if (r6 == 4) {
            synchronized (SimpleArrayMap.class) {
                if (mBaseCache != null) {
                    Object[] objArr2 = mBaseCache;
                    this.mArray = objArr2;
                    mBaseCache = (Object[]) objArr2[0];
                    this.mHashes = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    mBaseCacheSize--;
                    return;
                }
            }
        }
        this.mHashes = new int[r6];
        this.mArray = new Object[r6 << 1];
    }

    private static void freeArrays(int[] r8, Object[] objArr, int r10) {
        if (r8.length == 8) {
            synchronized (SimpleArrayMap.class) {
                if (mTwiceBaseCacheSize < 10) {
                    objArr[0] = mTwiceBaseCache;
                    objArr[1] = r8;
                    for (int r82 = (r10 << 1) - 1; r82 >= 2; r82--) {
                        objArr[r82] = null;
                    }
                    mTwiceBaseCache = objArr;
                    mTwiceBaseCacheSize++;
                }
            }
            return;
        }
        if (r8.length == 4) {
            synchronized (SimpleArrayMap.class) {
                if (mBaseCacheSize < 10) {
                    objArr[0] = mBaseCache;
                    objArr[1] = r8;
                    for (int r83 = (r10 << 1) - 1; r83 >= 2; r83--) {
                        objArr[r83] = null;
                    }
                    mBaseCache = objArr;
                    mBaseCacheSize++;
                }
            }
        }
    }

    public SimpleArrayMap() {
        this.mHashes = ContainerHelpers.EMPTY_INTS;
        this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        this.mSize = 0;
    }

    public SimpleArrayMap(int r1) {
        if (r1 == 0) {
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            allocArrays(r1);
        }
        this.mSize = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleArrayMap(SimpleArrayMap<K, V> simpleArrayMap) {
        this();
        if (simpleArrayMap != 0) {
            putAll(simpleArrayMap);
        }
    }

    public void clear() {
        int r0 = this.mSize;
        if (r0 > 0) {
            int[] r1 = this.mHashes;
            Object[] objArr = this.mArray;
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
            this.mSize = 0;
            freeArrays(r1, objArr, r0);
        }
        if (this.mSize > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public void ensureCapacity(int r6) {
        int r0 = this.mSize;
        int[] r1 = this.mHashes;
        if (r1.length < r6) {
            Object[] objArr = this.mArray;
            allocArrays(r6);
            if (this.mSize > 0) {
                System.arraycopy(r1, 0, this.mHashes, 0, r0);
                System.arraycopy(objArr, 0, this.mArray, 0, r0 << 1);
            }
            freeArrays(r1, objArr, r0);
        }
        if (this.mSize != r0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return indexOfKey(obj) >= 0;
    }

    public int indexOfKey(Object obj) {
        return obj == null ? indexOfNull() : indexOf(obj, obj.hashCode());
    }

    int indexOfValue(Object obj) {
        int r0 = this.mSize * 2;
        Object[] objArr = this.mArray;
        if (obj == null) {
            for (int r5 = 1; r5 < r0; r5 += 2) {
                if (objArr[r5] == null) {
                    return r5 >> 1;
                }
            }
            return -1;
        }
        for (int r2 = 1; r2 < r0; r2 += 2) {
            if (obj.equals(objArr[r2])) {
                return r2 >> 1;
            }
        }
        return -1;
    }

    public boolean containsValue(Object obj) {
        return indexOfValue(obj) >= 0;
    }

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v) {
        int r1 = indexOfKey(obj);
        return r1 >= 0 ? (V) this.mArray[(r1 << 1) + 1] : v;
    }

    public K keyAt(int r1) {
        return (K) this.mArray[r1 << 1];
    }

    public V valueAt(int r1) {
        return (V) this.mArray[(r1 << 1) + 1];
    }

    public V setValueAt(int r2, V v) {
        int r22 = (r2 << 1) + 1;
        Object[] objArr = this.mArray;
        V v2 = (V) objArr[r22];
        objArr[r22] = v;
        return v2;
    }

    public boolean isEmpty() {
        return this.mSize <= 0;
    }

    public V put(K k, V v) {
        int r3;
        int r2;
        int r0 = this.mSize;
        if (k == null) {
            r2 = indexOfNull();
            r3 = 0;
        } else {
            int r22 = k.hashCode();
            r3 = r22;
            r2 = indexOf(k, r22);
        }
        if (r2 >= 0) {
            int r10 = (r2 << 1) + 1;
            Object[] objArr = this.mArray;
            V v2 = (V) objArr[r10];
            objArr[r10] = v;
            return v2;
        }
        int r23 = ~r2;
        if (r0 >= this.mHashes.length) {
            int r4 = 4;
            if (r0 >= 8) {
                r4 = (r0 >> 1) + r0;
            } else if (r0 >= 4) {
                r4 = 8;
            }
            int[] r5 = this.mHashes;
            Object[] objArr2 = this.mArray;
            allocArrays(r4);
            if (r0 != this.mSize) {
                throw new ConcurrentModificationException();
            }
            int[] r42 = this.mHashes;
            if (r42.length > 0) {
                System.arraycopy(r5, 0, r42, 0, r5.length);
                System.arraycopy(objArr2, 0, this.mArray, 0, objArr2.length);
            }
            freeArrays(r5, objArr2, r0);
        }
        if (r23 < r0) {
            int[] r1 = this.mHashes;
            int r43 = r23 + 1;
            System.arraycopy(r1, r23, r1, r43, r0 - r23);
            Object[] objArr3 = this.mArray;
            System.arraycopy(objArr3, r23 << 1, objArr3, r43 << 1, (this.mSize - r23) << 1);
        }
        int r12 = this.mSize;
        if (r0 == r12) {
            int[] r02 = this.mHashes;
            if (r23 < r02.length) {
                r02[r23] = r3;
                Object[] objArr4 = this.mArray;
                int r24 = r23 << 1;
                objArr4[r24] = k;
                objArr4[r24 + 1] = v;
                this.mSize = r12 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public void putAll(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        int r0 = simpleArrayMap.mSize;
        ensureCapacity(this.mSize + r0);
        if (this.mSize != 0) {
            for (int r2 = 0; r2 < r0; r2++) {
                put(simpleArrayMap.keyAt(r2), simpleArrayMap.valueAt(r2));
            }
        } else if (r0 > 0) {
            System.arraycopy(simpleArrayMap.mHashes, 0, this.mHashes, 0, r0);
            System.arraycopy(simpleArrayMap.mArray, 0, this.mArray, 0, r0 << 1);
            this.mSize = r0;
        }
    }

    public V putIfAbsent(K k, V v) {
        V v2 = get(k);
        return v2 == null ? put(k, v) : v2;
    }

    public V remove(Object obj) {
        int r1 = indexOfKey(obj);
        if (r1 >= 0) {
            return removeAt(r1);
        }
        return null;
    }

    public boolean remove(Object obj, Object obj2) {
        int r2 = indexOfKey(obj);
        if (r2 < 0) {
            return false;
        }
        V vValueAt = valueAt(r2);
        if (obj2 != vValueAt && (obj2 == null || !obj2.equals(vValueAt))) {
            return false;
        }
        removeAt(r2);
        return true;
    }

    public V removeAt(int r11) {
        Object[] objArr = this.mArray;
        int r1 = r11 << 1;
        V v = (V) objArr[r1 + 1];
        int r3 = this.mSize;
        int r4 = 0;
        if (r3 <= 1) {
            freeArrays(this.mHashes, objArr, r3);
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            int r0 = r3 - 1;
            int[] r6 = this.mHashes;
            if (r6.length > 8 && r3 < r6.length / 3) {
                int r8 = r3 > 8 ? r3 + (r3 >> 1) : 8;
                int[] r62 = this.mHashes;
                Object[] objArr2 = this.mArray;
                allocArrays(r8);
                if (r3 != this.mSize) {
                    throw new ConcurrentModificationException();
                }
                if (r11 > 0) {
                    System.arraycopy(r62, 0, this.mHashes, 0, r11);
                    System.arraycopy(objArr2, 0, this.mArray, 0, r1);
                }
                if (r11 < r0) {
                    int r42 = r11 + 1;
                    int r9 = r0 - r11;
                    System.arraycopy(r62, r42, this.mHashes, r11, r9);
                    System.arraycopy(objArr2, r42 << 1, this.mArray, r1, r9 << 1);
                }
            } else {
                if (r11 < r0) {
                    int[] r43 = this.mHashes;
                    int r63 = r11 + 1;
                    int r7 = r0 - r11;
                    System.arraycopy(r43, r63, r43, r11, r7);
                    Object[] objArr3 = this.mArray;
                    System.arraycopy(objArr3, r63 << 1, objArr3, r1, r7 << 1);
                }
                Object[] objArr4 = this.mArray;
                int r12 = r0 << 1;
                objArr4[r12] = null;
                objArr4[r12 + 1] = null;
            }
            r4 = r0;
        }
        if (r3 != this.mSize) {
            throw new ConcurrentModificationException();
        }
        this.mSize = r4;
        return v;
    }

    public V replace(K k, V v) {
        int r1 = indexOfKey(k);
        if (r1 >= 0) {
            return setValueAt(r1, v);
        }
        return null;
    }

    public boolean replace(K k, V v, V v2) {
        int r2 = indexOfKey(k);
        if (r2 < 0) {
            return false;
        }
        V vValueAt = valueAt(r2);
        if (vValueAt != v && (v == null || !v.equals(vValueAt))) {
            return false;
        }
        setValueAt(r2, v2);
        return true;
    }

    public int size() {
        return this.mSize;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SimpleArrayMap) {
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) obj;
            if (size() != simpleArrayMap.size()) {
                return false;
            }
            for (int r1 = 0; r1 < this.mSize; r1++) {
                try {
                    K kKeyAt = keyAt(r1);
                    V vValueAt = valueAt(r1);
                    Object obj2 = simpleArrayMap.get(kKeyAt);
                    if (vValueAt == null) {
                        if (obj2 != null || !simpleArrayMap.containsKey(kKeyAt)) {
                            return false;
                        }
                    } else if (!vValueAt.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int r12 = 0; r12 < this.mSize; r12++) {
                try {
                    K kKeyAt2 = keyAt(r12);
                    V vValueAt2 = valueAt(r12);
                    Object obj3 = map.get(kKeyAt2);
                    if (vValueAt2 == null) {
                        if (obj3 != null || !map.containsKey(kKeyAt2)) {
                            return false;
                        }
                    } else if (!vValueAt2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        int[] r0 = this.mHashes;
        Object[] objArr = this.mArray;
        int r8 = this.mSize;
        int r2 = 1;
        int r4 = 0;
        int r5 = 0;
        while (r4 < r8) {
            Object obj = objArr[r2];
            r5 += (obj == null ? 0 : obj.hashCode()) ^ r0[r4];
            r4++;
            r2 += 2;
        }
        return r5;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.mSize * 28);
        sb.append('{');
        for (int r1 = 0; r1 < this.mSize; r1++) {
            if (r1 > 0) {
                sb.append(", ");
            }
            K kKeyAt = keyAt(r1);
            if (kKeyAt != this) {
                sb.append(kKeyAt);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vValueAt = valueAt(r1);
            if (vValueAt != this) {
                sb.append(vValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
