.class Lcom/android/car/CarBluetoothUserService$1;
.super Ljava/lang/Object;
.source "CarBluetoothUserService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarBluetoothUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarBluetoothUserService;


# direct methods
.method constructor <init>(Lcom/android/car/CarBluetoothUserService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarBluetoothUserService;

    .line 152
    iput-object p1, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 154
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$000(Lcom/android/car/CarBluetoothUserService;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0}, Lcom/android/car/CarBluetoothUserService;->access$100(Lcom/android/car/CarBluetoothUserService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 160
    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled profile connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$000(Lcom/android/car/CarBluetoothUserService;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$502(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothMapClient;

    .line 172
    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$402(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;

    .line 169
    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$302(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 166
    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$202(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    .line 163
    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$602(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 175
    nop

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0}, Lcom/android/car/CarBluetoothUserService;->access$700(Lcom/android/car/CarBluetoothUserService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0}, Lcom/android/car/CarBluetoothUserService;->access$700(Lcom/android/car/CarBluetoothUserService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 183
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0}, Lcom/android/car/CarBluetoothUserService;->access$808(Lcom/android/car/CarBluetoothUserService;)I

    .line 184
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0}, Lcom/android/car/CarBluetoothUserService;->access$800(Lcom/android/car/CarBluetoothUserService;)I

    move-result v0

    invoke-static {}, Lcom/android/car/CarBluetoothUserService;->access$900()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 185
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    const-string v1, "All profiles have connected"

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$000(Lcom/android/car/CarBluetoothUserService;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0}, Lcom/android/car/CarBluetoothUserService;->access$1000(Lcom/android/car/CarBluetoothUserService;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_1

    .line 189
    :cond_2
    const-string v0, "CarBluetoothUserService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received duplicate service connection event for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0}, Lcom/android/car/CarBluetoothUserService;->access$100(Lcom/android/car/CarBluetoothUserService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 194
    nop

    .line 195
    return-void

    .line 193
    :goto_2
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v1}, Lcom/android/car/CarBluetoothUserService;->access$100(Lcom/android/car/CarBluetoothUserService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    .line 198
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$000(Lcom/android/car/CarBluetoothUserService;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0}, Lcom/android/car/CarBluetoothUserService;->access$100(Lcom/android/car/CarBluetoothUserService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0}, Lcom/android/car/CarBluetoothUserService;->access$700(Lcom/android/car/CarBluetoothUserService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0}, Lcom/android/car/CarBluetoothUserService;->access$700(Lcom/android/car/CarBluetoothUserService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 203
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0}, Lcom/android/car/CarBluetoothUserService;->access$810(Lcom/android/car/CarBluetoothUserService;)I

    goto :goto_0

    .line 205
    :cond_0
    const-string v0, "CarBluetoothUserService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received duplicate service disconnection event for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0}, Lcom/android/car/CarBluetoothUserService;->access$100(Lcom/android/car/CarBluetoothUserService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 210
    nop

    .line 211
    return-void

    .line 209
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v1}, Lcom/android/car/CarBluetoothUserService;->access$100(Lcom/android/car/CarBluetoothUserService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
