.class abstract Lretrofit2/HttpServiceMethod;
.super Lretrofit2/ServiceMethod;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/HttpServiceMethod$SuspendForBody;,
        Lretrofit2/HttpServiceMethod$SuspendForResponse;,
        Lretrofit2/HttpServiceMethod$CallAdapted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/ServiceMethod<",
        "TReturnT;>;"
    }
.end annotation


# instance fields
.field private final callFactory:Lokhttp3/Call$Factory;

.field private final requestFactory:Lretrofit2/RequestFactory;

.field private final responseConverter:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestFactory;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;)V"
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lretrofit2/ServiceMethod;-><init>()V

    .line 151
    iput-object p1, p0, Lretrofit2/HttpServiceMethod;->requestFactory:Lretrofit2/RequestFactory;

    .line 152
    iput-object p2, p0, Lretrofit2/HttpServiceMethod;->callFactory:Lokhttp3/Call$Factory;

    .line 153
    iput-object p3, p0, Lretrofit2/HttpServiceMethod;->responseConverter:Lretrofit2/Converter;

    return-void
.end method

.method private static createCallAdapter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            "ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/CallAdapter<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation

    .line 127
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lretrofit2/Retrofit;->callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 129
    const-string p3, "Unable to create call adapter for %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p3, p2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static createResponseConverter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Lretrofit2/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;"
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 137
    :try_start_0
    invoke-virtual {p0, p2, v0}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 139
    const-string v0, "Unable to create converter for %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, v0, p2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static parseAnnotations(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Lretrofit2/RequestFactory;)Lretrofit2/HttpServiceMethod;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            "ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            "Ljava/lang/reflect/Method;",
            "Lretrofit2/RequestFactory;",
            ")",
            "Lretrofit2/HttpServiceMethod<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation

    .line 39
    iget-boolean v0, p2, Lretrofit2/RequestFactory;->isKotlinSuspendFunction:Z

    .line 44
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 48
    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 49
    invoke-static {v2, v3}, Lretrofit2/Utils;->getParameterLowerBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 51
    invoke-static {v3}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    const-class v6, Lretrofit2/Response;

    if-ne v4, v6, :cond_0

    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_0

    .line 53
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v2, v3}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    move v4, v2

    move v6, v5

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {v3}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    const-class v6, Lretrofit2/Call;

    if-eq v4, v6, :cond_1

    .line 64
    invoke-static {v3}, Lretrofit2/Utils;->isUnit(Ljava/lang/reflect/Type;)Z

    move-result v4

    move v6, v2

    .line 71
    :goto_0
    new-instance v7, Lretrofit2/Utils$ParameterizedTypeImpl;

    const-class v8, Lretrofit2/Call;

    new-array v5, v5, [Ljava/lang/reflect/Type;

    aput-object v3, v5, v2

    const/4 v3, 0x0

    invoke-direct {v7, v3, v8, v5}, Lretrofit2/Utils$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 72
    invoke-static {v1}, Lretrofit2/SkipCallbackExecutorImpl;->ensurePresent([Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;

    move-result-object v1

    move v9, v4

    goto :goto_1

    .line 57
    :cond_1
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 61
    invoke-static {v2, v3}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 57
    const-string p2, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s"

    invoke-static {p1, p2, p0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 74
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v7

    move v6, v2

    move v9, v6

    .line 78
    :goto_1
    invoke-static {p0, p1, v7, v1}, Lretrofit2/HttpServiceMethod;->createCallAdapter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    move-result-object v7

    .line 79
    invoke-interface {v7}, Lretrofit2/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 80
    const-class v3, Lokhttp3/Response;

    if-eq v1, v3, :cond_8

    .line 87
    const-class v3, Lretrofit2/Response;

    if-eq v1, v3, :cond_7

    .line 90
    iget-object v3, p2, Lretrofit2/RequestFactory;->httpMethod:Ljava/lang/String;

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-class v3, Ljava/lang/Void;

    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 92
    invoke-static {v1}, Lretrofit2/Utils;->isUnit(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 93
    :cond_3
    const-string p0, "HEAD method must use Void or Unit as response type."

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 97
    :cond_4
    :goto_2
    invoke-static {p0, p1, v1}, Lretrofit2/HttpServiceMethod;->createResponseConverter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Lretrofit2/Converter;

    move-result-object p1

    .line 99
    iget-object v5, p0, Lretrofit2/Retrofit;->callFactory:Lokhttp3/Call$Factory;

    if-nez v0, :cond_5

    .line 101
    new-instance p0, Lretrofit2/HttpServiceMethod$CallAdapted;

    invoke-direct {p0, p2, v5, p1, v7}, Lretrofit2/HttpServiceMethod$CallAdapted;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;)V

    return-object p0

    :cond_5
    if-eqz v6, :cond_6

    .line 104
    new-instance p0, Lretrofit2/HttpServiceMethod$SuspendForResponse;

    invoke-direct {p0, p2, v5, p1, v7}, Lretrofit2/HttpServiceMethod$SuspendForResponse;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;)V

    return-object p0

    .line 112
    :cond_6
    new-instance p0, Lretrofit2/HttpServiceMethod$SuspendForBody;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lretrofit2/HttpServiceMethod$SuspendForBody;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;ZZ)V

    return-object p0

    .line 88
    :cond_7
    const-string p0, "Response must include generic type (e.g., Response<String>)"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 81
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {v1}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Object;

    .line 81
    invoke-static {p1, p0, p2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected abstract adapt(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method final invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 158
    new-instance v6, Lretrofit2/OkHttpCall;

    iget-object v1, p0, Lretrofit2/HttpServiceMethod;->requestFactory:Lretrofit2/RequestFactory;

    iget-object v4, p0, Lretrofit2/HttpServiceMethod;->callFactory:Lokhttp3/Call$Factory;

    iget-object v5, p0, Lretrofit2/HttpServiceMethod;->responseConverter:Lretrofit2/Converter;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/RequestFactory;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    .line 160
    invoke-virtual {p0, v6, p2}, Lretrofit2/HttpServiceMethod;->adapt(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
