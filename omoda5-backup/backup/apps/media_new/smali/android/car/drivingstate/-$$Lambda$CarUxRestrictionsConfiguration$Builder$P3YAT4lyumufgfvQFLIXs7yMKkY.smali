.class public final synthetic Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$P3YAT4lyumufgfvQFLIXs7yMKkY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$P3YAT4lyumufgfvQFLIXs7yMKkY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$P3YAT4lyumufgfvQFLIXs7yMKkY;

    invoke-direct {v0}, Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$P3YAT4lyumufgfvQFLIXs7yMKkY;-><init>()V

    sput-object v0, Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$P3YAT4lyumufgfvQFLIXs7yMKkY;->INSTANCE:Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$P3YAT4lyumufgfvQFLIXs7yMKkY;

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

    check-cast p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->lambda$validateBaselineModeRestrictions$0(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;)Z

    move-result p0

    return p0
.end method
