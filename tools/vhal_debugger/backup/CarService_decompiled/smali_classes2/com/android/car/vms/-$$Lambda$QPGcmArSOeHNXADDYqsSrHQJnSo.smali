.class public final synthetic Lcom/android/car/vms/-$$Lambda$QPGcmArSOeHNXADDYqsSrHQJnSo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/vms/-$$Lambda$QPGcmArSOeHNXADDYqsSrHQJnSo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/vms/-$$Lambda$QPGcmArSOeHNXADDYqsSrHQJnSo;

    invoke-direct {v0}, Lcom/android/car/vms/-$$Lambda$QPGcmArSOeHNXADDYqsSrHQJnSo;-><init>()V

    sput-object v0, Lcom/android/car/vms/-$$Lambda$QPGcmArSOeHNXADDYqsSrHQJnSo;->INSTANCE:Lcom/android/car/vms/-$$Lambda$QPGcmArSOeHNXADDYqsSrHQJnSo;

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

    check-cast p1, Lcom/android/car/vms/VmsClientManager$PublisherConnection;

    invoke-virtual {p1}, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->terminate()V

    return-void
.end method
