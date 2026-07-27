.class public final Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NavRail.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "onAvailable",
        "",
        "network",
        "Landroid/net/Network;",
        "onLost",
        "onCapabilitiesChanged",
        "caps",
        "Landroid/net/NetworkCapabilities;",
        "app_systemRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $networkStrength$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $networkType$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableIntState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;->$networkType$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;->$networkStrength$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 139
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;->$networkType$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;->$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miniaa/launcher/ui/home/NavRailKt;->access$getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3;->access$invoke$lambda$33$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;->$networkStrength$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;->$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/ui/home/NavRailKt;->access$getNetworkStrength(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3;->access$invoke$lambda$33$lambda$5(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "caps"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;->$networkType$delegate:Landroidx/compose/runtime/MutableState;

    iget-object p2, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;->$context:Landroid/content/Context;

    invoke-static {p2}, Lcom/miniaa/launcher/ui/home/NavRailKt;->access$getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3;->access$invoke$lambda$33$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;->$networkStrength$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;->$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/ui/home/NavRailKt;->access$getNetworkStrength(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3;->access$invoke$lambda$33$lambda$5(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;->$networkType$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;->$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miniaa/launcher/ui/home/NavRailKt;->access$getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3;->access$invoke$lambda$33$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;->$networkStrength$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3;->access$invoke$lambda$33$lambda$5(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method
