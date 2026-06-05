.class Lcom/android/car/pm/CarPackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "CarPackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/pm/CarPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageHandler"
.end annotation


# instance fields
.field private final MSG_INIT:I

.field private final MSG_PARSE_PKG:I

.field private final MSG_RELEASE:I

.field private final MSG_SET_POLICY:I

.field private final MSG_UPDATE_POLICY:I

.field final synthetic this$0:Lcom/android/car/pm/CarPackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/car/pm/CarPackageManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1196
    iput-object p1, p0, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    .line 1197
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1190
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->MSG_INIT:I

    .line 1191
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->MSG_PARSE_PKG:I

    .line 1192
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->MSG_SET_POLICY:I

    .line 1193
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->MSG_UPDATE_POLICY:I

    .line 1194
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->MSG_RELEASE:I

    .line 1198
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/pm/CarPackageManagerService;Landroid/os/Looper;Lcom/android/car/pm/CarPackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/pm/CarPackageManagerService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/car/pm/CarPackageManagerService$1;

    .line 1189
    invoke-direct {p0, p1, p2}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;-><init>(Lcom/android/car/pm/CarPackageManagerService;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    .line 1189
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->requestInit()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    .line 1189
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->requestRelease()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$PackageHandler;
    .param p1, "x1"    # J

    .line 1189
    invoke-direct {p0, p1, p2}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->requestParsingInstalledPkgs(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$PackageHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/car/content/pm/CarAppBlockingPolicy;
    .param p3, "x3"    # I

    .line 1189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->requestUpdatingPolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    .line 1189
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->requestPolicySetting()V

    return-void
.end method

.method private requestInit()V
    .locals 1

    .line 1201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1202
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1203
    return-void
.end method

.method private requestParsingInstalledPkgs(J)V
    .locals 3
    .param p1, "delayMs"    # J

    .line 1227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1229
    invoke-virtual {p0, v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1230
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 1231
    invoke-virtual {p0, v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1233
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1235
    :goto_0
    return-void
.end method

.method private requestPolicySetting()V
    .locals 1

    .line 1214
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1215
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1216
    return-void
.end method

.method private requestRelease()V
    .locals 1

    .line 1206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1207
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1208
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1209
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1210
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1211
    return-void
.end method

.method private requestUpdatingPolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policy"    # Landroid/car/content/pm/CarAppBlockingPolicy;
    .param p3, "flags"    # I

    .line 1220
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1221
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;>;"
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p3, v2, v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1222
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1223
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1239
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService;->access$2500(Lcom/android/car/pm/CarPackageManagerService;)V

    goto :goto_0

    .line 1250
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 1252
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;>;"
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/car/content/pm/CarAppBlockingPolicy;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/car/pm/CarPackageManagerService;->access$2400(Lcom/android/car/pm/CarPackageManagerService;Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V

    .line 1253
    goto :goto_0

    .line 1247
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;>;"
    :cond_2
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService;->access$2300(Lcom/android/car/pm/CarPackageManagerService;)V

    .line 1248
    goto :goto_0

    .line 1244
    :cond_3
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService;->access$2200(Lcom/android/car/pm/CarPackageManagerService;)V

    .line 1245
    goto :goto_0

    .line 1241
    :cond_4
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService;->access$2100(Lcom/android/car/pm/CarPackageManagerService;)V

    .line 1242
    nop

    .line 1258
    :goto_0
    return-void
.end method
