.class public final synthetic Lcom/chery/btphone/-$$Lambda$BtCallManager$emsE6U0e0sPmru1JkvB0c1aNOYE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/chery/btphone/receiver/PbapStateReceiver$PbapStateListener;


# instance fields
.field public final synthetic f$0:Lcom/chery/btphone/BtCallManager;

.field public final synthetic f$1:Lcom/chery/btphone/receiver/PbapStateReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/chery/btphone/BtCallManager;Lcom/chery/btphone/receiver/PbapStateReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chery/btphone/-$$Lambda$BtCallManager$emsE6U0e0sPmru1JkvB0c1aNOYE;->f$0:Lcom/chery/btphone/BtCallManager;

    iput-object p2, p0, Lcom/chery/btphone/-$$Lambda$BtCallManager$emsE6U0e0sPmru1JkvB0c1aNOYE;->f$1:Lcom/chery/btphone/receiver/PbapStateReceiver;

    return-void
.end method


# virtual methods
.method public final onPbapState(II)V
    .locals 1

    iget-object v0, p0, Lcom/chery/btphone/-$$Lambda$BtCallManager$emsE6U0e0sPmru1JkvB0c1aNOYE;->f$0:Lcom/chery/btphone/BtCallManager;

    iget-object p0, p0, Lcom/chery/btphone/-$$Lambda$BtCallManager$emsE6U0e0sPmru1JkvB0c1aNOYE;->f$1:Lcom/chery/btphone/receiver/PbapStateReceiver;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chery/btphone/BtCallManager;->lambda$tryPbapConnect$0$BtCallManager(Lcom/chery/btphone/receiver/PbapStateReceiver;II)V

    return-void
.end method
