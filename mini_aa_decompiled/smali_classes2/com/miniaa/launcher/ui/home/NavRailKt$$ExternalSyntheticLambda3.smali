.class public final synthetic Lcom/miniaa/launcher/ui/home/NavRailKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$$ExternalSyntheticLambda3;->f$0:I

    iput p2, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget v0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$$ExternalSyntheticLambda3;->f$0:I

    iget p0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$$ExternalSyntheticLambda3;->f$1:I

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-static {v0, p0, p1}, Lcom/miniaa/launcher/ui/home/NavRailKt;->$r8$lambda$a-Pwqhdxt3OxkYHVNROqhSMuPzM(IILandroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
