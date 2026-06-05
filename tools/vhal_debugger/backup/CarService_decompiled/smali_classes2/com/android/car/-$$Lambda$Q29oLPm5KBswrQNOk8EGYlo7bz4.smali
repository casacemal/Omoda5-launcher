.class public final synthetic Lcom/android/car/-$$Lambda$Q29oLPm5KBswrQNOk8EGYlo7bz4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$Q29oLPm5KBswrQNOk8EGYlo7bz4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$Q29oLPm5KBswrQNOk8EGYlo7bz4;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$Q29oLPm5KBswrQNOk8EGYlo7bz4;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$Q29oLPm5KBswrQNOk8EGYlo7bz4;->INSTANCE:Lcom/android/car/-$$Lambda$Q29oLPm5KBswrQNOk8EGYlo7bz4;

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

    check-cast p1, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->encode()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
