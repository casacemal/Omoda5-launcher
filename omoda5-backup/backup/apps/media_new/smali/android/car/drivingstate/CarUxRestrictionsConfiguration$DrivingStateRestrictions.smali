.class public final Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
.super Ljava/lang/Object;
.source "CarUxRestrictionsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrivingStateRestrictions"
.end annotation


# instance fields
.field private mMode:I

.field private mReqOpt:Z

.field private mRestrictions:I

.field private mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 974
    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mMode:I

    const/4 v0, 0x1

    .line 975
    iput-boolean v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mReqOpt:Z

    const/16 v0, 0x1ff

    .line 976
    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mRestrictions:I

    return-void
.end method

.method static synthetic access$1000(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Z
    .locals 0

    .line 973
    iget-boolean p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mReqOpt:Z

    return p0
.end method

.method static synthetic access$1100(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)I
    .locals 0

    .line 973
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mRestrictions:I

    return p0
.end method

.method static synthetic access$800(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;
    .locals 0

    .line 973
    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    return-object p0
.end method

.method static synthetic access$900(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)I
    .locals 0

    .line 973
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mMode:I

    return p0
.end method


# virtual methods
.method public setDistractionOptimizationRequired(Z)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
    .locals 0

    .line 984
    iput-boolean p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mReqOpt:Z

    return-object p0
.end method

.method public setMode(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
    .locals 0

    .line 1003
    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mMode:I

    return-object p0
.end method

.method public setRestrictions(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
    .locals 0

    .line 994
    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mRestrictions:I

    return-object p0
.end method

.method public setSpeedRange(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
    .locals 0

    .line 1012
    iput-object p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mode: "

    .line 1019
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mMode:I

    invoke-static {v1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Requires DO? "

    .line 1020
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mReqOpt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". Restrictions: "

    .line 1021
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mRestrictions:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". SpeedRange: "

    .line 1022
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
