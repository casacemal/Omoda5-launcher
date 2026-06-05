.class public final synthetic Lcom/android/car/vms/-$$Lambda$dN9fi-L-CKhct4e48nsf5mt2pSw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/vms/-$$Lambda$dN9fi-L-CKhct4e48nsf5mt2pSw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/vms/-$$Lambda$dN9fi-L-CKhct4e48nsf5mt2pSw;

    invoke-direct {v0}, Lcom/android/car/vms/-$$Lambda$dN9fi-L-CKhct4e48nsf5mt2pSw;-><init>()V

    sput-object v0, Lcom/android/car/vms/-$$Lambda$dN9fi-L-CKhct4e48nsf5mt2pSw;->INSTANCE:Lcom/android/car/vms/-$$Lambda$dN9fi-L-CKhct4e48nsf5mt2pSw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    invoke-virtual {p1}, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->terminate()V

    return-void
.end method
