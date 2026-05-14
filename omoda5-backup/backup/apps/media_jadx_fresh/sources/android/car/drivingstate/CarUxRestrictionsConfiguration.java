package android.car.drivingstate;

import android.car.drivingstate.CarUxRestrictions;
import android.car.drivingstate.CarUxRestrictionsConfiguration;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.ArrayMap;
import android.util.JsonReader;
import android.util.JsonWriter;
import android.util.Log;
import androidx.core.os.EnvironmentCompat;
import java.io.CharArrayWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final class CarUxRestrictionsConfiguration implements Parcelable {
    private static final String JSON_NAME_IDLING_RESTRICTIONS = "idling_restrictions";
    private static final String JSON_NAME_MAX_CONTENT_DEPTH = "max_content_depth";
    private static final String JSON_NAME_MAX_CUMULATIVE_CONTENT_ITEMS = "max_cumulative_content_items";
    private static final String JSON_NAME_MAX_SPEED = "max_speed";
    private static final String JSON_NAME_MAX_STRING_LENGTH = "max_string_length";
    private static final String JSON_NAME_MIN_SPEED = "min_speed";
    private static final String JSON_NAME_MOVING_RESTRICTIONS = "moving_restrictions";
    private static final String JSON_NAME_PARKED_RESTRICTIONS = "parked_restrictions";
    private static final String JSON_NAME_PASSENGER_IDLING_RESTRICTIONS = "passenger_idling_restrictions";
    private static final String JSON_NAME_PASSENGER_MOVING_RESTRICTIONS = "passenger_moving_restrictions";
    private static final String JSON_NAME_PASSENGER_PARKED_RESTRICTIONS = "passenger_parked_restrictions";
    private static final String JSON_NAME_PASSENGER_UNKNOWN_RESTRICTIONS = "passenger_unknown_restrictions";
    private static final String JSON_NAME_PHYSICAL_PORT = "physical_port";
    private static final String JSON_NAME_REQ_OPT = "req_opt";
    private static final String JSON_NAME_RESTRICTIONS = "restrictions";
    private static final String JSON_NAME_SPEED_RANGE = "speed_range";
    private static final String JSON_NAME_UNKNOWN_RESTRICTIONS = "unknown_restrictions";
    private static final String TAG = "CarUxRConfig";
    private final Map<Integer, List<RestrictionsPerSpeedRange>> mBaselineUxRestrictions;
    private final int mMaxContentDepth;
    private final int mMaxCumulativeContentItems;
    private final int mMaxStringLength;
    private final Map<Integer, List<RestrictionsPerSpeedRange>> mPassengerUxRestrictions;
    private final Byte mPhysicalPort;
    private static final int[] DRIVING_STATES = {-1, 0, 1, 2};
    public static final Parcelable.Creator<CarUxRestrictionsConfiguration> CREATOR = new Parcelable.Creator<CarUxRestrictionsConfiguration>() { // from class: android.car.drivingstate.CarUxRestrictionsConfiguration.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarUxRestrictionsConfiguration createFromParcel(Parcel parcel) {
            return new CarUxRestrictionsConfiguration(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarUxRestrictionsConfiguration[] newArray(int r1) {
            return new CarUxRestrictionsConfiguration[r1];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private CarUxRestrictionsConfiguration(Builder builder) {
        this.mPassengerUxRestrictions = new ArrayMap(DRIVING_STATES.length);
        this.mBaselineUxRestrictions = new ArrayMap(DRIVING_STATES.length);
        this.mPhysicalPort = builder.mPhysicalPort;
        this.mMaxContentDepth = builder.mMaxContentDepth;
        this.mMaxCumulativeContentItems = builder.mMaxCumulativeContentItems;
        this.mMaxStringLength = builder.mMaxStringLength;
        for (int r3 : DRIVING_STATES) {
            ArrayList arrayList = new ArrayList();
            Iterator<RestrictionsPerSpeedRange> it = builder.mBaselineUxRestrictions.get(Integer.valueOf(r3)).iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            this.mBaselineUxRestrictions.put(Integer.valueOf(r3), arrayList);
            ArrayList arrayList2 = new ArrayList();
            Iterator<RestrictionsPerSpeedRange> it2 = builder.mPassengerUxRestrictions.get(Integer.valueOf(r3)).iterator();
            while (it2.hasNext()) {
                arrayList2.add(it2.next());
            }
            this.mPassengerUxRestrictions.put(Integer.valueOf(r3), arrayList2);
        }
    }

    public CarUxRestrictions getUxRestrictions(int r2, float f) {
        return getUxRestrictions(r2, f, 0);
    }

    public CarUxRestrictions getUxRestrictions(int r2, float f, int r4) {
        RestrictionsPerSpeedRange restrictionsPerSpeedRangeFindUxRestrictionsInList = r4 == 1 ? findUxRestrictionsInList(f, this.mPassengerUxRestrictions.get(Integer.valueOf(r2))) : null;
        if (restrictionsPerSpeedRangeFindUxRestrictionsInList == null) {
            restrictionsPerSpeedRangeFindUxRestrictionsInList = findUxRestrictionsInList(f, this.mBaselineUxRestrictions.get(Integer.valueOf(r2)));
        }
        if (restrictionsPerSpeedRangeFindUxRestrictionsInList == null) {
            if (Build.IS_ENG || Build.IS_USERDEBUG) {
                throw new IllegalStateException("No restrictions for driving state " + getDrivingStateName(r2));
            }
            return createDefaultUxRestrictionsEvent();
        }
        return createUxRestrictionsEvent(restrictionsPerSpeedRangeFindUxRestrictionsInList.mReqOpt, restrictionsPerSpeedRangeFindUxRestrictionsInList.mRestrictions);
    }

    public Byte getPhysicalPort() {
        return this.mPhysicalPort;
    }

    private static RestrictionsPerSpeedRange findUxRestrictionsInList(float f, List<RestrictionsPerSpeedRange> list) {
        if (list.isEmpty()) {
            return null;
        }
        if (list.size() == 1 && list.get(0).mSpeedRange == null) {
            return list.get(0);
        }
        for (RestrictionsPerSpeedRange restrictionsPerSpeedRange : list) {
            if (restrictionsPerSpeedRange.mSpeedRange != null && restrictionsPerSpeedRange.mSpeedRange.includes(f)) {
                return restrictionsPerSpeedRange;
            }
        }
        return null;
    }

    private CarUxRestrictions createDefaultUxRestrictionsEvent() {
        return createUxRestrictionsEvent(true, 511);
    }

    private CarUxRestrictions createUxRestrictionsEvent(boolean z, int r5) {
        if (r5 != 0) {
            z = true;
        }
        CarUxRestrictions.Builder builder = new CarUxRestrictions.Builder(z, r5, SystemClock.elapsedRealtimeNanos());
        int r4 = this.mMaxStringLength;
        if (r4 != -1) {
            builder.setMaxStringLength(r4);
        }
        int r42 = this.mMaxCumulativeContentItems;
        if (r42 != -1) {
            builder.setMaxCumulativeContentItems(r42);
        }
        int r3 = this.mMaxContentDepth;
        if (r3 != -1) {
            builder.setMaxContentDepth(r3);
        }
        return builder.build();
    }

    public void writeJson(JsonWriter jsonWriter) throws IOException {
        jsonWriter.setLenient(true);
        jsonWriter.beginObject();
        if (this.mPhysicalPort == null) {
            jsonWriter.name(JSON_NAME_PHYSICAL_PORT).nullValue();
        } else {
            jsonWriter.name(JSON_NAME_PHYSICAL_PORT).value(this.mPhysicalPort.byteValue());
        }
        jsonWriter.name(JSON_NAME_MAX_CONTENT_DEPTH).value(this.mMaxContentDepth);
        jsonWriter.name(JSON_NAME_MAX_CUMULATIVE_CONTENT_ITEMS).value(this.mMaxCumulativeContentItems);
        jsonWriter.name(JSON_NAME_MAX_STRING_LENGTH).value(this.mMaxStringLength);
        jsonWriter.name(JSON_NAME_PARKED_RESTRICTIONS);
        writeRestrictionsList(jsonWriter, this.mBaselineUxRestrictions.get(0));
        jsonWriter.name(JSON_NAME_IDLING_RESTRICTIONS);
        writeRestrictionsList(jsonWriter, this.mBaselineUxRestrictions.get(1));
        jsonWriter.name(JSON_NAME_MOVING_RESTRICTIONS);
        writeRestrictionsList(jsonWriter, this.mBaselineUxRestrictions.get(2));
        jsonWriter.name(JSON_NAME_UNKNOWN_RESTRICTIONS);
        writeRestrictionsList(jsonWriter, this.mBaselineUxRestrictions.get(-1));
        jsonWriter.name(JSON_NAME_PASSENGER_PARKED_RESTRICTIONS);
        writeRestrictionsList(jsonWriter, this.mPassengerUxRestrictions.get(0));
        jsonWriter.name(JSON_NAME_PASSENGER_IDLING_RESTRICTIONS);
        writeRestrictionsList(jsonWriter, this.mPassengerUxRestrictions.get(1));
        jsonWriter.name(JSON_NAME_PASSENGER_MOVING_RESTRICTIONS);
        writeRestrictionsList(jsonWriter, this.mPassengerUxRestrictions.get(2));
        jsonWriter.name(JSON_NAME_PASSENGER_UNKNOWN_RESTRICTIONS);
        writeRestrictionsList(jsonWriter, this.mPassengerUxRestrictions.get(-1));
        jsonWriter.endObject();
    }

    private void writeRestrictionsList(JsonWriter jsonWriter, List<RestrictionsPerSpeedRange> list) throws IOException {
        jsonWriter.beginArray();
        Iterator<RestrictionsPerSpeedRange> it = list.iterator();
        while (it.hasNext()) {
            writeRestrictions(jsonWriter, it.next());
        }
        jsonWriter.endArray();
    }

    private void writeRestrictions(JsonWriter jsonWriter, RestrictionsPerSpeedRange restrictionsPerSpeedRange) throws IOException {
        jsonWriter.beginObject();
        jsonWriter.name(JSON_NAME_REQ_OPT).value(restrictionsPerSpeedRange.mReqOpt);
        jsonWriter.name(JSON_NAME_RESTRICTIONS).value(restrictionsPerSpeedRange.mRestrictions);
        if (restrictionsPerSpeedRange.mSpeedRange != null) {
            jsonWriter.name(JSON_NAME_SPEED_RANGE);
            jsonWriter.beginObject();
            jsonWriter.name(JSON_NAME_MIN_SPEED).value(restrictionsPerSpeedRange.mSpeedRange.mMinSpeed);
            jsonWriter.name(JSON_NAME_MAX_SPEED).value(restrictionsPerSpeedRange.mSpeedRange.mMaxSpeed);
            jsonWriter.endObject();
        }
        jsonWriter.endObject();
    }

    public String toString() {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        JsonWriter jsonWriter = new JsonWriter(charArrayWriter);
        jsonWriter.setIndent("\t");
        try {
            writeJson(jsonWriter);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return charArrayWriter.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.car.drivingstate.CarUxRestrictionsConfiguration readJson(android.util.JsonReader r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.car.drivingstate.CarUxRestrictionsConfiguration.readJson(android.util.JsonReader):android.car.drivingstate.CarUxRestrictionsConfiguration");
    }

    private static void readRestrictionsList(JsonReader jsonReader, int r2, int r3, Builder builder) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            DrivingStateRestrictions restrictions = readRestrictions(jsonReader);
            restrictions.setMode(r3);
            builder.setUxRestrictions(r2, restrictions);
        }
        jsonReader.endArray();
    }

    private static DrivingStateRestrictions readRestrictions(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        boolean zNextBoolean = false;
        Builder.SpeedRange speedRange = null;
        int r1 = 0;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals(JSON_NAME_REQ_OPT)) {
                zNextBoolean = jsonReader.nextBoolean();
            } else if (strNextName.equals(JSON_NAME_RESTRICTIONS)) {
                r1 = jsonReader.nextInt();
            } else if (strNextName.equals(JSON_NAME_SPEED_RANGE)) {
                jsonReader.beginObject();
                float fFloatValue = Float.POSITIVE_INFINITY;
                float fFloatValue2 = Float.POSITIVE_INFINITY;
                while (jsonReader.hasNext()) {
                    String strNextName2 = jsonReader.nextName();
                    if (strNextName2.equals(JSON_NAME_MIN_SPEED)) {
                        fFloatValue = Double.valueOf(jsonReader.nextDouble()).floatValue();
                    } else if (strNextName2.equals(JSON_NAME_MAX_SPEED)) {
                        fFloatValue2 = Double.valueOf(jsonReader.nextDouble()).floatValue();
                    } else {
                        Log.e(TAG, "Unknown name parsing json config: " + strNextName2);
                        jsonReader.skipValue();
                    }
                }
                Builder.SpeedRange speedRange2 = new Builder.SpeedRange(fFloatValue, fFloatValue2);
                jsonReader.endObject();
                speedRange = speedRange2;
            }
        }
        jsonReader.endObject();
        DrivingStateRestrictions restrictions = new DrivingStateRestrictions().setDistractionOptimizationRequired(zNextBoolean).setRestrictions(r1);
        if (speedRange != null) {
            restrictions.setSpeedRange(speedRange);
        }
        return restrictions;
    }

    public int hashCode() {
        return Objects.hash(this.mPhysicalPort, Integer.valueOf(this.mMaxStringLength), Integer.valueOf(this.mMaxCumulativeContentItems), Integer.valueOf(this.mMaxContentDepth), this.mBaselineUxRestrictions, this.mPassengerUxRestrictions);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarUxRestrictionsConfiguration)) {
            return false;
        }
        CarUxRestrictionsConfiguration carUxRestrictionsConfiguration = (CarUxRestrictionsConfiguration) obj;
        return this.mPhysicalPort == carUxRestrictionsConfiguration.mPhysicalPort && hasSameParameters(carUxRestrictionsConfiguration) && this.mBaselineUxRestrictions.equals(carUxRestrictionsConfiguration.mBaselineUxRestrictions) && this.mPassengerUxRestrictions.equals(carUxRestrictionsConfiguration.mPassengerUxRestrictions);
    }

    public boolean hasSameParameters(CarUxRestrictionsConfiguration carUxRestrictionsConfiguration) {
        return this.mMaxContentDepth == carUxRestrictionsConfiguration.mMaxContentDepth && this.mMaxCumulativeContentItems == carUxRestrictionsConfiguration.mMaxCumulativeContentItems && this.mMaxStringLength == carUxRestrictionsConfiguration.mMaxStringLength;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("Physical display port: " + this.mPhysicalPort);
        printWriter.println("===========================================");
        printWriter.println("Baseline mode UXR:");
        printWriter.println("-------------------------------------------");
        dumpRestrictions(printWriter, this.mBaselineUxRestrictions);
        printWriter.println("Passenger mode UXR:");
        printWriter.println("-------------------------------------------");
        dumpRestrictions(printWriter, this.mPassengerUxRestrictions);
        printWriter.println("Max String length: " + this.mMaxStringLength);
        printWriter.println("Max Cumulative Content Items: " + this.mMaxCumulativeContentItems);
        printWriter.println("Max Content depth: " + this.mMaxContentDepth);
        printWriter.println("===========================================");
    }

    private void dumpRestrictions(PrintWriter printWriter, Map<Integer, List<RestrictionsPerSpeedRange>> map) {
        for (Integer num : map.keySet()) {
            List<RestrictionsPerSpeedRange> list = map.get(num);
            printWriter.println("State:" + getDrivingStateName(num.intValue()) + " num restrictions:" + list.size());
            for (RestrictionsPerSpeedRange restrictionsPerSpeedRange : list) {
                StringBuilder sb = new StringBuilder();
                sb.append("Requires DO? ");
                sb.append(restrictionsPerSpeedRange.mReqOpt);
                sb.append("\nRestrictions: 0x");
                sb.append(Integer.toHexString(restrictionsPerSpeedRange.mRestrictions));
                sb.append("\nSpeed Range: ");
                sb.append(restrictionsPerSpeedRange.mSpeedRange == null ? "None" : restrictionsPerSpeedRange.mSpeedRange.mMinSpeed + " - " + restrictionsPerSpeedRange.mSpeedRange.mMaxSpeed);
                printWriter.println(sb.toString());
                printWriter.println("-------------------------------------------");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getDrivingStateName(int r3) {
        if (r3 == -1) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        if (r3 == 0) {
            return "parked";
        }
        if (r3 == 1) {
            return "idling";
        }
        if (r3 == 2) {
            return "moving";
        }
        throw new IllegalArgumentException("Unrecognized state value: " + r3);
    }

    private CarUxRestrictionsConfiguration(Parcel parcel) {
        this.mPassengerUxRestrictions = new ArrayMap(DRIVING_STATES.length);
        this.mBaselineUxRestrictions = new ArrayMap(DRIVING_STATES.length);
        for (int r4 : DRIVING_STATES) {
            ArrayList arrayList = new ArrayList();
            parcel.readTypedList(arrayList, RestrictionsPerSpeedRange.CREATOR);
            this.mBaselineUxRestrictions.put(Integer.valueOf(r4), arrayList);
        }
        for (int r3 : DRIVING_STATES) {
            ArrayList arrayList2 = new ArrayList();
            parcel.readTypedList(arrayList2, RestrictionsPerSpeedRange.CREATOR);
            this.mPassengerUxRestrictions.put(Integer.valueOf(r3), arrayList2);
        }
        this.mPhysicalPort = parcel.readBoolean() ? null : Byte.valueOf(parcel.readByte());
        this.mMaxContentDepth = parcel.readInt();
        this.mMaxCumulativeContentItems = parcel.readInt();
        this.mMaxStringLength = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r7) {
        for (int r0 : DRIVING_STATES) {
            parcel.writeTypedList(this.mBaselineUxRestrictions.get(Integer.valueOf(r0)));
        }
        for (int r02 : DRIVING_STATES) {
            parcel.writeTypedList(this.mPassengerUxRestrictions.get(Integer.valueOf(r02)));
        }
        boolean z = this.mPhysicalPort == null;
        parcel.writeBoolean(z);
        parcel.writeByte(z ? (byte) 0 : this.mPhysicalPort.byteValue());
        parcel.writeInt(this.mMaxContentDepth);
        parcel.writeInt(this.mMaxCumulativeContentItems);
        parcel.writeInt(this.mMaxStringLength);
    }

    public static final class Builder {
        private static final int UX_RESTRICTIONS_UNKNOWN = -1;
        private Byte mPhysicalPort;
        private int mMaxContentDepth = -1;
        private int mMaxCumulativeContentItems = -1;
        private int mMaxStringLength = -1;
        public Map<Integer, List<RestrictionsPerSpeedRange>> mPassengerUxRestrictions = new ArrayMap(CarUxRestrictionsConfiguration.DRIVING_STATES.length);
        public Map<Integer, List<RestrictionsPerSpeedRange>> mBaselineUxRestrictions = new ArrayMap(CarUxRestrictionsConfiguration.DRIVING_STATES.length);

        public static byte validatePort(int r3) {
            if (-128 <= r3 && r3 <= 127) {
                return (byte) r3;
            }
            throw new IllegalArgumentException("Port value should be within the range of a byte. Input is " + r3);
        }

        public Builder() {
            for (int r3 : CarUxRestrictionsConfiguration.DRIVING_STATES) {
                this.mBaselineUxRestrictions.put(Integer.valueOf(r3), new ArrayList());
                this.mPassengerUxRestrictions.put(Integer.valueOf(r3), new ArrayList());
            }
        }

        public Builder setPhysicalPort(byte b) {
            this.mPhysicalPort = Byte.valueOf(b);
            return this;
        }

        public Builder setUxRestrictions(int r2, boolean z, int r4) {
            return setUxRestrictions(r2, new DrivingStateRestrictions().setDistractionOptimizationRequired(z).setRestrictions(r4));
        }

        @Deprecated
        public Builder setUxRestrictions(int r2, SpeedRange speedRange, boolean z, int r5) {
            return setUxRestrictions(r2, new DrivingStateRestrictions().setDistractionOptimizationRequired(z).setRestrictions(r5).setSpeedRange(speedRange));
        }

        public Builder setUxRestrictions(int r5, DrivingStateRestrictions drivingStateRestrictions) {
            List<RestrictionsPerSpeedRange> list;
            SpeedRange speedRange = drivingStateRestrictions.mSpeedRange;
            if (r5 != 2 && speedRange != null) {
                throw new IllegalArgumentException("Non-moving driving state should not specify speed range.");
            }
            int r1 = drivingStateRestrictions.mMode;
            if (r1 == 0) {
                list = this.mBaselineUxRestrictions.get(Integer.valueOf(r5));
            } else if (r1 == 1) {
                list = this.mPassengerUxRestrictions.get(Integer.valueOf(r5));
            } else {
                throw new IllegalArgumentException("Unrecognized restriction mode " + CarUxRestrictionsManager.modeToString(drivingStateRestrictions.mMode));
            }
            list.add(new RestrictionsPerSpeedRange(drivingStateRestrictions.mMode, drivingStateRestrictions.mReqOpt, drivingStateRestrictions.mRestrictions, speedRange));
            return this;
        }

        public Builder setMaxStringLength(int r1) {
            this.mMaxStringLength = r1;
            return this;
        }

        public Builder setMaxCumulativeContentItems(int r1) {
            this.mMaxCumulativeContentItems = r1;
            return this;
        }

        public Builder setMaxContentDepth(int r1) {
            this.mMaxContentDepth = r1;
            return this;
        }

        public CarUxRestrictionsConfiguration build() {
            addDefaultRestrictionsToBaseline();
            validateBaselineModeRestrictions();
            validatePassengerModeRestrictions();
            return new CarUxRestrictionsConfiguration(this);
        }

        private void addDefaultRestrictionsToBaseline() {
            for (int r3 : CarUxRestrictionsConfiguration.DRIVING_STATES) {
                List<RestrictionsPerSpeedRange> list = this.mBaselineUxRestrictions.get(Integer.valueOf(r3));
                if (list.size() == 0) {
                    Log.i(CarUxRestrictionsConfiguration.TAG, "Using default restrictions for driving state: " + CarUxRestrictionsConfiguration.getDrivingStateName(r3));
                    list.add(new RestrictionsPerSpeedRange(true, 511));
                }
            }
        }

        private void validateBaselineModeRestrictions() {
            for (int r3 : CarUxRestrictionsConfiguration.DRIVING_STATES) {
                List<RestrictionsPerSpeedRange> list = this.mBaselineUxRestrictions.get(Integer.valueOf(r3));
                if (r3 != 2 && list.size() != 1) {
                    throw new IllegalStateException("Non-moving driving state should contain one set of restriction rules.");
                }
                if (list.size() > 1 && list.stream().anyMatch(new Predicate() { // from class: android.car.drivingstate.-$$Lambda$CarUxRestrictionsConfiguration$Builder$P3YAT4lyumufgfvQFLIXs7yMKkY
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return CarUxRestrictionsConfiguration.Builder.lambda$validateBaselineModeRestrictions$0((CarUxRestrictionsConfiguration.RestrictionsPerSpeedRange) obj);
                    }
                })) {
                    StringBuilder sb = new StringBuilder();
                    Iterator<RestrictionsPerSpeedRange> it = list.iterator();
                    while (it.hasNext()) {
                        sb.append(it.next().toString());
                        sb.append('\n');
                    }
                    throw new IllegalStateException("Every restriction in MOVING state should contain driving state.\n" + sb.toString());
                }
                Collections.sort(list, Comparator.comparing($$Lambda$YBSNvgpLXg5IqqXs9FKuvoKXc24.INSTANCE));
                validateRangeOfSpeed(list);
                validateContinuousSpeedRange(list);
            }
        }

        static /* synthetic */ boolean lambda$validateBaselineModeRestrictions$0(RestrictionsPerSpeedRange restrictionsPerSpeedRange) {
            return restrictionsPerSpeedRange.mSpeedRange == null;
        }

        private void validatePassengerModeRestrictions() {
            List<RestrictionsPerSpeedRange> list = this.mPassengerUxRestrictions.get(2);
            Collections.sort(list, Comparator.comparing($$Lambda$YBSNvgpLXg5IqqXs9FKuvoKXc24.INSTANCE));
            validateContinuousSpeedRange(list);
        }

        private void validateRangeOfSpeed(List<RestrictionsPerSpeedRange> list) {
            if (list.size() == 1 && list.get(0).mSpeedRange == null) {
                return;
            }
            if (Float.compare(list.get(0).mSpeedRange.mMinSpeed, 0.0f) != 0) {
                throw new IllegalStateException("Speed range min speed should start at 0.");
            }
            if (Float.compare(list.get(list.size() - 1).mSpeedRange.mMaxSpeed, Float.POSITIVE_INFINITY) != 0) {
                throw new IllegalStateException("Max speed of last restriction should be MAX_SPEED.");
            }
        }

        private void validateContinuousSpeedRange(List<RestrictionsPerSpeedRange> list) {
            for (int r2 = 1; r2 < list.size(); r2++) {
                if (Float.compare(list.get(r2).mSpeedRange.mMinSpeed, list.get(r2 - 1).mSpeedRange.mMaxSpeed) != 0) {
                    throw new IllegalArgumentException("Mis-configured speed range. Possibly speed range overlap or gap.");
                }
            }
        }

        public static final class SpeedRange implements Comparable<SpeedRange> {
            public static final float MAX_SPEED = Float.POSITIVE_INFINITY;
            private float mMaxSpeed;
            private float mMinSpeed;

            public SpeedRange(float f) {
                this(f, Float.POSITIVE_INFINITY);
            }

            public SpeedRange(float f, float f2) {
                if (Float.compare(f, 0.0f) < 0 || Float.compare(f2, 0.0f) < 0) {
                    throw new IllegalArgumentException("Speed cannot be negative.");
                }
                if (f == Float.POSITIVE_INFINITY) {
                    throw new IllegalArgumentException("Min speed cannot be MAX_SPEED.");
                }
                if (f > f2) {
                    throw new IllegalArgumentException("Min speed " + f + " should not be greater than max speed " + f2);
                }
                this.mMinSpeed = f;
                this.mMaxSpeed = f2;
            }

            public boolean includes(float f) {
                return this.mMinSpeed <= f && f < this.mMaxSpeed;
            }

            @Override // java.lang.Comparable
            public int compareTo(SpeedRange speedRange) {
                int r0 = Float.compare(this.mMinSpeed, speedRange.mMinSpeed);
                return r0 != 0 ? r0 : Float.compare(this.mMaxSpeed, speedRange.mMaxSpeed);
            }

            public int hashCode() {
                return Objects.hash(Float.valueOf(this.mMinSpeed), Float.valueOf(this.mMaxSpeed));
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof SpeedRange) && compareTo((SpeedRange) obj) == 0;
            }

            public String toString() {
                StringBuilder sb = new StringBuilder();
                sb.append("[min: ");
                sb.append(this.mMinSpeed);
                sb.append("; max: ");
                float f = this.mMaxSpeed;
                sb.append(f == Float.POSITIVE_INFINITY ? CarUxRestrictionsConfiguration.JSON_NAME_MAX_SPEED : Float.valueOf(f));
                sb.append("]");
                return sb.toString();
            }
        }
    }

    public static final class DrivingStateRestrictions {
        private int mMode = 0;
        private boolean mReqOpt = true;
        private int mRestrictions = 511;
        private Builder.SpeedRange mSpeedRange;

        public DrivingStateRestrictions setDistractionOptimizationRequired(boolean z) {
            this.mReqOpt = z;
            return this;
        }

        public DrivingStateRestrictions setRestrictions(int r1) {
            this.mRestrictions = r1;
            return this;
        }

        public DrivingStateRestrictions setMode(int r1) {
            this.mMode = r1;
            return this;
        }

        public DrivingStateRestrictions setSpeedRange(Builder.SpeedRange speedRange) {
            this.mSpeedRange = speedRange;
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Mode: ");
            sb.append(CarUxRestrictionsManager.modeToString(this.mMode));
            sb.append(". Requires DO? ");
            sb.append(this.mReqOpt);
            sb.append(". Restrictions: ");
            sb.append(Integer.toBinaryString(this.mRestrictions));
            sb.append(". SpeedRange: ");
            Builder.SpeedRange speedRange = this.mSpeedRange;
            sb.append(speedRange == null ? "null" : speedRange.toString());
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class RestrictionsPerSpeedRange implements Parcelable {
        public static final Parcelable.Creator<RestrictionsPerSpeedRange> CREATOR = new Parcelable.Creator<RestrictionsPerSpeedRange>() { // from class: android.car.drivingstate.CarUxRestrictionsConfiguration.RestrictionsPerSpeedRange.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RestrictionsPerSpeedRange createFromParcel(Parcel parcel) {
                return new RestrictionsPerSpeedRange(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RestrictionsPerSpeedRange[] newArray(int r1) {
                return new RestrictionsPerSpeedRange[r1];
            }
        };
        final int mMode;
        final boolean mReqOpt;
        final int mRestrictions;
        final Builder.SpeedRange mSpeedRange;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        RestrictionsPerSpeedRange(boolean z, int r4) {
            this(0, z, r4, null);
        }

        RestrictionsPerSpeedRange(int r1, boolean z, int r3, Builder.SpeedRange speedRange) {
            if (!z && r3 != 0) {
                throw new IllegalArgumentException("Driving optimization is not required but UX restrictions is required.");
            }
            this.mMode = r1;
            this.mReqOpt = z;
            this.mRestrictions = r3;
            this.mSpeedRange = speedRange;
        }

        public Builder.SpeedRange getSpeedRange() {
            return this.mSpeedRange;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.mMode), Boolean.valueOf(this.mReqOpt), Integer.valueOf(this.mRestrictions), this.mSpeedRange);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof RestrictionsPerSpeedRange)) {
                return false;
            }
            RestrictionsPerSpeedRange restrictionsPerSpeedRange = (RestrictionsPerSpeedRange) obj;
            return this.mMode == restrictionsPerSpeedRange.mMode && this.mReqOpt == restrictionsPerSpeedRange.mReqOpt && this.mRestrictions == restrictionsPerSpeedRange.mRestrictions && Objects.equals(this.mSpeedRange, restrictionsPerSpeedRange.mSpeedRange);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[Mode is ");
            sb.append(CarUxRestrictionsManager.modeToString(this.mMode));
            sb.append("; Requires DO? ");
            sb.append(this.mReqOpt);
            sb.append("; Restrictions: ");
            sb.append(Integer.toBinaryString(this.mRestrictions));
            sb.append("; Speed range: ");
            Builder.SpeedRange speedRange = this.mSpeedRange;
            sb.append(speedRange == null ? "null" : speedRange.toString());
            sb.append(']');
            return sb.toString();
        }

        protected RestrictionsPerSpeedRange(Parcel parcel) {
            this.mMode = parcel.readInt();
            this.mReqOpt = parcel.readBoolean();
            this.mRestrictions = parcel.readInt();
            this.mSpeedRange = parcel.readBoolean() ? new Builder.SpeedRange(parcel.readFloat(), parcel.readFloat()) : null;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int r2) {
            parcel.writeInt(this.mMode);
            parcel.writeBoolean(this.mReqOpt);
            parcel.writeInt(this.mRestrictions);
            parcel.writeBoolean(this.mSpeedRange != null);
            Builder.SpeedRange speedRange = this.mSpeedRange;
            if (speedRange != null) {
                parcel.writeFloat(speedRange.mMinSpeed);
                parcel.writeFloat(this.mSpeedRange.mMaxSpeed);
            }
        }
    }
}
