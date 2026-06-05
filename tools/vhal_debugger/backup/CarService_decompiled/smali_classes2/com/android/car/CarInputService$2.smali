.class Lcom/android/car/CarInputService$2;
.super Landroid/os/Binder;
.source "CarInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarInputService;


# direct methods
.method constructor <init>(Lcom/android/car/CarInputService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarInputService;

    .line 185
    iput-object p1, p0, Lcom/android/car/CarInputService$2;->this$0:Lcom/android/car/CarInputService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 189
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 190
    sget-object v0, Landroid/car/input/CarInputHandlingService$InputFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/input/CarInputHandlingService$InputFilter;

    .line 192
    .local v0, "handledKeys":[Landroid/car/input/CarInputHandlingService$InputFilter;
    if-eqz v0, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/car/CarInputService$2;->this$0:Lcom/android/car/CarInputService;

    invoke-virtual {v2, v0}, Lcom/android/car/CarInputService;->setHandledKeys([Landroid/car/input/CarInputHandlingService$InputFilter;)V

    .line 195
    :cond_0
    return v1

    .line 197
    .end local v0    # "handledKeys":[Landroid/car/input/CarInputHandlingService$InputFilter;
    :cond_1
    return v0
.end method
