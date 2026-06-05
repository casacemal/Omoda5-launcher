.class public final Landroid/car/userlib/CarUserManagerHelper;
.super Ljava/lang/Object;
.source "CarUserManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/userlib/CarUserManagerHelper$OnUsersUpdateListener;
    }
.end annotation


# static fields
.field private static final BOOT_USER_NOT_FOUND:I = -0x1

.field private static final DEFAULT_GUEST_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_NON_ADMIN_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTIONAL_NON_ADMIN_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CarUserManagerHelper"


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAdminName:Ljava/lang/String;

.field private mDefaultGuestUserIcon:Landroid/graphics/Bitmap;

.field private final mTestableFrameworkWrapper:Landroid/car/userlib/TestableFrameworkWrapper;

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/car/userlib/CarUserManagerHelper$OnUsersUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 71
    const-string v0, "no_factory_reset"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Landroid/car/userlib/CarUserManagerHelper;->DEFAULT_NON_ADMIN_RESTRICTIONS:Ljava/util/Set;

    .line 79
    const-string v0, "no_add_user"

    const-string v1, "no_outgoing_calls"

    const-string v2, "no_sms"

    const-string v3, "no_install_apps"

    const-string v4, "no_uninstall_apps"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Landroid/car/userlib/CarUserManagerHelper;->OPTIONAL_NON_ADMIN_RESTRICTIONS:Ljava/util/Set;

    .line 90
    const-string v1, "no_factory_reset"

    const-string v2, "no_remove_user"

    const-string v3, "no_modify_accounts"

    const-string v4, "no_install_apps"

    const-string v5, "no_install_unknown_sources"

    const-string v6, "no_uninstall_apps"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Landroid/car/userlib/CarUserManagerHelper;->DEFAULT_GUEST_RESTRICTIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    new-instance v0, Landroid/car/userlib/TestableFrameworkWrapper;

    invoke-direct {v0}, Landroid/car/userlib/TestableFrameworkWrapper;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/car/userlib/CarUserManagerHelper;-><init>(Landroid/content/Context;Landroid/car/userlib/TestableFrameworkWrapper;)V

    .line 127
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/car/userlib/TestableFrameworkWrapper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "testableFrameworkWrapper"    # Landroid/car/userlib/TestableFrameworkWrapper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Landroid/car/userlib/CarUserManagerHelper$1;

    invoke-direct {v0, p0}, Landroid/car/userlib/CarUserManagerHelper$1;-><init>(Landroid/car/userlib/CarUserManagerHelper;)V

    iput-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUpdateListeners:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mContext:Landroid/content/Context;

    .line 133
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    .line 134
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 135
    iput-object p2, p0, Landroid/car/userlib/CarUserManagerHelper;->mTestableFrameworkWrapper:Landroid/car/userlib/TestableFrameworkWrapper;

    .line 136
    return-void
.end method

.method static synthetic access$000(Landroid/car/userlib/CarUserManagerHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/car/userlib/CarUserManagerHelper;

    .line 63
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUpdateListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private assignDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 1084
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getGuestDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/car/userlib/CarUserManagerHelper;->getUserDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1086
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v1, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1087
    return-object v0
.end method

.method private findExistingGuestUser()Landroid/content/pm/UserInfo;
    .locals 3

    .line 1000
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getAllUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1001
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v2, :cond_0

    .line 1002
    return-object v1

    .line 1004
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 1005
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAllUsersExceptSpecifiedUser(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 439
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 441
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p1, :cond_0

    .line 443
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 445
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 446
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_1
    return-object v0
.end method

.method private getAllUsersExceptSystemUserAndSpecifiedUser(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 458
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 459
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 460
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v3, p1, :cond_0

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_1

    .line 462
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 464
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    goto :goto_0

    .line 465
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_2
    return-object v0
.end method

.method private getDefaultAdminName()Ljava/lang/String;
    .locals 2

    .line 1095
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mDefaultAdminName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mContext:Landroid/content/Context;

    const v1, 0x1040498

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mDefaultAdminName:Ljava/lang/String;

    .line 1098
    :cond_0
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mDefaultAdminName:Ljava/lang/String;

    return-object v0
.end method

.method private getManagedProfilesCount()I
    .locals 5

    .line 512
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getAllUsers()Ljava/util/List;

    move-result-object v0

    .line 515
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .line 516
    .local v1, "managedProfilesCount":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 517
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 518
    add-int/lit8 v1, v1, 0x1

    .line 520
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 521
    :cond_1
    return v1
.end method

.method private registerReceiver()V
    .locals 7

    .line 1072
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1073
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1074
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1075
    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1076
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1077
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1078
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1079
    iget-object v1, p0, Landroid/car/userlib/CarUserManagerHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1080
    return-void
.end method

.method private removeLastAdmin(Landroid/content/pm/UserInfo;)Z
    .locals 3
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 912
    const-string v0, "CarUserManagerHelper"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is the last admin user on device. Creating a new admin."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_0
    invoke-direct {p0}, Landroid/car/userlib/CarUserManagerHelper;->getDefaultAdminName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/car/userlib/CarUserManagerHelper;->createNewAdminUser(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 918
    .local v1, "newAdmin":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_1

    .line 919
    const-string v2, "Couldn\'t create another admin, cannot delete current user."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v0, 0x0

    return v0

    .line 923
    :cond_1
    invoke-virtual {p0, v1}, Landroid/car/userlib/CarUserManagerHelper;->switchToUser(Landroid/content/pm/UserInfo;)Z

    .line 924
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->removeUser(I)Z

    move-result v0

    return v0
.end method

.method private setDefaultNonAdminRestrictions(Landroid/content/pm/UserInfo;Z)V
    .locals 2
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "enable"    # Z

    .line 841
    sget-object v0, Landroid/car/userlib/CarUserManagerHelper;->DEFAULT_NON_ADMIN_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 842
    .local v1, "restriction":Ljava/lang/String;
    invoke-virtual {p0, p1, v1, p2}, Landroid/car/userlib/CarUserManagerHelper;->setUserRestriction(Landroid/content/pm/UserInfo;Ljava/lang/String;Z)V

    .line 843
    .end local v1    # "restriction":Ljava/lang/String;
    goto :goto_0

    .line 844
    :cond_0
    return-void
.end method

.method private setOptionalNonAdminRestrictions(Landroid/content/pm/UserInfo;Z)V
    .locals 2
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "enable"    # Z

    .line 853
    sget-object v0, Landroid/car/userlib/CarUserManagerHelper;->OPTIONAL_NON_ADMIN_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 854
    .local v1, "restriction":Ljava/lang/String;
    invoke-virtual {p0, p1, v1, p2}, Landroid/car/userlib/CarUserManagerHelper;->setUserRestriction(Landroid/content/pm/UserInfo;Ljava/lang/String;Z)V

    .line 855
    .end local v1    # "restriction":Ljava/lang/String;
    goto :goto_0

    .line 856
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 1091
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1092
    return-void
.end method

.method private userInfoListToUserIdList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 269
    .local p1, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 271
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 273
    :cond_0
    return-object v0
.end method


# virtual methods
.method public canCurrentProcessAddUsers()Z
    .locals 1

    .line 725
    const-string v0, "no_add_user"

    invoke-virtual {p0, v0}, Landroid/car/userlib/CarUserManagerHelper;->isCurrentProcessUserHasRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canCurrentProcessModifyAccounts()Z
    .locals 1

    .line 716
    const-string v0, "no_modify_accounts"

    invoke-virtual {p0, v0}, Landroid/car/userlib/CarUserManagerHelper;->isCurrentProcessUserHasRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->isCurrentProcessDemoUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->isCurrentProcessGuestUser()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 716
    :goto_0
    return v0
.end method

.method public canCurrentProcessRemoveUsers()Z
    .locals 1

    .line 732
    const-string v0, "no_remove_user"

    invoke-virtual {p0, v0}, Landroid/car/userlib/CarUserManagerHelper;->isCurrentProcessUserHasRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canCurrentProcessSwitchUsers()Z
    .locals 4

    .line 742
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 744
    .local v0, "inIdleCallState":Z
    :goto_0
    nop

    .line 745
    const-string v3, "no_user_switch"

    invoke-virtual {p0, v3}, Landroid/car/userlib/CarUserManagerHelper;->isCurrentProcessUserHasRestriction(Ljava/lang/String;)Z

    move-result v3

    .line 746
    .local v3, "disallowUserSwitching":Z
    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public canForegroundUserAddUsers()Z
    .locals 1

    .line 634
    const-string v0, "no_add_user"

    invoke-virtual {p0, v0}, Landroid/car/userlib/CarUserManagerHelper;->foregroundUserHasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canForegroundUserModifyAccounts()Z
    .locals 1

    .line 642
    const-string v0, "no_modify_accounts"

    invoke-virtual {p0, v0}, Landroid/car/userlib/CarUserManagerHelper;->foregroundUserHasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->isForegroundUserDemo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->isForegroundUserGuest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 642
    :goto_0
    return v0
.end method

.method public canForegroundUserSwitchUsers()Z
    .locals 4

    .line 654
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 656
    .local v0, "inIdleCallState":Z
    :goto_0
    nop

    .line 657
    const-string v3, "no_user_switch"

    invoke-virtual {p0, v3}, Landroid/car/userlib/CarUserManagerHelper;->foregroundUserHasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    .line 658
    .local v3, "disallowUserSwitching":Z
    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public canUserBeRemoved(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 607
    invoke-virtual {p0, p1}, Landroid/car/userlib/CarUserManagerHelper;->isSystemUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public createNewAdminUser()Landroid/content/pm/UserInfo;
    .locals 1

    .line 780
    invoke-direct {p0}, Landroid/car/userlib/CarUserManagerHelper;->getDefaultAdminName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/car/userlib/CarUserManagerHelper;->createNewAdminUser(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createNewAdminUser(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userName"    # Ljava/lang/String;

    .line 792
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->isCurrentProcessAdminUser()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CarUserManagerHelper"

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->isCurrentProcessSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 794
    const-string v0, "Only admin users and system user can create other admins."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return-object v1

    .line 798
    :cond_0
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v3, 0x2

    invoke-virtual {v0, p1, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 799
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_1

    .line 801
    const-string v3, "can\'t create admin user."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-object v1

    .line 804
    :cond_1
    invoke-direct {p0, v0}, Landroid/car/userlib/CarUserManagerHelper;->assignDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;

    .line 806
    return-object v0
.end method

.method public createNewNonAdminUser(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userName"    # Ljava/lang/String;

    .line 817
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 818
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 820
    const-string v1, "CarUserManagerHelper"

    const-string v2, "can\'t create non-admin user."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v1, 0x0

    return-object v1

    .line 823
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/car/userlib/CarUserManagerHelper;->setDefaultNonAdminRestrictions(Landroid/content/pm/UserInfo;Z)V

    .line 827
    const-string v2, "no_sms"

    invoke-virtual {p0, v0, v2, v1}, Landroid/car/userlib/CarUserManagerHelper;->setUserRestriction(Landroid/content/pm/UserInfo;Ljava/lang/String;Z)V

    .line 828
    const-string v2, "no_outgoing_calls"

    invoke-virtual {p0, v0, v2, v1}, Landroid/car/userlib/CarUserManagerHelper;->setUserRestriction(Landroid/content/pm/UserInfo;Ljava/lang/String;Z)V

    .line 830
    invoke-direct {p0, v0}, Landroid/car/userlib/CarUserManagerHelper;->assignDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;

    .line 831
    return-object v0
.end method

.method public createNewOrFindExistingGuest(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "guestName"    # Ljava/lang/String;

    .line 980
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Landroid/car/userlib/CarUserManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 981
    .local v0, "newGuest":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 982
    invoke-direct {p0, v0}, Landroid/car/userlib/CarUserManagerHelper;->assignDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;

    .line 983
    return-object v0

    .line 986
    :cond_0
    invoke-direct {p0}, Landroid/car/userlib/CarUserManagerHelper;->findExistingGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 987
    .local v1, "existingGuest":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_1

    .line 989
    const-string v2, "CarUserManagerHelper"

    const-string v3, "Couldn\'t create a new guest and couldn\'t find an existing one."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_1
    return-object v1
.end method

.method public foregroundUserHasUserRestriction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "restriction"    # Ljava/lang/String;

    .line 627
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/car/userlib/CarUserManagerHelper;->hasUserRestriction(Ljava/lang/String;Landroid/content/pm/UserInfo;)Z

    move-result v0

    return v0
.end method

.method public getAllAdminUsers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getAllUsers()Ljava/util/List;

    move-result-object v0

    .line 402
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 404
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_0

    .line 406
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 408
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 409
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_1
    return-object v0
.end method

.method public getAllPersistentUsers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getAllUsers()Ljava/util/List;

    move-result-object v0

    .line 384
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 386
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 390
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 391
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_1
    return-object v0
.end method

.method public getAllSwitchableUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 357
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->isHeadlessSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/car/userlib/CarUserManagerHelper;->getAllUsersExceptSystemUserAndSpecifiedUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 360
    :cond_0
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/car/userlib/CarUserManagerHelper;->getAllUsersExceptSpecifiedUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllUsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->isHeadlessSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/car/userlib/CarUserManagerHelper;->getAllUsersExceptSystemUserAndSpecifiedUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 373
    :cond_0
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllUsersExceptGuests()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getAllUsers()Ljava/util/List;

    move-result-object v0

    .line 420
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 422
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 426
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 427
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_1
    return-object v0
.end method

.method public getCurrentForegroundUserId()I
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method public getCurrentForegroundUserInfo()Landroid/content/pm/UserInfo;
    .locals 2

    .line 316
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProcessUserId()I
    .locals 1

    .line 346
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getCurrentProcessUserInfo()Landroid/content/pm/UserInfo;
    .locals 2

    .line 339
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentProcessUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGuestDefaultIcon()Landroid/graphics/Bitmap;
    .locals 3

    .line 1025
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mDefaultGuestUserIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1026
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mContext:Landroid/content/Context;

    .line 1027
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, -0x2710

    const/4 v2, 0x0

    .line 1026
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mDefaultGuestUserIcon:Landroid/graphics/Bitmap;

    .line 1029
    :cond_0
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mDefaultGuestUserIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getInitialUser()I
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 234
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getAllPersistentUsers()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/car/userlib/CarUserManagerHelper;->userInfoListToUserIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 236
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/car/userlib/CarUserManagerHelper;->mTestableFrameworkWrapper:Landroid/car/userlib/TestableFrameworkWrapper;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/car/userlib/TestableFrameworkWrapper;->getBootUserOverrideId(I)I

    move-result v1

    .line 239
    .local v1, "bootUserOverride":I
    const/4 v3, 0x3

    const-string v4, "CarUserManagerHelper"

    if-eq v1, v2, :cond_1

    .line 240
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Boot user id override found for initial user, user id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    return v1

    .line 249
    :cond_1
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getLastActiveUser()I

    move-result v2

    .line 250
    .local v2, "lastActiveUser":I
    if-eqz v2, :cond_3

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 252
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last active user loaded for initial user, user id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_2
    return v2

    .line 260
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 261
    .local v5, "returnId":I
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved ids were invalid. Returning smallest user id, user id: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_4
    return v5
.end method

.method public getLastActiveUser()I
    .locals 3

    .line 210
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    const-string v1, "last_active_persistent_user_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxSupportedRealUsers()I
    .locals 2

    .line 493
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getMaxSupportedUsers()I

    move-result v0

    invoke-direct {p0}, Landroid/car/userlib/CarUserManagerHelper;->getManagedProfilesCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMaxSupportedUsers()I
    .locals 1

    .line 477
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->isHeadlessSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mTestableFrameworkWrapper:Landroid/car/userlib/TestableFrameworkWrapper;

    invoke-virtual {v0}, Landroid/car/userlib/TestableFrameworkWrapper;->userManagerGetMaxSupportedUsers()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 480
    :cond_0
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mTestableFrameworkWrapper:Landroid/car/userlib/TestableFrameworkWrapper;

    invoke-virtual {v0}, Landroid/car/userlib/TestableFrameworkWrapper;->userManagerGetMaxSupportedUsers()I

    move-result v0

    return v0
.end method

.method public getSystemUserInfo()Landroid/content/pm/UserInfo;
    .locals 2

    .line 304
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 1015
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mContext:Landroid/content/Context;

    .line 1016
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1015
    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getUserIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 1039
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1041
    .local v0, "picture":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1042
    invoke-direct {p0, p1}, Landroid/car/userlib/CarUserManagerHelper;->assignDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 1045
    :cond_0
    return-object v0
.end method

.method public grantAdminPermissions(Landroid/content/pm/UserInfo;)V
    .locals 2
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .line 759
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->isCurrentProcessAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    const-string v0, "CarUserManagerHelper"

    const-string v1, "Only admin users can assign admin permissions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->setUserAdmin(I)V

    .line 767
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/car/userlib/CarUserManagerHelper;->setDefaultNonAdminRestrictions(Landroid/content/pm/UserInfo;Z)V

    .line 768
    invoke-direct {p0, p1, v0}, Landroid/car/userlib/CarUserManagerHelper;->setOptionalNonAdminRestrictions(Landroid/content/pm/UserInfo;Z)V

    .line 769
    return-void
.end method

.method public hasUserRestriction(Ljava/lang/String;Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 617
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public initDefaultGuestRestrictions()V
    .locals 4

    .line 282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, "defaultGuestRestrictions":Landroid/os/Bundle;
    sget-object v1, Landroid/car/userlib/CarUserManagerHelper;->DEFAULT_GUEST_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 284
    .local v2, "restriction":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    .end local v2    # "restriction":Ljava/lang/String;
    goto :goto_0

    .line 286
    :cond_0
    iget-object v1, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 287
    return-void
.end method

.method public isCurrentProcessAdminUser()Z
    .locals 1

    .line 681
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    return v0
.end method

.method public isCurrentProcessDemoUser()Z
    .locals 1

    .line 674
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v0

    return v0
.end method

.method public isCurrentProcessGuestUser()Z
    .locals 1

    .line 688
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v0

    return v0
.end method

.method public isCurrentProcessRestrictedProfileUser()Z
    .locals 1

    .line 696
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isRestrictedProfile()Z

    move-result v0

    return v0
.end method

.method public isCurrentProcessSystemUser()Z
    .locals 1

    .line 667
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    return v0
.end method

.method public isCurrentProcessUser(Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 563
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentProcessUserId()I

    move-result v0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentProcessUserHasRestriction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "restriction"    # Ljava/lang/String;

    .line 708
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isForegroundUser(Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 553
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForegroundUserDemo()Z
    .locals 1

    .line 579
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    return v0
.end method

.method public isForegroundUserEphemeral()Z
    .locals 1

    .line 586
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    return v0
.end method

.method public isForegroundUserGuest()Z
    .locals 1

    .line 572
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    return v0
.end method

.method public isHeadlessSystemUser()Z
    .locals 1

    .line 295
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    return v0
.end method

.method public isLastActiveUser(Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 543
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getLastActiveUser()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPersistentUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 596
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 597
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public isSystemUser(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 533
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserLimitReached()Z
    .locals 5

    .line 500
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getAllUsersExceptGuests()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 501
    .local v0, "countNonGuestUsers":I
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getMaxSupportedUsers()I

    move-result v1

    .line 503
    .local v1, "maxSupportedUsers":I
    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 504
    const-string v3, "CarUserManagerHelper"

    const-string v4, "There are more users on the device than allowed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return v2

    .line 508
    :cond_0
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getAllUsersExceptGuests()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public registerOnUsersUpdateListener(Landroid/car/userlib/CarUserManagerHelper$OnUsersUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/car/userlib/CarUserManagerHelper$OnUsersUpdateListener;

    .line 144
    if-nez p1, :cond_0

    .line 145
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUpdateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Landroid/car/userlib/CarUserManagerHelper;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-direct {p0}, Landroid/car/userlib/CarUserManagerHelper;->registerReceiver()V

    .line 154
    :cond_1
    iget-object v1, p0, Landroid/car/userlib/CarUserManagerHelper;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    iget-object v1, p0, Landroid/car/userlib/CarUserManagerHelper;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_2
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeUser(Landroid/content/pm/UserInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "guestUserName"    # Ljava/lang/String;

    .line 882
    invoke-virtual {p0, p1}, Landroid/car/userlib/CarUserManagerHelper;->isSystemUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CarUserManagerHelper"

    if-eqz v0, :cond_0

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is system user, could not be removed."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return v1

    .line 888
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getAllAdminUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_1

    .line 889
    invoke-direct {p0, p1}, Landroid/car/userlib/CarUserManagerHelper;->removeLastAdmin(Landroid/content/pm/UserInfo;)Z

    move-result v0

    return v0

    .line 892
    :cond_1
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->isCurrentProcessAdminUser()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/car/userlib/CarUserManagerHelper;->isCurrentProcessUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 894
    const-string v0, "Non-admins cannot remove other users."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return v1

    .line 898
    :cond_2
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 899
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->canCurrentProcessSwitchUsers()Z

    move-result v0

    if-nez v0, :cond_3

    .line 902
    const-string v0, "User switching is not allowed. Current user cannot be deleted"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return v1

    .line 905
    :cond_3
    invoke-virtual {p0, p2}, Landroid/car/userlib/CarUserManagerHelper;->startGuestSession(Ljava/lang/String;)Z

    .line 908
    :cond_4
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    move-result v0

    return v0
.end method

.method public scaleUserIcon(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "desiredSize"    # I

    .line 1056
    const/4 v0, 0x1

    invoke-static {p1, p2, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1058
    .local v0, "scaledIcon":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/car/userlib/CarUserManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method setDefaultAdminName(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultAdminName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1103
    iput-object p1, p0, Landroid/car/userlib/CarUserManagerHelper;->mDefaultAdminName:Ljava/lang/String;

    .line 1104
    return-void
.end method

.method public setLastActiveUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 185
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mContext:Landroid/content/Context;

    .line 186
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    const-string v1, "last_active_persistent_user_id"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    return-void
.end method

.method public setLastActiveUser(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "skipGlobalSetting"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    if-nez p2, :cond_0

    .line 199
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 199
    const-string v1, "last_active_persistent_user_id"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    :cond_0
    return-void
.end method

.method public setUserName(Landroid/content/pm/UserInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "name"    # Ljava/lang/String;

    .line 1068
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, p2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 1069
    return-void
.end method

.method public setUserRestriction(Landroid/content/pm/UserInfo;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "restriction"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 867
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 868
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Landroid/car/userlib/CarUserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p2, p3, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 869
    return-void
.end method

.method public startGuestSession(Ljava/lang/String;)Z
    .locals 2
    .param p1, "guestName"    # Ljava/lang/String;

    .line 964
    invoke-virtual {p0, p1}, Landroid/car/userlib/CarUserManagerHelper;->createNewOrFindExistingGuest(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 965
    .local v0, "guest":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 966
    const/4 v1, 0x0

    return v1

    .line 968
    :cond_0
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Landroid/car/userlib/CarUserManagerHelper;->switchToUserId(I)Z

    move-result v1

    return v1
.end method

.method public switchToUser(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 954
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Landroid/car/userlib/CarUserManagerHelper;->switchToUserId(I)Z

    move-result v0

    return v0
.end method

.method public switchToUserId(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 934
    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->isHeadlessSystemUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    return v0

    .line 938
    :cond_0
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->canCurrentProcessSwitchUsers()Z

    move-result v1

    if-nez v1, :cond_1

    .line 939
    return v0

    .line 941
    :cond_1
    invoke-virtual {p0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 942
    return v0

    .line 944
    :cond_2
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->switchUser(I)Z

    move-result v0

    return v0
.end method

.method public unregisterOnUsersUpdateListener(Landroid/car/userlib/CarUserManagerHelper$OnUsersUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/car/userlib/CarUserManagerHelper$OnUsersUpdateListener;

    .line 167
    iget-object v0, p0, Landroid/car/userlib/CarUserManagerHelper;->mUpdateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/car/userlib/CarUserManagerHelper;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Landroid/car/userlib/CarUserManagerHelper;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Landroid/car/userlib/CarUserManagerHelper;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-direct {p0}, Landroid/car/userlib/CarUserManagerHelper;->unregisterReceiver()V

    .line 176
    :cond_0
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
