package com.alibaba.fastjson.util;

import java.util.Arrays;

/* loaded from: classes.dex */
public class IdentityHashMap<K, V> {
    public static final int DEFAULT_SIZE = 8192;
    private final Entry<K, V>[] buckets;
    private final int indexMask;

    public IdentityHashMap() {
        this(8192);
    }

    public IdentityHashMap(int r2) {
        this.indexMask = r2 - 1;
        this.buckets = new Entry[r2];
    }

    public final V get(K k) {
        for (Entry<K, V> entry = this.buckets[System.identityHashCode(k) & this.indexMask]; entry != null; entry = entry.next) {
            if (k == entry.key) {
                return entry.value;
            }
        }
        return null;
    }

    public Class findClass(String str) {
        int r0 = 0;
        while (true) {
            Entry<K, V>[] entryArr = this.buckets;
            if (r0 >= entryArr.length) {
                return null;
            }
            Entry<K, V> entry = entryArr[r0];
            if (entry != null) {
                for (Entry<K, V> entry2 = entry; entry2 != null; entry2 = entry2.next) {
                    K k = entry.key;
                    if (k instanceof Class) {
                        Class cls = (Class) k;
                        if (cls.getName().equals(str)) {
                            return cls;
                        }
                    }
                }
            }
            r0++;
        }
    }

    public boolean put(K k, V v) {
        int r0 = System.identityHashCode(k);
        int r1 = this.indexMask & r0;
        for (Entry<K, V> entry = this.buckets[r1]; entry != null; entry = entry.next) {
            if (k == entry.key) {
                entry.value = v;
                return true;
            }
        }
        this.buckets[r1] = new Entry<>(k, v, r0, this.buckets[r1]);
        return false;
    }

    protected static final class Entry<K, V> {
        public final int hashCode;
        public final K key;
        public final Entry<K, V> next;
        public V value;

        public Entry(K k, V v, int r3, Entry<K, V> entry) {
            this.key = k;
            this.value = v;
            this.next = entry;
            this.hashCode = r3;
        }
    }

    public void clear() {
        Arrays.fill(this.buckets, (Object) null);
    }

    public int size() {
        int r2 = 0;
        for (Entry<K, V> entry : this.buckets) {
            for (; entry != null; entry = entry.next) {
                r2++;
            }
        }
        return r2;
    }
}
