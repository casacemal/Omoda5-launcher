.class public final Lcom/miniaa/launcher/MainActivity;
.super Landroidx/activity/ComponentActivity;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/miniaa/launcher/MainActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,251:1\n1557#2:252\n1628#2,3:253\n37#3:256\n36#3,3:257\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/miniaa/launcher/MainActivity\n*L\n237#1:252\n237#1:253,3\n239#1:256\n239#1:257,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u001a\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001fH\u0014J\u0008\u0010 \u001a\u00020\u0015H\u0014J\u0010\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0019H\u0016J\u0008\u0010#\u001a\u00020\u0015H\u0002J\u0008\u0010$\u001a\u00020\u0015H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%\u00b2\u0006\n\u0010&\u001a\u00020\u0019X\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/miniaa/launcher/MainActivity;",
        "Landroidx/activity/ComponentActivity;",
        "<init>",
        "()V",
        "mediaViewModel",
        "Lcom/miniaa/launcher/ui/media/MediaViewModel;",
        "handler",
        "Landroid/os/Handler;",
        "nextPressCount",
        "",
        "prevPressCount",
        "doublePressTimeout",
        "",
        "nextPressRunnable",
        "Ljava/lang/Runnable;",
        "prevPressRunnable",
        "locationPermissionLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyDown",
        "",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "onResume",
        "onWindowFocusChanged",
        "hasFocus",
        "hideSystemUI",
        "setAsDefaultLauncher",
        "app_systemRelease",
        "setupDone"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final doublePressTimeout:J

.field private final handler:Landroid/os/Handler;

.field private final locationPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mediaViewModel:Lcom/miniaa/launcher/ui/media/MediaViewModel;

.field private nextPressCount:I

.field private final nextPressRunnable:Ljava/lang/Runnable;

.field private prevPressCount:I

.field private final prevPressRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$EpH3pw9b0Sk6gBu9y6MDvKtqH0w(Lcom/miniaa/launcher/MainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/miniaa/launcher/MainActivity;->prevPressRunnable$lambda$1(Lcom/miniaa/launcher/MainActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FV8h8tsOA2pkp5I5AqnfI9tNjoQ(Ljava/util/Map;)V
    .locals 0

    invoke-static {p0}, Lcom/miniaa/launcher/MainActivity;->locationPermissionLauncher$lambda$2(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qhezWFs-FgDG25P9FrJhzG8qIaY(Lcom/miniaa/launcher/MainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/miniaa/launcher/MainActivity;->nextPressRunnable$lambda$0(Lcom/miniaa/launcher/MainActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miniaa/launcher/MainActivity;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x190

    .line 45
    iput-wide v0, p0, Lcom/miniaa/launcher/MainActivity;->doublePressTimeout:J

    .line 47
    new-instance v0, Lcom/miniaa/launcher/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miniaa/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/miniaa/launcher/MainActivity;)V

    iput-object v0, p0, Lcom/miniaa/launcher/MainActivity;->nextPressRunnable:Ljava/lang/Runnable;

    .line 55
    new-instance v0, Lcom/miniaa/launcher/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miniaa/launcher/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/miniaa/launcher/MainActivity;)V

    iput-object v0, p0, Lcom/miniaa/launcher/MainActivity;->prevPressRunnable:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    .line 65
    new-instance v1, Lcom/miniaa/launcher/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/miniaa/launcher/MainActivity$$ExternalSyntheticLambda2;-><init>()V

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/miniaa/launcher/MainActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/miniaa/launcher/MainActivity;->locationPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$getLocationPermissionLauncher$p(Lcom/miniaa/launcher/MainActivity;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miniaa/launcher/MainActivity;->locationPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public static final synthetic access$setMediaViewModel$p(Lcom/miniaa/launcher/MainActivity;Lcom/miniaa/launcher/ui/media/MediaViewModel;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/miniaa/launcher/MainActivity;->mediaViewModel:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    return-void
.end method

.method private final hideSystemUI()V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/miniaa/launcher/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 201
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {p0}, Lcom/miniaa/launcher/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miniaa/launcher/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 202
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    const/4 p0, 0x2

    .line 203
    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/miniaa/launcher/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private static final locationPermissionLauncher$lambda$2(Ljava/util/Map;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final nextPressRunnable$lambda$0(Lcom/miniaa/launcher/MainActivity;)V
    .locals 2

    .line 49
    iget v0, p0, Lcom/miniaa/launcher/MainActivity;->nextPressCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/miniaa/launcher/MainActivity;->mediaViewModel:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->onNext()V

    :cond_0
    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/miniaa/launcher/MainActivity;->nextPressCount:I

    return-void
.end method

.method private static final prevPressRunnable$lambda$1(Lcom/miniaa/launcher/MainActivity;)V
    .locals 2

    .line 57
    iget v0, p0, Lcom/miniaa/launcher/MainActivity;->prevPressCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/miniaa/launcher/MainActivity;->mediaViewModel:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->onPrevious()V

    :cond_0
    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/miniaa/launcher/MainActivity;->prevPressCount:I

    return-void
.end method

.method private final setAsDefaultLauncher()V
    .locals 10

    .line 219
    const-string v0, "android.intent.category.HOME"

    const-string v1, "android.intent.action.MAIN"

    const-string v2, "MiniAA"

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcom/miniaa/launcher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 221
    new-instance v4, Landroid/content/ComponentName;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    const-class v6, Lcom/miniaa/launcher/MainActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "addCategory(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v6, 0x10000

    .line 225
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 227
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miniaa/launcher/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 228
    const-string p0, "Already default launcher"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 232
    :cond_1
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 234
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 236
    invoke-virtual {v3, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const-string v5, "queryIntentActivities(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    check-cast v1, Ljava/lang/Iterable;

    .line 252
    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 253
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 254
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 238
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 255
    :cond_2
    check-cast v5, Ljava/util/List;

    .line 252
    check-cast v5, Ljava/util/Collection;

    .line 259
    new-array v0, v0, [Landroid/content/ComponentName;

    invoke-interface {v5, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 239
    check-cast v0, [Landroid/content/ComponentName;

    .line 241
    invoke-virtual {p0}, Lcom/miniaa/launcher/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    const/high16 p0, 0x100000

    .line 242
    invoke-virtual {v3, v6, p0, v0, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 244
    const-string p0, "Set as default launcher"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not auto-set as launcher (needs system UID): "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v0, Lcom/miniaa/launcher/util/FileLogger;->INSTANCE:Lcom/miniaa/launcher/util/FileLogger;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auto-set default failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Launcher"

    invoke-virtual {v0, v1, p0}, Lcom/miniaa/launcher/util/FileLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 68
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-direct {p0}, Lcom/miniaa/launcher/MainActivity;->hideSystemUI()V

    .line 71
    invoke-direct {p0}, Lcom/miniaa/launcher/MainActivity;->setAsDefaultLauncher()V

    .line 73
    invoke-virtual {p0}, Lcom/miniaa/launcher/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x280

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 79
    const-string p1, "miniaa_setup"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miniaa/launcher/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 80
    const-string v1, "setup_complete"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/miniaa/launcher/MainActivity;->locationPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const/4 v2, 0x2

    .line 83
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v2, v0

    .line 84
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v0, v2, v1

    .line 81
    invoke-virtual {p1, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 89
    :cond_0
    move-object p1, p0

    check-cast p1, Landroidx/activity/ComponentActivity;

    new-instance v0, Lcom/miniaa/launcher/MainActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/miniaa/launcher/MainActivity$onCreate$1;-><init>(Lcom/miniaa/launcher/MainActivity;)V

    const p0, 0x3ce1f8e

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v1, v0}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/16 v0, 0x57

    const/4 v1, 0x2

    .line 129
    const-string v2, "MiniAA"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x58

    if-eq p1, v0, :cond_0

    .line 171
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    if-eqz p2, :cond_2

    .line 152
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 153
    iget p1, p0, Lcom/miniaa/launcher/MainActivity;->prevPressCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/miniaa/launcher/MainActivity;->prevPressCount:I

    if-ne p1, v4, :cond_1

    .line 155
    iget-object p1, p0, Lcom/miniaa/launcher/MainActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/miniaa/launcher/MainActivity;->prevPressRunnable:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/miniaa/launcher/MainActivity;->doublePressTimeout:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_1
    if-lt p1, v1, :cond_5

    .line 157
    iget-object p1, p0, Lcom/miniaa/launcher/MainActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/miniaa/launcher/MainActivity;->prevPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    iput v3, p0, Lcom/miniaa/launcher/MainActivity;->prevPressCount:I

    .line 159
    const-string p1, "Double-press PREV \u2192 play/pause"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p0, p0, Lcom/miniaa/launcher/MainActivity;->mediaViewModel:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->onPlayPause()V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 162
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v3

    :goto_0
    if-lez p1, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p1

    if-ne p1, v4, :cond_4

    move p1, v4

    goto :goto_1

    :cond_4
    move p1, v3

    :goto_1
    if-eqz p1, :cond_5

    .line 163
    iget-object p1, p0, Lcom/miniaa/launcher/MainActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/miniaa/launcher/MainActivity;->prevPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    iput v3, p0, Lcom/miniaa/launcher/MainActivity;->prevPressCount:I

    .line 165
    const-string p1, "Long-press PREV \u2192 play/pause"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p0, p0, Lcom/miniaa/launcher/MainActivity;->mediaViewModel:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->onPlayPause()V

    :cond_5
    :goto_2
    return v4

    :cond_6
    if-eqz p2, :cond_8

    .line 131
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    .line 133
    iget p1, p0, Lcom/miniaa/launcher/MainActivity;->nextPressCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/miniaa/launcher/MainActivity;->nextPressCount:I

    if-ne p1, v4, :cond_7

    .line 135
    iget-object p1, p0, Lcom/miniaa/launcher/MainActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/miniaa/launcher/MainActivity;->nextPressRunnable:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/miniaa/launcher/MainActivity;->doublePressTimeout:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_7
    if-lt p1, v1, :cond_b

    .line 137
    iget-object p1, p0, Lcom/miniaa/launcher/MainActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/miniaa/launcher/MainActivity;->nextPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iput v3, p0, Lcom/miniaa/launcher/MainActivity;->nextPressCount:I

    .line 139
    const-string p1, "Double-press NEXT \u2192 play/pause"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p0, p0, Lcom/miniaa/launcher/MainActivity;->mediaViewModel:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->onPlayPause()V

    goto :goto_5

    :cond_8
    if-eqz p2, :cond_9

    .line 142
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    goto :goto_3

    :cond_9
    move p1, v3

    :goto_3
    if-lez p1, :cond_b

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p1

    if-ne p1, v4, :cond_a

    move p1, v4

    goto :goto_4

    :cond_a
    move p1, v3

    :goto_4
    if-eqz p1, :cond_b

    .line 144
    iget-object p1, p0, Lcom/miniaa/launcher/MainActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/miniaa/launcher/MainActivity;->nextPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    iput v3, p0, Lcom/miniaa/launcher/MainActivity;->nextPressCount:I

    .line 146
    const-string p1, "Long-press NEXT \u2192 play/pause"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p0, p0, Lcom/miniaa/launcher/MainActivity;->mediaViewModel:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->onPlayPause()V

    :cond_b
    :goto_5
    return v4
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miniaa.SEED_TRIPS"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/miniaa/launcher/MainActivity$onNewIntent$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/miniaa/launcher/MainActivity$onNewIntent$1;-><init>(Lcom/miniaa/launcher/MainActivity;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 186
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onResume()V

    .line 187
    iget-object v0, p0, Lcom/miniaa/launcher/MainActivity;->mediaViewModel:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->retryConnect()V

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/miniaa/launcher/MainActivity;->hideSystemUI()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 192
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/miniaa/launcher/MainActivity;->hideSystemUI()V

    :cond_0
    return-void
.end method
