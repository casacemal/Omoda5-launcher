package com.chery.caradapter.carapi;

import android.car.CarInfoManager;
import android.car.hardware.power.CarPowerManager;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.content.Context;
import com.chery.caradapter.carapi.client.CarAmblightClient;
import com.chery.caradapter.carapi.client.CarAvmClient;
import com.chery.caradapter.carapi.client.CarAvmEngineClient;
import com.chery.caradapter.carapi.client.CarBaseClient;
import com.chery.caradapter.carapi.client.CarBasicClient;
import com.chery.caradapter.carapi.client.CarConfigInfoClient;
import com.chery.caradapter.carapi.client.CarDriveClient;
import com.chery.caradapter.carapi.client.CarHvacClient;
import com.chery.caradapter.carapi.client.CarIntelligentKeyClient;
import com.chery.caradapter.carapi.client.CarIpcDisplayClient;
import com.chery.caradapter.carapi.client.CarLampClient;
import com.chery.caradapter.carapi.client.CarPowerClient;
import com.chery.caradapter.carapi.client.CarVolumeClient;
import com.chery.caradapter.server.CarAdapterBaseManager;

/* loaded from: classes.dex */
public class CarAdapterClient {
    private static volatile CarAdapterClient sInstance;
    private CarAdapterBaseManager carAdapterBaseManager;
    private CarAudioManager carAudioManager;
    private CarInfoManager carInfoManager;
    private CarPowerManager carPowerManager;
    private CarPropertyManager carPropertyManager;

    private CarAdapterClient(Context context) {
        if (context != null) {
            CarAdapterBaseManager carAdapterBaseManager = CarAdapterBaseManager.getInstance(context.getApplicationContext());
            this.carAdapterBaseManager = carAdapterBaseManager;
            this.carPropertyManager = carAdapterBaseManager.getCarPropertyManager();
            this.carAudioManager = this.carAdapterBaseManager.getCarAudioManager();
            this.carInfoManager = this.carAdapterBaseManager.getCarInfoManager();
            this.carPowerManager = this.carAdapterBaseManager.getCarPowerManager();
        }
    }

    public static CarAdapterClient getInstance(Context context) {
        if (sInstance == null) {
            synchronized (CarAdapterClient.class) {
                if (sInstance == null) {
                    sInstance = new CarAdapterClient(context);
                }
            }
        }
        return sInstance;
    }

    public CarBaseClient getCarClient(int r2) {
        CarBaseClient carHvacClient;
        if (r2 == 1) {
            carHvacClient = CarHvacClient.getInstance();
        } else if (r2 == 2) {
            carHvacClient = CarIntelligentKeyClient.getInstance();
        } else if (r2 == 3) {
            carHvacClient = CarLampClient.getInstance();
        } else if (r2 == 4) {
            carHvacClient = CarAmblightClient.getInstance();
        } else if (r2 == 6) {
            carHvacClient = CarBasicClient.getInstance();
        } else if (r2 == 7) {
            carHvacClient = CarDriveClient.getInstance();
        } else if (r2 == 8) {
            carHvacClient = CarIpcDisplayClient.getInstance();
        } else {
            switch (r2) {
                case 16:
                    carHvacClient = CarVolumeClient.getInstance();
                    break;
                case 17:
                    carHvacClient = CarConfigInfoClient.getInstance();
                    break;
                case 18:
                    carHvacClient = CarPowerClient.getInstance();
                    break;
                case 19:
                    carHvacClient = CarAvmEngineClient.getInstance();
                    break;
                case 20:
                    carHvacClient = CarAvmClient.getInstance();
                    break;
                default:
                    carHvacClient = null;
                    break;
            }
        }
        if (carHvacClient != null) {
            carHvacClient.setPropertyManager(this.carPropertyManager);
            carHvacClient.setAudioManager(this.carAudioManager);
            carHvacClient.setInfoManager(this.carInfoManager);
            carHvacClient.setPowerManager(this.carPowerManager);
            carHvacClient.init();
        }
        return carHvacClient;
    }
}
