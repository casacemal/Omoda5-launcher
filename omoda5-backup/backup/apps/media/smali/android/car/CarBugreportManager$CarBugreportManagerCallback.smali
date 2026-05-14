.class public abstract Landroid/car/CarBugreportManager$CarBugreportManagerCallback;
.super Ljava/lang/Object;
.source "CarBugreportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/CarBugreportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarBugreportManagerCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/CarBugreportManager$CarBugreportManagerCallback$CarBugreportErrorCode;
    }
.end annotation


# static fields
.field public static final CAR_BUGREPORT_DUMPSTATE_CONNECTION_FAILED:I = 0x3

.field public static final CAR_BUGREPORT_DUMPSTATE_FAILED:I = 0x1

.field public static final CAR_BUGREPORT_IN_PROGRESS:I = 0x2

.field public static final CAR_BUGREPORT_SERVICE_NOT_AVAILABLE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0

    return-void
.end method

.method public onFinished()V
    .locals 0

    return-void
.end method

.method public onProgress(F)V
    .locals 0

    return-void
.end method
