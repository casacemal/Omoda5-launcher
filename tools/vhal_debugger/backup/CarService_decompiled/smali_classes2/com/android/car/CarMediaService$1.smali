.class Lcom/android/car/CarMediaService$1;
.super Landroid/content/BroadcastReceiver;
.source "CarMediaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarMediaService;


# direct methods
.method constructor <init>(Lcom/android/car/CarMediaService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarMediaService;

    .line 118
    iput-object p1, p0, Lcom/android/car/CarMediaService$1;->this$0:Lcom/android/car/CarMediaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "intentPackage":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/car/CarMediaService$1;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v1}, Lcom/android/car/CarMediaService;->access$100(Lcom/android/car/CarMediaService;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/car/CarMediaService$1;->this$0:Lcom/android/car/CarMediaService;

    .line 127
    invoke-static {v1}, Lcom/android/car/CarMediaService;->access$100(Lcom/android/car/CarMediaService;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p0, Lcom/android/car/CarMediaService$1;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v1, v0}, Lcom/android/car/CarMediaService;->access$202(Lcom/android/car/CarMediaService;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/android/car/CarMediaService$1;->this$0:Lcom/android/car/CarMediaService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/car/CarMediaService;->access$300(Lcom/android/car/CarMediaService;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/android/car/CarMediaService$1;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v1}, Lcom/android/car/CarMediaService;->access$200(Lcom/android/car/CarMediaService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/car/CarMediaService$1;->this$0:Lcom/android/car/CarMediaService;

    .line 134
    invoke-static {v1}, Lcom/android/car/CarMediaService;->access$200(Lcom/android/car/CarMediaService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/android/car/CarMediaService$1;->this$0:Lcom/android/car/CarMediaService;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/android/car/CarMediaService;->access$400(Lcom/android/car/CarMediaService;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 136
    .local v1, "mediaSource":Landroid/content/ComponentName;
    if-eqz v1, :cond_3

    .line 137
    iget-object v2, p0, Lcom/android/car/CarMediaService$1;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v2, v1}, Lcom/android/car/CarMediaService;->access$300(Lcom/android/car/CarMediaService;Landroid/content/ComponentName;)V

    .line 141
    .end local v1    # "mediaSource":Landroid/content/ComponentName;
    :cond_3
    :goto_0
    return-void
.end method
