.class Lcom/chery/setting/BtSettingManager$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "BtSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/setting/BtSettingManager;->getPairedDeviceInfo(Landroid/content/Context;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/chery/setting/BtSettingManager$BtDeviceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/setting/BtSettingManager;


# direct methods
.method constructor <init>(Lcom/chery/setting/BtSettingManager;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/chery/setting/BtSettingManager$1;->this$0:Lcom/chery/setting/BtSettingManager;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
