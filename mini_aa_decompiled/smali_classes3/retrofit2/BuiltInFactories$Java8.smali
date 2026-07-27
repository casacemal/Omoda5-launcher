.class final Lretrofit2/BuiltInFactories$Java8;
.super Lretrofit2/BuiltInFactories;
.source "BuiltInFactories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/BuiltInFactories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Java8"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lretrofit2/BuiltInFactories;-><init>()V

    return-void
.end method


# virtual methods
.method createDefaultCallAdapterFactories(Ljava/util/concurrent/Executor;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x2

    .line 42
    new-array p0, p0, [Lretrofit2/CallAdapter$Factory;

    new-instance v0, Lretrofit2/CompletableFutureCallAdapterFactory;

    invoke-direct {v0}, Lretrofit2/CompletableFutureCallAdapterFactory;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    new-instance v0, Lretrofit2/DefaultCallAdapterFactory;

    invoke-direct {v0, p1}, Lretrofit2/DefaultCallAdapterFactory;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x1

    aput-object v0, p0, p1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method createDefaultConverterFactories()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance p0, Lretrofit2/OptionalConverterFactory;

    invoke-direct {p0}, Lretrofit2/OptionalConverterFactory;-><init>()V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
