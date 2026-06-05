.class Lcom/android/car/hal/HalClient$PropertySetError;
.super Ljava/lang/Object;
.source "HalClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/HalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertySetError"
.end annotation


# instance fields
.field final areaId:I

.field final errorCode:I

.field final propId:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "propId"    # I
    .param p3, "areaId"    # I

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Lcom/android/car/hal/HalClient$PropertySetError;->errorCode:I

    .line 188
    iput p2, p0, Lcom/android/car/hal/HalClient$PropertySetError;->propId:I

    .line 189
    iput p3, p0, Lcom/android/car/hal/HalClient$PropertySetError;->areaId:I

    .line 190
    return-void
.end method
