.class public final synthetic Lcom/android/car/vms/-$$Lambda$OLUSIA110KxM3wbFP4L-5xrTvHw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntSupplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/vms/-$$Lambda$OLUSIA110KxM3wbFP4L-5xrTvHw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/vms/-$$Lambda$OLUSIA110KxM3wbFP4L-5xrTvHw;

    invoke-direct {v0}, Lcom/android/car/vms/-$$Lambda$OLUSIA110KxM3wbFP4L-5xrTvHw;-><init>()V

    sput-object v0, Lcom/android/car/vms/-$$Lambda$OLUSIA110KxM3wbFP4L-5xrTvHw;->INSTANCE:Lcom/android/car/vms/-$$Lambda$OLUSIA110KxM3wbFP4L-5xrTvHw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method
