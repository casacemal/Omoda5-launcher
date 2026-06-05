.class public final synthetic Lcom/android/car/vms/-$$Lambda$VmsBrokerService$Bhk3pslmP2FTUJzs8XOKQosYJv4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/vms/-$$Lambda$VmsBrokerService$Bhk3pslmP2FTUJzs8XOKQosYJv4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/vms/-$$Lambda$VmsBrokerService$Bhk3pslmP2FTUJzs8XOKQosYJv4;

    invoke-direct {v0}, Lcom/android/car/vms/-$$Lambda$VmsBrokerService$Bhk3pslmP2FTUJzs8XOKQosYJv4;-><init>()V

    sput-object v0, Lcom/android/car/vms/-$$Lambda$VmsBrokerService$Bhk3pslmP2FTUJzs8XOKQosYJv4;->INSTANCE:Lcom/android/car/vms/-$$Lambda$VmsBrokerService$Bhk3pslmP2FTUJzs8XOKQosYJv4;

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

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/android/car/vms/VmsBrokerService;->lambda$setPublisherLayersOffering$0(Landroid/os/IBinder;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
