.class public final synthetic Lcom/android/car/-$$Lambda$VmsLayersAvailability$3eoR_oQql0pTwQF-l0KYinIaX6I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/android/car/VmsLayersAvailability;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/VmsLayersAvailability;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$VmsLayersAvailability$3eoR_oQql0pTwQF-l0KYinIaX6I;->f$0:Lcom/android/car/VmsLayersAvailability;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$VmsLayersAvailability$3eoR_oQql0pTwQF-l0KYinIaX6I;->f$0:Lcom/android/car/VmsLayersAvailability;

    check-cast p1, Landroid/car/vms/VmsLayer;

    invoke-virtual {v0, p1}, Lcom/android/car/VmsLayersAvailability;->lambda$calculateLayers$2$VmsLayersAvailability(Landroid/car/vms/VmsLayer;)Landroid/car/vms/VmsAssociatedLayer;

    move-result-object p1

    return-object p1
.end method
