package com.alibaba.fastjson;

import com.alibaba.fastjson.util.ParameterizedTypeImpl;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public class TypeReference<T> {
    protected final Type type;
    static ConcurrentMap<Type, Type> classTypeCache = new ConcurrentHashMap(16, 0.75f, 1);
    public static final Type LIST_STRING = new TypeReference<List<String>>() { // from class: com.alibaba.fastjson.TypeReference.1
    }.getType();

    protected TypeReference() {
        Type type = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        Type type2 = classTypeCache.get(type);
        if (type2 == null) {
            classTypeCache.putIfAbsent(type, type);
            type2 = classTypeCache.get(type);
        }
        this.type = type2;
    }

    protected TypeReference(Type... typeArr) {
        Class<?> cls = getClass();
        ParameterizedType parameterizedType = (ParameterizedType) ((ParameterizedType) cls.getGenericSuperclass()).getActualTypeArguments()[0];
        Type rawType = parameterizedType.getRawType();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        int r4 = 0;
        for (int r2 = 0; r2 < actualTypeArguments.length; r2++) {
            if ((actualTypeArguments[r2] instanceof TypeVariable) && r4 < typeArr.length) {
                actualTypeArguments[r2] = typeArr[r4];
                r4++;
            }
            if (actualTypeArguments[r2] instanceof GenericArrayType) {
                actualTypeArguments[r2] = TypeUtils.checkPrimitiveArray((GenericArrayType) actualTypeArguments[r2]);
            }
            if (actualTypeArguments[r2] instanceof ParameterizedType) {
                actualTypeArguments[r2] = handlerParameterizedType((ParameterizedType) actualTypeArguments[r2], typeArr, r4);
            }
        }
        ParameterizedTypeImpl parameterizedTypeImpl = new ParameterizedTypeImpl(actualTypeArguments, cls, rawType);
        Type type = classTypeCache.get(parameterizedTypeImpl);
        if (type == null) {
            classTypeCache.putIfAbsent(parameterizedTypeImpl, parameterizedTypeImpl);
            type = classTypeCache.get(parameterizedTypeImpl);
        }
        this.type = type;
    }

    public static Type intern(ParameterizedTypeImpl parameterizedTypeImpl) {
        Type type = classTypeCache.get(parameterizedTypeImpl);
        if (type != null) {
            return type;
        }
        classTypeCache.putIfAbsent(parameterizedTypeImpl, parameterizedTypeImpl);
        return classTypeCache.get(parameterizedTypeImpl);
    }

    private Type handlerParameterizedType(ParameterizedType parameterizedType, Type[] typeArr, int r7) {
        Class<?> cls = getClass();
        Type rawType = parameterizedType.getRawType();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int r2 = 0; r2 < actualTypeArguments.length; r2++) {
            if ((actualTypeArguments[r2] instanceof TypeVariable) && r7 < typeArr.length) {
                actualTypeArguments[r2] = typeArr[r7];
                r7++;
            }
            if (actualTypeArguments[r2] instanceof GenericArrayType) {
                actualTypeArguments[r2] = TypeUtils.checkPrimitiveArray((GenericArrayType) actualTypeArguments[r2]);
            }
            if (actualTypeArguments[r2] instanceof ParameterizedType) {
                return handlerParameterizedType((ParameterizedType) actualTypeArguments[r2], typeArr, r7);
            }
        }
        return new ParameterizedTypeImpl(actualTypeArguments, cls, rawType);
    }

    public Type getType() {
        return this.type;
    }
}
