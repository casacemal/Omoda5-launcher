.class Lcom/chery/media/view/fragment/RadioPlayerFragment$19;
.super Ljava/lang/Object;
.source "RadioPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/RadioPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 386
    new-instance v0, Lcom/chery/common/PageManager;

    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string p0, "SettingMenuID"

    const-string p1, "is_finish_self"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object v4

    const-string p0, "8"

    const-string p1, "1"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object v5

    const-string v1, "com.chery.settings"

    const-string v2, "com.chery.settings.view.settings.activity.SettingsActivity"

    const-string v3, "com.chery.media.ACTION_OPEN"

    invoke-virtual/range {v0 .. v5}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
