.class public Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;
.super Ljava/lang/Object;
.source "RadioBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/RadioBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrequencySaved"
.end annotation


# instance fields
.field public AmFrequency:I

.field public FmFrequency:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;->FmFrequency:I

    .line 73
    iput v0, p0, Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;->AmFrequency:I

    return-void
.end method
