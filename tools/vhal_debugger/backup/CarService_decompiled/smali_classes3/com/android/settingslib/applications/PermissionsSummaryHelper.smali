.class public Lcom/android/settingslib/applications/PermissionsSummaryHelper;
.super Ljava/lang/Object;
.source "PermissionsSummaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 31
    const-class v0, Landroid/permission/PermissionControllerManager;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    .line 33
    .local v0, "permController":Landroid/permission/PermissionControllerManager;
    new-instance v1, Lcom/android/settingslib/applications/-$$Lambda$PermissionsSummaryHelper$5KNAuDHouZhJftbqZ0g04ncINrg;

    invoke-direct {v1, p2}, Lcom/android/settingslib/applications/-$$Lambda$PermissionsSummaryHelper$5KNAuDHouZhJftbqZ0g04ncINrg;-><init>(Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/permission/PermissionControllerManager;->getAppPermissions(Ljava/lang/String;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Landroid/os/Handler;)V

    .line 61
    return-void
.end method

.method static synthetic lambda$getPermissionSummary$0(Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;Ljava/util/List;)V
    .locals 8
    .param p0, "callback"    # Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;
    .param p1, "permissions"    # Ljava/util/List;

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 36
    .local v0, "permissionCount":I
    const/4 v1, 0x0

    .line 37
    .local v1, "grantedStandardCount":I
    const/4 v2, 0x0

    .line 38
    .local v2, "grantedAdditionalCount":I
    const/4 v3, 0x0

    .line 39
    .local v3, "requestedCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v4, "grantedStandardLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 42
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/permission/RuntimePermissionPresentationInfo;

    .line 43
    .local v6, "permission":Landroid/permission/RuntimePermissionPresentationInfo;
    add-int/lit8 v3, v3, 0x1

    .line 44
    invoke-virtual {v6}, Landroid/permission/RuntimePermissionPresentationInfo;->isGranted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 45
    invoke-virtual {v6}, Landroid/permission/RuntimePermissionPresentationInfo;->isStandard()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 46
    invoke-virtual {v6}, Landroid/permission/RuntimePermissionPresentationInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 41
    .end local v6    # "permission":Landroid/permission/RuntimePermissionPresentationInfo;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 54
    .end local v5    # "i":I
    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v5

    .line 55
    .local v5, "collator":Ljava/text/Collator;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/text/Collator;->setStrength(I)V

    .line 56
    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 58
    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;->onPermissionSummaryResult(IIILjava/util/List;)V

    .line 60
    return-void
.end method
