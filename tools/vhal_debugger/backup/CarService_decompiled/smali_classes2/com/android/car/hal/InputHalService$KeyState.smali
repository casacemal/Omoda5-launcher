.class Lcom/android/car/hal/InputHalService$KeyState;
.super Ljava/lang/Object;
.source "InputHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/InputHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyState"
.end annotation


# instance fields
.field public mLastKeyDownTimestamp:J

.field public mRepeatCount:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/car/hal/InputHalService$KeyState;->mLastKeyDownTimestamp:J

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/hal/InputHalService$KeyState;->mRepeatCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/hal/InputHalService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/hal/InputHalService$1;

    .line 53
    invoke-direct {p0}, Lcom/android/car/hal/InputHalService$KeyState;-><init>()V

    return-void
.end method
