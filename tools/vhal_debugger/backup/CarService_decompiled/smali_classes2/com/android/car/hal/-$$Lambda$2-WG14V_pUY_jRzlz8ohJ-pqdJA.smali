.class public final synthetic Lcom/android/car/hal/-$$Lambda$2-WG14V_pUY_jRzlz8ohJ-pqdJA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongSupplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/hal/-$$Lambda$2-WG14V_pUY_jRzlz8ohJ-pqdJA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/hal/-$$Lambda$2-WG14V_pUY_jRzlz8ohJ-pqdJA;

    invoke-direct {v0}, Lcom/android/car/hal/-$$Lambda$2-WG14V_pUY_jRzlz8ohJ-pqdJA;-><init>()V

    sput-object v0, Lcom/android/car/hal/-$$Lambda$2-WG14V_pUY_jRzlz8ohJ-pqdJA;->INSTANCE:Lcom/android/car/hal/-$$Lambda$2-WG14V_pUY_jRzlz8ohJ-pqdJA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsLong()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
