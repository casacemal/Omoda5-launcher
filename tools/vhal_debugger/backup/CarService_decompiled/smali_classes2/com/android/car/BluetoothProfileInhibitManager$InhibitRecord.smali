.class Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;
.super Ljava/lang/Object;
.source "BluetoothProfileInhibitManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothProfileInhibitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InhibitRecord"
.end annotation


# instance fields
.field private final mParams:Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

.field private mRemoved:Z

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/car/BluetoothProfileInhibitManager;


# direct methods
.method constructor <init>(Lcom/android/car/BluetoothProfileInhibitManager;Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "params"    # Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 179
    iput-object p1, p0, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->this$0:Lcom/android/car/BluetoothProfileInhibitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->mRemoved:Z

    .line 180
    iput-object p2, p0, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->mParams:Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    .line 181
    iput-object p3, p0, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->mToken:Landroid/os/IBinder;

    .line 182
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->this$0:Lcom/android/car/BluetoothProfileInhibitManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing inhibit request on profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->mParams:Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    .line 210
    invoke-virtual {v2}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getProfile()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->mParams:Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    .line 211
    invoke-virtual {v2}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": requesting process died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {v0, v1}, Lcom/android/car/BluetoothProfileInhibitManager;->access$100(Lcom/android/car/BluetoothProfileInhibitManager;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->removeSelf()Z

    .line 214
    return-void
.end method

.method public getParams()Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->mParams:Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public removeSelf()Z
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->this$0:Lcom/android/car/BluetoothProfileInhibitManager;

    monitor-enter v0

    .line 194
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->mRemoved:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 195
    monitor-exit v0

    return v2

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->this$0:Lcom/android/car/BluetoothProfileInhibitManager;

    invoke-static {v1, p0}, Lcom/android/car/BluetoothProfileInhibitManager;->access$000(Lcom/android/car/BluetoothProfileInhibitManager;Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iput-boolean v2, p0, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->mRemoved:Z

    .line 200
    monitor-exit v0

    return v2

    .line 202
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
