.class public final synthetic Lcom/android/car/audio/-$$Lambda$7364NHkWOQanKBYtea7U_Ri_ci4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/audio/-$$Lambda$7364NHkWOQanKBYtea7U_Ri_ci4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/audio/-$$Lambda$7364NHkWOQanKBYtea7U_Ri_ci4;

    invoke-direct {v0}, Lcom/android/car/audio/-$$Lambda$7364NHkWOQanKBYtea7U_Ri_ci4;-><init>()V

    sput-object v0, Lcom/android/car/audio/-$$Lambda$7364NHkWOQanKBYtea7U_Ri_ci4;->INSTANCE:Lcom/android/car/audio/-$$Lambda$7364NHkWOQanKBYtea7U_Ri_ci4;

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

    check-cast p1, Lcom/android/car/audio/CarAudioZone;

    invoke-virtual {p1}, Lcom/android/car/audio/CarAudioZone;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
