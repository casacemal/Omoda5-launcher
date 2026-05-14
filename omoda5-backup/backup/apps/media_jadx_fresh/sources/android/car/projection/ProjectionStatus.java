package android.car.projection;

import android.annotation.SystemApi;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.IntArray;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@SystemApi
/* loaded from: classes.dex */
public final class ProjectionStatus implements Parcelable {
    public static final Parcelable.Creator<ProjectionStatus> CREATOR = new Parcelable.Creator<ProjectionStatus>() { // from class: android.car.projection.ProjectionStatus.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProjectionStatus createFromParcel(Parcel parcel) {
            return new ProjectionStatus(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProjectionStatus[] newArray(int r1) {
            return new ProjectionStatus[r1];
        }
    };
    public static final int PROJECTION_STATE_ACTIVE_BACKGROUND = 3;
    public static final int PROJECTION_STATE_ACTIVE_FOREGROUND = 2;
    public static final int PROJECTION_STATE_INACTIVE = 0;
    private static final int PROJECTION_STATE_MAX = 3;
    public static final int PROJECTION_STATE_READY_TO_PROJECT = 1;
    private static final int PROJECTION_TRANSPORT_MAX = 2;
    public static final int PROJECTION_TRANSPORT_NONE = 0;
    public static final int PROJECTION_TRANSPORT_USB = 1;
    public static final int PROJECTION_TRANSPORT_WIFI = 2;
    private final List<MobileDevice> mConnectedMobileDevices;
    private final Bundle mExtras;
    private final String mPackageName;
    private final int mState;
    private final int mTransport;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ProjectionState {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ProjectionTransport {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private ProjectionStatus(Builder builder) {
        this.mPackageName = builder.mPackageName;
        this.mState = builder.mState;
        this.mTransport = builder.mTransport;
        this.mConnectedMobileDevices = new ArrayList(builder.mMobileDevices);
        this.mExtras = builder.mExtras == null ? null : new Bundle(builder.mExtras);
    }

    private ProjectionStatus(Parcel parcel) {
        this.mPackageName = parcel.readString();
        this.mState = parcel.readInt();
        this.mTransport = parcel.readInt();
        this.mExtras = parcel.readBundle(getClass().getClassLoader());
        this.mConnectedMobileDevices = parcel.createTypedArrayList(MobileDevice.CREATOR);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r2) {
        parcel.writeString(this.mPackageName);
        parcel.writeInt(this.mState);
        parcel.writeInt(this.mTransport);
        parcel.writeBundle(this.mExtras);
        parcel.writeTypedList(this.mConnectedMobileDevices);
    }

    public int getState() {
        return this.mState;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public Bundle getExtras() {
        return this.mExtras == null ? new Bundle() : new Bundle(this.mExtras);
    }

    public boolean isActive() {
        int r1 = this.mState;
        return r1 == 3 || r1 == 2;
    }

    public int getTransport() {
        return this.mTransport;
    }

    public List<MobileDevice> getConnectedMobileDevices() {
        return new ArrayList(this.mConnectedMobileDevices);
    }

    public static Builder builder(String str, int r3) {
        return new Builder(str, r3);
    }

    public static final class Builder {
        private Bundle mExtras;
        private List<MobileDevice> mMobileDevices;
        private final String mPackageName;
        private final int mState;
        private int mTransport;

        private Builder(String str, int r3) {
            this.mTransport = 0;
            this.mMobileDevices = new ArrayList();
            if (str == null) {
                throw new IllegalArgumentException("Package name can't be null");
            }
            if (r3 < 0 || r3 > 3) {
                throw new IllegalArgumentException("Invalid projection state: " + r3);
            }
            this.mPackageName = str;
            this.mState = r3;
        }

        public Builder setProjectionTransport(int r1) {
            ProjectionStatus.checkProjectionTransport(r1);
            this.mTransport = r1;
            return this;
        }

        public Builder addMobileDevice(MobileDevice mobileDevice) {
            this.mMobileDevices.add(mobileDevice);
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mExtras = bundle;
            return this;
        }

        public ProjectionStatus build() {
            return new ProjectionStatus(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkProjectionTransport(int r3) {
        if (r3 < 0 || r3 > 2) {
            throw new IllegalArgumentException("Invalid projection transport: " + r3);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ProjectionStatus{mPackageName='");
        sb.append(this.mPackageName);
        sb.append('\'');
        sb.append(", mState=");
        sb.append(this.mState);
        sb.append(", mTransport=");
        sb.append(this.mTransport);
        sb.append(", mConnectedMobileDevices=");
        sb.append(this.mConnectedMobileDevices);
        sb.append(this.mExtras != null ? " (has extras)" : "");
        sb.append('}');
        return sb.toString();
    }

    public static final class MobileDevice implements Parcelable {
        public static final Parcelable.Creator<MobileDevice> CREATOR = new Parcelable.Creator<MobileDevice>() { // from class: android.car.projection.ProjectionStatus.MobileDevice.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MobileDevice createFromParcel(Parcel parcel) {
                return new MobileDevice(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MobileDevice[] newArray(int r1) {
                return new MobileDevice[r1];
            }
        };
        private final int[] mAvailableTransports;
        private final Bundle mExtras;
        private final int mId;
        private final String mName;
        private final boolean mProjecting;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        private MobileDevice(Builder builder) {
            this.mId = builder.mId;
            this.mName = builder.mName;
            this.mAvailableTransports = builder.mAvailableTransports.toArray();
            this.mProjecting = builder.mProjecting;
            this.mExtras = builder.mExtras == null ? null : new Bundle(builder.mExtras);
        }

        private MobileDevice(Parcel parcel) {
            this.mId = parcel.readInt();
            this.mName = parcel.readString();
            this.mAvailableTransports = parcel.createIntArray();
            this.mProjecting = parcel.readBoolean();
            this.mExtras = parcel.readBundle(getClass().getClassLoader());
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int r2) {
            parcel.writeInt(this.mId);
            parcel.writeString(this.mName);
            parcel.writeIntArray(this.mAvailableTransports);
            parcel.writeBoolean(this.mProjecting);
            parcel.writeBundle(this.mExtras);
        }

        public int getId() {
            return this.mId;
        }

        public String getName() {
            return this.mName;
        }

        public List<Integer> getAvailableTransports() {
            ArrayList arrayList = new ArrayList(this.mAvailableTransports.length);
            for (int r0 : this.mAvailableTransports) {
                arrayList.add(Integer.valueOf(r0));
            }
            return arrayList;
        }

        public boolean isProjecting() {
            return this.mProjecting;
        }

        public Bundle getExtras() {
            return this.mExtras == null ? new Bundle() : new Bundle(this.mExtras);
        }

        public static Builder builder(int r2, String str) {
            return new Builder(r2, str);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("MobileDevice{mId=");
            sb.append(this.mId);
            sb.append(", mName='");
            sb.append(this.mName);
            sb.append('\'');
            sb.append(", mAvailableTransports=");
            sb.append(Arrays.toString(this.mAvailableTransports));
            sb.append(", mProjecting=");
            sb.append(this.mProjecting);
            sb.append(this.mExtras != null ? ", (has extras)" : "");
            sb.append('}');
            return sb.toString();
        }

        public static final class Builder {
            private IntArray mAvailableTransports;
            private Bundle mExtras;
            private int mId;
            private String mName;
            private boolean mProjecting;

            private Builder(int r2, String str) {
                this.mAvailableTransports = new IntArray();
                this.mId = r2;
                if (str == null) {
                    throw new IllegalArgumentException("Name of the device can't be null");
                }
                this.mName = str;
            }

            public Builder addTransport(int r2) {
                ProjectionStatus.checkProjectionTransport(r2);
                this.mAvailableTransports.add(r2);
                return this;
            }

            public Builder setProjecting(boolean z) {
                this.mProjecting = z;
                return this;
            }

            public Builder setExtras(Bundle bundle) {
                this.mExtras = bundle;
                return this;
            }

            public MobileDevice build() {
                return new MobileDevice(this);
            }
        }
    }
}
