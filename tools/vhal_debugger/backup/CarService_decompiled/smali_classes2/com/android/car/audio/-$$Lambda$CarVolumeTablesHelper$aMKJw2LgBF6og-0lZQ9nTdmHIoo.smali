.class public final synthetic Lcom/android/car/audio/-$$Lambda$CarVolumeTablesHelper$aMKJw2LgBF6og-0lZQ9nTdmHIoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/audio/-$$Lambda$CarVolumeTablesHelper$aMKJw2LgBF6og-0lZQ9nTdmHIoo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/audio/-$$Lambda$CarVolumeTablesHelper$aMKJw2LgBF6og-0lZQ9nTdmHIoo;

    invoke-direct {v0}, Lcom/android/car/audio/-$$Lambda$CarVolumeTablesHelper$aMKJw2LgBF6og-0lZQ9nTdmHIoo;-><init>()V

    sput-object v0, Lcom/android/car/audio/-$$Lambda$CarVolumeTablesHelper$aMKJw2LgBF6og-0lZQ9nTdmHIoo;->INSTANCE:Lcom/android/car/audio/-$$Lambda$CarVolumeTablesHelper$aMKJw2LgBF6og-0lZQ9nTdmHIoo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/car/audio/CarVolumeTablesHelper;->lambda$parseVolumeTable$0(I)[Lcom/android/car/audio/CarVolumePoint;

    move-result-object p1

    return-object p1
.end method
