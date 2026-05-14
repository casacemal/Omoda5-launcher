.class public final Landroid/car/projection/ProjectionStatus;
.super Ljava/lang/Object;
.source "ProjectionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/projection/ProjectionStatus$MobileDevice;,
        Landroid/car/projection/ProjectionStatus$Builder;,
        Landroid/car/projection/ProjectionStatus$ProjectionState;,
        Landroid/car/projection/ProjectionStatus$ProjectionTransport;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/projection/ProjectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECTION_STATE_ACTIVE_BACKGROUND:I = 0x3

.field public static final PROJECTION_STATE_ACTIVE_FOREGROUND:I = 0x2

.field public static final PROJECTION_STATE_INACTIVE:I = 0x0

.field private static final PROJECTION_STATE_MAX:I = 0x3

.field public static final PROJECTION_STATE_READY_TO_PROJECT:I = 0x1

.field private static final PROJECTION_TRANSPORT_MAX:I = 0x2

.field public static final PROJECTION_TRANSPORT_NONE:I = 0x0

.field public static final PROJECTION_TRANSPORT_USB:I = 0x1

.field public static final PROJECTION_TRANSPORT_WIFI:I = 0x2


# instance fields
.field private final mConnectedMobileDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/projection/ProjectionStatus$MobileDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtras:Landroid/os/Bundle;

.field private final mPackageName:Ljava/lang/String;

.field private final mState:I

.field private final mTransport:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Landroid/car/projection/ProjectionStatus$1;

    invoke-direct {v0}, Landroid/car/projection/ProjectionStatus$1;-><init>()V

    sput-object v0, Landroid/car/projection/ProjectionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/car/projection/ProjectionStatus$Builder;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$Builder;->access$100(Landroid/car/projection/ProjectionStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus;->mPackageName:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$Builder;->access$200(Landroid/car/projection/ProjectionStatus$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/projection/ProjectionStatus;->mState:I

    .line 110
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$Builder;->access$300(Landroid/car/projection/ProjectionStatus$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/projection/ProjectionStatus;->mTransport:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$Builder;->access$400(Landroid/car/projection/ProjectionStatus$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus;->mConnectedMobileDevices:Ljava/util/List;

    .line 112
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$Builder;->access$500(Landroid/car/projection/ProjectionStatus$Builder;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$Builder;->access$500(Landroid/car/projection/ProjectionStatus$Builder;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroid/car/projection/ProjectionStatus;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/projection/ProjectionStatus$Builder;Landroid/car/projection/ProjectionStatus$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/car/projection/ProjectionStatus;-><init>(Landroid/car/projection/ProjectionStatus$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus;->mPackageName:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/projection/ProjectionStatus;->mState:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/projection/ProjectionStatus;->mTransport:I

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus;->mExtras:Landroid/os/Bundle;

    .line 120
    sget-object v0, Landroid/car/projection/ProjectionStatus$MobileDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/projection/ProjectionStatus;->mConnectedMobileDevices:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/car/projection/ProjectionStatus$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/car/projection/ProjectionStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$700(I)V
    .locals 0

    .line 42
    invoke-static {p0}, Landroid/car/projection/ProjectionStatus;->checkProjectionTransport(I)V

    return-void
.end method

.method public static builder(Ljava/lang/String;I)Landroid/car/projection/ProjectionStatus$Builder;
    .locals 2

    .line 181
    new-instance v0, Landroid/car/projection/ProjectionStatus$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/car/projection/ProjectionStatus$Builder;-><init>(Ljava/lang/String;ILandroid/car/projection/ProjectionStatus$1;)V

    return-object v0
.end method

.method private static checkProjectionTransport(I)V
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid projection transport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getConnectedMobileDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/projection/ProjectionStatus$MobileDevice;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/car/projection/ProjectionStatus;->mConnectedMobileDevices:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 152
    iget-object v0, p0, Landroid/car/projection/ProjectionStatus;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Landroid/car/projection/ProjectionStatus;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 142
    iget p0, p0, Landroid/car/projection/ProjectionStatus;->mState:I

    return p0
.end method

.method public getTransport()I
    .locals 0

    .line 165
    iget p0, p0, Landroid/car/projection/ProjectionStatus;->mTransport:I

    return p0
.end method

.method public isActive()Z
    .locals 1

    .line 157
    iget p0, p0, Landroid/car/projection/ProjectionStatus;->mState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectionStatus{mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/projection/ProjectionStatus;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/projection/ProjectionStatus;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTransport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/projection/ProjectionStatus;->mTransport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConnectedMobileDevices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/projection/ProjectionStatus;->mConnectedMobileDevices:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus;->mExtras:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string p0, " (has extras)"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 131
    iget-object p2, p0, Landroid/car/projection/ProjectionStatus;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget p2, p0, Landroid/car/projection/ProjectionStatus;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget p2, p0, Landroid/car/projection/ProjectionStatus;->mTransport:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object p2, p0, Landroid/car/projection/ProjectionStatus;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 135
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus;->mConnectedMobileDevices:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
