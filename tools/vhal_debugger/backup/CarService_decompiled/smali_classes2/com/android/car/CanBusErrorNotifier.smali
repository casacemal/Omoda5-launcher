.class final Lcom/android/car/CanBusErrorNotifier;
.super Ljava/lang/Object;
.source "CanBusErrorNotifier.java"


# static fields
.field private static final IS_RELEASE_BUILD:Z

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CAR.CAN_BUS.NOTIFIER"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mReportedObjects:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/car/CanBusErrorNotifier;->IS_RELEASE_BUILD:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/CanBusErrorNotifier;->mReportedObjects:Ljava/util/Set;

    .line 47
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/car/CanBusErrorNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 49
    iput-object p1, p0, Lcom/android/car/CanBusErrorNotifier;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private hideNotification()V
    .locals 3

    .line 100
    sget-boolean v0, Lcom/android/car/CanBusErrorNotifier;->IS_RELEASE_BUILD:Z

    if-eqz v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/car/CanBusErrorNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    const-string v2, "CAR.CAN_BUS.NOTIFIER"

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method private setCanBusFailure(ZLjava/lang/Object;)V
    .locals 3
    .param p1, "failed"    # Z
    .param p2, "sender"    # Ljava/lang/Object;

    .line 62
    monitor-enter p0

    .line 63
    if-eqz p1, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CanBusErrorNotifier;->mReportedObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/car/CanBusErrorNotifier;->mReportedObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_1

    .line 67
    monitor-exit p0

    return-void

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/car/CanBusErrorNotifier;->mReportedObjects:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move v0, v1

    .line 71
    .local v0, "shouldShowNotification":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    const/4 v1, 0x4

    const-string v2, "CAR.CAN_BUS.NOTIFIER"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing CAN bus failure state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.CAN_BUS.NOTIFIER"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_3
    if-eqz v0, :cond_4

    .line 78
    invoke-direct {p0}, Lcom/android/car/CanBusErrorNotifier;->showNotification()V

    goto :goto_2

    .line 80
    :cond_4
    invoke-direct {p0}, Lcom/android/car/CanBusErrorNotifier;->hideNotification()V

    .line 82
    :goto_2
    return-void

    .line 71
    .end local v0    # "shouldShowNotification":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private showNotification()V
    .locals 4

    .line 85
    sget-boolean v0, Lcom/android/car/CanBusErrorNotifier;->IS_RELEASE_BUILD:Z

    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/car/CanBusErrorNotifier;->mContext:Landroid/content/Context;

    const-string v2, "miscellaneous"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/car/CanBusErrorNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0f009c

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/CanBusErrorNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0f009d

    .line 92
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f070061

    .line 93
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 96
    .local v0, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/car/CanBusErrorNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "CAR.CAN_BUS.NOTIFIER"

    invoke-virtual {v2, v3, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 97
    return-void
.end method


# virtual methods
.method public removeFailureReport(Ljava/lang/Object;)V
    .locals 1
    .param p1, "sender"    # Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/car/CanBusErrorNotifier;->setCanBusFailure(ZLjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public reportFailure(Ljava/lang/Object;)V
    .locals 1
    .param p1, "sender"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/car/CanBusErrorNotifier;->setCanBusFailure(ZLjava/lang/Object;)V

    .line 58
    return-void
.end method
