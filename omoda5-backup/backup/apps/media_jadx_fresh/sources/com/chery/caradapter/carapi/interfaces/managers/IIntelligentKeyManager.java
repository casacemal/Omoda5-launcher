package com.chery.caradapter.carapi.interfaces.managers;

import com.chery.caradapter.carapi.interfaces.IIntelligentKeyListener;

/* loaded from: classes.dex */
public interface IIntelligentKeyManager {
    int getPepsIntelligentOpen();

    int getPespsPolling();

    int getWelcomeLightPolling();

    void setListener(IIntelligentKeyListener iIntelligentKeyListener);

    void setPepsIntelligentOpen(int r1);

    void setPespsPolling(int r1);

    void setWelcomeLightPolling(int r1);
}
