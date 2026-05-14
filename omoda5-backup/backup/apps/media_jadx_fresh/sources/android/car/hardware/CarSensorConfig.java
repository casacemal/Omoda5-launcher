package android.car.hardware;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CarSensorConfig implements Parcelable {
    public static final Parcelable.Creator<CarSensorConfig> CREATOR = new Parcelable.Creator<CarSensorConfig>() { // from class: android.car.hardware.CarSensorConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarSensorConfig createFromParcel(Parcel parcel) {
            return new CarSensorConfig(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarSensorConfig[] newArray(int r1) {
            return new CarSensorConfig[r1];
        }
    };
    public static final String WHEEL_TICK_DISTANCE_FRONT_LEFT_UM_PER_TICK = "android.car.wheelTickDistanceFrontLeftUmPerTick";
    public static final String WHEEL_TICK_DISTANCE_FRONT_RIGHT_UM_PER_TICK = "android.car.wheelTickDistanceFrontRightUmPerTick";
    public static final String WHEEL_TICK_DISTANCE_REAR_LEFT_UM_PER_TICK = "android.car.wheelTickDistanceRearLeftUmPerTick";
    public static final String WHEEL_TICK_DISTANCE_REAR_RIGHT_UM_PER_TICK = "android.car.wheelTickDistanceRearRightUmPerTick";
    public static final String WHEEL_TICK_DISTANCE_SUPPORTED_WHEELS = "android.car.wheelTickDistanceSupportedWheels";
    private final Bundle mConfig;
    private final int mType;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CarSensorConfig(Parcel parcel) {
        this.mType = parcel.readInt();
        this.mConfig = parcel.readBundle();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r2) {
        parcel.writeInt(this.mType);
        parcel.writeBundle(this.mConfig);
    }

    public CarSensorConfig(int r1, Bundle bundle) {
        this.mType = r1;
        this.mConfig = bundle.deepCopy();
    }

    private void checkType(int r4) {
        if (this.mType != r4) {
            throw new UnsupportedOperationException(String.format("Invalid sensor type: expected %d, got %d", Integer.valueOf(r4), Integer.valueOf(this.mType)));
        }
    }

    public Bundle getBundle() {
        return this.mConfig;
    }

    public int getInt(String str) {
        if (this.mConfig.containsKey(str)) {
            return this.mConfig.getInt(str);
        }
        throw new IllegalArgumentException("SensorType " + this.mType + " does not contain key: " + str);
    }

    public int getType() {
        return this.mType;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getName() + "[");
        sb.append("mType: " + this.mType);
        sb.append("mConfig: " + this.mConfig.toString());
        sb.append("]");
        return sb.toString();
    }
}
