.class public final Lcom/android/car/storagemonitoring/WearInformation;
.super Ljava/lang/Object;
.source "WearInformation.java"


# static fields
.field public static final PRE_EOL_INFO_NORMAL:I = 0x1

.field public static final PRE_EOL_INFO_URGENT:I = 0x3

.field public static final PRE_EOL_INFO_WARNING:I = 0x2

.field private static final PRE_EOL_STRINGS:[Ljava/lang/String;

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final UNKNOWN_LIFETIME_ESTIMATE:I = -0x1

.field public static final UNKNOWN_PRE_EOL_INFO:I


# instance fields
.field public final lifetimeEstimateA:I

.field public final lifetimeEstimateB:I

.field public final preEolInfo:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    const-string v0, "unknown"

    const-string v1, "normal"

    const-string v2, "warning"

    const-string v3, "urgent"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/storagemonitoring/WearInformation;->PRE_EOL_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "lifetimeA"    # I
    .param p2, "lifetimeB"    # I
    .param p3, "preEol"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateA:I

    .line 53
    iput p2, p0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateB:I

    .line 54
    iput p3, p0, Lcom/android/car/storagemonitoring/WearInformation;->preEolInfo:I

    .line 55
    return-void
.end method

.method private lifetimeToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "lifetime"    # I

    .line 75
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string v0, "unknown"

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 64
    instance-of v0, p1, Lcom/android/car/storagemonitoring/WearInformation;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/android/car/storagemonitoring/WearInformation;

    .line 66
    .local v0, "wi":Lcom/android/car/storagemonitoring/WearInformation;
    iget v2, v0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateA:I

    iget v3, p0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateA:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateB:I

    iget v3, p0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateB:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/car/storagemonitoring/WearInformation;->preEolInfo:I

    iget v3, p0, Lcom/android/car/storagemonitoring/WearInformation;->preEolInfo:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 70
    .end local v0    # "wi":Lcom/android/car/storagemonitoring/WearInformation;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateB:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/storagemonitoring/WearInformation;->preEolInfo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateA:I

    .line 83
    invoke-direct {p0, v1}, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateB:I

    .line 84
    invoke-direct {p0, v1}, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/car/storagemonitoring/WearInformation;->PRE_EOL_STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/car/storagemonitoring/WearInformation;->preEolInfo:I

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 82
    const-string v1, "lifetime estimate: A = %s, B = %s; pre EOL info: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toWearEstimate()Landroid/car/storagemonitoring/WearEstimate;
    .locals 3

    .line 89
    new-instance v0, Landroid/car/storagemonitoring/WearEstimate;

    iget v1, p0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateA:I

    iget v2, p0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateB:I

    invoke-direct {v0, v1, v2}, Landroid/car/storagemonitoring/WearEstimate;-><init>(II)V

    return-object v0
.end method
