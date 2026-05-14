package com.alibaba.fastjson;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.io.NotActiveException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public class JSONArray extends JSON implements List<Object>, Cloneable, RandomAccess, Serializable {
    private static final long serialVersionUID = 1;
    protected transient Type componentType;
    private final List<Object> list;
    protected transient Object relatedArray;

    public JSONArray() {
        this.list = new ArrayList();
    }

    public JSONArray(List<Object> list) {
        if (list == null) {
            throw new IllegalArgumentException("list is null.");
        }
        this.list = list;
    }

    public JSONArray(int r2) {
        this.list = new ArrayList(r2);
    }

    public Object getRelatedArray() {
        return this.relatedArray;
    }

    public void setRelatedArray(Object obj) {
        this.relatedArray = obj;
    }

    public Type getComponentType() {
        return this.componentType;
    }

    public void setComponentType(Type type) {
        this.componentType = type;
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.list.size();
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.list.isEmpty();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.list.contains(obj);
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<Object> iterator() {
        return this.list.iterator();
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.list.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.list.toArray(tArr);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(Object obj) {
        return this.list.add(obj);
    }

    public JSONArray fluentAdd(Object obj) {
        this.list.add(obj);
        return this;
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        return this.list.remove(obj);
    }

    public JSONArray fluentRemove(Object obj) {
        this.list.remove(obj);
        return this;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.list.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<?> collection) {
        return this.list.addAll(collection);
    }

    public JSONArray fluentAddAll(Collection<?> collection) {
        this.list.addAll(collection);
        return this;
    }

    @Override // java.util.List
    public boolean addAll(int r1, Collection<? extends Object> collection) {
        return this.list.addAll(r1, collection);
    }

    public JSONArray fluentAddAll(int r2, Collection<?> collection) {
        this.list.addAll(r2, collection);
        return this;
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.list.removeAll(collection);
    }

    public JSONArray fluentRemoveAll(Collection<?> collection) {
        this.list.removeAll(collection);
        return this;
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.list.retainAll(collection);
    }

    public JSONArray fluentRetainAll(Collection<?> collection) {
        this.list.retainAll(collection);
        return this;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.list.clear();
    }

    public JSONArray fluentClear() {
        this.list.clear();
        return this;
    }

    @Override // java.util.List
    public Object set(int r4, Object obj) {
        if (r4 == -1) {
            this.list.add(obj);
            return null;
        }
        if (this.list.size() <= r4) {
            for (int size = this.list.size(); size < r4; size++) {
                this.list.add(null);
            }
            this.list.add(obj);
            return null;
        }
        return this.list.set(r4, obj);
    }

    public JSONArray fluentSet(int r1, Object obj) {
        set(r1, obj);
        return this;
    }

    @Override // java.util.List
    public void add(int r1, Object obj) {
        this.list.add(r1, obj);
    }

    public JSONArray fluentAdd(int r2, Object obj) {
        this.list.add(r2, obj);
        return this;
    }

    @Override // java.util.List
    public Object remove(int r1) {
        return this.list.remove(r1);
    }

    public JSONArray fluentRemove(int r2) {
        this.list.remove(r2);
        return this;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.list.indexOf(obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.list.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<Object> listIterator() {
        return this.list.listIterator();
    }

    @Override // java.util.List
    public ListIterator<Object> listIterator(int r1) {
        return this.list.listIterator(r1);
    }

    @Override // java.util.List
    public List<Object> subList(int r1, int r2) {
        return this.list.subList(r1, r2);
    }

    @Override // java.util.List
    public Object get(int r1) {
        return this.list.get(r1);
    }

    public JSONObject getJSONObject(int r1) {
        Object obj = this.list.get(r1);
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        if (obj instanceof Map) {
            return new JSONObject((Map<String, Object>) obj);
        }
        return (JSONObject) toJSON(obj);
    }

    public JSONArray getJSONArray(int r1) {
        Object obj = this.list.get(r1);
        if (obj instanceof JSONArray) {
            return (JSONArray) obj;
        }
        if (obj instanceof List) {
            return new JSONArray((List<Object>) obj);
        }
        return (JSONArray) toJSON(obj);
    }

    public <T> T getObject(int r1, Class<T> cls) {
        return (T) TypeUtils.castToJavaBean(this.list.get(r1), cls);
    }

    public <T> T getObject(int r1, Type type) {
        Object obj = this.list.get(r1);
        if (type instanceof Class) {
            return (T) TypeUtils.castToJavaBean(obj, (Class) type);
        }
        return (T) JSON.parseObject(JSON.toJSONString(obj), type, new Feature[0]);
    }

    public Boolean getBoolean(int r1) {
        Object obj = get(r1);
        if (obj == null) {
            return null;
        }
        return TypeUtils.castToBoolean(obj);
    }

    public boolean getBooleanValue(int r1) {
        Object obj = get(r1);
        if (obj == null) {
            return false;
        }
        return TypeUtils.castToBoolean(obj).booleanValue();
    }

    public Byte getByte(int r1) {
        return TypeUtils.castToByte(get(r1));
    }

    public byte getByteValue(int r1) {
        Byte bCastToByte = TypeUtils.castToByte(get(r1));
        if (bCastToByte == null) {
            return (byte) 0;
        }
        return bCastToByte.byteValue();
    }

    public Short getShort(int r1) {
        return TypeUtils.castToShort(get(r1));
    }

    public short getShortValue(int r1) {
        Short shCastToShort = TypeUtils.castToShort(get(r1));
        if (shCastToShort == null) {
            return (short) 0;
        }
        return shCastToShort.shortValue();
    }

    public Integer getInteger(int r1) {
        return TypeUtils.castToInt(get(r1));
    }

    public int getIntValue(int r1) {
        Integer numCastToInt = TypeUtils.castToInt(get(r1));
        if (numCastToInt == null) {
            return 0;
        }
        return numCastToInt.intValue();
    }

    public Long getLong(int r1) {
        return TypeUtils.castToLong(get(r1));
    }

    public long getLongValue(int r1) {
        Long lCastToLong = TypeUtils.castToLong(get(r1));
        if (lCastToLong == null) {
            return 0L;
        }
        return lCastToLong.longValue();
    }

    public Float getFloat(int r1) {
        return TypeUtils.castToFloat(get(r1));
    }

    public float getFloatValue(int r1) {
        Float fCastToFloat = TypeUtils.castToFloat(get(r1));
        if (fCastToFloat == null) {
            return 0.0f;
        }
        return fCastToFloat.floatValue();
    }

    public Double getDouble(int r1) {
        return TypeUtils.castToDouble(get(r1));
    }

    public double getDoubleValue(int r1) {
        Double dCastToDouble = TypeUtils.castToDouble(get(r1));
        if (dCastToDouble == null) {
            return 0.0d;
        }
        return dCastToDouble.doubleValue();
    }

    public BigDecimal getBigDecimal(int r1) {
        return TypeUtils.castToBigDecimal(get(r1));
    }

    public BigInteger getBigInteger(int r1) {
        return TypeUtils.castToBigInteger(get(r1));
    }

    public String getString(int r1) {
        return TypeUtils.castToString(get(r1));
    }

    public Date getDate(int r1) {
        return TypeUtils.castToDate(get(r1));
    }

    public java.sql.Date getSqlDate(int r1) {
        return TypeUtils.castToSqlDate(get(r1));
    }

    public Timestamp getTimestamp(int r1) {
        return TypeUtils.castToTimestamp(get(r1));
    }

    public <T> List<T> toJavaList(Class<T> cls) {
        ArrayList arrayList = new ArrayList(size());
        ParserConfig globalInstance = ParserConfig.getGlobalInstance();
        Iterator<Object> it = iterator();
        while (it.hasNext()) {
            arrayList.add(TypeUtils.cast(it.next(), (Class) cls, globalInstance));
        }
        return arrayList;
    }

    public Object clone() {
        return new JSONArray(new ArrayList(this.list));
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        return this.list.equals(obj);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.list.hashCode();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        JSONObject.SecureObjectInputStream.ensureFields();
        if (JSONObject.SecureObjectInputStream.fields != null && !JSONObject.SecureObjectInputStream.fields_error) {
            try {
                new JSONObject.SecureObjectInputStream(objectInputStream).defaultReadObject();
                return;
            } catch (NotActiveException unused) {
            }
        }
        objectInputStream.defaultReadObject();
        for (Object obj : this.list) {
            if (obj != null) {
                String name = obj.getClass().getName();
                if (TypeUtils.getClassFromMapping(name) == null) {
                    ParserConfig.global.checkAutoType(name, null);
                }
            }
        }
    }
}
