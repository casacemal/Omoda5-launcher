.class public final synthetic Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/miniaa/launcher/ui/media/MediaViewModel;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$$ExternalSyntheticLambda2;->f$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$$ExternalSyntheticLambda2;->f$2:Z

    iput-object p4, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function2;

    iput p5, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$$ExternalSyntheticLambda2;->f$4:I

    iput p6, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$$ExternalSyntheticLambda2;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$$ExternalSyntheticLambda2;->f$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/Modifier;

    iget-boolean v2, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$$ExternalSyntheticLambda2;->f$2:Z

    iget-object v3, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function2;

    iget v4, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$$ExternalSyntheticLambda2;->f$4:I

    iget v5, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$$ExternalSyntheticLambda2;->f$5:I

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt;->$r8$lambda$mp8m7GG1H8wA8FWrl2pDGoH_31c(Lcom/miniaa/launcher/ui/media/MediaViewModel;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
