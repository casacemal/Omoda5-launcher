package com.chery.caradapter.server;

import android.car.Car;
import android.car.CarInfoManager;
import android.car.hardware.power.CarPowerManager;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.content.Context;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;

/* loaded from: classes.dex */
public class CarAdapterBaseManager implements Car.CarServiceLifecycleListener {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_CAR, CarAdapterBaseManager.class);
    private static volatile CarAdapterBaseManager sInstance = null;
    private Car mCarApi;
    private CarAudioManager mCarAudioManager;
    private CarInfoManager mCarInfoManager;
    private CarPowerManager mCarPowerManager;
    private CarPropertyManager mCarPropertyManager;

    private CarAdapterBaseManager(Context context) {
        if (this.mCarApi == null) {
            Car carCreateCar = Car.createCar(context);
            this.mCarApi = carCreateCar;
            if (carCreateCar != null) {
                boolean zIsConnected = carCreateCar.isConnected();
                PFLog.m29i(TAG, "CarAdapterBaseManager: isCarApiConnected:" + zIsConnected);
                this.mCarPropertyManager = (CarPropertyManager) this.mCarApi.getCarManager(Car.PROPERTY_SERVICE);
                this.mCarAudioManager = (CarAudioManager) this.mCarApi.getCarManager(Car.AUDIO_SERVICE);
                this.mCarInfoManager = (CarInfoManager) this.mCarApi.getCarManager(Car.INFO_SERVICE);
                this.mCarPowerManager = (CarPowerManager) this.mCarApi.getCarManager(Car.POWER_SERVICE);
                return;
            }
            PFLog.m33w(TAG, "CarAdapterBaseManager: mCarApi == null");
        }
    }

    public static CarAdapterBaseManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (CarAdapterBaseManager.class) {
                if (sInstance == null) {
                    sInstance = new CarAdapterBaseManager(context);
                }
            }
        }
        return sInstance;
    }

    public CarPropertyManager getCarPropertyManager() {
        Car car;
        if (this.mCarPropertyManager == null && (car = this.mCarApi) != null) {
            this.mCarPropertyManager = (CarPropertyManager) car.getCarManager(Car.PROPERTY_SERVICE);
        }
        return this.mCarPropertyManager;
    }

    public CarAudioManager getCarAudioManager() {
        Car car;
        if (this.mCarAudioManager == null && (car = this.mCarApi) != null) {
            this.mCarAudioManager = (CarAudioManager) car.getCarManager(Car.AUDIO_SERVICE);
        }
        return this.mCarAudioManager;
    }

    public CarInfoManager getCarInfoManager() {
        Car car;
        if (this.mCarInfoManager == null && (car = this.mCarApi) != null) {
            this.mCarInfoManager = (CarInfoManager) car.getCarManager(Car.INFO_SERVICE);
        }
        return this.mCarInfoManager;
    }

    public CarPowerManager getCarPowerManager() {
        Car car;
        if (this.mCarPowerManager == null && (car = this.mCarApi) != null) {
            this.mCarPowerManager = (CarPowerManager) car.getCarManager(Car.POWER_SERVICE);
        }
        return this.mCarPowerManager;
    }

    public void destroy() {
        Car car = this.mCarApi;
        if (car != null) {
            car.disconnect();
            this.mCarApi = null;
        }
    }

    @Override // android.car.Car.CarServiceLifecycleListener
    public void onLifecycleChanged(Car car, boolean z) {
        PFLog.m29i(TAG, "onLifecycleChanged: " + z);
    }
}
