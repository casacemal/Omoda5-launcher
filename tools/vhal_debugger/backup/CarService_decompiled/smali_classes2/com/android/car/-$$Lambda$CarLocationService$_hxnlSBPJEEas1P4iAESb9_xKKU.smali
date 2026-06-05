.class public final synthetic Lcom/android/car/-$$Lambda$CarLocationService$_hxnlSBPJEEas1P4iAESb9_xKKU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CarLocationService;

.field private final synthetic f$1:Landroid/location/Location;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CarLocationService;Landroid/location/Location;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarLocationService$_hxnlSBPJEEas1P4iAESb9_xKKU;->f$0:Lcom/android/car/CarLocationService;

    iput-object p2, p0, Lcom/android/car/-$$Lambda$CarLocationService$_hxnlSBPJEEas1P4iAESb9_xKKU;->f$1:Landroid/location/Location;

    iput p3, p0, Lcom/android/car/-$$Lambda$CarLocationService$_hxnlSBPJEEas1P4iAESb9_xKKU;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarLocationService$_hxnlSBPJEEas1P4iAESb9_xKKU;->f$0:Lcom/android/car/CarLocationService;

    iget-object v1, p0, Lcom/android/car/-$$Lambda$CarLocationService$_hxnlSBPJEEas1P4iAESb9_xKKU;->f$1:Landroid/location/Location;

    iget v2, p0, Lcom/android/car/-$$Lambda$CarLocationService$_hxnlSBPJEEas1P4iAESb9_xKKU;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarLocationService;->lambda$injectLocation$1$CarLocationService(Landroid/location/Location;I)V

    return-void
.end method
