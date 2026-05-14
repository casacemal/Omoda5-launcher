.class public final Lcom/android/car/internal/PropertyPermissionMapping;
.super Ljava/lang/Object;
.source "PropertyPermissionMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/internal/PropertyPermissionMapping$Permission;
    }
.end annotation


# static fields
.field private static final VENDOR_MASK:I = 0x20000000

.field private static final VENDOR_PERMISION:Lcom/android/car/internal/PropertyPermissionMapping$Permission;


# instance fields
.field private final mPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/car/internal/PropertyPermissionMapping$Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.car.permission.CAR_VENDOR_EXTENSION"

    .line 31
    invoke-static {v0}, Lcom/android/car/internal/PropertyPermissionMapping$Permission;->of(Ljava/lang/String;)Lcom/android/car/internal/PropertyPermissionMapping$Permission;

    move-result-object v0

    sput-object v0, Lcom/android/car/internal/PropertyPermissionMapping;->VENDOR_PERMISION:Lcom/android/car/internal/PropertyPermissionMapping$Permission;

    return-void
.end method

.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/car/internal/PropertyPermissionMapping;->mPermissions:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Integer;

    const v3, 0x16400b00

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x16400b01

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const v3, 0x16200b02

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "android.car.permission.CONTROL_CAR_DOORS"

    .line 38
    invoke-direct {v0, v3, v2}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/Integer;

    const v7, 0x14400b40

    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const v7, 0x14400b41

    .line 44
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const v7, 0x14400b42

    .line 45
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const v7, 0x14400b43

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    const v7, 0x11200b44

    .line 47
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v3, v8

    const v7, 0x11200b45

    .line 48
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x5

    aput-object v7, v3, v9

    const-string v7, "android.car.permission.CONTROL_CAR_MIRRORS"

    .line 42
    invoke-direct {v0, v7, v3}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    const/16 v3, 0x1b

    new-array v3, v3, [Ljava/lang/Integer;

    const v7, 0x15400b80

    .line 50
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const v7, 0x15400b81

    .line 51
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const v7, 0x15200b82

    .line 52
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const v7, 0x15400b83

    .line 53
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    const v7, 0x15400b84

    .line 54
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v8

    const v7, 0x15400b85

    .line 55
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v9

    const v7, 0x15400b86

    .line 56
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    const v7, 0x15400b87

    .line 57
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x7

    aput-object v7, v3, v10

    const v7, 0x15400b88

    .line 58
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v11, 0x8

    aput-object v7, v3, v11

    const v7, 0x15400b89

    .line 59
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v12, 0x9

    aput-object v7, v3, v12

    const v7, 0x15400b8a

    .line 60
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v13, 0xa

    aput-object v7, v3, v13

    const v7, 0x15400b8b

    .line 61
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v14, 0xb

    aput-object v7, v3, v14

    const v7, 0x15400b8c    # 3.87832E-26f

    .line 62
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v15, 0xc

    aput-object v7, v3, v15

    const v7, 0x15400b8d

    .line 63
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v16, 0xd

    aput-object v7, v3, v16

    const v7, 0x15400b8e

    .line 64
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v17, 0xe

    aput-object v7, v3, v17

    const v7, 0x15400b8f

    .line 65
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v18, 0xf

    aput-object v7, v3, v18

    const v7, 0x15400b90

    .line 66
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v19, 0x10

    aput-object v7, v3, v19

    const v7, 0x15400b91

    .line 67
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v20, 0x11

    aput-object v7, v3, v20

    const v7, 0x15400b92

    .line 68
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v21, 0x12

    aput-object v7, v3, v21

    const v7, 0x15400b93

    .line 69
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v22, 0x13

    aput-object v7, v3, v22

    const v7, 0x15400b94

    .line 70
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v23, 0x14

    aput-object v7, v3, v23

    const v7, 0x11400b95

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v15, 0x15

    aput-object v7, v3, v15

    const v7, 0x15400b96

    .line 72
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v24, 0x16

    aput-object v7, v3, v24

    const v7, 0x15400b97

    .line 73
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v24, 0x17

    aput-object v7, v3, v24

    const v7, 0x15400b98

    .line 74
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v24, 0x18

    aput-object v7, v3, v24

    const v7, 0x15400b99

    .line 75
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v24, 0x19

    aput-object v7, v3, v24

    const v7, 0x15400b9a

    .line 76
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v24, 0x1a

    aput-object v7, v3, v24

    const-string v7, "android.car.permission.CONTROL_CAR_SEATS"

    .line 49
    invoke-direct {v0, v7, v3}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v3, v1, [Ljava/lang/Integer;

    const v7, 0x13400bc0

    .line 78
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const v7, 0x13400bc1

    .line 79
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const v7, 0x13200bc4

    .line 80
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const-string v7, "android.car.permission.CONTROL_CAR_WINDOWS"

    .line 77
    invoke-direct {v0, v7, v3}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v3, v15, [Ljava/lang/Integer;

    const v7, 0x15400500

    .line 83
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const v7, 0x15400501

    .line 84
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const v7, 0x15600502

    .line 85
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const v7, 0x15600503

    .line 86
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    const v7, 0x13200504

    .line 87
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v8

    const v7, 0x15200505

    .line 88
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v9

    const v7, 0x15200506

    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    const v7, 0x15200507

    .line 90
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v10

    const v7, 0x15200508

    .line 91
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v11

    const v7, 0x15200509

    .line 92
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v12

    const v7, 0x1520050a

    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v13

    const v7, 0x1540050b

    .line 94
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v14

    const v7, 0x1440050c

    .line 95
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v14, 0xc

    aput-object v7, v3, v14

    const v7, 0x1140050d

    .line 96
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v16

    const v7, 0x1140050e

    .line 97
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v17

    const v7, 0x1540050f

    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v18

    const v7, 0x15200510

    .line 99
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v19

    const v7, 0x15410511

    .line 100
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v20

    const v7, 0x15200512

    .line 101
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v21

    const v7, 0x15400513

    .line 102
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v22

    const v7, 0x21701001

    .line 103
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v23

    const-string v7, "android.car.permission.CONTROL_CAR_CLIMATE"

    .line 82
    invoke-direct {v0, v7, v3}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v3, v5, [Ljava/lang/Integer;

    const v7, 0x11100100

    .line 106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const-string v7, "android.car.permission.CAR_IDENTIFICATION"

    invoke-direct {v0, v7, v3}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v3, v13, [Ljava/lang/Integer;

    const v7, 0x11100101

    .line 108
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const v7, 0x11100102

    .line 109
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const v7, 0x11400103

    .line 110
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const v7, 0x11600104

    .line 111
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    const v7, 0x11410105

    .line 112
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v8

    const v7, 0x11600106

    .line 113
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v9

    const v7, 0x11410107

    .line 114
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    const v2, 0x11400108

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v10

    const v2, 0x11400109

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v11

    const v2, 0x1540010a

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v12

    const-string v2, "android.car.permission.CAR_INFO"

    .line 107
    invoke-direct {v0, v2, v3}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v2, v5, [Ljava/lang/Integer;

    const v3, 0x11600204

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "android.car.permission.CAR_MILEAGE"

    invoke-direct {v0, v3, v2}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v2, v1, [Ljava/lang/Integer;

    const v3, 0x11600207

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x11600208

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x11510306

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "android.car.permission.CAR_SPEED"

    .line 121
    invoke-direct {v0, v3, v2}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v2, v8, [Ljava/lang/Integer;

    const v3, 0x11600301

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x11400303

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x11600304

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x11600305

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "android.car.permission.CAR_ENGINE_DETAILED"

    .line 125
    invoke-direct {v0, v3, v2}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v2, v9, [Ljava/lang/Integer;

    const v3, 0x11600307

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x11600309

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x1160030c

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x11600308

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const v3, 0x11200405

    .line 135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "android.car.permission.CAR_ENERGY"

    .line 130
    invoke-direct {v0, v3, v2}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v2, v1, [Ljava/lang/Integer;

    const v3, 0x11200308

    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x1120030a

    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x1120030b

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "android.car.permission.CAR_ENERGY_PORTS"

    .line 136
    invoke-direct {v0, v3, v2}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v2, v5, [Ljava/lang/Integer;

    const v3, 0x17600309

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "android.car.permission.CAR_TIRES"

    invoke-direct {v0, v3, v2}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v2, v9, [Ljava/lang/Integer;

    const v3, 0x11400400

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x11400401

    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x11200402

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x11200403

    .line 145
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const v3, 0x11400409

    .line 146
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "android.car.permission.CAR_POWERTRAIN"

    .line 141
    invoke-direct {v0, v3, v2}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v2, v6, [Ljava/lang/Integer;

    const v3, 0x11200407

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x11600703

    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "android.car.permission.CAR_EXTERIOR_ENVIRONMENT"

    .line 148
    invoke-direct {v0, v3, v2}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v2, v6, [Ljava/lang/Integer;

    const v3, 0x1120040a

    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x1120040b

    .line 153
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "android.car.permission.CAR_DYNAMICS_STATE"

    .line 151
    invoke-direct {v0, v3, v2}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v2, v9, [Ljava/lang/Integer;

    const v3, 0x11400408

    .line 155
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x11400e00

    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x11400e01

    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x11400e02

    .line 158
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const v3, 0x11400e03

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "android.car.permission.CAR_EXTERIOR_LIGHTS"

    .line 154
    invoke-direct {v0, v3, v2}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v2, v8, [Ljava/lang/Integer;

    const v3, 0x11400e10

    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x11400e11

    .line 162
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x11400e12

    .line 163
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x11400e13

    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "android.car.permission.CAR_EXTERIOR_LIGHTS"

    const-string v3, "android.car.permission.CONTROL_CAR_EXTERIOR_LIGHTS"

    .line 160
    invoke-direct {v0, v1, v3, v2}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;)V

    return-void
.end method

.method private getPermission(I)Lcom/android/car/internal/PropertyPermissionMapping$Permission;
    .locals 1

    .line 187
    invoke-static {p1}, Lcom/android/car/internal/PropertyPermissionMapping;->isVendorExtension(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/car/internal/PropertyPermissionMapping;->VENDOR_PERMISION:Lcom/android/car/internal/PropertyPermissionMapping$Permission;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/car/internal/PropertyPermissionMapping;->mPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/car/internal/PropertyPermissionMapping$Permission;

    :goto_0
    return-object p0
.end method

.method private static isVendorExtension(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private map(Lcom/android/car/internal/PropertyPermissionMapping$Permission;[Ljava/lang/Integer;)V
    .locals 4

    .line 204
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 205
    iget-object v3, p0, Lcom/android/car/internal/PropertyPermissionMapping;->mPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private varargs map(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 0

    .line 196
    invoke-static {p1, p2}, Lcom/android/car/internal/PropertyPermissionMapping$Permission;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/android/car/internal/PropertyPermissionMapping$Permission;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Lcom/android/car/internal/PropertyPermissionMapping$Permission;[Ljava/lang/Integer;)V

    return-void
.end method

.method private varargs map(Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 0

    .line 200
    invoke-static {p1}, Lcom/android/car/internal/PropertyPermissionMapping$Permission;->of(Ljava/lang/String;)Lcom/android/car/internal/PropertyPermissionMapping$Permission;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/car/internal/PropertyPermissionMapping;->map(Lcom/android/car/internal/PropertyPermissionMapping$Permission;[Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getReadPermission(I)Ljava/lang/String;
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lcom/android/car/internal/PropertyPermissionMapping;->getPermission(I)Lcom/android/car/internal/PropertyPermissionMapping$Permission;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 173
    :cond_0
    invoke-static {p0}, Lcom/android/car/internal/PropertyPermissionMapping$Permission;->access$000(Lcom/android/car/internal/PropertyPermissionMapping$Permission;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getWritePermission(I)Ljava/lang/String;
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/android/car/internal/PropertyPermissionMapping;->getPermission(I)Lcom/android/car/internal/PropertyPermissionMapping$Permission;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {p0}, Lcom/android/car/internal/PropertyPermissionMapping$Permission;->access$100(Lcom/android/car/internal/PropertyPermissionMapping$Permission;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
