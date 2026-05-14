package com.yfve.t19c.projection.androidauto.proxy;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ICallStatus implements Parcelable {
    public static final Parcelable.Creator<ICallStatus> CREATOR = new Parcelable.Creator<ICallStatus>() { // from class: com.yfve.t19c.projection.androidauto.proxy.ICallStatus.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ICallStatus createFromParcel(Parcel parcel) {
            return new ICallStatus(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ICallStatus[] newArray(int r1) {
            return new ICallStatus[r1];
        }
    };
    private CallStatus status = new CallStatus();

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ICallStatus() {
    }

    public CallStatus getCallStatus() {
        return this.status;
    }

    public void setCallStatus(CallStatus callStatus) {
        this.status = callStatus;
    }

    protected ICallStatus(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r3) {
        parcel.writeInt(this.status.num_calls);
        parcel.writeInt(this.status.signal_strength);
        parcel.writeInt(this.status.mCallData != null ? this.status.mCallData.size() : 0);
        for (Call call : this.status.mCallData) {
            parcel.writeInt(call.status);
            parcel.writeInt(call.call_duration_seconds);
            parcel.writeString(call.caller_number);
            parcel.writeString(call.caller_id);
            parcel.writeString(call.caller_number_type);
            parcel.writeString(call.caller_thumbnail);
        }
    }

    public void readFromParcel(Parcel parcel) {
        this.status.num_calls = parcel.readInt();
        this.status.signal_strength = parcel.readInt();
        int r0 = parcel.readInt();
        Call call = new Call();
        for (int r2 = 0; r2 < r0; r2++) {
            call.status = parcel.readInt();
            call.call_duration_seconds = parcel.readInt();
            call.caller_number = parcel.readString();
            call.caller_id = parcel.readString();
            call.caller_number_type = parcel.readString();
            call.caller_thumbnail = parcel.readString();
            this.status.mCallData.add(call);
        }
    }
}
