.class public Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;
.super Ljava/lang/Object;
.source "RadioBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/RadioBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RadioScaleParam"
.end annotation


# instance fields
.field public amMaxValue:I

.field public amMinValue:I

.field public amStep:I

.field public fmMaxValue:I

.field public fmMinValue:I

.field public fmStep:I

.field final synthetic this$0:Lcom/chery/media/model/business/RadioBusiness;


# direct methods
.method public constructor <init>(Lcom/chery/media/model/business/RadioBusiness;)V
    .locals 0

    .line 1255
    iput-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
