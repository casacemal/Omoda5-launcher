.class Lcom/chery/media/model/business/HardKeyBusiness$6;
.super Ljava/lang/Object;
.source "HardKeyBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/HardKeyBusiness;->checkChangeSourceView(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/HardKeyBusiness;

.field final synthetic val$mediaActivity:Lcom/chery/media/view/activity/MediaActivity;

.field final synthetic val$source:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/HardKeyBusiness;Lcom/chery/media/view/activity/MediaActivity;I)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/chery/media/model/business/HardKeyBusiness$6;->this$0:Lcom/chery/media/model/business/HardKeyBusiness;

    iput-object p2, p0, Lcom/chery/media/model/business/HardKeyBusiness$6;->val$mediaActivity:Lcom/chery/media/view/activity/MediaActivity;

    iput p3, p0, Lcom/chery/media/model/business/HardKeyBusiness$6;->val$source:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/chery/media/model/business/HardKeyBusiness$6;->val$mediaActivity:Lcom/chery/media/view/activity/MediaActivity;

    iget p0, p0, Lcom/chery/media/model/business/HardKeyBusiness$6;->val$source:I

    invoke-virtual {v0, p0}, Lcom/chery/media/view/activity/MediaActivity;->checkFragmentToSource(I)V

    return-void
.end method
