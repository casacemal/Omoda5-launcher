.class public final synthetic Lcom/android/car/-$$Lambda$VmsRouting$J3LVu7IEDHVo1HV-drUSwEcKoXU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$VmsRouting$J3LVu7IEDHVo1HV-drUSwEcKoXU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$VmsRouting$J3LVu7IEDHVo1HV-drUSwEcKoXU;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$VmsRouting$J3LVu7IEDHVo1HV-drUSwEcKoXU;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$VmsRouting$J3LVu7IEDHVo1HV-drUSwEcKoXU;->INSTANCE:Lcom/android/car/-$$Lambda$VmsRouting$J3LVu7IEDHVo1HV-drUSwEcKoXU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/car/vms/VmsLayer;

    invoke-static {p1}, Lcom/android/car/VmsRouting;->lambda$addSubscription$1(Landroid/car/vms/VmsLayer;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
