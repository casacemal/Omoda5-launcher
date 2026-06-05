.class public final synthetic Lcom/android/car/-$$Lambda$SetMultimap$OMBxrvtyKKubylfBxJSLiIJKNek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$SetMultimap$OMBxrvtyKKubylfBxJSLiIJKNek;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$SetMultimap$OMBxrvtyKKubylfBxJSLiIJKNek;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$SetMultimap$OMBxrvtyKKubylfBxJSLiIJKNek;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$SetMultimap$OMBxrvtyKKubylfBxJSLiIJKNek;->INSTANCE:Lcom/android/car/-$$Lambda$SetMultimap$OMBxrvtyKKubylfBxJSLiIJKNek;

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

    invoke-static {p1}, Lcom/android/car/SetMultimap;->lambda$put$0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
