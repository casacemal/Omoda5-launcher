.class public abstract Lcom/chery/media/view/activity/BaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAGS_KEY:Ljava/lang/String; = "fragmentTags"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fragmentIndex:I

.field protected fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private fragmentUnitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;",
            ">;"
        }
    .end annotation
.end field

.field private fromStopped:Z

.field private hasNewIntent:Z

.field private isStarted:Z

.field private runnableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private tos:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/chery/media/view/activity/BaseActivity;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentIndex:I

    .line 28
    iput-boolean v0, p0, Lcom/chery/media/view/activity/BaseActivity;->isStarted:Z

    .line 29
    iput-boolean v0, p0, Lcom/chery/media/view/activity/BaseActivity;->hasNewIntent:Z

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/chery/media/view/activity/BaseActivity;->fromStopped:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/activity/BaseActivity;->runnableList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    return-void
.end method

.method private findFragmentUnit(Landroidx/fragment/app/Fragment;)Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;
    .locals 2

    .line 506
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    .line 507
    iget-object v1, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCurrentFragmentUnit()Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    :goto_0
    return-object p0
.end method

.method private moveFragmentUnitToEnd(Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 532
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeFragmentUnit(Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;)V
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addRunnable(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 551
    :cond_0
    iget-boolean v0, p0, Lcom/chery/media/view/activity/BaseActivity;->isStarted:Z

    if-eqz v0, :cond_1

    .line 552
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 555
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->runnableList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public backward()V
    .locals 6

    .line 460
    iget-boolean v0, p0, Lcom/chery/media/view/activity/BaseActivity;->isStarted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Lcom/chery/media/view/activity/BaseActivity$6;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/BaseActivity$6;-><init>(Lcom/chery/media/view/activity/BaseActivity;)V

    .line 467
    sget-object v3, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string v1, "[%s] Add Runnable: backward"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->runnableList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 472
    :cond_0
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const-string v4, "[%s] backward"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;->getCurrentFragmentUnit()Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    move-result-object v0

    if-nez v0, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/chery/media/view/activity/BaseActivity;->finish()V

    return-void

    .line 480
    :cond_1
    iget-object v3, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 481
    sget-object v4, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    iget-object v1, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    aput-object v1, v5, v2

    const-string v1, "[%s] Remove fragment %s"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v1, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 483
    iget-object v1, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 484
    iget-object v1, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 485
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;->getCurrentFragmentUnit()Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 487
    iget-object v2, v1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 489
    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 491
    iget-object v3, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->tag:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    goto :goto_2

    :cond_5
    move-object v4, v2

    :goto_2
    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->tag:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, v3, v0, v4, v2}, Lcom/chery/media/view/activity/BaseActivity;->onCurrentFragmentChanged(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method protected findFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 518
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    .line 519
    iget-object v2, v1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    iget-object p0, v1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    return-object p0

    :cond_2
    return-object v0
.end method

.method protected abstract getContainerId()I
.end method

.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    :goto_0
    return-object p0
.end method

.method public gotoFragment(Landroidx/fragment/app/Fragment;)V
    .locals 9

    .line 194
    iget-boolean v0, p0, Lcom/chery/media/view/activity/BaseActivity;->isStarted:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/chery/media/view/activity/BaseActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/chery/media/view/activity/BaseActivity$1;-><init>(Lcom/chery/media/view/activity/BaseActivity;Landroidx/fragment/app/Fragment;)V

    .line 201
    sget-object v4, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    const-string p1, "[%s] Add Runnable: gotoFragment fragment:%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->runnableList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 206
    :cond_0
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    const-string v5, "[%s] gotoFragment fragment:%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->findFragmentUnit(Landroidx/fragment/app/Fragment;)Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v4, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v4, v5, :cond_1

    .line 212
    sget-object p1, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "[%s] Fragment is already on the stack top."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;->getCurrentFragmentUnit()Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    move-result-object v4

    .line 219
    iget-object v5, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    if-nez v0, :cond_2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "_%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v6, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    invoke-direct {v6, p1, v0}, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 225
    sget-object v7, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object v6, v1, v3

    const-string v2, "[%s] Add fragment %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/chery/media/view/activity/BaseActivity;->getContainerId()I

    move-result v1

    invoke-virtual {v5, v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 227
    iget-object v0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v6

    goto :goto_0

    .line 230
    :cond_2
    invoke-direct {p0, v0}, Lcom/chery/media/view/activity/BaseActivity;->moveFragmentUnitToEnd(Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;)V

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    .line 235
    iget-object v3, v2, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    if-eq v3, p1, :cond_3

    .line 236
    iget-object v2, v2, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 240
    :cond_4
    invoke-virtual {v5, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 242
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    if-eq v4, v0, :cond_9

    const/4 p1, 0x0

    if-eqz v4, :cond_5

    .line 245
    iget-object v1, v4, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    goto :goto_2

    :cond_5
    move-object v1, p1

    :goto_2
    if-eqz v4, :cond_6

    iget-object v2, v4, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->tag:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v2, p1

    :goto_3
    if-eqz v0, :cond_7

    iget-object v3, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    goto :goto_4

    :cond_7
    move-object v3, p1

    :goto_4
    if-eqz v0, :cond_8

    iget-object p1, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->tag:Ljava/lang/String;

    :cond_8
    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/chery/media/view/activity/BaseActivity;->onCurrentFragmentChanged(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public hasNewIntent()Z
    .locals 0

    .line 540
    iget-boolean p0, p0, Lcom/chery/media/view/activity/BaseActivity;->hasNewIntent:Z

    return p0
.end method

.method public isFromStopped()Z
    .locals 0

    .line 544
    iget-boolean p0, p0, Lcom/chery/media/view/activity/BaseActivity;->fromStopped:Z

    return p0
.end method

.method public isStarted()Z
    .locals 0

    .line 536
    iget-boolean p0, p0, Lcom/chery/media/view/activity/BaseActivity;->isStarted:Z

    return p0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 63
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-virtual {p0}, Lcom/chery/media/view/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const-string v4, "[%s] onCreate savedInstanceState:%s, intent:%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/chery/media/view/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "[%s] onCreate add FragmentUnit(%s)"

    if-eqz p1, :cond_2

    const-string v1, "fragmentTags"

    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 70
    sget-object v1, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    const-string v6, "[%s] onCreate fragmentTags:%s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 71
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 72
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    iget-object v4, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 74
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 75
    sget-object v4, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p0, v7, v2

    aput-object v1, v7, v3

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v4, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    new-instance v7, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    invoke-direct {v7, v6, v1}, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget v1, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentIndex:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentIndex:I

    goto :goto_0

    .line 85
    :cond_2
    sget-object p1, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v2

    iget-object v4, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "[%s] onCreate fragmentManager.getFragments() size:%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 87
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 88
    sget-object v4, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p0, v6, v2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v4, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    new-instance v6, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {p0, v3}, Lcom/chery/media/view/activity/BaseActivity;->requestWindowFeature(I)Z

    return-void
.end method

.method protected onCurrentFragmentChanged(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 4

    .line 183
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p2, 0x3

    aput-object p3, v1, p2

    const/4 p3, 0x4

    aput-object p4, v1, p3

    const-string p3, "[%s] onCurrentFragmentChanged from %s[%s] to %s[%s]"

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p3, v2

    .line 184
    :goto_0
    iget-object p4, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 185
    sget-object p4, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v0, p2, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    iget-object v1, v1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->tag:Ljava/lang/String;

    aput-object v1, v0, p1

    const-string v1, "[%s] fragments[%d] %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 147
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "[%s] onDestroy"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 118
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v3, "[%s] onNewIntent %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 120
    iput-boolean v2, p0, Lcom/chery/media/view/activity/BaseActivity;->hasNewIntent:Z

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 131
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "[%s] onPause"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 133
    iput-boolean v2, p0, Lcom/chery/media/view/activity/BaseActivity;->fromStopped:Z

    return-void
.end method

.method protected onRestart()V
    .locals 3

    .line 101
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onRestart()V

    .line 102
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "[%s] onRestart"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 125
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "[%s] onResume"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 166
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "[%s] onSaveInstanceState"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    .line 170
    iget-object v1, v1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "fragmentTags"

    .line 172
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 107
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v3, "[%s] onStart"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 109
    iput-boolean v1, p0, Lcom/chery/media/view/activity/BaseActivity;->isStarted:Z

    .line 110
    iget-object v0, p0, Lcom/chery/media/view/activity/BaseActivity;->runnableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 111
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->runnableList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected onStop()V
    .locals 5

    .line 138
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v4, "[%s] onStop"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 140
    iput-boolean v3, p0, Lcom/chery/media/view/activity/BaseActivity;->isStarted:Z

    .line 141
    iput-boolean v3, p0, Lcom/chery/media/view/activity/BaseActivity;->hasNewIntent:Z

    .line 142
    iput-boolean v1, p0, Lcom/chery/media/view/activity/BaseActivity;->fromStopped:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 53
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "[%s] onWindowFocusChanged %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/chery/media/view/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x1700

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public removeAllFragments()V
    .locals 9

    .line 426
    iget-boolean v0, p0, Lcom/chery/media/view/activity/BaseActivity;->isStarted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lcom/chery/media/view/activity/BaseActivity$5;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/BaseActivity$5;-><init>(Lcom/chery/media/view/activity/BaseActivity;)V

    .line 433
    sget-object v3, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string v1, "[%s] Add Runnable: removeAllFragments"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->runnableList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 438
    :cond_0
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const-string v4, "[%s] removeAllFragments"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 444
    :cond_1
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;->getCurrentFragmentUnit()Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    move-result-object v0

    .line 446
    iget-object v3, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 447
    iget-object v4, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    .line 448
    sget-object v6, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v1

    iget-object v8, v5, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    aput-object v8, v7, v2

    const-string v8, "[%s] Remove fragment %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v6, v5, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v6}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 450
    iget-object v5, v5, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 452
    :cond_2
    iget-object v1, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 453
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 455
    iget-object v2, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->tag:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    invoke-virtual {p0, v2, v0, v1, v1}, Lcom/chery/media/view/activity/BaseActivity;->onCurrentFragmentChanged(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public removeFragment(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .line 382
    iget-boolean v0, p0, Lcom/chery/media/view/activity/BaseActivity;->isStarted:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Lcom/chery/media/view/activity/BaseActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/chery/media/view/activity/BaseActivity$4;-><init>(Lcom/chery/media/view/activity/BaseActivity;Landroidx/fragment/app/Fragment;)V

    .line 389
    sget-object v4, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    const-string p1, "[%s] Add Runnable: removeFragment fragment:%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->runnableList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 394
    :cond_0
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v1

    const-string v5, "[%s] removeFragment fragment:%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-direct {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->findFragmentUnit(Landroidx/fragment/app/Fragment;)Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;->getCurrentFragmentUnit()Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    move-result-object v0

    .line 403
    iget-object v4, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 404
    sget-object v5, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    iget-object v2, p1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    aput-object v2, v3, v1

    const-string v1, "[%s] Remove fragment %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v1, p1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 406
    iget-object v1, p1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 407
    invoke-direct {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->removeFragmentUnit(Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;)V

    .line 408
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;->getCurrentFragmentUnit()Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 410
    iget-object v1, p1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 412
    :cond_2
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    if-eq v0, p1, :cond_7

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 415
    iget-object v2, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->tag:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    if-eqz p1, :cond_5

    iget-object v3, p1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    goto :goto_2

    :cond_5
    move-object v3, v1

    :goto_2
    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->tag:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/chery/media/view/activity/BaseActivity;->onCurrentFragmentChanged(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public replaceAll(Landroidx/fragment/app/Fragment;)V
    .locals 11

    .line 326
    iget-boolean v0, p0, Lcom/chery/media/view/activity/BaseActivity;->isStarted:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lcom/chery/media/view/activity/BaseActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/chery/media/view/activity/BaseActivity$3;-><init>(Lcom/chery/media/view/activity/BaseActivity;Landroidx/fragment/app/Fragment;)V

    .line 333
    sget-object v4, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    const-string p1, "[%s] Add Runnable: replaceAll fragment:%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->runnableList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 338
    :cond_0
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    const-string v5, "[%s] replaceAll fragment:%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;->getCurrentFragmentUnit()Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    move-result-object v0

    .line 342
    invoke-direct {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->findFragmentUnit(Landroidx/fragment/app/Fragment;)Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    move-result-object v4

    .line 344
    iget-object v5, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    if-nez v4, :cond_1

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "_%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 349
    new-instance v6, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    invoke-direct {v6, p1, v4}, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 350
    sget-object v7, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object v6, v1, v3

    const-string v2, "[%s] Add fragment %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Lcom/chery/media/view/activity/BaseActivity;->getContainerId()I

    move-result v1

    invoke-virtual {v5, v1, p1, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 353
    iget-object p1, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 354
    iget-object p1, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v6

    goto :goto_1

    .line 357
    :cond_1
    iget-object v6, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    .line 358
    iget-object v8, v7, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    if-eq v8, p1, :cond_2

    .line 359
    sget-object v8, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v9, v1, [Ljava/lang/Object;

    aput-object p0, v9, v2

    iget-object v10, v7, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    aput-object v10, v9, v3

    const-string v10, "[%s] Remove fragment %s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v8, v7, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v8}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 361
    iget-object v7, v7, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v7}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 364
    :cond_3
    invoke-virtual {v5, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 365
    iget-object p1, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 366
    iget-object p1, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :goto_1
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    if-eq v0, v4, :cond_8

    const/4 p1, 0x0

    if-eqz v0, :cond_4

    .line 371
    iget-object v1, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    goto :goto_2

    :cond_4
    move-object v1, p1

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->tag:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v0, p1

    :goto_3
    if-eqz v4, :cond_6

    iget-object v2, v4, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    goto :goto_4

    :cond_6
    move-object v2, p1

    :goto_4
    if-eqz v4, :cond_7

    iget-object p1, v4, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->tag:Ljava/lang/String;

    :cond_7
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/chery/media/view/activity/BaseActivity;->onCurrentFragmentChanged(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public replaceFragment(Landroidx/fragment/app/Fragment;)V
    .locals 9

    .line 257
    iget-boolean v0, p0, Lcom/chery/media/view/activity/BaseActivity;->isStarted:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/chery/media/view/activity/BaseActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/chery/media/view/activity/BaseActivity$2;-><init>(Lcom/chery/media/view/activity/BaseActivity;Landroidx/fragment/app/Fragment;)V

    .line 264
    sget-object v4, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    const-string p1, "[%s] Add Runnable: replaceFragment fragment:%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->runnableList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 269
    :cond_0
    sget-object v0, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    const-string v5, "[%s] replaceFragment fragment:%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->findFragmentUnit(Landroidx/fragment/app/Fragment;)Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v4, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v4, v5, :cond_1

    .line 275
    sget-object p1, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "[%s] Fragment is already on the stack top."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 280
    :cond_1
    iget-object v4, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 283
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;->getCurrentFragmentUnit()Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 285
    sget-object v6, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p0, v7, v2

    aput-object v5, v7, v3

    const-string v8, "[%s] Remove fragment %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v6, v5, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v6}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 287
    iget-object v6, v5, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v6}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 288
    invoke-direct {p0, v5}, Lcom/chery/media/view/activity/BaseActivity;->removeFragmentUnit(Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;)V

    :cond_2
    if-nez v0, :cond_3

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "_%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    new-instance v6, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    invoke-direct {v6, p1, v0}, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 295
    sget-object v7, Lcom/chery/media/view/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object v6, v1, v3

    const-string v2, "[%s] Add fragment %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Lcom/chery/media/view/activity/BaseActivity;->getContainerId()I

    move-result v1

    invoke-virtual {v4, v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 297
    iget-object v0, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v6

    goto :goto_0

    .line 300
    :cond_3
    invoke-direct {p0, v0}, Lcom/chery/media/view/activity/BaseActivity;->moveFragmentUnitToEnd(Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;)V

    .line 304
    :goto_0
    iget-object v1, p0, Lcom/chery/media/view/activity/BaseActivity;->fragmentUnitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;

    .line 305
    iget-object v3, v2, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    if-eq v3, p1, :cond_4

    .line 306
    iget-object v2, v2, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 310
    :cond_5
    invoke-virtual {v4, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 312
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    if-eq v5, v0, :cond_a

    const/4 p1, 0x0

    if-eqz v5, :cond_6

    .line 315
    iget-object v1, v5, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    goto :goto_2

    :cond_6
    move-object v1, p1

    :goto_2
    if-eqz v5, :cond_7

    iget-object v2, v5, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->tag:Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v2, p1

    :goto_3
    if-eqz v0, :cond_8

    iget-object v3, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->fragment:Landroidx/fragment/app/Fragment;

    goto :goto_4

    :cond_8
    move-object v3, p1

    :goto_4
    if-eqz v0, :cond_9

    iget-object p1, v0, Lcom/chery/media/view/activity/BaseActivity$FragmentUnit;->tag:Ljava/lang/String;

    :cond_9
    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/chery/media/view/activity/BaseActivity;->onCurrentFragmentChanged(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/chery/media/view/activity/BaseActivity;->tos:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/view/activity/BaseActivity;->tos:Ljava/lang/String;

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity;->tos:Ljava/lang/String;

    return-object p0
.end method
