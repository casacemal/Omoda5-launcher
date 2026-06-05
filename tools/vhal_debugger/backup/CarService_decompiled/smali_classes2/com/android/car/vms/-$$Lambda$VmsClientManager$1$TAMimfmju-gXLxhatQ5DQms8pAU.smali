.class public final synthetic Lcom/android/car/vms/-$$Lambda$VmsClientManager$1$TAMimfmju-gXLxhatQ5DQms8pAU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/vms/-$$Lambda$VmsClientManager$1$TAMimfmju-gXLxhatQ5DQms8pAU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/vms/-$$Lambda$VmsClientManager$1$TAMimfmju-gXLxhatQ5DQms8pAU;

    invoke-direct {v0}, Lcom/android/car/vms/-$$Lambda$VmsClientManager$1$TAMimfmju-gXLxhatQ5DQms8pAU;-><init>()V

    sput-object v0, Lcom/android/car/vms/-$$Lambda$VmsClientManager$1$TAMimfmju-gXLxhatQ5DQms8pAU;->INSTANCE:Lcom/android/car/vms/-$$Lambda$VmsClientManager$1$TAMimfmju-gXLxhatQ5DQms8pAU;

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

    invoke-static {p1}, Lcom/android/car/vms/VmsClientManager$1;->lambda$onReceive$1(Lcom/android/car/vms/VmsClientManager$SubscriberConnection;)Z

    move-result p1

    return p1
.end method
