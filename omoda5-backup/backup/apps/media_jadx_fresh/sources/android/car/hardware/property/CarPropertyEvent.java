package android.car.hardware.property;

import android.car.hardware.CarPropertyValue;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CarPropertyEvent implements Parcelable {
    public static final Parcelable.Creator<CarPropertyEvent> CREATOR = new Parcelable.Creator<CarPropertyEvent>() { // from class: android.car.hardware.property.CarPropertyEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarPropertyEvent createFromParcel(Parcel parcel) {
            return new CarPropertyEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarPropertyEvent[] newArray(int r1) {
            return new CarPropertyEvent[r1];
        }
    };
    private static final int ERROR_EVENT_VALUE = -1;
    public static final int PROPERTY_EVENT_ERROR = 1;
    public static final int PROPERTY_EVENT_PROPERTY_CHANGE = 0;
    private final CarPropertyValue<?> mCarPropertyValue;
    private final int mEventType;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getEventType() {
        return this.mEventType;
    }

    public CarPropertyValue<?> getCarPropertyValue() {
        return this.mCarPropertyValue;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r3) {
        parcel.writeInt(this.mEventType);
        parcel.writeParcelable(this.mCarPropertyValue, r3);
    }

    public CarPropertyEvent(int r1, CarPropertyValue<?> carPropertyValue) {
        this.mEventType = r1;
        this.mCarPropertyValue = carPropertyValue;
    }

    public static CarPropertyEvent createErrorEvent(int r8, int r9) {
        return new CarPropertyEvent(1, (CarPropertyValue<?>) new CarPropertyValue(r8, r9, 2, 0L, -1));
    }

    private CarPropertyEvent(Parcel parcel) {
        this.mEventType = parcel.readInt();
        this.mCarPropertyValue = (CarPropertyValue) parcel.readParcelable(CarPropertyValue.class.getClassLoader());
    }

    public String toString() {
        return "CarPropertyEvent{mEventType=" + this.mEventType + ", mCarPropertyValue=" + this.mCarPropertyValue + '}';
    }
}
