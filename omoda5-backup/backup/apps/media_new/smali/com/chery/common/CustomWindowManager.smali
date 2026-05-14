.class public Lcom/chery/common/CustomWindowManager;
.super Ljava/lang/Object;
.source "CustomWindowManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/chery/common/CustomWindowManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-class v0, Lcom/chery/common/CustomWindowManager;

    const-string v1, "DEF"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/common/CustomWindowManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/chery/common/CustomWindowManager;
    .locals 2

    .line 25
    sget-object v0, Lcom/chery/common/CustomWindowManager;->sInstance:Lcom/chery/common/CustomWindowManager;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/chery/common/CustomWindowManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/chery/common/CustomWindowManager;->sInstance:Lcom/chery/common/CustomWindowManager;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/chery/common/CustomWindowManager;

    invoke-direct {v1}, Lcom/chery/common/CustomWindowManager;-><init>()V

    sput-object v1, Lcom/chery/common/CustomWindowManager;->sInstance:Lcom/chery/common/CustomWindowManager;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/common/CustomWindowManager;->sInstance:Lcom/chery/common/CustomWindowManager;

    return-object v0
.end method


# virtual methods
.method public hideStatusBarAndNavigationBar(Landroid/view/View;)V
    .locals 0

    const/16 p0, 0x1706

    .line 48
    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
