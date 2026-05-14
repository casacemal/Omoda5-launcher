.class Lcom/chery/media/view/fragment/MediaMainFragment$15;
.super Ljava/lang/Object;
.source "MediaMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/MediaMainFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/MediaMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$15;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 293
    new-instance v0, Lcom/chery/common/PageManager;

    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$15;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v1, "com.chery.settings"

    const-string v2, "com.chery.settings.view.settings.activity.SettingsActivity"

    const-string v3, "com.chery.setting.ACTION_OPEN_SYSTEM_SETTING"

    const-string v4, "SettingMenuID"

    const-string v5, "1"

    invoke-virtual/range {v0 .. v5}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
