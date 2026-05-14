package android.car.diagnostic;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.JsonWriter;
import android.util.SparseArray;
import android.util.SparseIntArray;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

@SystemApi
/* loaded from: classes.dex */
public final class CarDiagnosticEvent implements Parcelable {
    public static final Parcelable.Creator<CarDiagnosticEvent> CREATOR = new Parcelable.Creator<CarDiagnosticEvent>() { // from class: android.car.diagnostic.CarDiagnosticEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarDiagnosticEvent createFromParcel(Parcel parcel) {
            return new CarDiagnosticEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarDiagnosticEvent[] newArray(int r1) {
            return new CarDiagnosticEvent[r1];
        }
    };
    public final String dtc;
    private final SparseArray<Float> floatValues;
    public final int frameType;
    private final SparseIntArray intValues;
    public final long timestamp;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CarDiagnosticEvent(Parcel parcel) {
        this.frameType = parcel.readInt();
        this.timestamp = parcel.readLong();
        int r0 = parcel.readInt();
        this.floatValues = new SparseArray<>(r0);
        for (int r2 = 0; r2 < r0; r2++) {
            this.floatValues.put(parcel.readInt(), Float.valueOf(parcel.readFloat()));
        }
        int r02 = parcel.readInt();
        this.intValues = new SparseIntArray(r02);
        for (int r1 = 0; r1 < r02; r1++) {
            this.intValues.put(parcel.readInt(), parcel.readInt());
        }
        this.dtc = (String) parcel.readValue(String.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r5) {
        parcel.writeInt(this.frameType);
        parcel.writeLong(this.timestamp);
        parcel.writeInt(this.floatValues.size());
        for (int r0 = 0; r0 < this.floatValues.size(); r0++) {
            int r1 = this.floatValues.keyAt(r0);
            parcel.writeInt(r1);
            parcel.writeFloat(this.floatValues.get(r1).floatValue());
        }
        parcel.writeInt(this.intValues.size());
        for (int r52 = 0; r52 < this.intValues.size(); r52++) {
            int r02 = this.intValues.keyAt(r52);
            parcel.writeInt(r02);
            parcel.writeInt(this.intValues.get(r02));
        }
        parcel.writeValue(this.dtc);
    }

    public void writeToJson(JsonWriter jsonWriter) throws IOException {
        jsonWriter.beginObject();
        jsonWriter.name("type");
        int r0 = this.frameType;
        if (r0 == 0) {
            jsonWriter.value("live");
        } else if (r0 == 1) {
            jsonWriter.value("freeze");
        } else {
            throw new IllegalStateException("unknown frameType " + this.frameType);
        }
        jsonWriter.name("timestamp").value(this.timestamp);
        jsonWriter.name("intValues").beginArray();
        for (int r1 = 0; r1 < this.intValues.size(); r1++) {
            jsonWriter.beginObject();
            jsonWriter.name("id").value(this.intValues.keyAt(r1));
            jsonWriter.name("value").value(this.intValues.valueAt(r1));
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
        jsonWriter.name("floatValues").beginArray();
        for (int r02 = 0; r02 < this.floatValues.size(); r02++) {
            jsonWriter.beginObject();
            jsonWriter.name("id").value(this.floatValues.keyAt(r02));
            jsonWriter.name("value").value(this.floatValues.valueAt(r02));
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
        if (this.dtc != null) {
            jsonWriter.name("stringValue").value(this.dtc);
        }
        jsonWriter.endObject();
    }

    private CarDiagnosticEvent(int r1, long j, SparseArray<Float> sparseArray, SparseIntArray sparseIntArray, String str) {
        this.frameType = r1;
        this.timestamp = j;
        this.floatValues = sparseArray;
        this.intValues = sparseIntArray;
        this.dtc = str;
    }

    public static class Builder {
        private int mType;
        private long mTimestamp = 0;
        private SparseArray<Float> mFloatValues = new SparseArray<>();
        private SparseIntArray mIntValues = new SparseIntArray();
        private String mDtc = null;

        private Builder(int r3) {
            this.mType = 0;
            this.mType = r3;
        }

        public static Builder newLiveFrameBuilder() {
            return new Builder(0);
        }

        public static Builder newFreezeFrameBuilder() {
            return new Builder(1);
        }

        @Deprecated
        public Builder atTimestamp(long j) {
            this.mTimestamp = j;
            return this;
        }

        public Builder setTimeStamp(long j) {
            this.mTimestamp = j;
            return this;
        }

        @Deprecated
        public Builder withIntValue(int r2, int r3) {
            this.mIntValues.put(r2, r3);
            return this;
        }

        public Builder setIntValue(int r2, int r3) {
            this.mIntValues.put(r2, r3);
            return this;
        }

        @Deprecated
        public Builder withFloatValue(int r2, float f) {
            this.mFloatValues.put(r2, Float.valueOf(f));
            return this;
        }

        public Builder setFloatValue(int r2, float f) {
            this.mFloatValues.put(r2, Float.valueOf(f));
            return this;
        }

        @Deprecated
        public Builder withDtc(String str) {
            this.mDtc = str;
            return this;
        }

        public Builder setDtc(String str) {
            this.mDtc = str;
            return this;
        }

        public CarDiagnosticEvent build() {
            return new CarDiagnosticEvent(this.mType, this.mTimestamp, this.mFloatValues, this.mIntValues, this.mDtc);
        }
    }

    public CarDiagnosticEvent withVendorSensorsRemoved() {
        SparseIntArray sparseIntArrayClone = this.intValues.clone();
        SparseArray<Float> sparseArrayClone = this.floatValues.clone();
        for (int r1 = 0; r1 < this.intValues.size(); r1++) {
            int r2 = this.intValues.keyAt(r1);
            if (r2 >= 31) {
                sparseIntArrayClone.delete(r2);
            }
        }
        for (int r0 = 0; r0 < this.floatValues.size(); r0++) {
            int r12 = this.floatValues.keyAt(r0);
            if (r12 >= 70) {
                sparseArrayClone.delete(r12);
            }
        }
        return new CarDiagnosticEvent(this.frameType, this.timestamp, sparseArrayClone, sparseIntArrayClone, this.dtc);
    }

    public boolean isLiveFrame() {
        return this.frameType == 0;
    }

    public boolean isFreezeFrame() {
        return 1 == this.frameType;
    }

    public boolean isEmptyFrame() {
        boolean z = (this.intValues.size() == 0) & (this.floatValues.size() == 0);
        return isFreezeFrame() ? z & this.dtc.isEmpty() : z;
    }

    public CarDiagnosticEvent checkLiveFrame() {
        if (isLiveFrame()) {
            return this;
        }
        throw new IllegalStateException("frame is not a live frame");
    }

    public CarDiagnosticEvent checkFreezeFrame() {
        if (isFreezeFrame()) {
            return this;
        }
        throw new IllegalStateException("frame is not a freeze frame");
    }

    public boolean isEarlierThan(CarDiagnosticEvent carDiagnosticEvent) {
        Objects.requireNonNull(carDiagnosticEvent);
        return this.timestamp < carDiagnosticEvent.timestamp;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CarDiagnosticEvent)) {
            return false;
        }
        CarDiagnosticEvent carDiagnosticEvent = (CarDiagnosticEvent) obj;
        if (carDiagnosticEvent.frameType != this.frameType || carDiagnosticEvent.timestamp != this.timestamp || carDiagnosticEvent.intValues.size() != this.intValues.size() || carDiagnosticEvent.floatValues.size() != this.floatValues.size() || !Objects.equals(this.dtc, carDiagnosticEvent.dtc)) {
            return false;
        }
        for (int r2 = 0; r2 < this.intValues.size(); r2++) {
            if (this.intValues.keyAt(r2) != carDiagnosticEvent.intValues.keyAt(r2) || this.intValues.valueAt(r2) != carDiagnosticEvent.intValues.valueAt(r2)) {
                return false;
            }
        }
        for (int r22 = 0; r22 < this.floatValues.size(); r22++) {
            if (this.floatValues.keyAt(r22) != carDiagnosticEvent.floatValues.keyAt(r22) || this.floatValues.valueAt(r22).floatValue() != carDiagnosticEvent.floatValues.valueAt(r22).floatValue()) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int size = this.intValues.size();
        Integer[] numArr = new Integer[size];
        int size2 = this.floatValues.size();
        Integer[] numArr2 = new Integer[size2];
        Integer[] numArr3 = new Integer[size];
        Float[] fArr = new Float[size2];
        for (int r7 = 0; r7 < size; r7++) {
            numArr[r7] = Integer.valueOf(this.intValues.keyAt(r7));
            numArr3[r7] = Integer.valueOf(this.intValues.valueAt(r7));
        }
        for (int r0 = 0; r0 < size2; r0++) {
            numArr2[r0] = Integer.valueOf(this.floatValues.keyAt(r0));
            fArr[r0] = this.floatValues.valueAt(r0);
        }
        return Objects.hash(Integer.valueOf(this.frameType), Long.valueOf(this.timestamp), this.dtc, Integer.valueOf(Objects.hash(numArr)), Integer.valueOf(Objects.hash(numArr3)), Integer.valueOf(Objects.hash(numArr2)), Integer.valueOf(Objects.hash(fArr)));
    }

    public String toString() {
        Object[] objArr = new Object[5];
        objArr[0] = isLiveFrame() ? "live" : "freeze";
        objArr[1] = Long.valueOf(this.timestamp);
        objArr[2] = this.dtc;
        objArr[3] = this.intValues.toString();
        objArr[4] = this.floatValues.toString();
        return String.format("%s diagnostic frame {\n\ttimestamp: %d, DTC: %s\n\tintValues: %s\n\tfloatValues: %s\n}", objArr);
    }

    public int getSystemIntegerSensor(int r1, int r2) {
        return this.intValues.get(r1, r2);
    }

    public float getSystemFloatSensor(int r1, float f) {
        return this.floatValues.get(r1, Float.valueOf(f)).floatValue();
    }

    public int getVendorIntegerSensor(int r1, int r2) {
        return this.intValues.get(r1, r2);
    }

    public float getVendorFloatSensor(int r1, float f) {
        return this.floatValues.get(r1, Float.valueOf(f)).floatValue();
    }

    public Integer getSystemIntegerSensor(int r2) {
        int r22 = this.intValues.indexOfKey(r2);
        if (r22 < 0) {
            return null;
        }
        return Integer.valueOf(this.intValues.valueAt(r22));
    }

    public Float getSystemFloatSensor(int r2) {
        int r22 = this.floatValues.indexOfKey(r2);
        if (r22 < 0) {
            return null;
        }
        return this.floatValues.valueAt(r22);
    }

    public Integer getVendorIntegerSensor(int r2) {
        int r22 = this.intValues.indexOfKey(r2);
        if (r22 < 0) {
            return null;
        }
        return Integer.valueOf(this.intValues.valueAt(r22));
    }

    public Float getVendorFloatSensor(int r2) {
        int r22 = this.floatValues.indexOfKey(r2);
        if (r22 < 0) {
            return null;
        }
        return this.floatValues.valueAt(r22);
    }

    public static final class FuelSystemStatus {
        public static final int CLOSED_LOOP = 2;
        public static final int CLOSED_LOOP_BUT_FEEDBACK_FAULT = 16;
        public static final int OPEN_ENGINE_LOAD_OR_DECELERATION = 4;
        public static final int OPEN_INSUFFICIENT_ENGINE_TEMPERATURE = 1;
        public static final int OPEN_SYSTEM_FAILURE = 8;

        @Retention(RetentionPolicy.SOURCE)
        public @interface Status {
        }

        private FuelSystemStatus() {
        }
    }

    public static final class SecondaryAirStatus {
        public static final int DOWNSTREAM_OF_CATALYCIC_CONVERTER = 2;
        public static final int FROM_OUTSIDE_OR_OFF = 4;
        public static final int PUMP_ON_FOR_DIAGNOSTICS = 8;
        public static final int UPSTREAM = 1;

        @Retention(RetentionPolicy.SOURCE)
        public @interface Status {
        }

        private SecondaryAirStatus() {
        }
    }

    public static final class FuelType {
        public static final int BIFUEL_RUNNING_CNG = 13;
        public static final int BIFUEL_RUNNING_DIESEL = 23;
        public static final int BIFUEL_RUNNING_ELECTRIC = 15;
        public static final int BIFUEL_RUNNING_ELECTRIC_AND_COMBUSTION = 16;
        public static final int BIFUEL_RUNNING_ETHANOL = 11;
        public static final int BIFUEL_RUNNING_GASOLINE = 9;
        public static final int BIFUEL_RUNNING_LPG = 12;
        public static final int BIFUEL_RUNNING_METHANOL = 10;
        public static final int BIFUEL_RUNNING_PROPANE = 14;
        public static final int CNG = 6;
        public static final int DIESEL = 4;
        public static final int ELECTRIC = 8;
        public static final int ETHANOL = 3;
        public static final int GASOLINE = 1;
        public static final int HYBRID_DIESEL = 19;
        public static final int HYBRID_ELECTRIC = 20;
        public static final int HYBRID_ETHANOL = 18;
        public static final int HYBRID_GASOLINE = 17;
        public static final int HYBRID_REGENERATIVE = 22;
        public static final int HYBRID_RUNNING_ELECTRIC_AND_COMBUSTION = 21;
        public static final int LPG = 5;
        public static final int METHANOL = 2;
        public static final int NOT_AVAILABLE = 0;
        public static final int PROPANE = 7;

        @Retention(RetentionPolicy.SOURCE)
        public @interface Type {
        }

        private FuelType() {
        }
    }

    public static final class IgnitionMonitor {
        public final boolean available;
        public final boolean incomplete;

        IgnitionMonitor(boolean z, boolean z2) {
            this.available = z;
            this.incomplete = z2;
        }

        public static final class Decoder {
            private final int mAvailableBitmask;
            private final int mIncompleteBitmask;

            Decoder(int r1, int r2) {
                this.mAvailableBitmask = r1;
                this.mIncompleteBitmask = r2;
            }

            public IgnitionMonitor fromValue(int r4) {
                return new IgnitionMonitor((this.mAvailableBitmask & r4) != 0, (this.mIncompleteBitmask & r4) != 0);
            }
        }
    }

    public static class CommonIgnitionMonitors {
        public static final int COMPONENTS_AVAILABLE = 1;
        public static final int COMPONENTS_INCOMPLETE = 2;
        public static final int FUEL_SYSTEM_AVAILABLE = 4;
        public static final int FUEL_SYSTEM_INCOMPLETE = 8;
        public static final int MISFIRE_AVAILABLE = 16;
        public static final int MISFIRE_INCOMPLETE = 32;
        public final IgnitionMonitor components;
        public final IgnitionMonitor fuelSystem;
        public final IgnitionMonitor misfire;
        static final IgnitionMonitor.Decoder COMPONENTS_DECODER = new IgnitionMonitor.Decoder(1, 2);
        static final IgnitionMonitor.Decoder FUEL_SYSTEM_DECODER = new IgnitionMonitor.Decoder(4, 8);
        static final IgnitionMonitor.Decoder MISFIRE_DECODER = new IgnitionMonitor.Decoder(16, 32);

        CommonIgnitionMonitors(int r2) {
            this.components = COMPONENTS_DECODER.fromValue(r2);
            this.fuelSystem = FUEL_SYSTEM_DECODER.fromValue(r2);
            this.misfire = MISFIRE_DECODER.fromValue(r2);
        }

        public SparkIgnitionMonitors asSparkIgnitionMonitors() {
            if (this instanceof SparkIgnitionMonitors) {
                return (SparkIgnitionMonitors) this;
            }
            return null;
        }

        public CompressionIgnitionMonitors asCompressionIgnitionMonitors() {
            if (this instanceof CompressionIgnitionMonitors) {
                return (CompressionIgnitionMonitors) this;
            }
            return null;
        }
    }

    public static final class SparkIgnitionMonitors extends CommonIgnitionMonitors {
        public static final int AC_REFRIGERANT_AVAILABLE = 4096;
        public static final int AC_REFRIGERANT_INCOMPLETE = 8192;
        public static final int CATALYST_AVAILABLE = 1048576;
        public static final int CATALYST_INCOMPLETE = 2097152;
        public static final int EGR_AVAILABLE = 64;
        public static final int EGR_INCOMPLETE = 128;
        public static final int EVAPORATIVE_SYSTEM_AVAILABLE = 65536;
        public static final int EVAPORATIVE_SYSTEM_INCOMPLETE = 131072;
        public static final int HEATED_CATALYST_AVAILABLE = 262144;
        public static final int HEATED_CATALYST_INCOMPLETE = 524288;
        public static final int OXYGEN_SENSOR_AVAILABLE = 1024;
        public static final int OXYGEN_SENSOR_HEATER_AVAILABLE = 256;
        public static final int OXYGEN_SENSOR_HEATER_INCOMPLETE = 512;
        public static final int OXYGEN_SENSOR_INCOMPLETE = 2048;
        public static final int SECONDARY_AIR_SYSTEM_AVAILABLE = 16384;
        public static final int SECONDARY_AIR_SYSTEM_INCOMPLETE = 32768;
        public final IgnitionMonitor ACRefrigerant;
        public final IgnitionMonitor EGR;
        public final IgnitionMonitor catalyst;
        public final IgnitionMonitor evaporativeSystem;
        public final IgnitionMonitor heatedCatalyst;
        public final IgnitionMonitor oxygenSensor;
        public final IgnitionMonitor oxygenSensorHeater;
        public final IgnitionMonitor secondaryAirSystem;
        static final IgnitionMonitor.Decoder EGR_DECODER = new IgnitionMonitor.Decoder(64, 128);
        static final IgnitionMonitor.Decoder OXYGEN_SENSOR_HEATER_DECODER = new IgnitionMonitor.Decoder(256, 512);
        static final IgnitionMonitor.Decoder OXYGEN_SENSOR_DECODER = new IgnitionMonitor.Decoder(1024, 2048);
        static final IgnitionMonitor.Decoder AC_REFRIGERANT_DECODER = new IgnitionMonitor.Decoder(4096, 8192);
        static final IgnitionMonitor.Decoder SECONDARY_AIR_SYSTEM_DECODER = new IgnitionMonitor.Decoder(16384, 32768);
        static final IgnitionMonitor.Decoder EVAPORATIVE_SYSTEM_DECODER = new IgnitionMonitor.Decoder(65536, 131072);
        static final IgnitionMonitor.Decoder HEATED_CATALYST_DECODER = new IgnitionMonitor.Decoder(262144, 524288);
        static final IgnitionMonitor.Decoder CATALYST_DECODER = new IgnitionMonitor.Decoder(1048576, 2097152);

        SparkIgnitionMonitors(int r2) {
            super(r2);
            this.EGR = EGR_DECODER.fromValue(r2);
            this.oxygenSensorHeater = OXYGEN_SENSOR_HEATER_DECODER.fromValue(r2);
            this.oxygenSensor = OXYGEN_SENSOR_DECODER.fromValue(r2);
            this.ACRefrigerant = AC_REFRIGERANT_DECODER.fromValue(r2);
            this.secondaryAirSystem = SECONDARY_AIR_SYSTEM_DECODER.fromValue(r2);
            this.evaporativeSystem = EVAPORATIVE_SYSTEM_DECODER.fromValue(r2);
            this.heatedCatalyst = HEATED_CATALYST_DECODER.fromValue(r2);
            this.catalyst = CATALYST_DECODER.fromValue(r2);
        }
    }

    public static final class CompressionIgnitionMonitors extends CommonIgnitionMonitors {
        public static final int BOOST_PRESSURE_AVAILABLE = 4096;
        public static final int BOOST_PRESSURE_INCOMPLETE = 8192;
        public static final int EGR_OR_VVT_AVAILABLE = 64;
        public static final int EGR_OR_VVT_INCOMPLETE = 128;
        public static final int EXHAUST_GAS_SENSOR_AVAILABLE = 1024;
        public static final int EXHAUST_GAS_SENSOR_INCOMPLETE = 2048;
        public static final int NMHC_CATALYST_AVAILABLE = 65536;
        public static final int NMHC_CATALYST_INCOMPLETE = 131072;
        public static final int NOx_SCR_AVAILABLE = 16384;
        public static final int NOx_SCR_INCOMPLETE = 32768;
        public static final int PM_FILTER_AVAILABLE = 256;
        public static final int PM_FILTER_INCOMPLETE = 512;
        public final IgnitionMonitor EGROrVVT;
        public final IgnitionMonitor NMHCCatalyst;
        public final IgnitionMonitor NOxSCR;
        public final IgnitionMonitor PMFilter;
        public final IgnitionMonitor boostPressure;
        public final IgnitionMonitor exhaustGasSensor;
        static final IgnitionMonitor.Decoder EGR_OR_VVT_DECODER = new IgnitionMonitor.Decoder(64, 128);
        static final IgnitionMonitor.Decoder PM_FILTER_DECODER = new IgnitionMonitor.Decoder(256, 512);
        static final IgnitionMonitor.Decoder EXHAUST_GAS_SENSOR_DECODER = new IgnitionMonitor.Decoder(1024, 2048);
        static final IgnitionMonitor.Decoder BOOST_PRESSURE_DECODER = new IgnitionMonitor.Decoder(4096, 8192);
        static final IgnitionMonitor.Decoder NOx_SCR_DECODER = new IgnitionMonitor.Decoder(16384, 32768);
        static final IgnitionMonitor.Decoder NMHC_CATALYST_DECODER = new IgnitionMonitor.Decoder(65536, 131072);

        CompressionIgnitionMonitors(int r2) {
            super(r2);
            this.EGROrVVT = EGR_OR_VVT_DECODER.fromValue(r2);
            this.PMFilter = PM_FILTER_DECODER.fromValue(r2);
            this.exhaustGasSensor = EXHAUST_GAS_SENSOR_DECODER.fromValue(r2);
            this.boostPressure = BOOST_PRESSURE_DECODER.fromValue(r2);
            this.NOxSCR = NOx_SCR_DECODER.fromValue(r2);
            this.NMHCCatalyst = NMHC_CATALYST_DECODER.fromValue(r2);
        }
    }

    public Integer getFuelSystemStatus() {
        return getSystemIntegerSensor(0);
    }

    public Integer getSecondaryAirStatus() {
        return getSystemIntegerSensor(5);
    }

    public CommonIgnitionMonitors getIgnitionMonitors() {
        Integer systemIntegerSensor = getSystemIntegerSensor(2);
        Integer systemIntegerSensor2 = getSystemIntegerSensor(3);
        if (systemIntegerSensor == null || systemIntegerSensor2 == null) {
            return null;
        }
        int r0 = systemIntegerSensor.intValue();
        if (r0 == 0) {
            return new SparkIgnitionMonitors(systemIntegerSensor2.intValue());
        }
        if (r0 != 1) {
            return null;
        }
        return new CompressionIgnitionMonitors(systemIntegerSensor2.intValue());
    }

    public Integer getFuelType() {
        return getSystemIntegerSensor(21);
    }
}
