.class Lcom/android/car/pm/VendorServiceController;
.super Ljava/lang/Object;
.source "VendorServiceController.java"

# interfaces
.implements Lcom/android/car/user/CarUserService$UserCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/pm/VendorServiceController$ConnectionKey;,
        Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MSG_SWITCH_USER:I = 0x1

.field private static final MSG_USER_LOCK_CHANGED:I = 0x2


# instance fields
.field private mCarUserService:Lcom/android/car/user/CarUserService;

.field private final mConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/car/pm/VendorServiceController$ConnectionKey;",
            "Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

.field private final mVendorServiceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/pm/VendorServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/car/userlib/CarUserManagerHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "userManagerHelper"    # Landroid/car/userlib/CarUserManagerHelper;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mVendorServiceInfos:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mConnections:Ljava/util/HashMap;

    .line 73
    iput-object p1, p0, Lcom/android/car/pm/VendorServiceController;->mContext:Landroid/content/Context;

    .line 74
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mUserManager:Landroid/os/UserManager;

    .line 75
    iput-object p3, p0, Lcom/android/car/pm/VendorServiceController;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    .line 76
    new-instance v0, Lcom/android/car/pm/VendorServiceController$1;

    invoke-direct {v0, p0, p2}, Lcom/android/car/pm/VendorServiceController$1;-><init>(Lcom/android/car/pm/VendorServiceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/pm/VendorServiceController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/VendorServiceController;
    .param p1, "x1"    # Landroid/os/Message;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/car/pm/VendorServiceController;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private doSwitchUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 127
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v0

    .line 128
    .local v0, "fgUser":I
    const-string v1, "CAR.PACKAGE"

    if-eq v0, p1, :cond_0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received userSwitch event for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " while current foreground user is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Ignore the switch user event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/car/pm/VendorServiceController;->mConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;

    .line 136
    .local v3, "connection":Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;
    invoke-static {v3}, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->access$300(Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 137
    .local v4, "connectedUserId":I
    if-eqz v4, :cond_1

    if-eq v4, p1, :cond_1

    .line 138
    invoke-virtual {v3}, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->stopOrUnbindService()V

    .line 140
    .end local v3    # "connection":Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;
    .end local v4    # "connectedUserId":I
    :cond_1
    goto :goto_0

    .line 142
    :cond_2
    if-eqz p1, :cond_3

    .line 143
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/pm/VendorServiceController;->startOrBindServicesForUser(Landroid/os/UserHandle;)V

    goto :goto_1

    .line 145
    :cond_3
    const-string v2, "Unexpected to receive switch user event for system user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_1
    return-void
.end method

.method private doUserLockChanged(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "unlocked"    # Z

    .line 150
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v0

    .line 153
    .local v0, "currentUserId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserLockedChanged, user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", unlocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", currentUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.PACKAGE"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz p2, :cond_1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 157
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/pm/VendorServiceController;->startOrBindServicesForUser(Landroid/os/UserHandle;)V

    goto :goto_1

    .line 158
    :cond_1
    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/android/car/pm/VendorServiceController;->mConnections:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/pm/VendorServiceController$ConnectionKey;

    .line 160
    .local v2, "key":Lcom/android/car/pm/VendorServiceController$ConnectionKey;
    invoke-static {v2}, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->access$200(Lcom/android/car/pm/VendorServiceController$ConnectionKey;)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 161
    invoke-static {v2}, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->access$100(Lcom/android/car/pm/VendorServiceController$ConnectionKey;)Lcom/android/car/pm/VendorServiceInfo;

    move-result-object v3

    invoke-static {v2}, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->access$200(Lcom/android/car/pm/VendorServiceController$ConnectionKey;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/car/pm/VendorServiceController;->stopOrUnbindService(Lcom/android/car/pm/VendorServiceInfo;Landroid/os/UserHandle;)V

    .line 163
    .end local v2    # "key":Lcom/android/car/pm/VendorServiceController$ConnectionKey;
    :cond_2
    goto :goto_0

    .line 165
    :cond_3
    :goto_1
    return-void
.end method

.method private getOrCreateConnection(Lcom/android/car/pm/VendorServiceController$ConnectionKey;)Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;
    .locals 8
    .param p1, "key"    # Lcom/android/car/pm/VendorServiceController$ConnectionKey;

    .line 221
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;

    .line 222
    .local v0, "connection":Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;
    if-nez v0, :cond_0

    .line 223
    new-instance v7, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;

    iget-object v2, p0, Lcom/android/car/pm/VendorServiceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/car/pm/VendorServiceController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/car/pm/VendorServiceController;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    .line 224
    invoke-static {p1}, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->access$100(Lcom/android/car/pm/VendorServiceController$ConnectionKey;)Lcom/android/car/pm/VendorServiceInfo;

    move-result-object v5

    invoke-static {p1}, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->access$200(Lcom/android/car/pm/VendorServiceController$ConnectionKey;)Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/car/userlib/CarUserManagerHelper;Lcom/android/car/pm/VendorServiceInfo;Landroid/os/UserHandle;)V

    move-object v0, v7

    .line 225
    iget-object v1, p0, Lcom/android/car/pm/VendorServiceController;->mConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.PACKAGE"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 92
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 93
    .local v0, "userId":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 94
    .local v1, "locked":Z
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/car/pm/VendorServiceController;->doUserLockChanged(IZ)V

    .line 95
    goto :goto_1

    .line 87
    .end local v0    # "userId":I
    .end local v1    # "locked":Z
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 88
    .restart local v0    # "userId":I
    invoke-direct {p0, v0}, Lcom/android/car/pm/VendorServiceController;->doSwitchUser(I)V

    .line 89
    nop

    .line 100
    .end local v0    # "userId":I
    :goto_1
    return-void
.end method

.method private loadXmlConfiguration()Z
    .locals 9

    .line 233
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 234
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, "CAR.PACKAGE"

    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 235
    .local v5, "rawServiceInfo":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 236
    goto :goto_1

    .line 238
    :cond_0
    invoke-static {v5}, Lcom/android/car/pm/VendorServiceInfo;->parse(Ljava/lang/String;)Lcom/android/car/pm/VendorServiceInfo;

    move-result-object v6

    .line 239
    .local v6, "service":Lcom/android/car/pm/VendorServiceInfo;
    iget-object v7, p0, Lcom/android/car/pm/VendorServiceController;->mVendorServiceInfos:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registered vendor service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v5    # "rawServiceInfo":Ljava/lang/String;
    .end local v6    # "service":Lcom/android/car/pm/VendorServiceInfo;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/pm/VendorServiceController;->mVendorServiceInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " services to be started/bound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/car/pm/VendorServiceController;->mVendorServiceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private startOrBindService(Lcom/android/car/pm/VendorServiceInfo;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "service"    # Lcom/android/car/pm/VendorServiceInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 204
    invoke-static {p1, p2}, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->of(Lcom/android/car/pm/VendorServiceInfo;Landroid/os/UserHandle;)Lcom/android/car/pm/VendorServiceController$ConnectionKey;

    move-result-object v0

    .line 205
    .local v0, "key":Lcom/android/car/pm/VendorServiceController$ConnectionKey;
    invoke-direct {p0, v0}, Lcom/android/car/pm/VendorServiceController;->getOrCreateConnection(Lcom/android/car/pm/VendorServiceController$ConnectionKey;)Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;

    move-result-object v1

    .line 206
    .local v1, "connection":Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;
    invoke-virtual {v1}, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->startOrBindService()Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start or bind service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAR.PACKAGE"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/android/car/pm/VendorServiceController;->mConnections:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    return-void
.end method

.method private startOrBindServicesForUser(Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 168
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    .line 169
    .local v0, "unlocked":Z
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 170
    .local v1, "systemUser":Z
    iget-object v2, p0, Lcom/android/car/pm/VendorServiceController;->mVendorServiceInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/pm/VendorServiceInfo;

    .line 171
    .local v3, "service":Lcom/android/car/pm/VendorServiceInfo;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v3}, Lcom/android/car/pm/VendorServiceInfo;->isForegroundUserService()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {v3}, Lcom/android/car/pm/VendorServiceInfo;->isSystemUserService()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    .line 173
    .local v6, "userScopeChecked":Z
    :goto_1
    invoke-virtual {v3}, Lcom/android/car/pm/VendorServiceInfo;->shouldStartAsap()Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {v3}, Lcom/android/car/pm/VendorServiceInfo;->shouldStartOnUnlock()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_3

    :cond_4
    :goto_2
    nop

    .line 176
    .local v4, "triggerChecked":Z
    :goto_3
    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    .line 177
    invoke-direct {p0, v3, p1}, Lcom/android/car/pm/VendorServiceController;->startOrBindService(Lcom/android/car/pm/VendorServiceInfo;Landroid/os/UserHandle;)V

    .line 179
    .end local v3    # "service":Lcom/android/car/pm/VendorServiceInfo;
    .end local v4    # "triggerChecked":Z
    .end local v6    # "userScopeChecked":Z
    :cond_5
    goto :goto_0

    .line 180
    :cond_6
    return-void
.end method

.method private startOrBindServicesIfNeeded()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v0

    .line 184
    .local v0, "userId":I
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {p0, v1}, Lcom/android/car/pm/VendorServiceController;->startOrBindServicesForUser(Landroid/os/UserHandle;)V

    .line 185
    if-lez v0, :cond_0

    .line 186
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/pm/VendorServiceController;->startOrBindServicesForUser(Landroid/os/UserHandle;)V

    .line 188
    :cond_0
    return-void
.end method

.method private stopOrUnbindService(Lcom/android/car/pm/VendorServiceInfo;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "service"    # Lcom/android/car/pm/VendorServiceInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 213
    invoke-static {p1, p2}, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->of(Lcom/android/car/pm/VendorServiceInfo;Landroid/os/UserHandle;)Lcom/android/car/pm/VendorServiceController$ConnectionKey;

    move-result-object v0

    .line 214
    .local v0, "key":Lcom/android/car/pm/VendorServiceController$ConnectionKey;
    iget-object v1, p0, Lcom/android/car/pm/VendorServiceController;->mConnections:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;

    .line 215
    .local v1, "connection":Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;
    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v1}, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->stopOrUnbindService()V

    .line 218
    :cond_0
    return-void
.end method


# virtual methods
.method init()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/android/car/pm/VendorServiceController;->loadXmlConfiguration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    const-class v0, Lcom/android/car/user/CarUserService;

    invoke-static {v0}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/user/CarUserService;

    iput-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mCarUserService:Lcom/android/car/user/CarUserService;

    .line 108
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mCarUserService:Lcom/android/car/user/CarUserService;

    invoke-virtual {v0, p0}, Lcom/android/car/user/CarUserService;->addUserCallback(Lcom/android/car/user/CarUserService$UserCallback;)V

    .line 110
    invoke-direct {p0}, Lcom/android/car/pm/VendorServiceController;->startOrBindServicesIfNeeded()V

    .line 111
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 198
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 200
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/car/pm/VendorServiceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 201
    return-void
.end method

.method public onUserLockChanged(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "unlocked"    # Z

    .line 192
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 193
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/car/pm/VendorServiceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 194
    return-void
.end method

.method release()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mCarUserService:Lcom/android/car/user/CarUserService;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p0}, Lcom/android/car/user/CarUserService;->removeUserCallback(Lcom/android/car/user/CarUserService$UserCallback;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/pm/VendorServiceController$ConnectionKey;

    .line 119
    .local v1, "key":Lcom/android/car/pm/VendorServiceController$ConnectionKey;
    invoke-static {v1}, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->access$100(Lcom/android/car/pm/VendorServiceController$ConnectionKey;)Lcom/android/car/pm/VendorServiceInfo;

    move-result-object v2

    invoke-static {v1}, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->access$200(Lcom/android/car/pm/VendorServiceController$ConnectionKey;)Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/car/pm/VendorServiceController;->stopOrUnbindService(Lcom/android/car/pm/VendorServiceInfo;Landroid/os/UserHandle;)V

    .line 120
    .end local v1    # "key":Lcom/android/car/pm/VendorServiceController$ConnectionKey;
    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mVendorServiceInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController;->mConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 123
    return-void
.end method
