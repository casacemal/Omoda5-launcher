.class public final synthetic Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$ZpyS84-Ah-XrYbGYdtHq82woSsc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/chery/media/view/fragment/BtMusicPlayerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$ZpyS84-Ah-XrYbGYdtHq82woSsc;->f$0:Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$ZpyS84-Ah-XrYbGYdtHq82woSsc;->f$0:Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->lambda$ZpyS84-Ah-XrYbGYdtHq82woSsc(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;Z)V

    return-void
.end method
