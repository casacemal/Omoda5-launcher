.class public Lcom/android/settingslib/display/DisplayDensityUtils;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DisplayDensityUtils"

.field private static final MAX_SCALE:F = 1.5f

.field private static final MIN_DIMENSION_DP:I = 0x140

.field private static final MIN_SCALE:F = 0.85f

.field private static final MIN_SCALE_INTERVAL:F = 0.09f

.field private static final SUMMARIES_LARGER:[I

.field private static final SUMMARIES_SMALLER:[I

.field private static final SUMMARY_CUSTOM:I

.field public static final SUMMARY_DEFAULT:I


# instance fields
.field private final mCurrentIndex:I

.field private final mDefaultDensity:I

.field private final mEntries:[Ljava/lang/String;

.field private final mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 51
    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_default:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    .line 54
    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_custom:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    .line 60
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_small:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    .line 68
    const/4 v1, 0x3

    new-array v1, v1, [I

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_large:I

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_very_large:I

    aput v2, v1, v0

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_extremely_large:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDisplayDensity(I)I

    move-result v2

    .line 90
    .local v2, "defaultDensity":I
    if-gtz v2, :cond_0

    .line 91
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 92
    iput-object v3, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    .line 93
    iput v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 94
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    .line 95
    return-void

    .line 98
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 99
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 100
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 102
    iget v5, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 103
    .local v5, "currentDensity":I
    const/4 v6, -0x1

    .line 106
    .local v6, "currentDensityIndex":I
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 107
    .local v7, "minDimensionPx":I
    mul-int/lit16 v8, v7, 0xa0

    div-int/lit16 v8, v8, 0x140

    .line 108
    .local v8, "maxDensity":I
    const/high16 v9, 0x3fc00000    # 1.5f

    int-to-float v10, v8

    int-to-float v11, v2

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 109
    .local v9, "maxScale":F
    const v10, 0x3f59999a    # 0.85f

    .line 110
    .local v10, "minScale":F
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v12, v9, v11

    const v13, 0x3db851ec    # 0.09f

    div-float/2addr v12, v13

    sget-object v13, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    array-length v13, v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-static {v12, v14, v13}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v12

    float-to-int v12, v12

    .line 112
    .local v12, "numLarger":I
    const v13, 0x3fd55553

    sget-object v15, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    array-length v15, v15

    int-to-float v15, v15

    invoke-static {v13, v14, v15}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v13

    float-to-int v13, v13

    .line 115
    .local v13, "numSmaller":I
    add-int/lit8 v14, v13, 0x1

    add-int/2addr v14, v12

    new-array v14, v14, [Ljava/lang/String;

    .line 116
    .local v14, "entries":[Ljava/lang/String;
    array-length v15, v14

    new-array v15, v15, [I

    .line 117
    .local v15, "values":[I
    const/16 v16, 0x0

    .line 119
    .local v16, "curIndex":I
    if-lez v13, :cond_3

    .line 120
    const v17, 0x3e199998    # 0.14999998f

    int-to-float v1, v13

    div-float v17, v17, v1

    .line 121
    .local v17, "interval":F
    add-int/lit8 v1, v13, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 123
    int-to-float v11, v2

    move-object/from16 v19, v4

    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .local v19, "metrics":Landroid/util/DisplayMetrics;
    add-int/lit8 v4, v1, 0x1

    int-to-float v4, v4

    mul-float v4, v4, v17

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v4, v18, v4

    mul-float/2addr v11, v4

    float-to-int v4, v11

    and-int/lit8 v4, v4, -0x2

    .line 124
    .local v4, "density":I
    if-ne v5, v4, :cond_1

    .line 125
    move/from16 v6, v16

    .line 127
    :cond_1
    sget-object v11, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    aget v11, v11, v1

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v16

    .line 128
    aput v4, v15, v16

    .line 129
    nop

    .end local v4    # "density":I
    add-int/lit8 v16, v16, 0x1

    .line 121
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v4, v19

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_0

    .end local v19    # "metrics":Landroid/util/DisplayMetrics;
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    :cond_2
    move-object/from16 v19, v4

    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v19    # "metrics":Landroid/util/DisplayMetrics;
    goto :goto_1

    .line 119
    .end local v1    # "i":I
    .end local v17    # "interval":F
    .end local v19    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v4    # "metrics":Landroid/util/DisplayMetrics;
    :cond_3
    move-object/from16 v19, v4

    .line 133
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v19    # "metrics":Landroid/util/DisplayMetrics;
    :goto_1
    if-ne v5, v2, :cond_4

    .line 134
    move/from16 v6, v16

    .line 136
    :cond_4
    aput v2, v15, v16

    .line 137
    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v16

    .line 138
    const/4 v1, 0x1

    add-int/lit8 v16, v16, 0x1

    .line 140
    if-lez v12, :cond_7

    .line 141
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v11, v9, v4

    int-to-float v4, v12

    div-float/2addr v11, v4

    .line 142
    .local v11, "interval":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v12, :cond_6

    .line 144
    int-to-float v1, v2

    move/from16 v20, v6

    .end local v6    # "currentDensityIndex":I
    .local v20, "currentDensityIndex":I
    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    mul-float/2addr v6, v11

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v6, v6, v18

    mul-float/2addr v1, v6

    float-to-int v1, v1

    and-int/lit8 v1, v1, -0x2

    .line 145
    .local v1, "density":I
    if-ne v5, v1, :cond_5

    .line 146
    move/from16 v6, v16

    .end local v20    # "currentDensityIndex":I
    .restart local v6    # "currentDensityIndex":I
    goto :goto_3

    .line 145
    .end local v6    # "currentDensityIndex":I
    .restart local v20    # "currentDensityIndex":I
    :cond_5
    move/from16 v6, v20

    .line 148
    .end local v20    # "currentDensityIndex":I
    .restart local v6    # "currentDensityIndex":I
    :goto_3
    aput v1, v15, v16

    .line 149
    sget-object v20, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    move/from16 v21, v1

    .end local v1    # "density":I
    .local v21, "density":I
    aget v1, v20, v4

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v16

    .line 150
    nop

    .end local v21    # "density":I
    add-int/lit8 v16, v16, 0x1

    .line 142
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    move/from16 v20, v6

    .end local v6    # "currentDensityIndex":I
    .restart local v20    # "currentDensityIndex":I
    goto :goto_4

    .line 140
    .end local v4    # "i":I
    .end local v11    # "interval":F
    .end local v20    # "currentDensityIndex":I
    .restart local v6    # "currentDensityIndex":I
    :cond_7
    move/from16 v20, v6

    .line 155
    .end local v6    # "currentDensityIndex":I
    .restart local v20    # "currentDensityIndex":I
    :goto_4
    if-ltz v20, :cond_8

    .line 156
    move/from16 v1, v20

    .local v1, "displayIndex":I
    goto :goto_5

    .line 160
    .end local v1    # "displayIndex":I
    :cond_8
    array-length v1, v15

    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 161
    .local v1, "newLength":I
    invoke-static {v15, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v15

    .line 162
    aput v5, v15, v16

    .line 164
    invoke-static {v14, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, [Ljava/lang/String;

    .line 165
    sget v6, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v17, 0x0

    aput-object v11, v4, v17

    invoke-virtual {v3, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v16

    .line 167
    move/from16 v1, v16

    .line 170
    .local v1, "displayIndex":I
    :goto_5
    iput v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 171
    iput v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    .line 172
    iput-object v14, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 173
    iput-object v15, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    .line 174
    return-void
.end method

.method public static clearForcedDisplayDensity(I)V
    .locals 2
    .param p0, "displayId"    # I

    .line 217
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 218
    .local v0, "userId":I
    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;-><init>(II)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method private static getDefaultDisplayDensity(I)I
    .locals 2
    .param p0, "displayId"    # I

    .line 201
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 202
    .local v0, "wm":Landroid/view/IWindowManager;
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 203
    .end local v0    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "exc":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method static synthetic lambda$clearForcedDisplayDensity$0(II)V
    .locals 3
    .param p0, "displayId"    # I
    .param p1, "userId"    # I

    .line 220
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 221
    .local v0, "wm":Landroid/view/IWindowManager;
    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0    # "wm":Landroid/view/IWindowManager;
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v1, "DisplayDensityUtils"

    const-string v2, "Unable to clear forced display density setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v0    # "exc":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$setForcedDisplayDensity$1(III)V
    .locals 3
    .param p0, "displayId"    # I
    .param p1, "density"    # I
    .param p2, "userId"    # I

    .line 241
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 242
    .local v0, "wm":Landroid/view/IWindowManager;
    invoke-interface {v0, p0, p1, p2}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "wm":Landroid/view/IWindowManager;
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v1, "DisplayDensityUtils"

    const-string v2, "Unable to save forced display density setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "exc":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static setForcedDisplayDensity(II)V
    .locals 2
    .param p0, "displayId"    # I
    .param p1, "density"    # I

    .line 238
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 239
    .local v0, "userId":I
    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$jbnNZEy3zYf8rJTNV5wQSa3Z5eQ;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$jbnNZEy3zYf8rJTNV5wQSa3Z5eQ;-><init>(III)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return v0
.end method

.method public getDefaultDensity()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    return v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method public getValues()[I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    return-object v0
.end method
