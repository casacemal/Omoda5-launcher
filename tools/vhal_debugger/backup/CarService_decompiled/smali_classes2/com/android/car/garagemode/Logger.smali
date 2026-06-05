.class Lcom/android/car/garagemode/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# instance fields
.field private final mPrefix:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "GarageMode"

    iput-object v0, p0, Lcom/android/car/garagemode/Logger;->mTag:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/android/car/garagemode/Logger;->mPrefix:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private buildMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/car/garagemode/Logger;->mPrefix:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "[%s]: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/android/car/garagemode/Logger;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/car/garagemode/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 57
    iget-object v0, p0, Lcom/android/car/garagemode/Logger;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/car/garagemode/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/car/garagemode/Logger;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/car/garagemode/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 77
    iget-object v0, p0, Lcom/android/car/garagemode/Logger;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/car/garagemode/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 82
    iget-object v0, p0, Lcom/android/car/garagemode/Logger;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/car/garagemode/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/android/car/garagemode/Logger;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/car/garagemode/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 47
    iget-object v0, p0, Lcom/android/car/garagemode/Logger;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/car/garagemode/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/android/car/garagemode/Logger;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/car/garagemode/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 37
    iget-object v0, p0, Lcom/android/car/garagemode/Logger;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/car/garagemode/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/android/car/garagemode/Logger;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/car/garagemode/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 62
    iget-object v0, p0, Lcom/android/car/garagemode/Logger;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/car/garagemode/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    return-void
.end method
