.class public Lcom/android/settingslib/location/RecentLocationAccesses;
.super Ljava/lang/Object;
.source "RecentLocationAccesses.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/RecentLocationAccesses$Access;
    }
.end annotation


# static fields
.field static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LOCATION_OPS:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final RECENT_TIME_INTERVAL_MILLIS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String;

.field public static final TRUSTED_STATE_FLAGS:I = 0xd


# instance fields
.field private final mClock:Ljava/time/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/settingslib/location/RecentLocationAccesses;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationAccesses;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationAccesses;->LOCATION_OPS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/location/RecentLocationAccesses;-><init>(Landroid/content/Context;Ljava/time/Clock;)V

    .line 69
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/time/Clock;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Ljava/time/Clock;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 75
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 76
    iput-object p2, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mClock:Ljava/time/Clock;

    .line 77
    return-void
.end method

.method private getAccessFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationAccesses$Access;
    .locals 23
    .param p1, "now"    # J
    .param p3, "ops"    # Landroid/app/AppOpsManager$PackageOps;

    .line 161
    move-object/from16 v1, p0

    const-string v2, ", userId "

    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 162
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v12

    .line 163
    .local v12, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const-wide/16 v3, 0x0

    .line 165
    .local v3, "locationAccessFinishTime":J
    const-wide/32 v5, 0x5265c00

    sub-long v13, p1, v5

    .line 166
    .local v13, "recentLocationCutoffTime":J
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v15, v3

    .end local v3    # "locationAccessFinishTime":J
    .local v15, "locationAccessFinishTime":J
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 167
    .local v3, "entry":Landroid/app/AppOpsManager$OpEntry;
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v15

    .line 168
    .end local v3    # "entry":Landroid/app/AppOpsManager$OpEntry;
    goto :goto_0

    .line 170
    :cond_0
    cmp-long v0, v15, v13

    const/4 v3, 0x0

    if-gez v0, :cond_1

    .line 171
    return-object v3

    .line 175
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v17

    .line 176
    .local v17, "uid":I
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 178
    .local v9, "userId":I
    const/16 v18, 0x0

    .line 180
    .local v18, "access":Lcom/android/settingslib/location/RecentLocationAccesses$Access;
    :try_start_0
    iget-object v0, v1, Lcom/android/settingslib/location/RecentLocationAccesses;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v0, v11, v4, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 182
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_2

    .line 183
    :try_start_1
    sget-object v4, Lcom/android/settingslib/location/RecentLocationAccesses;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Null application info retrieved for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    return-object v3

    .line 199
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    move v1, v9

    goto :goto_2

    .line 188
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_2
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v9}, Landroid/os/UserHandle;-><init>(I)V

    move-object v10, v3

    .line 189
    .local v10, "userHandle":Landroid/os/UserHandle;
    iget-object v3, v1, Lcom/android/settingslib/location/RecentLocationAccesses;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v3, v0, v9}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 190
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v3, v1, Lcom/android/settingslib/location/RecentLocationAccesses;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v8, v3

    .line 191
    .local v8, "appLabel":Ljava/lang/CharSequence;
    iget-object v3, v1, Lcom/android/settingslib/location/RecentLocationAccesses;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v8, v10}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 192
    .local v3, "badgedAppLabel":Ljava/lang/CharSequence;
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    const/4 v3, 0x0

    move-object/from16 v19, v3

    goto :goto_1

    .line 192
    :cond_3
    move-object/from16 v19, v3

    .line 197
    .end local v3    # "badgedAppLabel":Ljava/lang/CharSequence;
    .local v19, "badgedAppLabel":Ljava/lang/CharSequence;
    :goto_1
    new-instance v20, Lcom/android/settingslib/location/RecentLocationAccesses$Access;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v3, v20

    move-object v4, v11

    move-object v5, v10

    move-object v7, v8

    move-object/from16 v21, v8

    .end local v8    # "appLabel":Ljava/lang/CharSequence;
    .local v21, "appLabel":Ljava/lang/CharSequence;
    move-object/from16 v8, v19

    move v1, v9

    move-object/from16 v22, v10

    .end local v9    # "userId":I
    .end local v10    # "userHandle":Landroid/os/UserHandle;
    .local v1, "userId":I
    .local v22, "userHandle":Landroid/os/UserHandle;
    move-wide v9, v15

    :try_start_3
    invoke-direct/range {v3 .. v10}, Lcom/android/settingslib/location/RecentLocationAccesses$Access;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v18, v20

    .line 201
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v19    # "badgedAppLabel":Ljava/lang/CharSequence;
    .end local v21    # "appLabel":Ljava/lang/CharSequence;
    .end local v22    # "userHandle":Landroid/os/UserHandle;
    goto :goto_3

    .line 199
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v1    # "userId":I
    .restart local v9    # "userId":I
    :catch_2
    move-exception v0

    move v1, v9

    .line 200
    .end local v9    # "userId":I
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "userId":I
    :goto_2
    sget-object v3, Lcom/android/settingslib/location/RecentLocationAccesses;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package name not found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    return-object v18
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationAccesses$Access;",
            ">;"
        }
    .end annotation

    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 86
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    .line 87
    const-string v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 88
    .local v2, "aoManager":Landroid/app/AppOpsManager;
    sget-object v3, Lcom/android/settingslib/location/RecentLocationAccesses;->LOCATION_OPS:[I

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v3

    .line 90
    .local v3, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 93
    .local v5, "appOpsCount":I
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v6, "accesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/location/RecentLocationAccesses$Access;>;"
    iget-object v7, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mClock:Ljava/time/Clock;

    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 95
    .local v7, "now":J
    iget-object v9, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .line 96
    .local v9, "um":Landroid/os/UserManager;
    invoke-virtual {v9}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v10

    .line 98
    .local v10, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v5, :cond_6

    .line 99
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$PackageOps;

    .line 100
    .local v12, "ops":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 101
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v14

    .line 102
    .local v14, "uid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 105
    .local v15, "user":Landroid/os/UserHandle;
    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 106
    move-object/from16 v22, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v23, v5

    goto :goto_4

    .line 110
    :cond_1
    const/16 v16, 0x1

    .line 111
    .local v16, "showApp":Z
    sget-object v4, Lcom/android/settingslib/location/RecentLocationAccesses;->LOCATION_OPS:[I

    move-object/from16 v17, v2

    .end local v2    # "aoManager":Landroid/app/AppOpsManager;
    .local v17, "aoManager":Landroid/app/AppOpsManager;
    array-length v2, v4

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .end local v3    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v18, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2
    if-ge v3, v2, :cond_4

    aget v19, v4, v3

    .line 112
    .local v19, "op":I
    move/from16 v20, v2

    invoke-static/range {v19 .. v19}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "permission":Ljava/lang/String;
    move-object/from16 v21, v4

    invoke-virtual {v1, v2, v13, v15}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v4

    .line 114
    .local v4, "permissionFlags":I
    move-object/from16 v22, v1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .local v22, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    move/from16 v23, v5

    .end local v5    # "appOpsCount":I
    .local v23, "appOpsCount":I
    const/4 v5, -0x1

    invoke-static {v1, v2, v5, v14, v13}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 117
    and-int/lit16 v1, v4, 0x100

    if-nez v1, :cond_3

    .line 119
    const/16 v16, 0x0

    .line 120
    goto :goto_3

    .line 123
    :cond_2
    and-int/lit16 v1, v4, 0x200

    if-nez v1, :cond_3

    .line 125
    const/16 v16, 0x0

    .line 126
    goto :goto_3

    .line 111
    .end local v2    # "permission":Ljava/lang/String;
    .end local v4    # "permissionFlags":I
    .end local v19    # "op":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v20

    move-object/from16 v4, v21

    move-object/from16 v1, v22

    move/from16 v5, v23

    goto :goto_2

    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "appOpsCount":I
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "appOpsCount":I
    :cond_4
    move-object/from16 v22, v1

    move/from16 v23, v5

    .line 130
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "appOpsCount":I
    .restart local v22    # "pm":Landroid/content/pm/PackageManager;
    .restart local v23    # "appOpsCount":I
    :goto_3
    if-eqz v16, :cond_5

    .line 131
    invoke-direct {v0, v7, v8, v12}, Lcom/android/settingslib/location/RecentLocationAccesses;->getAccessFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationAccesses$Access;

    move-result-object v1

    .line 132
    .local v1, "access":Lcom/android/settingslib/location/RecentLocationAccesses$Access;
    if-eqz v1, :cond_5

    .line 133
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v1    # "access":Lcom/android/settingslib/location/RecentLocationAccesses$Access;
    .end local v12    # "ops":Landroid/app/AppOpsManager$PackageOps;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "uid":I
    .end local v15    # "user":Landroid/os/UserHandle;
    .end local v16    # "showApp":Z
    :cond_5
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v1, v22

    move/from16 v5, v23

    goto :goto_1

    .line 137
    .end local v11    # "i":I
    .end local v17    # "aoManager":Landroid/app/AppOpsManager;
    .end local v18    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "appOpsCount":I
    .local v1, "pm":Landroid/content/pm/PackageManager;
    .local v2, "aoManager":Landroid/app/AppOpsManager;
    .restart local v3    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "appOpsCount":I
    :cond_6
    return-object v6
.end method

.method public getAppListSorted()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationAccesses$Access;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/android/settingslib/location/RecentLocationAccesses;->getAppList()Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "accesses":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationAccesses$Access;>;"
    new-instance v1, Lcom/android/settingslib/location/RecentLocationAccesses$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/location/RecentLocationAccesses$1;-><init>(Lcom/android/settingslib/location/RecentLocationAccesses;)V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    return-object v0
.end method
