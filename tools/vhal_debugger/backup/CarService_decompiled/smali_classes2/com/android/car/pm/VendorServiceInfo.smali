.class Lcom/android/car/pm/VendorServiceInfo;
.super Ljava/lang/Object;
.source "VendorServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/pm/VendorServiceInfo$Bind;,
        Lcom/android/car/pm/VendorServiceInfo$Trigger;,
        Lcom/android/car/pm/VendorServiceInfo$UserScope;
    }
.end annotation


# static fields
.field private static final BIND:I = 0x0

.field private static final KEY_BIND:Ljava/lang/String; = "bind"

.field private static final KEY_TRIGGER:Ljava/lang/String; = "trigger"

.field private static final KEY_USER_SCOPE:Ljava/lang/String; = "user"

.field private static final START:I = 0x1

.field private static final START_FOREGROUND:I = 0x2

.field private static final TRIGGER_ASAP:I = 0x0

.field private static final TRIGGER_UNLOCKED:I = 0x1

.field private static final USER_SCOPE_ALL:I = 0x0

.field private static final USER_SCOPE_FOREGROUND:I = 0x2

.field private static final USER_SCOPE_SYSTEM:I = 0x1


# instance fields
.field private final mBind:I

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mTrigger:I

.field private final mUserScope:I


# direct methods
.method private constructor <init>(Landroid/content/ComponentName;III)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "bind"    # I
    .param p3, "userScope"    # I
    .param p4, "trigger"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/car/pm/VendorServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 75
    iput p3, p0, Lcom/android/car/pm/VendorServiceInfo;->mUserScope:I

    .line 76
    iput p4, p0, Lcom/android/car/pm/VendorServiceInfo;->mTrigger:I

    .line 77
    iput p2, p0, Lcom/android/car/pm/VendorServiceInfo;->mBind:I

    .line 78
    return-void
.end method

.method static parse(Ljava/lang/String;)Lcom/android/car/pm/VendorServiceInfo;
    .locals 17
    .param p0, "rawServiceInfo"    # Ljava/lang/String;

    .line 111
    move-object/from16 v0, p0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "serviceParamTokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_13

    array-length v2, v1

    const/4 v4, 0x2

    if-gt v2, v4, :cond_13

    .line 118
    const/4 v2, 0x0

    aget-object v5, v1, v2

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 119
    .local v5, "cn":Landroid/content/ComponentName;
    if-eqz v5, :cond_12

    .line 124
    const/4 v6, 0x1

    .line 125
    .local v6, "bind":I
    const/4 v7, 0x0

    .line 126
    .local v7, "userScope":I
    const/4 v8, 0x1

    .line 128
    .local v8, "trigger":I
    array-length v9, v1

    if-ne v9, v4, :cond_11

    .line 129
    aget-object v9, v1, v3

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v11, v8

    move v8, v7

    move v7, v6

    move v6, v2

    .end local v6    # "bind":I
    .local v7, "bind":I
    .local v8, "userScope":I
    .local v11, "trigger":I
    :goto_0
    if-ge v6, v10, :cond_10

    aget-object v12, v9, v6

    .line 130
    .local v12, "keyValueStr":Ljava/lang/String;
    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 131
    .local v13, "pair":[Ljava/lang/String;
    aget-object v14, v13, v2

    .line 132
    .local v14, "key":Ljava/lang/String;
    aget-object v15, v13, v3

    .line 133
    .local v15, "val":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 134
    move v2, v4

    move v4, v3

    goto/16 :goto_3

    .line 137
    :cond_0
    const/16 v16, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, -0x3f2caa48

    const-string v3, "bind"

    if-eq v2, v4, :cond_4

    const v4, 0x2e243d

    if-eq v2, v4, :cond_3

    const v4, 0x36ebcb

    if-eq v2, v4, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v2, "user"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const-string v2, "trigger"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_2

    :goto_1
    move/from16 v2, v16

    :goto_2
    if-eqz v2, :cond_c

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 161
    const-string v2, "asap"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 162
    const/4 v11, 0x0

    move v2, v3

    goto/16 :goto_3

    .line 163
    :cond_5
    const-string v2, "userUnlocked"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 164
    const/4 v11, 0x1

    move v2, v3

    goto/16 :goto_3

    .line 166
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected trigger: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_8
    const/4 v3, 0x2

    const-string v2, "all"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 151
    const/4 v8, 0x0

    move v2, v3

    goto :goto_3

    .line 152
    :cond_9
    const-string v2, "system"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 153
    const/4 v8, 0x1

    move v2, v3

    goto :goto_3

    .line 154
    :cond_a
    const-string v2, "foreground"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 155
    const/4 v8, 0x2

    move v2, v3

    goto :goto_3

    .line 157
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected user scope: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_c
    const/4 v2, 0x2

    const/4 v4, 0x1

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 140
    const/4 v7, 0x0

    goto :goto_3

    .line 141
    :cond_d
    const-string v3, "start"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 142
    const/4 v7, 0x1

    goto :goto_3

    .line 143
    :cond_e
    const-string v3, "startForeground"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 144
    const/4 v7, 0x2

    .line 129
    .end local v12    # "keyValueStr":Ljava/lang/String;
    .end local v13    # "pair":[Ljava/lang/String;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "val":Ljava/lang/String;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v3, v4

    move v4, v2

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 146
    .restart local v12    # "keyValueStr":Ljava/lang/String;
    .restart local v13    # "pair":[Ljava/lang/String;
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v15    # "val":Ljava/lang/String;
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected bind option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    .end local v12    # "keyValueStr":Ljava/lang/String;
    .end local v13    # "pair":[Ljava/lang/String;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "val":Ljava/lang/String;
    :cond_10
    move v6, v7

    move v7, v8

    move v8, v11

    .line 175
    .end local v11    # "trigger":I
    .restart local v6    # "bind":I
    .local v7, "userScope":I
    .local v8, "trigger":I
    :cond_11
    new-instance v2, Lcom/android/car/pm/VendorServiceInfo;

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/android/car/pm/VendorServiceInfo;-><init>(Landroid/content/ComponentName;III)V

    return-object v2

    .line 120
    .end local v6    # "bind":I
    .end local v7    # "userScope":I
    .end local v8    # "trigger":I
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unflatten component name from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    .end local v5    # "cn":Landroid/content/ComponentName;
    :cond_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse service info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", expected a single \'#\' symbol"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method getIntent()Landroid/content/Intent;
    .locals 2

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/car/pm/VendorServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 107
    return-object v0
.end method

.method isForegroundUserService()Z
    .locals 2

    .line 85
    iget v0, p0, Lcom/android/car/pm/VendorServiceInfo;->mUserScope:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method isSystemUserService()Z
    .locals 2

    .line 81
    iget v0, p0, Lcom/android/car/pm/VendorServiceInfo;->mUserScope:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method shouldBeBound()Z
    .locals 1

    .line 97
    iget v0, p0, Lcom/android/car/pm/VendorServiceInfo;->mBind:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldBeStartedInForeground()Z
    .locals 2

    .line 101
    iget v0, p0, Lcom/android/car/pm/VendorServiceInfo;->mBind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldStartAsap()Z
    .locals 1

    .line 93
    iget v0, p0, Lcom/android/car/pm/VendorServiceInfo;->mTrigger:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldStartOnUnlock()Z
    .locals 2

    .line 89
    iget v0, p0, Lcom/android/car/pm/VendorServiceInfo;->mTrigger:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method toShortString()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceInfo;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VendorService{component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/pm/VendorServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/pm/VendorServiceInfo;->mBind:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/pm/VendorServiceInfo;->mTrigger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/pm/VendorServiceInfo;->mUserScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
