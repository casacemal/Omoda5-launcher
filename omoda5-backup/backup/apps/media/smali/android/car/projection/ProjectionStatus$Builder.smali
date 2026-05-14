.class public final Landroid/car/projection/ProjectionStatus$Builder;
.super Ljava/lang/Object;
.source "ProjectionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/projection/ProjectionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private mMobileDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/projection/ProjectionStatus$MobileDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mState:I

.field private mTransport:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 188
    iput v0, p0, Landroid/car/projection/ProjectionStatus$Builder;->mTransport:I

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus$Builder;->mMobileDevices:Ljava/util/List;

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    .line 199
    iput-object p1, p0, Landroid/car/projection/ProjectionStatus$Builder;->mPackageName:Ljava/lang/String;

    .line 200
    iput p2, p0, Landroid/car/projection/ProjectionStatus$Builder;->mState:I

    return-void

    .line 197
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid projection state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Package name can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/car/projection/ProjectionStatus$1;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1, p2}, Landroid/car/projection/ProjectionStatus$Builder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/car/projection/ProjectionStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 185
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Landroid/car/projection/ProjectionStatus$Builder;)I
    .locals 0

    .line 185
    iget p0, p0, Landroid/car/projection/ProjectionStatus$Builder;->mState:I

    return p0
.end method

.method static synthetic access$300(Landroid/car/projection/ProjectionStatus$Builder;)I
    .locals 0

    .line 185
    iget p0, p0, Landroid/car/projection/ProjectionStatus$Builder;->mTransport:I

    return p0
.end method

.method static synthetic access$400(Landroid/car/projection/ProjectionStatus$Builder;)Ljava/util/List;
    .locals 0

    .line 185
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus$Builder;->mMobileDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Landroid/car/projection/ProjectionStatus$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 185
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public addMobileDevice(Landroid/car/projection/ProjectionStatus$MobileDevice;)Landroid/car/projection/ProjectionStatus$Builder;
    .locals 1

    .line 222
    iget-object v0, p0, Landroid/car/projection/ProjectionStatus$Builder;->mMobileDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/car/projection/ProjectionStatus;
    .locals 2

    .line 240
    new-instance v0, Landroid/car/projection/ProjectionStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/car/projection/ProjectionStatus;-><init>(Landroid/car/projection/ProjectionStatus$Builder;Landroid/car/projection/ProjectionStatus$1;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/car/projection/ProjectionStatus$Builder;
    .locals 0

    .line 234
    iput-object p1, p0, Landroid/car/projection/ProjectionStatus$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setProjectionTransport(I)Landroid/car/projection/ProjectionStatus$Builder;
    .locals 0

    .line 210
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus;->access$700(I)V

    .line 211
    iput p1, p0, Landroid/car/projection/ProjectionStatus$Builder;->mTransport:I

    return-object p0
.end method
