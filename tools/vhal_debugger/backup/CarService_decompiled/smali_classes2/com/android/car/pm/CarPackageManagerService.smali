.class public Lcom/android/car/pm/CarPackageManagerService;
.super Landroid/car/content/pm/ICarPackageManager$Stub;
.source "CarPackageManagerService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;,
        Lcom/android/car/pm/CarPackageManagerService$UserSwitchedEventReceiver;,
        Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;,
        Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;,
        Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;,
        Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;,
        Lcom/android/car/pm/CarPackageManagerService$PackageHandler;
    }
.end annotation


# static fields
.field public static final BLOCKING_INTENT_EXTRA_BLOCKED_ACTIVITY_NAME:Ljava/lang/String; = "blocked_activity"

.field public static final BLOCKING_INTENT_EXTRA_BLOCKED_TASK_ID:Ljava/lang/String; = "blocked_task_id"

.field public static final BLOCKING_INTENT_EXTRA_DISPLAY_ID:Ljava/lang/String; = "display_id"

.field public static final BLOCKING_INTENT_EXTRA_IS_ROOT_ACTIVITY_DO:Ljava/lang/String; = "is_root_activity_do"

.field public static final BLOCKING_INTENT_EXTRA_ROOT_ACTIVITY_NAME:Ljava/lang/String; = "root_activity_name"

.field private static final DBG_POLICY_CHECK:Z = false

.field private static final DBG_POLICY_ENFORCEMENT:Z = false

.field private static final DBG_POLICY_SET:Z = false

.field private static final LOG_SIZE:I = 0x14

.field private static final PACKAGE_ACTIVITY_DELIMITER:Ljava/lang/String; = "/"

.field private static final PACKAGE_DELIMITER:Ljava/lang/String; = ","


# instance fields
.field private final mActivityBlockingActivity:Landroid/content/ComponentName;

.field private final mActivityLaunchListener:Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mActivityWhitelistMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowedAppInstallSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlockedActivityLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarUxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

.field private final mClientPolicies:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguredBlacklist:Ljava/lang/String;

.field private mConfiguredSystemWhitelist:Ljava/lang/String;

.field private mConfiguredWhitelist:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEnableActivityBlocking:Z

.field private final mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHasParsedPackages:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageManagerActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageParsingEventReceiver:Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;

.field private mProxies:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/car/pm/AppBlockingPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

.field private final mUserSwitchedEventReceiver:Lcom/android/car/pm/CarPackageManagerService$UserSwitchedEventReceiver;

.field private final mUxRestrictionsListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVendorServiceController:Lcom/android/car/pm/VendorServiceController;

.field private final mWaitingPolicies:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/car/content/pm/CarAppBlockingPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarUxRestrictionsManagerService;Lcom/android/car/SystemActivityMonitoringService;Landroid/car/userlib/CarUserManagerHelper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uxRestrictionsService"    # Lcom/android/car/CarUxRestrictionsManagerService;
    .param p3, "systemActivityMonitoringService"    # Lcom/android/car/SystemActivityMonitoringService;
    .param p4, "carUserManagerHelper"    # Landroid/car/userlib/CarUserManagerHelper;

    .line 190
    invoke-direct {p0}, Landroid/car/content/pm/ICarPackageManager$Stub;-><init>()V

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mBlockedActivityLogs:Ljava/util/LinkedList;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityWhitelistMap:Ljava/util/HashMap;

    .line 122
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mWaitingPolicies:Ljava/util/LinkedList;

    .line 129
    new-instance v0, Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;-><init>(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/pm/CarPackageManagerService$1;)V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityLaunchListener:Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListeners:Landroid/util/SparseArray;

    .line 138
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManagerActions:Ljava/util/Set;

    .line 144
    new-instance v0, Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;-><init>(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/pm/CarPackageManagerService$1;)V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageParsingEventReceiver:Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;

    .line 146
    new-instance v0, Lcom/android/car/pm/CarPackageManagerService$UserSwitchedEventReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/car/pm/CarPackageManagerService$UserSwitchedEventReceiver;-><init>(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/pm/CarPackageManagerService$1;)V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mUserSwitchedEventReceiver:Lcom/android/car/pm/CarPackageManagerService$UserSwitchedEventReceiver;

    .line 191
    iput-object p1, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    .line 192
    iput-object p2, p0, Lcom/android/car/pm/CarPackageManagerService;->mCarUxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    .line 193
    iput-object p3, p0, Lcom/android/car/pm/CarPackageManagerService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    .line 194
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 195
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 196
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 197
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CAR.PACKAGE"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 198
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 199
    new-instance v0, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;-><init>(Lcom/android/car/pm/CarPackageManagerService;Landroid/os/Looper;Lcom/android/car/pm/CarPackageManagerService$1;)V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 201
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f040009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mEnableActivityBlocking:Z

    .line 202
    const v1, 0x7f0f0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "blockingActivity":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityBlockingActivity:Landroid/content/ComponentName;

    .line 204
    nop

    .line 205
    const/high16 v2, 0x7f020000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mAllowedAppInstallSources:Ljava/util/List;

    .line 206
    new-instance v2, Lcom/android/car/pm/VendorServiceController;

    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    .line 207
    invoke-virtual {v4}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4, p4}, Lcom/android/car/pm/VendorServiceController;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/car/userlib/CarUserManagerHelper;)V

    iput-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mVendorServiceController:Lcom/android/car/pm/VendorServiceController;

    .line 208
    return-void
.end method

.method static synthetic access$2100(Lcom/android/car/pm/CarPackageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 84
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->doHandleInit()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/car/pm/CarPackageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 84
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->doParseInstalledPackages()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/car/pm/CarPackageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 84
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->doSetPolicy()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/car/pm/CarPackageManagerService;Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/car/content/pm/CarAppBlockingPolicy;
    .param p3, "x3"    # I

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/pm/CarPackageManagerService;->doUpdatePolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/car/pm/CarPackageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 84
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->doHandleRelease()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;
    .param p1, "x1"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService;->blockTopActivityIfNecessary(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/car/pm/CarPackageManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 84
    iget-boolean v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHasParsedPackages:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/car/pm/CarPackageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 84
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->blockTopActivitiesIfNecessary()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/car/pm/CarPackageManagerService;)Lcom/android/car/pm/CarPackageManagerService$PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 84
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/car/pm/CarPackageManagerService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService;

    .line 84
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManagerActions:Ljava/util/Set;

    return-object v0
.end method

.method private addLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "log"    # Ljava/lang/String;

    .line 1175
    :goto_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mBlockedActivityLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mBlockedActivityLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 1178
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1179
    const-string v1, "CAR.PACKAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1180
    const-string v3, "MM-dd HH:mm:ss"

    invoke-static {v3, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1181
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1183
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mBlockedActivityLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1184
    return-void
.end method

.method private assertPackageAndClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 319
    if-eqz p1, :cond_1

    .line 322
    if-eqz p2, :cond_0

    .line 325
    return-void

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class name null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blockTopActivitiesIfNecessary()V
    .locals 5

    .line 1018
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    invoke-virtual {v0}, Lcom/android/car/SystemActivityMonitoringService;->getTopTasks()Ljava/util/List;

    move-result-object v0

    .line 1019
    .local v0, "topTasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 1020
    .local v2, "topTask":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    if-nez v2, :cond_0

    .line 1021
    const-string v3, "CAR.PACKAGE"

    const-string v4, "Top tasks contains null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    goto :goto_0

    .line 1024
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/car/pm/CarPackageManagerService;->blockTopActivityIfNecessary(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V

    .line 1025
    .end local v2    # "topTask":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    goto :goto_0

    .line 1026
    :cond_1
    return-void
.end method

.method private blockTopActivityIfNecessary(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V
    .locals 1
    .param p1, "topTask"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 1029
    iget v0, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->displayId:I

    invoke-direct {p0, v0}, Lcom/android/car/pm/CarPackageManagerService;->isUxRestrictedOnDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService;->doBlockTopActivityIfNotAllowed(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V

    .line 1032
    :cond_0
    return-void
.end method

.method private static createBlockingActivityIntent(Landroid/content/ComponentName;ILjava/lang/String;ILjava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "blockingActivity"    # Landroid/content/ComponentName;
    .param p1, "displayId"    # I
    .param p2, "blockedActivity"    # Ljava/lang/String;
    .param p3, "blockedTaskId"    # I
    .param p4, "taskRootActivity"    # Ljava/lang/String;
    .param p5, "isRootDo"    # Z

    .line 1115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1116
    .local v0, "newActivityIntent":Landroid/content/Intent;
    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1117
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1118
    const-string v1, "display_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1120
    const-string v1, "blocked_activity"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    const-string v1, "blocked_task_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1124
    const-string v1, "root_activity_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1126
    const-string v1, "is_root_activity_do"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1129
    return-object v0
.end method

.method private doBlockTopActivityIfNotAllowed(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V
    .locals 10
    .param p1, "topTask"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 1035
    iget-object v0, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 1036
    return-void

    .line 1040
    :cond_0
    iget-boolean v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHasParsedPackages:Z

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 1041
    const-string v0, "CAR.PACKAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Packages not parsed, so ignoring block for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.PACKAGE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_1
    return-void

    .line 1047
    :cond_2
    iget-object v0, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    .line 1048
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    .line 1049
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1047
    invoke-virtual {p0, v0, v2}, Lcom/android/car/pm/CarPackageManagerService;->isActivityDistractionOptimized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1053
    .local v0, "allowed":Z
    if-eqz v0, :cond_3

    .line 1054
    return-void

    .line 1056
    :cond_3
    monitor-enter p0

    .line 1057
    :try_start_0
    iget-boolean v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mEnableActivityBlocking:Z

    if-nez v2, :cond_4

    .line 1058
    const-string v1, "CAR.PACKAGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not allowed, blocking disabled. Number of tasks in stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    monitor-exit p0

    return-void

    .line 1063
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    const/4 v2, 0x0

    .line 1072
    .local v2, "taskRootActivity":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v4, v4

    if-ge v3, v4, :cond_6

    .line 1074
    iget-object v4, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v4, v4, v3

    iget v5, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->taskId:I

    if-ne v4, v5, :cond_5

    .line 1077
    iget-object v4, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v2, v4, v3

    .line 1078
    goto :goto_1

    .line 1072
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1082
    .end local v3    # "i":I
    :cond_6
    :goto_1
    const/4 v3, 0x0

    .line 1083
    .local v3, "isRootDO":Z
    if-eqz v2, :cond_7

    .line 1084
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1085
    .local v4, "componentName":Landroid/content/ComponentName;
    nop

    .line 1086
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 1085
    invoke-virtual {p0, v5, v6}, Lcom/android/car/pm/CarPackageManagerService;->isActivityDistractionOptimized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1089
    .end local v4    # "componentName":Landroid/content/ComponentName;
    :cond_7
    iget-object v4, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityBlockingActivity:Landroid/content/ComponentName;

    iget v5, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->displayId:I

    iget-object v6, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    .line 1091
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    iget v7, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->taskId:I

    .line 1089
    move-object v8, v2

    move v9, v3

    invoke-static/range {v4 .. v9}, Lcom/android/car/pm/CarPackageManagerService;->createBlockingActivityIntent(Landroid/content/ComponentName;ILjava/lang/String;ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    .line 1095
    .local v4, "newActivityIntent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting blocking activity with intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1096
    .local v5, "log":Ljava/lang/String;
    const-string v6, "CAR.PACKAGE"

    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1097
    const-string v1, "CAR.PACKAGE"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_8
    invoke-direct {p0, v5}, Lcom/android/car/pm/CarPackageManagerService;->addLog(Ljava/lang/String;)V

    .line 1100
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    invoke-virtual {v1, p1, v4}, Lcom/android/car/SystemActivityMonitoringService;->blockActivity(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V

    .line 1101
    return-void

    .line 1063
    .end local v2    # "taskRootActivity":Ljava/lang/String;
    .end local v3    # "isRootDO":Z
    .end local v4    # "newActivityIntent":Landroid/content/Intent;
    .end local v5    # "log":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private doHandleInit()V
    .locals 9

    .line 411
    invoke-virtual {p0}, Lcom/android/car/pm/CarPackageManagerService;->startAppBlockingPolicies()V

    .line 412
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 413
    .local v0, "intent":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mUserSwitchedEventReceiver:Lcom/android/car/pm/CarPackageManagerService$UserSwitchedEventReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 415
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 416
    .local v1, "pkgParseIntent":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManagerActions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 417
    .local v3, "action":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    .end local v3    # "action":Ljava/lang/String;
    goto :goto_0

    .line 419
    :cond_0
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageParsingEventReceiver:Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 423
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->getPhysicalDisplays()Ljava/util/List;

    move-result-object v2

    .line 426
    .local v2, "physicalDisplays":Ljava/util/List;, "Ljava/util/List<Landroid/view/Display;>;"
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 427
    .local v3, "defaultDisplay":Landroid/view/Display;
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 428
    const/4 v4, 0x4

    const-string v5, "CAR.PACKAGE"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 429
    const-string v4, "Adding default display to physical displays."

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display;

    .line 434
    .local v5, "physicalDisplay":Landroid/view/Display;
    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    .line 435
    .local v6, "displayId":I
    new-instance v7, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    iget-object v8, p0, Lcom/android/car/pm/CarPackageManagerService;->mCarUxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-direct {v7, p0, v8}, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;-><init>(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/CarUxRestrictionsManagerService;)V

    .line 436
    .local v7, "listener":Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;
    iget-object v8, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListeners:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    iget-object v8, p0, Lcom/android/car/pm/CarPackageManagerService;->mCarUxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-virtual {v8, v7, v6}, Lcom/android/car/CarUxRestrictionsManagerService;->registerUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;I)V

    .line 438
    .end local v5    # "physicalDisplay":Landroid/view/Display;
    .end local v6    # "displayId":I
    .end local v7    # "listener":Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;
    goto :goto_1

    .line 439
    :cond_3
    iget-object v4, p0, Lcom/android/car/pm/CarPackageManagerService;->mVendorServiceController:Lcom/android/car/pm/VendorServiceController;

    invoke-virtual {v4}, Lcom/android/car/pm/VendorServiceController;->init()V

    .line 440
    return-void
.end method

.method private doHandlePolicyConnection(Lcom/android/car/pm/AppBlockingPolicyProxy;Landroid/car/content/pm/CarAppBlockingPolicy;)V
    .locals 3
    .param p1, "proxy"    # Lcom/android/car/pm/AppBlockingPolicyProxy;
    .param p2, "policy"    # Landroid/car/content/pm/CarAppBlockingPolicy;

    .line 896
    const/4 v0, 0x0

    .line 897
    .local v0, "shouldSetPolicy":Z
    monitor-enter p0

    .line 898
    :try_start_0
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 899
    invoke-virtual {p1}, Lcom/android/car/pm/AppBlockingPolicyProxy;->disconnect()V

    .line 900
    monitor-exit p0

    return-void

    .line 902
    :cond_0
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 903
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 904
    const/4 v0, 0x1

    .line 905
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    .line 907
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 909
    if-eqz p2, :cond_3

    .line 914
    :try_start_1
    invoke-virtual {p1}, Lcom/android/car/pm/AppBlockingPolicyProxy;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2, v2}, Lcom/android/car/pm/CarPackageManagerService;->doSetAppBlockingPolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 917
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Lcom/android/car/pm/AppBlockingPolicyProxy;->disconnect()V

    .line 918
    if-eqz v0, :cond_2

    .line 919
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$500(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V

    :cond_2
    throw v1

    .line 917
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/car/pm/AppBlockingPolicyProxy;->disconnect()V

    .line 918
    if-eqz v0, :cond_4

    .line 919
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    invoke-static {v1}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$500(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V

    .line 922
    :cond_4
    return-void

    .line 907
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private declared-synchronized doHandleRelease()V
    .locals 1

    monitor-enter p0

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mVendorServiceController:Lcom/android/car/pm/VendorServiceController;

    invoke-virtual {v0}, Lcom/android/car/pm/VendorServiceController;->release()V

    .line 457
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    .line 455
    .end local p0    # "this":Lcom/android/car/pm/CarPackageManagerService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private doParseInstalledPackages()V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 444
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/car/pm/CarPackageManagerService;->generateActivityWhitelistMap(I)V

    .line 445
    monitor-enter p0

    .line 446
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mHasParsedPackages:Z

    .line 447
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityLaunchListener:Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;

    invoke-virtual {v1, v2}, Lcom/android/car/SystemActivityMonitoringService;->registerActivityLaunchListener(Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;)V

    .line 452
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->blockTopActivitiesIfNecessary()V

    .line 453
    return-void

    .line 447
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private doSetAppBlockingPolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;IZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policy"    # Landroid/car/content/pm/CarAppBlockingPolicy;
    .param p3, "flags"    # I
    .param p4, "setNow"    # Z

    .line 229
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CONTROL_APP_BLOCKING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/car/CarServiceUtils;->assertPackageName(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    if-eqz p2, :cond_3

    .line 238
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set both FLAG_SET_POLICY_ADD and FLAG_SET_POLICY_REMOVE flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    invoke-static {v0, p1, p2, p3}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$400(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V

    .line 244
    if-eqz p4, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$500(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V

    .line 246
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    .line 247
    monitor-enter p2

    .line 249
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    goto :goto_1

    .line 252
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 250
    :catch_0
    move-exception v0

    .line 252
    :goto_1
    :try_start_1
    monitor-exit p2

    goto :goto_3

    :goto_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 255
    :cond_2
    :goto_3
    return-void

    .line 236
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "policy cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "requires permission android.car.permission.CONTROL_APP_BLOCKING"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doSetPolicy()V
    .locals 1

    .line 471
    monitor-enter p0

    .line 472
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->wakeupClientsWaitingForPolicySettingLocked()V

    .line 473
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->blockTopActivitiesIfNecessary()V

    .line 475
    return-void

    .line 473
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doUpdatePolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policy"    # Landroid/car/content/pm/CarAppBlockingPolicy;
    .param p3, "flags"    # I

    .line 482
    iget-object v0, p2, Landroid/car/content/pm/CarAppBlockingPolicy;->blacklists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    invoke-direct {p0, v0}, Lcom/android/car/pm/CarPackageManagerService;->verifyList([Landroid/car/content/pm/AppBlockingPackageInfo;)[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    move-result-object v0

    .line 483
    .local v0, "blacklistWrapper":[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    iget-object v1, p2, Landroid/car/content/pm/CarAppBlockingPolicy;->whitelists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    invoke-direct {p0, v1}, Lcom/android/car/pm/CarPackageManagerService;->verifyList([Landroid/car/content/pm/AppBlockingPackageInfo;)[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    move-result-object v1

    .line 484
    .local v1, "whitelistWrapper":[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    .line 486
    .local v2, "clientPolicy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    if-nez v2, :cond_0

    .line 487
    new-instance v3, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;-><init>(Lcom/android/car/pm/CarPackageManagerService$1;)V

    move-object v2, v3

    .line 488
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_0
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_1

    .line 491
    invoke-static {v2, v0}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$1300(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    .line 492
    invoke-static {v2, v1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$1400(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    goto :goto_0

    .line 493
    :cond_1
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_2

    .line 494
    invoke-static {v2, v0}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$1500(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    .line 495
    invoke-static {v2, v1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$1600(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    goto :goto_0

    .line 497
    :cond_2
    invoke-static {v2, v0}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$1700(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    .line 498
    invoke-static {v2, v1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$1800(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    .line 500
    :goto_0
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_3

    .line 501
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mWaitingPolicies:Ljava/util/LinkedList;

    invoke-virtual {v3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 506
    .end local v2    # "clientPolicy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->blockTopActivitiesIfNecessary()V

    .line 508
    return-void

    .line 506
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private dumpPoliciesLocked(Z)Ljava/lang/String;
    .locals 8
    .param p1, "dumpAll"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 947
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    if-eqz p1, :cond_0

    .line 948
    const-string v2, "**System whitelist**\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityWhitelistMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 950
    .local v3, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    .end local v3    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    goto :goto_0

    .line 953
    :cond_0
    const-string v2, "**Client Policies**\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 955
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    const-string v4, "  whitelists:\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    invoke-static {v4}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$900(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 958
    .local v5, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .end local v5    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    goto :goto_2

    .line 960
    :cond_1
    const-string v4, "  blacklists:\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    invoke-static {v4}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$600(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 962
    .restart local v5    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .end local v5    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    goto :goto_3

    .line 964
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;>;"
    :cond_2
    goto/16 :goto_1

    .line 965
    :cond_3
    const-string v2, "**Unprocessed policy services**\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    if-eqz v2, :cond_4

    .line 967
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/pm/AppBlockingPolicyProxy;

    .line 968
    .local v3, "proxy":Lcom/android/car/pm/AppBlockingPolicyProxy;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/car/pm/AppBlockingPolicyProxy;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    .end local v3    # "proxy":Lcom/android/car/pm/AppBlockingPolicyProxy;
    goto :goto_4

    .line 971
    :cond_4
    const-string v2, "**Whitelist string in resource**\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredWhitelist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const-string v2, "**System whitelist string in resource**\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredSystemWhitelist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string v2, "**Blacklist string in resource**\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredBlacklist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateActivityWhitelistAsUser(ILjava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 20
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;",
            ">;"
        }
    .end annotation

    .line 672
    .local p2, "configWhitelist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local p3, "configBlacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 674
    .local v4, "activityWhitelist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;>;"
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const v5, 0xc0041

    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v5

    .line 679
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 680
    .local v7, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    .line 681
    goto :goto_0

    .line 684
    :cond_0
    const/4 v0, 0x0

    .line 685
    .local v0, "flags":I
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 687
    .local v8, "activities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 688
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 689
    :cond_1
    const/4 v0, 0x1

    .line 694
    :cond_2
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v10, p2

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 695
    .local v9, "configActivitiesForPackage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v9, :cond_5

    .line 699
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v11

    if-nez v11, :cond_4

    .line 701
    or-int/lit8 v0, v0, 0x2

    .line 703
    invoke-direct {v1, v7}, Lcom/android/car/pm/CarPackageManagerService;->getActivitiesInPackage(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v11

    .line 704
    .local v11, "activitiesForPackage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_3

    .line 705
    invoke-interface {v8, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 711
    .end local v11    # "activitiesForPackage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move v11, v0

    goto :goto_1

    .line 718
    :cond_4
    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 726
    :cond_5
    move v11, v0

    .end local v0    # "flags":I
    .local v11, "flags":I
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/car/pm/CarPackageManagerService;->isDebugBuild()Z

    move-result v0

    const-string v12, "CAR.PACKAGE"

    if-nez v0, :cond_9

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 727
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 728
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v0

    if-nez v0, :cond_9

    .line 730
    :try_start_0
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mAllowedAppInstallSources:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 731
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "installerName":Ljava/lang/String;
    if-eqz v0, :cond_6

    iget-object v13, v1, Lcom/android/car/pm/CarPackageManagerService;->mAllowedAppInstallSources:Ljava/util/List;

    .line 734
    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 735
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " not installed from permitted sources "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    if-nez v0, :cond_7

    const-string v14, "NULL"

    goto :goto_2

    :cond_7
    move-object v14, v0

    :goto_2
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 735
    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    goto/16 :goto_0

    .line 744
    .end local v0    # "installerName":Ljava/lang/String;
    :cond_8
    goto :goto_3

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " not installed!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    goto/16 :goto_0

    .line 748
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_9
    :goto_3
    :try_start_1
    iget-object v0, v1, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 749
    invoke-static {v0, v13, v2}, Lcom/android/car/pm/CarAppMetadataReader;->findDistractionOptimizedActivitiesAsUser(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "doActivities":[Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 760
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 765
    .end local v0    # "doActivities":[Ljava/lang/String;
    :cond_a
    nop

    .line 768
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 769
    goto/16 :goto_0

    .line 774
    :cond_b
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 775
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 776
    .local v0, "configBlacklistActivities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 778
    goto/16 :goto_0

    .line 780
    :cond_c
    invoke-interface {v8, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 784
    .end local v0    # "configBlacklistActivities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 785
    .local v0, "signatures":[Landroid/content/pm/Signature;
    new-instance v19, Landroid/car/content/pm/AppBlockingPackageInfo;

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 787
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v18, v12

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v12, v19

    move/from16 v16, v11

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v18}, Landroid/car/content/pm/AppBlockingPackageInfo;-><init>(Ljava/lang/String;III[Landroid/content/pm/Signature;[Ljava/lang/String;)V

    .line 788
    .local v12, "appBlockingInfo":Landroid/car/content/pm/AppBlockingPackageInfo;
    new-instance v13, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v13, v12, v14, v15}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;-><init>(Landroid/car/content/pm/AppBlockingPackageInfo;ZLcom/android/car/pm/CarPackageManagerService$1;)V

    .line 790
    .local v13, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    iget-object v14, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    .end local v0    # "signatures":[Landroid/content/pm/Signature;
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v8    # "activities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "configActivitiesForPackage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "flags":I
    .end local v12    # "appBlockingInfo":Landroid/car/content/pm/AppBlockingPackageInfo;
    .end local v13    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    goto/16 :goto_0

    .line 762
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    .restart local v8    # "activities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "configActivitiesForPackage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "flags":I
    :catch_1
    move-exception v0

    .line 763
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error reading metadata: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    goto/16 :goto_0

    .line 792
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v8    # "activities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "configActivitiesForPackage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "flags":I
    :cond_e
    move-object/from16 v10, p2

    return-object v4
.end method

.method private generateActivityWhitelistMap(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 593
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->generateConfigWhitelist()Ljava/util/Map;

    move-result-object v0

    .line 594
    .local v0, "configWhitelist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->generateConfigBlacklist()Ljava/util/Map;

    move-result-object v1

    .line 596
    .local v1, "configBlacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    nop

    .line 597
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/car/pm/CarPackageManagerService;->generateActivityWhitelistAsUser(ILjava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 600
    .local v2, "activityWhitelist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;>;"
    if-eqz p1, :cond_1

    .line 601
    nop

    .line 602
    invoke-direct {p0, p1, v0, v1}, Lcom/android/car/pm/CarPackageManagerService;->generateActivityWhitelistAsUser(ILjava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 603
    .local v3, "userWhitelistedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 604
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 605
    goto :goto_0

    .line 607
    :cond_0
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 610
    .end local v3    # "userWhitelistedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;>;"
    :cond_1
    monitor-enter p0

    .line 611
    :try_start_0
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityWhitelistMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 612
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityWhitelistMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 613
    monitor-exit p0

    .line 614
    return-void

    .line 613
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private generateConfigBlacklist()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 646
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 647
    .local v0, "configBlacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredBlacklist:Ljava/lang/String;

    .line 648
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredBlacklist:Ljava/lang/String;

    .line 653
    invoke-virtual {p0, v1, v0}, Lcom/android/car/pm/CarPackageManagerService;->parseConfigList(Ljava/lang/String;Ljava/util/Map;)V

    .line 655
    return-object v0
.end method

.method private generateConfigWhitelist()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 618
    .local v0, "configWhitelist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    const v2, 0x7f0f002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredWhitelist:Ljava/lang/String;

    .line 619
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredWhitelist:Ljava/lang/String;

    .line 624
    invoke-virtual {p0, v1, v0}, Lcom/android/car/pm/CarPackageManagerService;->parseConfigList(Ljava/lang/String;Ljava/util/Map;)V

    .line 626
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0207

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredSystemWhitelist:Ljava/lang/String;

    .line 627
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mConfiguredSystemWhitelist:Ljava/lang/String;

    .line 632
    invoke-virtual {p0, v1, v0}, Lcom/android/car/pm/CarPackageManagerService;->parseConfigList(Ljava/lang/String;Ljava/util/Map;)V

    .line 636
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 637
    .local v1, "defaultActivity":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityBlockingActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 638
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityBlockingActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :cond_0
    return-object v0
.end method

.method private getActivitiesInPackage(Landroid/content/pm/PackageInfo;)Ljava/util/List;
    .locals 6
    .param p1, "info"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 839
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 842
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v0, "activityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 844
    .local v4, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    .end local v4    # "aInfo":Landroid/content/pm/ActivityInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 846
    :cond_1
    return-object v0

    .line 840
    .end local v0    # "activityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPhysicalDisplays()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation

    .line 987
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 988
    .local v0, "displays":Ljava/util/List;, "Ljava/util/List<Landroid/view/Display;>;"
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 989
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    instance-of v5, v5, Landroid/view/DisplayAddress$Physical;

    if-eqz v5, :cond_0

    .line 990
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    .end local v4    # "display":Landroid/view/Display;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 993
    :cond_1
    return-object v0
.end method

.method private isActivityInMapAndMatching(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 362
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 363
    .local v0, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$700(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$800(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/car/content/pm/AppBlockingPackageInfo;->isActivityCovered(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 367
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private isActivityInWhitelistsLocked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    .line 353
    .local v1, "policy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    invoke-static {v1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$900(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v2, p1, p2}, Lcom/android/car/pm/CarPackageManagerService;->isActivityInMapAndMatching(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    const/4 v0, 0x1

    return v0

    .line 356
    .end local v1    # "policy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    :cond_0
    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityWhitelistMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/car/pm/CarPackageManagerService;->isActivityInMapAndMatching(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugBuild()Z
    .locals 1

    .line 796
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isUxRestrictedOnDisplay(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 1003
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListeners:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    .line 1005
    .local v0, "listenerForTopTaskDisplay":Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;
    if-nez v0, :cond_1

    .line 1007
    const-string v1, "CAR.PACKAGE"

    const-string v2, "Missing listener for default display."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v1, 0x1

    return v1

    .line 1011
    .end local v0    # "listenerForTopTaskDisplay":Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;
    :cond_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    .line 1014
    .restart local v0    # "listenerForTopTaskDisplay":Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;
    :cond_1
    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->access$2000(Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;)Z

    move-result v1

    return v1
.end method

.method private searchFromBlacklistsLocked(Ljava/lang/String;)Landroid/car/content/pm/AppBlockingPackageInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    .line 330
    .local v1, "policy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    invoke-static {v1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$600(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 331
    .local v2, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$700(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$800(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v0

    return-object v0

    .line 334
    .end local v1    # "policy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .end local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    :cond_0
    goto :goto_0

    .line 335
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private searchFromWhitelistsLocked(Ljava/lang/String;)Landroid/car/content/pm/AppBlockingPackageInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    .line 341
    .local v1, "policy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    invoke-static {v1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->access$900(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 342
    .local v2, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$700(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$800(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v0

    return-object v0

    .line 345
    .end local v1    # "policy":Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .end local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    :cond_0
    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityWhitelistMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 347
    .local v0, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$800(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private verifyList([Landroid/car/content/pm/AppBlockingPackageInfo;)[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    .locals 6
    .param p1, "list"    # [Landroid/car/content/pm/AppBlockingPackageInfo;

    .line 511
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 512
    return-object v0

    .line 514
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 515
    .local v1, "wrappers":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 516
    aget-object v3, p1, v2

    .line 517
    .local v3, "info":Landroid/car/content/pm/AppBlockingPackageInfo;
    if-nez v3, :cond_1

    .line 518
    goto :goto_1

    .line 520
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/car/pm/CarPackageManagerService;->isInstalledPackageMatching(Landroid/car/content/pm/AppBlockingPackageInfo;)Z

    move-result v4

    .line 521
    .local v4, "isMatching":Z
    new-instance v5, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    invoke-direct {v5, v3, v4, v0}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;-><init>(Landroid/car/content/pm/AppBlockingPackageInfo;ZLcom/android/car/pm/CarPackageManagerService$1;)V

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 515
    .end local v3    # "info":Landroid/car/content/pm/AppBlockingPackageInfo;
    .end local v4    # "isMatching":Z
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    return-object v0
.end method

.method private wakeupClientsWaitingForPolicySettingLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mWaitingPolicies:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/content/pm/CarAppBlockingPolicy;

    .line 463
    .local v1, "waitingPolicy":Landroid/car/content/pm/CarAppBlockingPolicy;
    monitor-enter v1

    .line 464
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 465
    monitor-exit v1

    .line 466
    .end local v1    # "waitingPolicy":Landroid/car/content/pm/CarAppBlockingPolicy;
    goto :goto_0

    .line 465
    .restart local v1    # "waitingPolicy":Landroid/car/content/pm/CarAppBlockingPolicy;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 467
    .end local v1    # "waitingPolicy":Landroid/car/content/pm/CarAppBlockingPolicy;
    :cond_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mWaitingPolicies:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 468
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 926
    monitor-enter p0

    .line 927
    :try_start_0
    const-string v0, "*CarPackageManagerService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableActivityBlocking:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mEnableActivityBlocking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasParsedPackages:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mHasParsedPackages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 930
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 931
    .local v0, "restrictions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListeners:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 932
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 933
    .local v3, "displayId":I
    iget-object v5, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    .line 934
    .local v5, "listener":Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;
    const-string v6, "Display %d is %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 935
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5}, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->access$2000(Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "restricted"

    goto :goto_1

    :cond_0
    const-string v8, "unrestricted"

    :goto_1
    aput-object v8, v7, v4

    .line 934
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    nop

    .end local v3    # "displayId":I
    .end local v5    # "listener":Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 937
    .end local v2    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display Restrictions:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    const-string v1, " Blocked activity log:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    const-string v1, "\n"

    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mBlockedActivityLogs:Ljava/util/LinkedList;

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    invoke-direct {p0, v4}, Lcom/android/car/pm/CarPackageManagerService;->dumpPoliciesLocked(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 941
    .end local v0    # "restrictions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit p0

    .line 942
    return-void

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDistractionOptimizedActivities(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1162
    :try_start_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1163
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 1162
    invoke-static {v0, p1, v1}, Lcom/android/car/pm/CarAppMetadataReader;->findDistractionOptimizedActivitiesAsUser(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 374
    monitor-enter p0

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$1000(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V

    .line 376
    monitor-exit p0

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isActivityBackedBySafeActivity(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "activityName"    # Landroid/content/ComponentName;

    .line 297
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    invoke-virtual {v0, p1}, Lcom/android/car/SystemActivityMonitoringService;->getFocusedStackForTopActivity(Landroid/content/ComponentName;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 299
    .local v0, "info":Landroid/app/ActivityManager$StackInfo;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 300
    return v1

    .line 302
    :cond_0
    iget v2, v0, Landroid/app/ActivityManager$StackInfo;->displayId:I

    invoke-direct {p0, v2}, Lcom/android/car/pm/CarPackageManagerService;->isUxRestrictedOnDisplay(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 303
    return v1

    .line 305
    :cond_1
    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v2, v2

    if-gt v2, v1, :cond_2

    .line 306
    const/4 v1, 0x0

    return v1

    .line 308
    :cond_2
    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 310
    .local v1, "activityBehind":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {p0, v2, v3}, Lcom/android/car/pm/CarPackageManagerService;->isActivityDistractionOptimized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isActivityDistractionOptimized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/android/car/pm/CarPackageManagerService;->assertPackageAndClassName(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    monitor-enter p0

    .line 265
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService;->searchFromBlacklistsLocked(Ljava/lang/String;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v0

    .line 266
    .local v0, "info":Landroid/car/content/pm/AppBlockingPackageInfo;
    if-eqz v0, :cond_0

    .line 267
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 269
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/car/pm/CarPackageManagerService;->isActivityInWhitelistsLocked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit p0

    return v1

    .line 270
    .end local v0    # "info":Landroid/car/content/pm/AppBlockingPackageInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isAnySignatureMatching([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 6
    .param p1, "fromPackage"    # [Landroid/content/pm/Signature;
    .param p2, "fromPolicy"    # [Landroid/content/pm/Signature;

    .line 566
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 567
    return v0

    .line 569
    :cond_0
    if-nez p2, :cond_1

    .line 570
    return v0

    .line 572
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 573
    .local v1, "setFromPackage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 574
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 573
    .end local v4    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 576
    :cond_2
    array-length v2, p2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, p2, v3

    .line 577
    .restart local v4    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 578
    const/4 v0, 0x1

    return v0

    .line 576
    .end local v4    # "sig":Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 581
    :cond_4
    return v0
.end method

.method isInstalledPackageMatching(Landroid/car/content/pm/AppBlockingPackageInfo;)Z
    .locals 5
    .param p1, "info"    # Landroid/car/content/pm/AppBlockingPackageInfo;

    .line 529
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 534
    if-nez v1, :cond_0

    .line 535
    return v0

    .line 538
    :cond_0
    iget v2, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 539
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 540
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    if-nez v2, :cond_2

    .line 541
    :cond_1
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 542
    .local v2, "signatures":[Landroid/content/pm/Signature;
    iget-object v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v2, v4}, Lcom/android/car/pm/CarPackageManagerService;->isAnySignatureMatching([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 543
    return v0

    .line 546
    .end local v2    # "signatures":[Landroid/content/pm/Signature;
    :cond_2
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 547
    .local v2, "version":I
    iget v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->minRevisionCode:I

    if-nez v4, :cond_5

    .line 548
    iget v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->maxRevisionCode:I

    if-nez v4, :cond_3

    .line 549
    return v3

    .line 551
    :cond_3
    iget v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->maxRevisionCode:I

    if-le v4, v2, :cond_4

    move v0, v3

    :cond_4
    return v0

    .line 554
    :cond_5
    iget v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->maxRevisionCode:I

    if-nez v4, :cond_7

    .line 555
    iget v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->minRevisionCode:I

    if-ge v4, v2, :cond_6

    move v0, v3

    :cond_6
    return v0

    .line 557
    :cond_7
    iget v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->minRevisionCode:I

    if-ge v4, v2, :cond_8

    iget v4, p1, Landroid/car/content/pm/AppBlockingPackageInfo;->maxRevisionCode:I

    if-le v4, v2, :cond_8

    move v0, v3

    :cond_8
    return v0

    .line 531
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "version":I
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public isServiceDistractionOptimized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 275
    if-eqz p1, :cond_2

    .line 278
    monitor-enter p0

    .line 283
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService;->searchFromBlacklistsLocked(Ljava/lang/String;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v0

    .line 284
    .local v0, "info":Landroid/car/content/pm/AppBlockingPackageInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 285
    monitor-exit p0

    return v1

    .line 287
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService;->searchFromWhitelistsLocked(Ljava/lang/String;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v2

    move-object v0, v2

    .line 288
    if-eqz v0, :cond_1

    .line 289
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 291
    .end local v0    # "info":Landroid/car/content/pm/AppBlockingPackageInfo;
    :cond_1
    monitor-exit p0

    .line 292
    return v1

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 276
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPolicyConnectionAndSet(Lcom/android/car/pm/AppBlockingPolicyProxy;Landroid/car/content/pm/CarAppBlockingPolicy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/android/car/pm/AppBlockingPolicyProxy;
    .param p2, "policy"    # Landroid/car/content/pm/CarAppBlockingPolicy;

    .line 887
    invoke-direct {p0, p1, p2}, Lcom/android/car/pm/CarPackageManagerService;->doHandlePolicyConnection(Lcom/android/car/pm/AppBlockingPolicyProxy;Landroid/car/content/pm/CarAppBlockingPolicy;)V

    .line 888
    return-void
.end method

.method public onPolicyConnectionFailure(Lcom/android/car/pm/AppBlockingPolicyProxy;)V
    .locals 1
    .param p1, "proxy"    # Lcom/android/car/pm/AppBlockingPolicyProxy;

    .line 891
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/car/pm/CarPackageManagerService;->doHandlePolicyConnection(Lcom/android/car/pm/AppBlockingPolicyProxy;Landroid/car/content/pm/CarAppBlockingPolicy;)V

    .line 892
    return-void
.end method

.method parseConfigList(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .param p1, "configList"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 813
    .local p2, "packageToActivityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez p1, :cond_0

    .line 814
    return-void

    .line 816
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "entries":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 818
    .local v4, "entry":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 819
    .local v5, "packageActivityPair":[Ljava/lang/String;
    aget-object v6, v5, v2

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 820
    .local v6, "activities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 821
    .local v7, "newPackage":Z
    if-nez v6, :cond_1

    .line 822
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v6, v8

    .line 823
    const/4 v7, 0x1

    .line 824
    aget-object v8, v5, v2

    invoke-interface {p2, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    :cond_1
    array-length v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 827
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    goto :goto_1

    .line 828
    :cond_2
    array-length v8, v5

    const/4 v10, 0x2

    if-ne v8, v10, :cond_4

    .line 830
    if-nez v7, :cond_3

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 831
    :cond_3
    aget-object v8, v5, v9

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 817
    .end local v4    # "entry":Ljava/lang/String;
    .end local v5    # "packageActivityPair":[Ljava/lang/String;
    .end local v6    # "activities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "newPackage":Z
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 835
    :cond_5
    return-void
.end method

.method public release()V
    .locals 3

    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$1100(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 388
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mHasParsedPackages:Z

    .line 389
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityWhitelistMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 390
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mClientPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 391
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/pm/AppBlockingPolicyProxy;

    .line 393
    .local v1, "proxy":Lcom/android/car/pm/AppBlockingPolicyProxy;
    invoke-virtual {v1}, Lcom/android/car/pm/AppBlockingPolicyProxy;->disconnect()V

    .line 394
    .end local v1    # "proxy":Lcom/android/car/pm/AppBlockingPolicyProxy;
    goto :goto_1

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 397
    :cond_1
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->wakeupClientsWaitingForPolicySettingLocked()V

    .line 398
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageParsingEventReceiver:Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 400
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mUserSwitchedEventReceiver:Lcom/android/car/pm/CarPackageManagerService$UserSwitchedEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 402
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mActivityLaunchListener:Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;

    invoke-virtual {v0, v1}, Lcom/android/car/SystemActivityMonitoringService;->unRegisterActivityLaunchListener(Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;)V

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mUxRestrictionsListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    .line 405
    .local v1, "listener":Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mCarUxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-virtual {v2, v1}, Lcom/android/car/CarUxRestrictionsManagerService;->unregisterUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)V

    .line 403
    .end local v1    # "listener":Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 407
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 398
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public restartTask(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 224
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    invoke-virtual {v0, p1}, Lcom/android/car/SystemActivityMonitoringService;->restartTask(I)V

    .line 225
    return-void
.end method

.method public setAppBlockingPolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policy"    # Landroid/car/content/pm/CarAppBlockingPolicy;
    .param p3, "flags"    # I

    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/pm/CarPackageManagerService;->doSetAppBlockingPolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;IZ)V

    .line 217
    return-void
.end method

.method public declared-synchronized setEnableActivityBlocking(Z)V
    .locals 4
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 1139
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1140
    const-string v0, "CAR.PACKAGE"

    const-string v1, "Cannot enable/disable activity blocking"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    monitor-exit p0

    return-void

    .line 1144
    .end local p0    # "this":Lcom/android/car/pm/CarPackageManagerService;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService;->mCarUxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-virtual {v0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->setUxRChangeBroadcastEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1151
    monitor-exit p0

    return-void

    .line 1146
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1147
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have the right signature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1138
    .end local p1    # "enable":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startAppBlockingPolicies()V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 855
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 856
    .local v0, "policyIntent":Landroid/content/Intent;
    const-string v1, "android.car.content.pm.CarAppBlockingPolicyService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 858
    .local v1, "policyInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    .line 859
    iget-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mHandler:Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$500(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;)V

    .line 860
    return-void

    .line 862
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 863
    .local v2, "proxies":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/car/pm/AppBlockingPolicyProxy;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 864
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 865
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v5, :cond_1

    .line 866
    goto :goto_0

    .line 868
    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 869
    iget-object v6, p0, Lcom/android/car/pm/CarPackageManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v8, "android.car.permission.CONTROL_APP_BLOCKING"

    invoke-virtual {v6, v8, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 871
    goto :goto_0

    .line 873
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found policy holding service:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CAR.PACKAGE"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v6, Lcom/android/car/pm/AppBlockingPolicyProxy;

    iget-object v7, p0, Lcom/android/car/pm/CarPackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7, v5}, Lcom/android/car/pm/AppBlockingPolicyProxy;-><init>(Lcom/android/car/pm/CarPackageManagerService;Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 876
    .local v6, "proxy":Lcom/android/car/pm/AppBlockingPolicyProxy;
    invoke-virtual {v6}, Lcom/android/car/pm/AppBlockingPolicyProxy;->connect()V

    .line 877
    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 879
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "proxy":Lcom/android/car/pm/AppBlockingPolicyProxy;
    :cond_3
    goto :goto_0

    .line 880
    :cond_4
    monitor-enter p0

    .line 881
    :try_start_0
    iput-object v2, p0, Lcom/android/car/pm/CarPackageManagerService;->mProxies:Ljava/util/LinkedList;

    .line 882
    monitor-exit p0

    .line 883
    return-void

    .line 882
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
