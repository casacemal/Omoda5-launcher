.class final Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$1$1$2$1$1;
.super Ljava/lang/Object;
.source "PinAppSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $app:Lcom/miniaa/launcher/data/apps/AppModel;

.field final synthetic $appsViewModel:Lcom/miniaa/launcher/ui/apps/AppsViewModel;


# direct methods
.method constructor <init>(Lcom/miniaa/launcher/ui/apps/AppsViewModel;Lcom/miniaa/launcher/data/apps/AppModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$1$1$2$1$1;->$appsViewModel:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$1$1$2$1$1;->$app:Lcom/miniaa/launcher/data/apps/AppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$1$1$2$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$1$1$2$1$1;->$appsViewModel:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$1$1$2$1$1;->$app:Lcom/miniaa/launcher/data/apps/AppModel;

    invoke-virtual {p0}, Lcom/miniaa/launcher/data/apps/AppModel;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->togglePin(Ljava/lang/String;)V

    return-void
.end method
