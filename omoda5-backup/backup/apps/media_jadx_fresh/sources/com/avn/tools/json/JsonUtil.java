package com.avn.tools.json;

import com.alibaba.fastjson.JSON;

/* loaded from: classes.dex */
public class JsonUtil {
    public static final <T> T parseObject(String str, Class<T> cls) {
        Object object = JSON.parseObject(str, cls);
        T t = (T) object;
        if (t != null) {
            return t;
        }
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return t;
        } catch (InstantiationException e2) {
            e2.printStackTrace();
            return t;
        }
    }

    public static final String toJSONString(Object obj) {
        return JSON.toJSONString(obj);
    }
}
