.class public Landroid/car/projection/ProjectionOptions;
.super Ljava/lang/Object;
.source "ProjectionOptions.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/projection/ProjectionOptions$Builder;,
        Landroid/car/projection/ProjectionOptions$ProjectionUiMode;
    }
.end annotation


# static fields
.field private static final KEY_ACTIVITY_OPTIONS:Ljava/lang/String; = "android.car.projection.activityOptions"

.field private static final KEY_CONSENT_ACTIVITY:Ljava/lang/String; = "android.car.projection.consentActivity"

.field private static final KEY_PREFIX:Ljava/lang/String; = "android.car.projection."

.field private static final KEY_UI_MODE:Ljava/lang/String; = "android.car.projection.systemUiFlags"

.field public static final UI_MODE_BLENDED:I = 0x1

.field private static final UI_MODE_DEFAULT:I

.field public static final UI_MODE_FULL_SCREEN:I


# instance fields
.field private final mActivityOptions:Landroid/app/ActivityOptions;

.field private final mConsentActivity:Landroid/content/ComponentName;

.field private final mUiMode:I


# direct methods
.method private constructor <init>(Landroid/car/projection/ProjectionOptions$Builder;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Landroid/car/projection/ProjectionOptions$Builder;->access$000(Landroid/car/projection/ProjectionOptions$Builder;)Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Landroid/car/projection/ProjectionOptions;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 75
    invoke-static {p1}, Landroid/car/projection/ProjectionOptions$Builder;->access$100(Landroid/car/projection/ProjectionOptions$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/projection/ProjectionOptions;->mUiMode:I

    .line 76
    invoke-static {p1}, Landroid/car/projection/ProjectionOptions$Builder;->access$200(Landroid/car/projection/ProjectionOptions$Builder;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Landroid/car/projection/ProjectionOptions;->mConsentActivity:Landroid/content/ComponentName;

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/projection/ProjectionOptions$Builder;Landroid/car/projection/ProjectionOptions$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/car/projection/ProjectionOptions;-><init>(Landroid/car/projection/ProjectionOptions$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.car.projection.activityOptions"

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v1, Landroid/app/ActivityOptions;

    invoke-direct {v1, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroid/car/projection/ProjectionOptions;->mActivityOptions:Landroid/app/ActivityOptions;

    const/4 v0, 0x0

    const-string v1, "android.car.projection.systemUiFlags"

    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/car/projection/ProjectionOptions;->mUiMode:I

    const-string v0, "android.car.projection.consentActivity"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Landroid/car/projection/ProjectionOptions;->mConsentActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public static builder()Landroid/car/projection/ProjectionOptions$Builder;
    .locals 1

    .line 119
    new-instance v0, Landroid/car/projection/ProjectionOptions$Builder;

    invoke-direct {v0}, Landroid/car/projection/ProjectionOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getActivityOptions()Landroid/app/ActivityOptions;
    .locals 0

    .line 91
    iget-object p0, p0, Landroid/car/projection/ProjectionOptions;->mActivityOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public getConsentActivity()Landroid/content/ComponentName;
    .locals 0

    .line 101
    iget-object p0, p0, Landroid/car/projection/ProjectionOptions;->mConsentActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getUiMode()I
    .locals 0

    .line 84
    iget p0, p0, Landroid/car/projection/ProjectionOptions;->mUiMode:I

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    iget-object v1, p0, Landroid/car/projection/ProjectionOptions;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.car.projection.activityOptions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 110
    :cond_0
    iget-object v1, p0, Landroid/car/projection/ProjectionOptions;->mConsentActivity:Landroid/content/ComponentName;

    const-string v2, "android.car.projection.consentActivity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 111
    iget p0, p0, Landroid/car/projection/ProjectionOptions;->mUiMode:I

    if-eqz p0, :cond_1

    const-string v1, "android.car.projection.systemUiFlags"

    .line 112
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 155
    invoke-virtual {p0}, Landroid/car/projection/ProjectionOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
