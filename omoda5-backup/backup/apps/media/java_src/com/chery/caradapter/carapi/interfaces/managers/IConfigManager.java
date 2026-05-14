package com.chery.caradapter.carapi.interfaces.managers;

import com.chery.caradapter.carapi.interfaces.IConfigListener;

/* loaded from: classes.dex */
public interface IConfigManager {
    boolean isConnected();

    void setListener(IConfigListener iConfigListener);
}
