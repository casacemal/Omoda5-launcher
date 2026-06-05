.class Lcom/android/car/CarPropertyService$Client;
.super Ljava/lang/Object;
.source "CarPropertyService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPropertyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field private final mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private final mListenerBinder:Landroid/os/IBinder;

.field private final mRateMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/car/CarPropertyService;


# direct methods
.method constructor <init>(Lcom/android/car/CarPropertyService;Landroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 2
    .param p2, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 77
    iput-object p1, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    .line 78
    iput-object p2, p0, Lcom/android/car/CarPropertyService$Client;->mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 79
    invoke-interface {p2}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .line 86
    invoke-static {p1}, Lcom/android/car/CarPropertyService;->access$000(Lcom/android/car/CarPropertyService;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void

    .line 83
    :catch_0
    move-exception p1

    .line 84
    .local p1, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client already dead"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method addProperty(IF)V
    .locals 2
    .param p1, "propId"    # I
    .param p2, "rate"    # F

    .line 90
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    return-void
.end method

.method public binderDied()V
    .locals 4

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property.service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 105
    .local v1, "propId":I
    iget-object v2, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    iget-object v3, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-static {v2, v1, v3}, Lcom/android/car/CarPropertyService;->access$100(Lcom/android/car/CarPropertyService;ILandroid/os/IBinder;)V

    .line 103
    .end local v1    # "propId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/CarPropertyService$Client;->release()V

    .line 108
    return-void
.end method

.method getListener()Landroid/car/hardware/property/ICarPropertyEventListener;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    return-object v0
.end method

.method getListenerBinder()Landroid/os/IBinder;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method getRate(I)F
    .locals 2
    .param p1, "propId"    # I

    .line 120
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method release()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 125
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    invoke-static {v0}, Lcom/android/car/CarPropertyService;->access$000(Lcom/android/car/CarPropertyService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method removeProperty(I)V
    .locals 1
    .param p1, "propId"    # I

    .line 129
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 130
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/car/CarPropertyService$Client;->release()V

    .line 134
    :cond_0
    return-void
.end method
