.class public final synthetic Lcom/android/car/vms/-$$Lambda$VmsClientManager$t4wPaJRGBPId2--C_iiuZUaPfxw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/vms/-$$Lambda$VmsClientManager$t4wPaJRGBPId2--C_iiuZUaPfxw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/vms/-$$Lambda$VmsClientManager$t4wPaJRGBPId2--C_iiuZUaPfxw;

    invoke-direct {v0}, Lcom/android/car/vms/-$$Lambda$VmsClientManager$t4wPaJRGBPId2--C_iiuZUaPfxw;-><init>()V

    sput-object v0, Lcom/android/car/vms/-$$Lambda$VmsClientManager$t4wPaJRGBPId2--C_iiuZUaPfxw;->INSTANCE:Lcom/android/car/vms/-$$Lambda$VmsClientManager$t4wPaJRGBPId2--C_iiuZUaPfxw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    invoke-static {p1}, Lcom/android/car/vms/VmsClientManager;->lambda$onHalDisconnected$2(Lcom/android/car/vms/VmsClientManager$SubscriberConnection;)Z

    move-result p1

    return p1
.end method
