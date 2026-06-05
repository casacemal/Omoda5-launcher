.class public Lcom/android/settingslib/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/RecentLocationApps$Request;
    }
.end annotation


# static fields
.field static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LOCATION_PERMISSION_OPS:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LOCATION_REQUEST_OPS:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final RECENT_TIME_INTERVAL_MILLIS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-class v0, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_REQUEST_OPS:[I

    .line 56
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_PERMISSION_OPS:[I

    return-void

    :array_0
    .array-data 4
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 68
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 69
    return-void
.end method

.method private getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;
    .locals 28
    .param p1, "now"    # J
    .param p3, "ops"    # Landroid/app/AppOpsManager$PackageOps;

    .line 168
    move-object/from16 v1, p0

    const-string v2, ", userId "

    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 169
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v14

    .line 170
    .local v14, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v0, 0x0

    .line 171
    .local v0, "highBattery":Z
    const/4 v3, 0x0

    .line 172
    .local v3, "normalBattery":Z
    const-wide/16 v4, 0x0

    .line 174
    .local v4, "locationRequestFinishTime":J
    const-wide/32 v6, 0x5265c00

    sub-long v15, p1, v6

    .line 175
    .local v15, "recentLocationCutoffTime":J
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move/from16 v17, v0

    move/from16 v18, v3

    move-wide/from16 v19, v4

    .end local v0    # "highBattery":Z
    .end local v3    # "normalBattery":Z
    .end local v4    # "locationRequestFinishTime":J
    .local v17, "highBattery":Z
    .local v18, "normalBattery":Z
    .local v19, "locationRequestFinishTime":J
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    .line 176
    .local v0, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v3

    cmp-long v3, v3, v15

    if-ltz v3, :cond_3

    .line 177
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getDuration()J

    move-result-wide v7

    add-long v19, v3, v7

    .line 178
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    const/16 v17, 0x1

    .line 184
    goto :goto_1

    .line 180
    :cond_2
    const/4 v3, 0x1

    .line 181
    .end local v18    # "normalBattery":Z
    .restart local v3    # "normalBattery":Z
    move/from16 v18, v3

    .line 189
    .end local v0    # "entry":Landroid/app/AppOpsManager$OpEntry;
    .end local v3    # "normalBattery":Z
    .restart local v18    # "normalBattery":Z
    :cond_3
    :goto_1
    goto :goto_0

    .line 191
    :cond_4
    const/4 v0, 0x0

    if-nez v17, :cond_6

    if-nez v18, :cond_6

    .line 192
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 193
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hadn\'t used location within the time interval."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_5
    return-object v0

    .line 199
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v21

    .line 200
    .local v21, "uid":I
    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 202
    .local v12, "userId":I
    const/16 v22, 0x0

    .line 204
    .local v22, "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    :try_start_0
    iget-object v3, v1, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, v13, v4, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v10, v3

    .line 206
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v10, :cond_7

    .line 207
    :try_start_1
    sget-object v3, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null application info retrieved for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    return-object v0

    .line 223
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    move v1, v12

    goto :goto_3

    .line 212
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_7
    :try_start_2
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 213
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v3, v1, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v3, v10, v12}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 214
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v3, v1, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v11, v3

    .line 215
    .local v11, "appLabel":Ljava/lang/CharSequence;
    iget-object v3, v1, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v11, v0}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 216
    .local v3, "badgedAppLabel":Ljava/lang/CharSequence;
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 219
    const/4 v3, 0x0

    move-object/from16 v23, v3

    goto :goto_2

    .line 216
    :cond_8
    move-object/from16 v23, v3

    .line 221
    .end local v3    # "badgedAppLabel":Ljava/lang/CharSequence;
    .local v23, "badgedAppLabel":Ljava/lang/CharSequence;
    :goto_2
    new-instance v24, Lcom/android/settingslib/location/RecentLocationApps$Request;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v25, 0x0

    move-object/from16 v3, v24

    move-object v4, v13

    move-object v5, v0

    move-object v7, v11

    move/from16 v8, v17

    move-object/from16 v9, v23

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "appLabel":Ljava/lang/CharSequence;
    .local v26, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v27, "appLabel":Ljava/lang/CharSequence;
    move-wide/from16 v10, v19

    move v1, v12

    .end local v12    # "userId":I
    .local v1, "userId":I
    move-object/from16 v12, v25

    :try_start_3
    invoke-direct/range {v3 .. v12}, Lcom/android/settingslib/location/RecentLocationApps$Request;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;JLcom/android/settingslib/location/RecentLocationApps$1;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v22, v24

    .line 225
    .end local v0    # "userHandle":Landroid/os/UserHandle;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v23    # "badgedAppLabel":Ljava/lang/CharSequence;
    .end local v26    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v27    # "appLabel":Ljava/lang/CharSequence;
    goto :goto_4

    .line 223
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v1    # "userId":I
    .restart local v12    # "userId":I
    :catch_2
    move-exception v0

    move v1, v12

    .line 224
    .end local v12    # "userId":I
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "userId":I
    :goto_3
    sget-object v3, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package name not found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    return-object v22
.end method


# virtual methods
.method public getAppList(Z)Ljava/util/List;
    .locals 25
    .param p1, "showSystemApps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    .line 77
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 79
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    .line 80
    const-string v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 81
    .local v2, "aoManager":Landroid/app/AppOpsManager;
    sget-object v3, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_REQUEST_OPS:[I

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v3

    .line 83
    .local v3, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 86
    .local v5, "appOpsCount":I
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v6, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 88
    .local v7, "now":J
    iget-object v9, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .line 89
    .local v9, "um":Landroid/os/UserManager;
    invoke-virtual {v9}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v10

    .line 91
    .local v10, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v5, :cond_9

    .line 92
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$PackageOps;

    .line 95
    .local v12, "ops":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 96
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v14

    .line 97
    .local v14, "uid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 99
    .local v15, "user":Landroid/os/UserHandle;
    const/16 v4, 0x3e8

    if-ne v14, v4, :cond_1

    .line 100
    const-string v4, "android"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 102
    .local v4, "isAndroidOs":Z
    :goto_2
    if-nez v4, :cond_7

    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 103
    move-object/from16 v23, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v24, v5

    goto/16 :goto_5

    .line 107
    :cond_2
    const/16 v16, 0x1

    .line 108
    .local v16, "showApp":Z
    if-nez p1, :cond_6

    .line 109
    move-object/from16 v17, v2

    .end local v2    # "aoManager":Landroid/app/AppOpsManager;
    .local v17, "aoManager":Landroid/app/AppOpsManager;
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_PERMISSION_OPS:[I

    move-object/from16 v18, v3

    .end local v3    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v18, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    array-length v3, v2

    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "isAndroidOs":Z
    .local v19, "isAndroidOs":Z
    :goto_3
    if-ge v4, v3, :cond_5

    aget v20, v2, v4

    .line 110
    .local v20, "op":I
    move-object/from16 v21, v2

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "permission":Ljava/lang/String;
    move/from16 v22, v3

    invoke-virtual {v1, v2, v13, v15}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    .line 113
    .local v3, "permissionFlags":I
    move-object/from16 v23, v1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .local v23, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    move/from16 v24, v5

    .end local v5    # "appOpsCount":I
    .local v24, "appOpsCount":I
    const/4 v5, -0x1

    invoke-static {v1, v2, v5, v14, v13}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 116
    and-int/lit16 v1, v3, 0x100

    if-nez v1, :cond_4

    .line 119
    const/16 v16, 0x0

    .line 120
    goto :goto_4

    .line 123
    :cond_3
    and-int/lit16 v1, v3, 0x200

    if-nez v1, :cond_4

    .line 125
    const/16 v16, 0x0

    .line 126
    goto :goto_4

    .line 109
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "permissionFlags":I
    .end local v20    # "op":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v1, v23

    move/from16 v5, v24

    goto :goto_3

    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "appOpsCount":I
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "appOpsCount":I
    :cond_5
    move-object/from16 v23, v1

    move/from16 v24, v5

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "appOpsCount":I
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "appOpsCount":I
    goto :goto_4

    .line 108
    .end local v17    # "aoManager":Landroid/app/AppOpsManager;
    .end local v18    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "isAndroidOs":Z
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "appOpsCount":I
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .local v2, "aoManager":Landroid/app/AppOpsManager;
    .local v3, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "isAndroidOs":Z
    .restart local v5    # "appOpsCount":I
    :cond_6
    move-object/from16 v23, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v24, v5

    .line 131
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "aoManager":Landroid/app/AppOpsManager;
    .end local v3    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v4    # "isAndroidOs":Z
    .end local v5    # "appOpsCount":I
    .restart local v17    # "aoManager":Landroid/app/AppOpsManager;
    .restart local v18    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "isAndroidOs":Z
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "appOpsCount":I
    :goto_4
    if-eqz v16, :cond_8

    .line 132
    invoke-direct {v0, v7, v8, v12}, Lcom/android/settingslib/location/RecentLocationApps;->getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;

    move-result-object v1

    .line 133
    .local v1, "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    if-eqz v1, :cond_8

    .line 134
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 102
    .end local v16    # "showApp":Z
    .end local v17    # "aoManager":Landroid/app/AppOpsManager;
    .end local v18    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "isAndroidOs":Z
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "appOpsCount":I
    .local v1, "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "aoManager":Landroid/app/AppOpsManager;
    .restart local v3    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "isAndroidOs":Z
    .restart local v5    # "appOpsCount":I
    :cond_7
    move-object/from16 v23, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v24, v5

    .line 91
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "aoManager":Landroid/app/AppOpsManager;
    .end local v3    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v4    # "isAndroidOs":Z
    .end local v5    # "appOpsCount":I
    .end local v12    # "ops":Landroid/app/AppOpsManager$PackageOps;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "uid":I
    .end local v15    # "user":Landroid/os/UserHandle;
    .restart local v17    # "aoManager":Landroid/app/AppOpsManager;
    .restart local v18    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "appOpsCount":I
    :cond_8
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v1, v23

    move/from16 v5, v24

    goto/16 :goto_1

    .line 138
    .end local v11    # "i":I
    .end local v17    # "aoManager":Landroid/app/AppOpsManager;
    .end local v18    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "appOpsCount":I
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "aoManager":Landroid/app/AppOpsManager;
    .restart local v3    # "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "appOpsCount":I
    :cond_9
    return-object v6
.end method

.method public getAppListSorted(Z)Ljava/util/List;
    .locals 2
    .param p1, "showSystemApps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settingslib/location/RecentLocationApps;->getAppList(Z)Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    new-instance v1, Lcom/android/settingslib/location/RecentLocationApps$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/location/RecentLocationApps$1;-><init>(Lcom/android/settingslib/location/RecentLocationApps;)V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 156
    return-object v0
.end method
