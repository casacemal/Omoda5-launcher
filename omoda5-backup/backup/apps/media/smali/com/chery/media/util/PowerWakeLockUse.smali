.class public Lcom/chery/media/util/PowerWakeLockUse;
.super Ljava/lang/Object;
.source "PowerWakeLockUse.java"


# static fields
.field private static instance:Lcom/chery/media/util/PowerWakeLockUse;


# instance fields
.field private context:Landroid/content/Context;

.field private powerWakeLock:Lcom/chery/power/PowerWakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/chery/media/util/PowerWakeLockUse;
    .locals 1

    .line 15
    sget-object v0, Lcom/chery/media/util/PowerWakeLockUse;->instance:Lcom/chery/media/util/PowerWakeLockUse;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/chery/media/util/PowerWakeLockUse;

    invoke-direct {v0}, Lcom/chery/media/util/PowerWakeLockUse;-><init>()V

    sput-object v0, Lcom/chery/media/util/PowerWakeLockUse;->instance:Lcom/chery/media/util/PowerWakeLockUse;

    .line 18
    :cond_0
    sget-object v0, Lcom/chery/media/util/PowerWakeLockUse;->instance:Lcom/chery/media/util/PowerWakeLockUse;

    return-object v0
.end method


# virtual methods
.method public getPowerWakeLock()Lcom/chery/power/PowerWakeLock;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/chery/media/util/PowerWakeLockUse;->powerWakeLock:Lcom/chery/power/PowerWakeLock;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 22
    iput-object p1, p0, Lcom/chery/media/util/PowerWakeLockUse;->context:Landroid/content/Context;

    .line 23
    new-instance p1, Lcom/chery/power/PowerWakeLock;

    iget-object v0, p0, Lcom/chery/media/util/PowerWakeLockUse;->context:Landroid/content/Context;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/chery/power/PowerWakeLock;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/chery/media/util/PowerWakeLockUse;->powerWakeLock:Lcom/chery/power/PowerWakeLock;

    .line 24
    invoke-virtual {p1, v2}, Lcom/chery/power/PowerWakeLock;->init(Lcom/chery/power/PowerWakeLock$BindStatusListener;)V

    return-void
.end method
