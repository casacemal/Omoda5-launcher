package android.car.hardware;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class CarPropertyConfig<T> implements Parcelable {
    public static final Parcelable.Creator<CarPropertyConfig> CREATOR = new Parcelable.Creator<CarPropertyConfig>() { // from class: android.car.hardware.CarPropertyConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarPropertyConfig createFromParcel(Parcel parcel) {
            return new CarPropertyConfig(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarPropertyConfig[] newArray(int r1) {
            return new CarPropertyConfig[r1];
        }
    };
    public static final int VEHICLE_PROPERTY_ACCESS_NONE = 0;
    public static final int VEHICLE_PROPERTY_ACCESS_READ = 1;
    public static final int VEHICLE_PROPERTY_ACCESS_READ_WRITE = 3;
    public static final int VEHICLE_PROPERTY_ACCESS_WRITE = 2;
    public static final int VEHICLE_PROPERTY_CHANGE_MODE_CONTINUOUS = 2;
    public static final int VEHICLE_PROPERTY_CHANGE_MODE_ONCHANGE = 1;
    public static final int VEHICLE_PROPERTY_CHANGE_MODE_STATIC = 0;
    private final int mAccess;
    private final int mAreaType;
    private final int mChangeMode;
    private final ArrayList<Integer> mConfigArray;
    private final String mConfigString;
    private final float mMaxSampleRate;
    private final float mMinSampleRate;
    private final int mPropertyId;
    private final SparseArray<AreaConfig<T>> mSupportedAreas;
    private final Class<T> mType;

    @Retention(RetentionPolicy.SOURCE)
    public @interface VehiclePropertyAccessType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface VehiclePropertyChangeModeType {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private CarPropertyConfig(int r1, int r2, int r3, ArrayList<Integer> arrayList, String str, float f, float f2, int r8, SparseArray<AreaConfig<T>> sparseArray, Class<T> cls) {
        this.mAccess = r1;
        this.mAreaType = r2;
        this.mChangeMode = r3;
        this.mConfigArray = arrayList;
        this.mConfigString = str;
        this.mMaxSampleRate = f;
        this.mMinSampleRate = f2;
        this.mPropertyId = r8;
        this.mSupportedAreas = sparseArray;
        this.mType = cls;
    }

    public int getAccess() {
        return this.mAccess;
    }

    public int getAreaType() {
        return this.mAreaType;
    }

    public int getChangeMode() {
        return this.mChangeMode;
    }

    public List<Integer> getConfigArray() {
        return Collections.unmodifiableList(this.mConfigArray);
    }

    public String getConfigString() {
        return this.mConfigString;
    }

    public float getMaxSampleRate() {
        return this.mMaxSampleRate;
    }

    public float getMinSampleRate() {
        return this.mMinSampleRate;
    }

    public int getPropertyId() {
        return this.mPropertyId;
    }

    @SystemApi
    public Class<T> getPropertyType() {
        return this.mType;
    }

    public boolean isGlobalProperty() {
        return this.mAreaType == 0;
    }

    public int getAreaCount() {
        return this.mSupportedAreas.size();
    }

    public int[] getAreaIds() {
        int size = this.mSupportedAreas.size();
        int[] r1 = new int[size];
        for (int r2 = 0; r2 < size; r2++) {
            r1[r2] = this.mSupportedAreas.keyAt(r2);
        }
        return r1;
    }

    public int getFirstAndOnlyAreaId() {
        if (this.mSupportedAreas.size() != 1) {
            throw new IllegalStateException("Expected one and only area in this property. Prop: 0x" + Integer.toHexString(this.mPropertyId));
        }
        return this.mSupportedAreas.keyAt(0);
    }

    public boolean hasArea(int r1) {
        return this.mSupportedAreas.indexOfKey(r1) >= 0;
    }

    public T getMinValue(int r1) {
        AreaConfig<T> areaConfig = this.mSupportedAreas.get(r1);
        if (areaConfig == null) {
            return null;
        }
        return areaConfig.getMinValue();
    }

    public T getMaxValue(int r1) {
        AreaConfig<T> areaConfig = this.mSupportedAreas.get(r1);
        if (areaConfig == null) {
            return null;
        }
        return areaConfig.getMaxValue();
    }

    public T getMinValue() {
        AreaConfig<T> areaConfig = this.mSupportedAreas.get(0);
        if (areaConfig == null) {
            return null;
        }
        return areaConfig.getMinValue();
    }

    public T getMaxValue() {
        AreaConfig<T> areaConfig = this.mSupportedAreas.get(0);
        if (areaConfig == null) {
            return null;
        }
        return areaConfig.getMaxValue();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r5) {
        parcel.writeInt(this.mAccess);
        parcel.writeInt(this.mAreaType);
        parcel.writeInt(this.mChangeMode);
        parcel.writeInt(this.mConfigArray.size());
        for (int r1 = 0; r1 < this.mConfigArray.size(); r1++) {
            parcel.writeInt(this.mConfigArray.get(r1).intValue());
        }
        parcel.writeString(this.mConfigString);
        parcel.writeFloat(this.mMaxSampleRate);
        parcel.writeFloat(this.mMinSampleRate);
        parcel.writeInt(this.mPropertyId);
        parcel.writeInt(this.mSupportedAreas.size());
        for (int r0 = 0; r0 < this.mSupportedAreas.size(); r0++) {
            parcel.writeInt(this.mSupportedAreas.keyAt(r0));
            parcel.writeParcelable(this.mSupportedAreas.valueAt(r0), r5);
        }
        parcel.writeString(this.mType.getName());
    }

    private CarPropertyConfig(Parcel parcel) {
        this.mAccess = parcel.readInt();
        this.mAreaType = parcel.readInt();
        this.mChangeMode = parcel.readInt();
        int r0 = parcel.readInt();
        this.mConfigArray = new ArrayList<>(r0);
        for (int r2 = 0; r2 < r0; r2++) {
            this.mConfigArray.add(Integer.valueOf(parcel.readInt()));
        }
        this.mConfigString = parcel.readString();
        this.mMaxSampleRate = parcel.readFloat();
        this.mMinSampleRate = parcel.readFloat();
        this.mPropertyId = parcel.readInt();
        int r02 = parcel.readInt();
        this.mSupportedAreas = new SparseArray<>(r02);
        for (int r1 = 0; r1 < r02; r1++) {
            this.mSupportedAreas.put(parcel.readInt(), (AreaConfig) parcel.readParcelable(getClass().getClassLoader()));
        }
        String string = parcel.readString();
        try {
            this.mType = (Class<T>) Class.forName(string);
        } catch (ClassNotFoundException unused) {
            throw new IllegalArgumentException("Class not found: " + string);
        }
    }

    public String toString() {
        return "CarPropertyConfig{mPropertyId=" + this.mPropertyId + ", mAccess=" + this.mAccess + ", mAreaType=" + this.mAreaType + ", mChangeMode=" + this.mChangeMode + ", mConfigArray=" + this.mConfigArray + ", mConfigString=" + this.mConfigString + ", mMaxSampleRate=" + this.mMaxSampleRate + ", mMinSampleRate=" + this.mMinSampleRate + ", mSupportedAreas=" + this.mSupportedAreas + ", mType=" + this.mType + '}';
    }

    public static class AreaConfig<T> implements Parcelable {
        public static final Parcelable.Creator<AreaConfig<Object>> CREATOR = getCreator(Object.class);
        private final T mMaxValue;
        private final T mMinValue;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        private AreaConfig(T t, T t2) {
            this.mMinValue = t;
            this.mMaxValue = t2;
        }

        private static <E> Parcelable.Creator<AreaConfig<E>> getCreator(final Class<E> cls) {
            return new Parcelable.Creator<AreaConfig<E>>() { // from class: android.car.hardware.CarPropertyConfig.AreaConfig.1
                @Override // android.os.Parcelable.Creator
                public AreaConfig<E> createFromParcel(Parcel parcel) {
                    return new AreaConfig<>(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public AreaConfig<E>[] newArray(int r1) {
                    return (AreaConfig[]) Array.newInstance((Class<?>) cls, r1);
                }
            };
        }

        private AreaConfig(Parcel parcel) {
            this.mMinValue = (T) parcel.readValue(getClass().getClassLoader());
            this.mMaxValue = (T) parcel.readValue(getClass().getClassLoader());
        }

        public T getMinValue() {
            return this.mMinValue;
        }

        public T getMaxValue() {
            return this.mMaxValue;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int r2) {
            parcel.writeValue(this.mMinValue);
            parcel.writeValue(this.mMaxValue);
        }

        public String toString() {
            return "CarAreaConfig{mMinValue=" + this.mMinValue + ", mMaxValue=" + this.mMaxValue + '}';
        }
    }

    @SystemApi
    public static <T> Builder<T> newBuilder(Class<T> cls, int r8, int r9, int r10) {
        return new Builder<>(r10, r9, r8, cls);
    }

    public static <T> Builder<T> newBuilder(Class<T> cls, int r8, int r9) {
        return new Builder<>(0, r9, r8, cls);
    }

    @SystemApi
    public static class Builder<T> {
        private int mAccess;
        private final int mAreaType;
        private int mChangeMode;
        private final ArrayList<Integer> mConfigArray;
        private String mConfigString;
        private float mMaxSampleRate;
        private float mMinSampleRate;
        private final int mPropertyId;
        private final SparseArray<AreaConfig<T>> mSupportedAreas;
        private final Class<T> mType;

        private Builder(int r1, int r2, int r3, Class<T> cls) {
            this.mAreaType = r2;
            this.mConfigArray = new ArrayList<>();
            this.mPropertyId = r3;
            if (r1 != 0) {
                this.mSupportedAreas = new SparseArray<>(r1);
            } else {
                this.mSupportedAreas = new SparseArray<>();
            }
            this.mType = cls;
        }

        public Builder<T> addAreas(int[] r6) {
            for (int r0 : r6) {
                this.mSupportedAreas.put(r0, null);
            }
            return this;
        }

        public Builder<T> addArea(int r2) {
            return addAreaConfig(r2, null, null);
        }

        public Builder<T> addAreaConfig(int r4, T t, T t2) {
            if (!isRangeAvailable(t, t2)) {
                this.mSupportedAreas.put(r4, null);
            } else {
                this.mSupportedAreas.put(r4, new AreaConfig<>(t, t2));
            }
            return this;
        }

        public Builder<T> setAccess(int r1) {
            this.mAccess = r1;
            return this;
        }

        public Builder<T> setChangeMode(int r1) {
            this.mChangeMode = r1;
            return this;
        }

        public Builder<T> setConfigArray(ArrayList<Integer> arrayList) {
            this.mConfigArray.clear();
            this.mConfigArray.addAll(arrayList);
            return this;
        }

        public Builder<T> setConfigString(String str) {
            this.mConfigString = str;
            return this;
        }

        public Builder<T> setMaxSampleRate(float f) {
            this.mMaxSampleRate = f;
            return this;
        }

        public Builder<T> setMinSampleRate(float f) {
            this.mMinSampleRate = f;
            return this;
        }

        public CarPropertyConfig<T> build() {
            return new CarPropertyConfig<>(this.mAccess, this.mAreaType, this.mChangeMode, this.mConfigArray, this.mConfigString, this.mMaxSampleRate, this.mMinSampleRate, this.mPropertyId, this.mSupportedAreas, this.mType);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private boolean isRangeAvailable(T t, T t2) {
            if (t == 0 || t2 == 0) {
                return false;
            }
            int r5 = this.mPropertyId & 16711680;
            if (r5 == 4194304) {
                return (((Integer) t).intValue() == 0 && ((Integer) t2).intValue() == 0) ? false : true;
            }
            if (r5 == 5242880) {
                return (((Long) t).longValue() == 0 && ((Long) t2).longValue() == 0) ? false : true;
            }
            if (r5 != 6291456) {
                return false;
            }
            return (((Float) t).floatValue() == 0.0f && ((Float) t2).floatValue() == 0.0f) ? false : true;
        }
    }
}
