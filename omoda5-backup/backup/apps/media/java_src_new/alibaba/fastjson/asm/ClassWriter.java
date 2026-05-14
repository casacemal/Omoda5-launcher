package com.alibaba.fastjson.asm;

/* loaded from: classes.dex */
public class ClassWriter {
    private int access;
    FieldWriter firstField;
    MethodWriter firstMethod;
    int index;
    private int interfaceCount;
    private int[] interfaces;
    Item[] items;
    final Item key;
    final Item key2;
    final Item key3;
    FieldWriter lastField;
    MethodWriter lastMethod;
    private int name;
    final ByteVector pool;
    private int superName;
    String thisName;
    int threshold;
    Item[] typeTable;
    int version;

    public ClassWriter() {
        this(0);
    }

    private ClassWriter(int r5) {
        this.index = 1;
        this.pool = new ByteVector();
        this.items = new Item[256];
        this.threshold = (int) (r5.length * 0.75d);
        this.key = new Item();
        this.key2 = new Item();
        this.key3 = new Item();
    }

    public void visit(int r1, int r2, String str, String str2, String[] strArr) {
        this.version = r1;
        this.access = r2;
        this.name = newClassItem(str).index;
        this.thisName = str;
        this.superName = str2 == null ? 0 : newClassItem(str2).index;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        int length = strArr.length;
        this.interfaceCount = length;
        this.interfaces = new int[length];
        for (int r12 = 0; r12 < this.interfaceCount; r12++) {
            this.interfaces[r12] = newClassItem(strArr[r12]).index;
        }
    }

    public byte[] toByteArray() {
        int size = (this.interfaceCount * 2) + 24;
        int r3 = 0;
        for (FieldWriter fieldWriter = this.firstField; fieldWriter != null; fieldWriter = fieldWriter.next) {
            r3++;
            size += fieldWriter.getSize();
        }
        int r4 = 0;
        for (MethodWriter methodWriter = this.firstMethod; methodWriter != null; methodWriter = methodWriter.next) {
            r4++;
            size += methodWriter.getSize();
        }
        ByteVector byteVector = new ByteVector(size + this.pool.length);
        byteVector.putInt(-889275714).putInt(this.version);
        byteVector.putShort(this.index).putByteArray(this.pool.data, 0, this.pool.length);
        byteVector.putShort(this.access & (-393217)).putShort(this.name).putShort(this.superName);
        byteVector.putShort(this.interfaceCount);
        for (int r0 = 0; r0 < this.interfaceCount; r0++) {
            byteVector.putShort(this.interfaces[r0]);
        }
        byteVector.putShort(r3);
        for (FieldWriter fieldWriter2 = this.firstField; fieldWriter2 != null; fieldWriter2 = fieldWriter2.next) {
            fieldWriter2.put(byteVector);
        }
        byteVector.putShort(r4);
        for (MethodWriter methodWriter2 = this.firstMethod; methodWriter2 != null; methodWriter2 = methodWriter2.next) {
            methodWriter2.put(byteVector);
        }
        byteVector.putShort(0);
        return byteVector.data;
    }

    Item newConstItem(Object obj) {
        if (obj instanceof Integer) {
            int r3 = ((Integer) obj).intValue();
            this.key.set(r3);
            Item item = get(this.key);
            if (item != null) {
                return item;
            }
            this.pool.putByte(3).putInt(r3);
            int r32 = this.index;
            this.index = r32 + 1;
            Item item2 = new Item(r32, this.key);
            put(item2);
            return item2;
        }
        if (obj instanceof String) {
            return newString((String) obj);
        }
        if (obj instanceof Type) {
            Type type = (Type) obj;
            return newClassItem(type.sort == 10 ? type.getInternalName() : type.getDescriptor());
        }
        throw new IllegalArgumentException("value " + obj);
    }

    public int newUTF8(String str) {
        this.key.set(1, str, null, null);
        Item item = get(this.key);
        if (item == null) {
            this.pool.putByte(1).putUTF8(str);
            int r4 = this.index;
            this.index = r4 + 1;
            item = new Item(r4, this.key);
            put(item);
        }
        return item.index;
    }

    public Item newClassItem(String str) {
        this.key2.set(7, str, null, null);
        Item item = get(this.key2);
        if (item != null) {
            return item;
        }
        this.pool.put12(7, newUTF8(str));
        int r4 = this.index;
        this.index = r4 + 1;
        Item item2 = new Item(r4, this.key2);
        put(item2);
        return item2;
    }

    Item newFieldItem(String str, String str2, String str3) {
        this.key3.set(9, str, str2, str3);
        Item item = get(this.key3);
        if (item != null) {
            return item;
        }
        int r3 = newClassItem(str).index;
        this.pool.put12(9, r3).putShort(newNameTypeItem(str2, str3).index);
        int r32 = this.index;
        this.index = r32 + 1;
        Item item2 = new Item(r32, this.key3);
        put(item2);
        return item2;
    }

    Item newMethodItem(String str, String str2, String str3, boolean z) {
        int r5 = z ? 11 : 10;
        this.key3.set(r5, str, str2, str3);
        Item item = get(this.key3);
        if (item != null) {
            return item;
        }
        this.pool.put12(r5, newClassItem(str).index).putShort(newNameTypeItem(str2, str3).index);
        int r2 = this.index;
        this.index = r2 + 1;
        Item item2 = new Item(r2, this.key3);
        put(item2);
        return item2;
    }

    private Item newString(String str) {
        this.key2.set(8, str, null, null);
        Item item = get(this.key2);
        if (item != null) {
            return item;
        }
        this.pool.put12(8, newUTF8(str));
        int r4 = this.index;
        this.index = r4 + 1;
        Item item2 = new Item(r4, this.key2);
        put(item2);
        return item2;
    }

    public Item newNameTypeItem(String str, String str2) {
        this.key2.set(12, str, str2, null);
        Item item = get(this.key2);
        if (item != null) {
            return item;
        }
        int r4 = newUTF8(str);
        this.pool.put12(12, r4).putShort(newUTF8(str2));
        int r42 = this.index;
        this.index = r42 + 1;
        Item item2 = new Item(r42, this.key2);
        put(item2);
        return item2;
    }

    private Item get(Item item) {
        Item item2 = this.items[item.hashCode % this.items.length];
        while (item2 != null && (item2.type != item.type || !item.isEqualTo(item2))) {
            item2 = item2.next;
        }
        return item2;
    }

    private void put(Item item) {
        if (this.index > this.threshold) {
            int length = this.items.length;
            int r1 = (length * 2) + 1;
            Item[] itemArr = new Item[r1];
            for (int r0 = length - 1; r0 >= 0; r0--) {
                Item item2 = this.items[r0];
                while (item2 != null) {
                    int r4 = item2.hashCode % r1;
                    Item item3 = item2.next;
                    item2.next = itemArr[r4];
                    itemArr[r4] = item2;
                    item2 = item3;
                }
            }
            this.items = itemArr;
            this.threshold = (int) (r1 * 0.75d);
        }
        int r02 = item.hashCode;
        Item[] itemArr2 = this.items;
        int length2 = r02 % itemArr2.length;
        item.next = itemArr2[length2];
        this.items[length2] = item;
    }
}
