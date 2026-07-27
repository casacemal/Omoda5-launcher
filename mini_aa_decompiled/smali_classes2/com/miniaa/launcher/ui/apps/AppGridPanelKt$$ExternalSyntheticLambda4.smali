.class public final synthetic Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:Landroidx/compose/ui/Modifier;

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$2:Z

    iput-boolean p4, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$3:Z

    iput-object p5, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$4:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$5:Landroidx/compose/ui/Modifier;

    iput p7, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$6:I

    iput p8, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$7:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget-object v0, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$2:Z

    iget-boolean v3, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$3:Z

    iget-object v4, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$4:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$5:Landroidx/compose/ui/Modifier;

    iget v6, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$6:I

    iget v7, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$$ExternalSyntheticLambda4;->f$7:I

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static/range {v0 .. v9}, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt;->$r8$lambda$ADQkjwBhcF5l40FsfUrtl20QISo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
