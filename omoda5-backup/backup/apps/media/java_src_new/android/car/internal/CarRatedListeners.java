package com.android.car.internal;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class CarRatedListeners<EventListenerType> {
    private int mUpdateRate;
    private final Map<EventListenerType, Integer> mListenersToRate = new HashMap(4);
    protected long mLastUpdateTime = -1;

    protected CarRatedListeners(int r3) {
        this.mUpdateRate = r3;
    }

    public boolean contains(EventListenerType eventlistenertype) {
        return this.mListenersToRate.containsKey(eventlistenertype);
    }

    public int getRate() {
        return this.mUpdateRate;
    }

    public boolean remove(EventListenerType eventlistenertype) {
        this.mListenersToRate.remove(eventlistenertype);
        if (this.mListenersToRate.isEmpty()) {
            return false;
        }
        Integer num = (Integer) Collections.min(this.mListenersToRate.values());
        if (num.intValue() == this.mUpdateRate) {
            return false;
        }
        this.mUpdateRate = num.intValue();
        return true;
    }

    public boolean isEmpty() {
        return this.mListenersToRate.isEmpty();
    }

    public boolean addAndUpdateRate(EventListenerType eventlistenertype, int r4) {
        Integer numPut = this.mListenersToRate.put(eventlistenertype, Integer.valueOf(r4));
        if (this.mUpdateRate > r4) {
            this.mUpdateRate = r4;
            return true;
        }
        if (numPut == null || numPut.intValue() != this.mUpdateRate) {
            return false;
        }
        this.mUpdateRate = ((Integer) Collections.min(this.mListenersToRate.values())).intValue();
        return false;
    }

    public Collection<EventListenerType> getListeners() {
        return this.mListenersToRate.keySet();
    }
}
