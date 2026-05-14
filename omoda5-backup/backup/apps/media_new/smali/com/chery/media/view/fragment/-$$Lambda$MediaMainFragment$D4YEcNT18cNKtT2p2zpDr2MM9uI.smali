.class public final synthetic Lcom/chery/media/view/fragment/-$$Lambda$MediaMainFragment$D4YEcNT18cNKtT2p2zpDr2MM9uI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/chery/media/view/fragment/MediaMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chery/media/view/fragment/-$$Lambda$MediaMainFragment$D4YEcNT18cNKtT2p2zpDr2MM9uI;->f$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/chery/media/view/fragment/-$$Lambda$MediaMainFragment$D4YEcNT18cNKtT2p2zpDr2MM9uI;->f$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->lambda$D4YEcNT18cNKtT2p2zpDr2MM9uI(Lcom/chery/media/view/fragment/MediaMainFragment;Z)V

    return-void
.end method
