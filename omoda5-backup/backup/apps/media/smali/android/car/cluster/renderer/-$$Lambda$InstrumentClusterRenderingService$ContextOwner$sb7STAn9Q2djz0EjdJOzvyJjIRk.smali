.class public final synthetic Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$sb7STAn9Q2djz0EjdJOzvyJjIRk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$sb7STAn9Q2djz0EjdJOzvyJjIRk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$sb7STAn9Q2djz0EjdJOzvyJjIRk;

    invoke-direct {v0}, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$sb7STAn9Q2djz0EjdJOzvyJjIRk;-><init>()V

    sput-object v0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$sb7STAn9Q2djz0EjdJOzvyJjIRk;->INSTANCE:Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$sb7STAn9Q2djz0EjdJOzvyJjIRk;

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

    check-cast p1, Landroid/content/pm/ProviderInfo;

    invoke-static {p1}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;->lambda$getAuthoritiesForPackage$1(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
