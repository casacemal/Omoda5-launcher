.class public Lcom/android/car/pm/ActivityBlockingActivity;
.super Landroid/app/Activity;
.source "ActivityBlockingActivity.java"


# static fields
.field private static final INVALID_TASK_ID:I = -0x1


# instance fields
.field private mBlockedAppIcon:Landroid/widget/ImageView;

.field private mBlockedAppName:Landroid/widget/TextView;

.field private mBlockedTaskId:I

.field private mBlockingText:Landroid/widget/TextView;

.field private mCar:Landroid/car/Car;

.field private mExitButton:Landroid/widget/Button;

.field private mExitButtonMessage:Landroid/widget/TextView;

.field private mUxRManager:Landroid/car/drivingstate/CarUxRestrictionsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private displayDebugInfo()V
    .locals 5

    .line 136
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "blocked_activity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "blockedActivity":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "root_activity_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "rootActivity":Ljava/lang/String;
    const v2, 0x7f090077

    invoke-virtual {p0, v2}, Lcom/android/car/pm/ActivityBlockingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 141
    .local v2, "debugInfo":Landroid/widget/TextView;
    invoke-direct {p0, v0, v1}, Lcom/android/car/pm/ActivityBlockingActivity;->getDebugInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v3, 0x7f09013a

    invoke-virtual {p0, v3}, Lcom/android/car/pm/ActivityBlockingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 146
    .local v3, "toggleDebug":Landroid/widget/Button;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    new-instance v4, Lcom/android/car/pm/-$$Lambda$ActivityBlockingActivity$e12NXTRgwaUatljwAqWyoQQczms;

    invoke-direct {v4, v2}, Lcom/android/car/pm/-$$Lambda$ActivityBlockingActivity$e12NXTRgwaUatljwAqWyoQQczms;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method

.method private findApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "flattenComponentName"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 209
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 211
    .local v0, "componentName":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x4

    const-string v3, "CAR.AM"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find package for component name "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private findHumanReadableLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "flattenComponentName"    # Ljava/lang/String;

    .line 228
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 229
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 232
    .local v1, "label":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 233
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 232
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 234
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 235
    .local v3, "appLabel":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 236
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 243
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appLabel":Ljava/lang/CharSequence;
    :cond_0
    goto :goto_0

    .line 238
    :catch_0
    move-exception v2

    .line 239
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x4

    const-string v4, "CAR.AM"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find package for component name "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 247
    :cond_2
    return-object v1
.end method

.method private getDebugInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "blockedActivity"    # Ljava/lang/String;
    .param p2, "rootActivity"    # Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v0, "debug":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 157
    .local v1, "blocked":Landroid/content/ComponentName;
    const-string v2, "Blocked activity is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v2, "\nBlocked activity package is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    if-eqz p2, :cond_1

    .line 163
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 165
    .local v2, "root":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    const-string v3, "\n\nRoot activity is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    const-string v3, "\nRoot activity package is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .end local v2    # "root":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleRestartingTask()V
    .locals 3

    .line 251
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    return-void

    .line 256
    :cond_0
    monitor-enter p0

    .line 257
    :try_start_0
    const-string v0, "CAR.AM"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const-string v0, "CAR.AM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restarting task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mCar:Landroid/car/Car;

    const-string v1, "package"

    .line 261
    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/content/pm/CarPackageManager;

    .line 262
    .local v0, "carPm":Landroid/car/content/pm/CarPackageManager;
    iget v1, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedTaskId:I

    invoke-virtual {v0, v1}, Landroid/car/content/pm/CarPackageManager;->restartTask(I)V

    .line 263
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->finish()V

    .line 264
    .end local v0    # "carPm":Landroid/car/content/pm/CarPackageManager;
    monitor-exit p0

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleUxRChange(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 1
    .param p1, "restrictions"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 198
    if-nez p1, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->finish()V

    .line 204
    :cond_1
    return-void
.end method

.method public static synthetic lambda$2aOjBy7l2ri8zXpoth3lxHlv12A(Lcom/android/car/pm/ActivityBlockingActivity;Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/pm/ActivityBlockingActivity;->handleUxRChange(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method static synthetic lambda$displayDebugInfo$1(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2
    .param p0, "debugInfo"    # Landroid/widget/TextView;
    .param p1, "v"    # Landroid/view/View;

    .line 148
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 149
    .local v0, "isDebugVisible":Z
    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    return-void
.end method


# virtual methods
.method public synthetic lambda$onResume$0$ActivityBlockingActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 124
    invoke-direct {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->handleRestartingTask()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/android/car/pm/ActivityBlockingActivity;->setContentView(I)V

    .line 70
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/android/car/pm/ActivityBlockingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockingText:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/android/car/pm/ActivityBlockingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedAppName:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/android/car/pm/ActivityBlockingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedAppIcon:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/android/car/pm/ActivityBlockingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mExitButton:Landroid/widget/Button;

    .line 74
    const v0, 0x7f090089

    invoke-virtual {p0, v0}, Lcom/android/car/pm/ActivityBlockingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mExitButtonMessage:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockingText:Landroid/widget/TextView;

    const v1, 0x7f0f002c

    invoke-virtual {p0, v1}, Lcom/android/car/pm/ActivityBlockingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {p0}, Landroid/car/Car;->createCar(Landroid/content/Context;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mCar:Landroid/car/Car;

    .line 83
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mCar:Landroid/car/Car;

    const-string v1, "uxrestriction"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsManager;

    iput-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mUxRManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    .line 88
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mUxRManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getCurrentCarUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/pm/ActivityBlockingActivity;->handleUxRChange(Landroid/car/drivingstate/CarUxRestrictions;)V

    .line 89
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mUxRManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    new-instance v1, Lcom/android/car/pm/-$$Lambda$ActivityBlockingActivity$2aOjBy7l2ri8zXpoth3lxHlv12A;

    invoke-direct {v1, p0}, Lcom/android/car/pm/-$$Lambda$ActivityBlockingActivity$2aOjBy7l2ri8zXpoth3lxHlv12A;-><init>(Lcom/android/car/pm/ActivityBlockingActivity;)V

    invoke-virtual {v0, v1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->registerListener(Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V

    .line 90
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 192
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mUxRManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->unregisterListener()V

    .line 193
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/car/pm/ActivityBlockingActivity;->setIntent(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "blocked_task_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedTaskId:I

    .line 102
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "blocked_activity"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "blockedActivity":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_2

    .line 105
    const/4 v2, 0x3

    const-string v4, "CAR.AM"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Blocking activity "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/car/pm/ActivityBlockingActivity;->findApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 110
    .local v2, "appIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 111
    iget-object v4, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v4, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    :goto_0
    iget-object v4, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedAppName:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/car/pm/ActivityBlockingActivity;->findHumanReadableLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .end local v2    # "appIcon":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "is_root_activity_do"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 122
    .local v2, "isRootDO":Z
    iget v5, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedTaskId:I

    const/4 v6, 0x1

    if-eq v5, v1, :cond_3

    if-eqz v2, :cond_3

    move v1, v6

    goto :goto_1

    :cond_3
    move v1, v4

    .line 123
    .local v1, "showButton":Z
    :goto_1
    iget-object v5, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mExitButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    move v7, v4

    goto :goto_2

    :cond_4
    move v7, v3

    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v5, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mExitButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/car/pm/-$$Lambda$ActivityBlockingActivity$kb31Fw5RWVwpnNdk0CzxOE7_ILw;

    invoke-direct {v7, p0}, Lcom/android/car/pm/-$$Lambda$ActivityBlockingActivity$kb31Fw5RWVwpnNdk0CzxOE7_ILw;-><init>(Lcom/android/car/pm/ActivityBlockingActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v5, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mExitButtonMessage:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v3, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mExitButtonMessage:Landroid/widget/TextView;

    const v5, 0x7f0f0152

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x7f0f0151

    .line 127
    invoke-virtual {p0, v7}, Lcom/android/car/pm/ActivityBlockingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/android/car/pm/ActivityBlockingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    sget-boolean v3, Landroid/os/Build;->IS_ENG:Z

    if-nez v3, :cond_6

    sget-boolean v3, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v3, :cond_7

    .line 131
    :cond_6
    invoke-direct {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->displayDebugInfo()V

    .line 133
    :cond_7
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 186
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->finish()V

    .line 187
    return-void
.end method
