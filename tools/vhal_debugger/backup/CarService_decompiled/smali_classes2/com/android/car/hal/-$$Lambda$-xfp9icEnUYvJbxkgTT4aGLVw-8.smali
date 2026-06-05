.class public final synthetic Lcom/android/car/hal/-$$Lambda$-xfp9icEnUYvJbxkgTT4aGLVw-8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/hal/-$$Lambda$-xfp9icEnUYvJbxkgTT4aGLVw-8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/hal/-$$Lambda$-xfp9icEnUYvJbxkgTT4aGLVw-8;

    invoke-direct {v0}, Lcom/android/car/hal/-$$Lambda$-xfp9icEnUYvJbxkgTT4aGLVw-8;-><init>()V

    sput-object v0, Lcom/android/car/hal/-$$Lambda$-xfp9icEnUYvJbxkgTT4aGLVw-8;->INSTANCE:Lcom/android/car/hal/-$$Lambda$-xfp9icEnUYvJbxkgTT4aGLVw-8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
