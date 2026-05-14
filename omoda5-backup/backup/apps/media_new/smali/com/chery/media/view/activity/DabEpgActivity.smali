.class public Lcom/chery/media/view/activity/DabEpgActivity;
.super Lcom/chery/media/view/activity/BaseActivity;
.source "DabEpgActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;
    }
.end annotation


# static fields
.field private static final MAX_DAY:I = 0x7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

.field private callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

.field private curDabInfo:Lcom/chery/media/model/business/DabInfo;

.field private curDateIndex:I

.field private curPlayInfoObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dabEpgListAdapter:Lcom/chery/media/view/adapter/DABEpgListAdapter;

.field private dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

.field private dateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-class v0, Lcom/chery/media/view/activity/DabEpgActivity;

    const-string v1, "DAB"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/activity/DabEpgActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dateList:Ljava/util/List;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDateIndex:I

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->handler:Landroid/os/Handler;

    .line 157
    new-instance v0, Lcom/chery/media/view/activity/DabEpgActivity$7;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/DabEpgActivity$7;-><init>(Lcom/chery/media/view/activity/DabEpgActivity;)V

    iput-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curPlayInfoObserver:Landroidx/lifecycle/Observer;

    .line 230
    new-instance v0, Lcom/chery/media/view/activity/DabEpgActivity$8;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/DabEpgActivity$8;-><init>(Lcom/chery/media/view/activity/DabEpgActivity;)V

    iput-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    .line 247
    new-instance v0, Lcom/chery/media/view/activity/DabEpgActivity$9;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/DabEpgActivity$9;-><init>(Lcom/chery/media/view/activity/DabEpgActivity;)V

    iput-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/activity/DabEpgActivity;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/activity/DabEpgActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->updateListMask()V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/media/view/activity/DabEpgActivity;)Lcom/chery/media/viewmodel/DabViewModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/view/activity/DabEpgActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->nextDay()V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/view/activity/DabEpgActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->updateProgramList()V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/media/view/activity/DabEpgActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->prevDay()V

    return-void
.end method

.method static synthetic access$602(Lcom/chery/media/view/activity/DabEpgActivity;Lcom/chery/media/model/business/DabInfo;)Lcom/chery/media/model/business/DabInfo;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/chery/media/view/activity/DabEpgActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private initDateMap()V
    .locals 6

    .line 179
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/DabViewModel;->getCurTimeSeconds()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 182
    new-instance v2, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;-><init>(Lcom/chery/media/view/activity/DabEpgActivity;Lcom/chery/media/view/activity/DabEpgActivity$1;)V

    const/4 v3, 0x1

    .line 183
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, v2, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;->year:I

    const/4 v4, 0x2

    .line 184
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v2, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;->month:I

    const/4 v4, 0x5

    .line 185
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, v2, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;->day:I

    .line 186
    iget-object v5, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dateList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->updateDate()V

    .line 191
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dateList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;

    .line 192
    sget-object v1, Lcom/chery/media/view/activity/DabEpgActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "year:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;->year:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", month: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;->month:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", day: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;->day:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 3

    .line 77
    new-instance v0, Lcom/chery/media/view/adapter/DABEpgListAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-direct {v0, v1, v2}, Lcom/chery/media/view/adapter/DABEpgListAdapter;-><init>(Landroid/content/Context;Lcom/chery/media/viewmodel/DabViewModel;)V

    iput-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dabEpgListAdapter:Lcom/chery/media/view/adapter/DABEpgListAdapter;

    .line 78
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->dabListEpgRv:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dabEpgListAdapter:Lcom/chery/media/view/adapter/DABEpgListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    invoke-direct {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->updateProgramList()V

    .line 80
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 81
    iget-object v1, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->dabListEpgRv:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->dabListEpgRv:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->sbListBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->llListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/component/RecycleViewSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->dabListEpgRv:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/activity/DabEpgActivity$1;

    invoke-direct {v1, p0}, Lcom/chery/media/view/activity/DabEpgActivity$1;-><init>(Lcom/chery/media/view/activity/DabEpgActivity;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 93
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->dabListEpgRv:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/activity/DabEpgActivity$2;

    invoke-direct {v1, p0}, Lcom/chery/media/view/activity/DabEpgActivity$2;-><init>(Lcom/chery/media/view/activity/DabEpgActivity;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dabEpgListAdapter:Lcom/chery/media/view/adapter/DABEpgListAdapter;

    new-instance v1, Lcom/chery/media/view/activity/DabEpgActivity$3;

    invoke-direct {v1, p0}, Lcom/chery/media/view/activity/DabEpgActivity$3;-><init>(Lcom/chery/media/view/activity/DabEpgActivity;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/DABEpgListAdapter;->setItemClickListener(Lcom/chery/media/view/adapter/DABEpgListAdapter$onItemClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/activity/DabEpgActivity$4;

    invoke-direct {v1, p0}, Lcom/chery/media/view/activity/DabEpgActivity$4;-><init>(Lcom/chery/media/view/activity/DabEpgActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->ivNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/activity/DabEpgActivity$5;

    invoke-direct {v1, p0}, Lcom/chery/media/view/activity/DabEpgActivity$5;-><init>(Lcom/chery/media/view/activity/DabEpgActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->ivPrev:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/activity/DabEpgActivity$6;

    invoke-direct {v1, p0}, Lcom/chery/media/view/activity/DabEpgActivity$6;-><init>(Lcom/chery/media/view/activity/DabEpgActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    invoke-virtual {v0, p0}, Lcom/chery/media/viewmodel/DabViewModel;->addCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V

    return-void
.end method

.method private nextDay()V
    .locals 2

    .line 197
    iget v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDateIndex:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 198
    iput v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDateIndex:I

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->updateDate()V

    return-void
.end method

.method private prevDay()V
    .locals 1

    .line 204
    iget v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDateIndex:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 205
    iput v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDateIndex:I

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->updateDate()V

    return-void
.end method

.method private updateDate()V
    .locals 9

    .line 211
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 212
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dateList:Ljava/util/List;

    iget v1, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDateIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;

    iget v1, v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;->year:I

    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dateList:Ljava/util/List;

    iget v2, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDateIndex:I

    .line 213
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;

    iget v0, v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;->month:I

    const/4 v8, 0x1

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dateList:Ljava/util/List;

    iget v3, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDateIndex:I

    .line 214
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;

    iget v3, v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;->day:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 212
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 215
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 216
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "MMMM dd"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 217
    iget-object v3, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->tvDate:Landroid/widget/TextView;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->ivPrev:Landroid/widget/ImageView;

    iget v1, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDateIndex:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->ivNext:Landroid/widget/ImageView;

    iget p0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDateIndex:I

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private updateListMask()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->dabListEpgRv:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->dabListEpgRv:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->dabListEpgRv:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->dabListEpgRv:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v1}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    .line 150
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateProgramList()V
    .locals 8

    .line 166
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    if-eqz v0, :cond_1

    .line 167
    iget-object v1, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget v2, v0, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v3, v0, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v4, v0, Lcom/chery/media/model/business/DabInfo;->scIds:I

    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dateList:Ljava/util/List;

    iget v5, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDateIndex:I

    .line 170
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;

    iget v5, v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;->year:I

    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dateList:Ljava/util/List;

    iget v6, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDateIndex:I

    .line 171
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;

    iget v6, v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;->month:I

    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dateList:Ljava/util/List;

    iget v7, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curDateIndex:I

    .line 172
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;

    iget v7, v0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;->day:I

    .line 167
    invoke-virtual/range {v1 .. v7}, Lcom/chery/media/viewmodel/DabViewModel;->getDabProgramInfoList(IIIIII)Ljava/util/List;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dabEpgListAdapter:Lcom/chery/media/view/adapter/DABEpgListAdapter;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/adapter/DABEpgListAdapter;->setData(Ljava/util/List;)V

    .line 174
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->tvEmptyList:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getContainerId()I
    .locals 0

    const p0, 0x7f08007d

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b001d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity;->binding:Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    .line 62
    invoke-virtual {p1}, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/DabEpgActivity;->setContentView(Landroid/view/View;)V

    .line 64
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/chery/media/viewmodel/DabViewModel;

    iput-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    .line 65
    invoke-virtual {p1}, Lcom/chery/media/viewmodel/DabViewModel;->getCurPlayInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->curPlayInfoObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 66
    invoke-direct {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->initView()V

    .line 67
    invoke-direct {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->initDateMap()V

    .line 68
    iget-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 53
    invoke-super {p0}, Lcom/chery/media/view/activity/BaseActivity;->onDestroy()V

    .line 54
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget-object v1, p0, Lcom/chery/media/view/activity/DabEpgActivity;->callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/DabViewModel;->removeCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V

    .line 55
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
