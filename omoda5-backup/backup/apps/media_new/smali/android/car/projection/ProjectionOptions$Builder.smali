.class public Landroid/car/projection/ProjectionOptions$Builder;
.super Ljava/lang/Object;
.source "ProjectionOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/projection/ProjectionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActivityOptions:Landroid/app/ActivityOptions;

.field private mConsentActivity:Landroid/content/ComponentName;

.field private mUiMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Landroid/car/projection/ProjectionOptions$Builder;->mUiMode:I

    return-void
.end method

.method static synthetic access$000(Landroid/car/projection/ProjectionOptions$Builder;)Landroid/app/ActivityOptions;
    .locals 0

    .line 123
    iget-object p0, p0, Landroid/car/projection/ProjectionOptions$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/projection/ProjectionOptions$Builder;)I
    .locals 0

    .line 123
    iget p0, p0, Landroid/car/projection/ProjectionOptions$Builder;->mUiMode:I

    return p0
.end method

.method static synthetic access$200(Landroid/car/projection/ProjectionOptions$Builder;)Landroid/content/ComponentName;
    .locals 0

    .line 123
    iget-object p0, p0, Landroid/car/projection/ProjectionOptions$Builder;->mConsentActivity:Landroid/content/ComponentName;

    return-object p0
.end method


# virtual methods
.method public build()Landroid/car/projection/ProjectionOptions;
    .locals 2

    .line 148
    new-instance v0, Landroid/car/projection/ProjectionOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/car/projection/ProjectionOptions;-><init>(Landroid/car/projection/ProjectionOptions$Builder;Landroid/car/projection/ProjectionOptions$1;)V

    return-object v0
.end method

.method public setConsentActivity(Landroid/content/ComponentName;)Landroid/car/projection/ProjectionOptions$Builder;
    .locals 0

    .line 142
    iput-object p1, p0, Landroid/car/projection/ProjectionOptions$Builder;->mConsentActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setProjectionActivityOptions(Landroid/app/ActivityOptions;)Landroid/car/projection/ProjectionOptions$Builder;
    .locals 0

    .line 130
    iput-object p1, p0, Landroid/car/projection/ProjectionOptions$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public setUiMode(I)Landroid/car/projection/ProjectionOptions$Builder;
    .locals 0

    .line 136
    iput p1, p0, Landroid/car/projection/ProjectionOptions$Builder;->mUiMode:I

    return-object p0
.end method
