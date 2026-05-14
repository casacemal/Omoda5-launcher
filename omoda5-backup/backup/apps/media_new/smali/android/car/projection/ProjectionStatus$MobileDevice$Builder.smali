.class public final Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;
.super Ljava/lang/Object;
.source "ProjectionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/projection/ProjectionStatus$MobileDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAvailableTransports:Landroid/util/IntArray;

.field private mExtras:Landroid/os/Bundle;

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mProjecting:Z


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mAvailableTransports:Landroid/util/IntArray;

    .line 376
    iput p1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mId:I

    if-eqz p2, :cond_0

    .line 380
    iput-object p2, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mName:Ljava/lang/String;

    return-void

    .line 378
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Name of the device can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor <init>(ILjava/lang/String;Landroid/car/projection/ProjectionStatus$1;)V
    .locals 0

    .line 368
    invoke-direct {p0, p1, p2}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)I
    .locals 0

    .line 368
    iget p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mId:I

    return p0
.end method

.method static synthetic access$1100(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Ljava/lang/String;
    .locals 0

    .line 368
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Landroid/util/IntArray;
    .locals 0

    .line 368
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mAvailableTransports:Landroid/util/IntArray;

    return-object p0
.end method

.method static synthetic access$1300(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Z
    .locals 0

    .line 368
    iget-boolean p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mProjecting:Z

    return p0
.end method

.method static synthetic access$1400(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 368
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public addTransport(I)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;
    .locals 1

    .line 391
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus;->access$700(I)V

    .line 392
    iget-object v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mAvailableTransports:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    return-object p0
.end method

.method public build()Landroid/car/projection/ProjectionStatus$MobileDevice;
    .locals 2

    .line 420
    new-instance v0, Landroid/car/projection/ProjectionStatus$MobileDevice;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/car/projection/ProjectionStatus$MobileDevice;-><init>(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;Landroid/car/projection/ProjectionStatus$1;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;
    .locals 0

    .line 414
    iput-object p1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setProjecting(Z)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;
    .locals 0

    .line 403
    iput-boolean p1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->mProjecting:Z

    return-object p0
.end method
