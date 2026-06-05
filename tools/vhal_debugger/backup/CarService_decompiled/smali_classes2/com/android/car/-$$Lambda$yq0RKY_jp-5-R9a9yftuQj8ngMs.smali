.class public final synthetic Lcom/android/car/-$$Lambda$yq0RKY_jp-5-R9a9yftuQj8ngMs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$yq0RKY_jp-5-R9a9yftuQj8ngMs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$yq0RKY_jp-5-R9a9yftuQj8ngMs;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$yq0RKY_jp-5-R9a9yftuQj8ngMs;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$yq0RKY_jp-5-R9a9yftuQj8ngMs;->INSTANCE:Lcom/android/car/-$$Lambda$yq0RKY_jp-5-R9a9yftuQj8ngMs;

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

    check-cast p1, Landroid/car/vms/IVmsSubscriberClient;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
