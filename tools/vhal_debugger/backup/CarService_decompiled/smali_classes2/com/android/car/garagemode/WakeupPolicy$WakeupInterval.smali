.class Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;
.super Ljava/lang/Object;
.source "WakeupPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/garagemode/WakeupPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeupInterval"
.end annotation


# instance fields
.field private mNumAttempts:I

.field private mWakeupInterval:I

.field final synthetic this$0:Lcom/android/car/garagemode/WakeupPolicy;


# direct methods
.method constructor <init>(Lcom/android/car/garagemode/WakeupPolicy;II)V
    .locals 0
    .param p2, "wakeupTime"    # I
    .param p3, "numAttempts"    # I

    .line 172
    iput-object p1, p0, Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;->this$0:Lcom/android/car/garagemode/WakeupPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p2, p0, Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;->mWakeupInterval:I

    .line 174
    iput p3, p0, Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;->mNumAttempts:I

    .line 175
    return-void
.end method


# virtual methods
.method public getNumAttempts()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;->mNumAttempts:I

    return v0
.end method

.method public getWakeupInterval()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;->mWakeupInterval:I

    return v0
.end method
