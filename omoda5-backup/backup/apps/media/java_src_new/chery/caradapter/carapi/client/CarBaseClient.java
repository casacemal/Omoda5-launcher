package com.chery.caradapter.carapi.client;

import android.car.CarInfoManager;
import android.car.hardware.power.CarPowerManager;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.content.Context;

/* loaded from: classes.dex */
public abstract class CarBaseClient {
    protected CarAudioManager carAudioManager;
    protected CarInfoManager carInfoManager;
    protected CarPowerManager carPowerManager;
    protected CarPropertyManager carPropertyManager;
    protected Context mContext;

    public abstract void init();

    public abstract void setAudioManager(CarAudioManager carAudioManager);

    public abstract void setInfoManager(CarInfoManager carInfoManager);

    public abstract void setPowerManager(CarPowerManager carPowerManager);

    public abstract void setPropertyManager(CarPropertyManager carPropertyManager);
}
