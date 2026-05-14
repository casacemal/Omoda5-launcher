.class Lcom/android/car/internal/PropertyPermissionMapping$Permission;
.super Ljava/lang/Object;
.source "PropertyPermissionMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/internal/PropertyPermissionMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Permission"
.end annotation


# instance fields
.field private final mReadPermission:Ljava/lang/String;

.field private final mWritePermission:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/android/car/internal/PropertyPermissionMapping$Permission;->mReadPermission:Ljava/lang/String;

    .line 215
    iput-object p2, p0, Lcom/android/car/internal/PropertyPermissionMapping$Permission;->mWritePermission:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/internal/PropertyPermissionMapping$Permission;)Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/car/internal/PropertyPermissionMapping$Permission;->mReadPermission:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/car/internal/PropertyPermissionMapping$Permission;)Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/car/internal/PropertyPermissionMapping$Permission;->mWritePermission:Ljava/lang/String;

    return-object p0
.end method

.method static of(Ljava/lang/String;)Lcom/android/car/internal/PropertyPermissionMapping$Permission;
    .locals 1

    .line 223
    new-instance v0, Lcom/android/car/internal/PropertyPermissionMapping$Permission;

    invoke-direct {v0, p0, p0}, Lcom/android/car/internal/PropertyPermissionMapping$Permission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static of(Ljava/lang/String;Ljava/lang/String;)Lcom/android/car/internal/PropertyPermissionMapping$Permission;
    .locals 1

    .line 219
    new-instance v0, Lcom/android/car/internal/PropertyPermissionMapping$Permission;

    invoke-direct {v0, p0, p1}, Lcom/android/car/internal/PropertyPermissionMapping$Permission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
