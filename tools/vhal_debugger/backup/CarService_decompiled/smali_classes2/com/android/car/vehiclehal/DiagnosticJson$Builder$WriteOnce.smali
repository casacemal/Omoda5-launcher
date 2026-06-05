.class Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;
.super Ljava/lang/Object;
.source "DiagnosticJson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/vehiclehal/DiagnosticJson$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WriteOnce"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mValue:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 66
    .local p0, "this":Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;, "Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;->mValue:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;, "Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce<TT;>;"
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;->mValue:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;->mValue:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WriteOnce never stored"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;, "Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;->mValue:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;->mValue:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method write(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;, "Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;->mValue:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticJson$Builder$WriteOnce;->mValue:Ljava/util/Optional;

    .line 72
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WriteOnce already stored"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
