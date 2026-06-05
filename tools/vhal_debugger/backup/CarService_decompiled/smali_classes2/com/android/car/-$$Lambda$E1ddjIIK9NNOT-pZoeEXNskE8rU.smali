.class public final synthetic Lcom/android/car/-$$Lambda$E1ddjIIK9NNOT-pZoeEXNskE8rU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$E1ddjIIK9NNOT-pZoeEXNskE8rU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$E1ddjIIK9NNOT-pZoeEXNskE8rU;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$E1ddjIIK9NNOT-pZoeEXNskE8rU;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$E1ddjIIK9NNOT-pZoeEXNskE8rU;->INSTANCE:Lcom/android/car/-$$Lambda$E1ddjIIK9NNOT-pZoeEXNskE8rU;

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

    check-cast p1, Landroid/car/storagemonitoring/WearEstimateChange;

    invoke-virtual {p1}, Landroid/car/storagemonitoring/WearEstimateChange;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
