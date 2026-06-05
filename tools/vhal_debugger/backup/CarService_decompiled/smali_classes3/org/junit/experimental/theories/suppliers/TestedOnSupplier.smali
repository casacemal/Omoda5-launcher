.class public Lorg/junit/experimental/theories/suppliers/TestedOnSupplier;
.super Lorg/junit/experimental/theories/ParameterSupplier;
.source "TestedOnSupplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/junit/experimental/theories/ParameterSupplier;-><init>()V

    return-void
.end method


# virtual methods
.method public getValueSources(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/List;
    .locals 8
    .param p1, "sig"    # Lorg/junit/experimental/theories/ParameterSignature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/PotentialAssignment;>;"
    const-class v1, Lorg/junit/experimental/theories/suppliers/TestedOn;

    invoke-virtual {p1, v1}, Lorg/junit/experimental/theories/ParameterSignature;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/junit/experimental/theories/suppliers/TestedOn;

    .line 19
    .local v1, "testedOn":Lorg/junit/experimental/theories/suppliers/TestedOn;
    invoke-interface {v1}, Lorg/junit/experimental/theories/suppliers/TestedOn;->ints()[I

    move-result-object v2

    .line 20
    .local v2, "ints":[I
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 21
    .local v5, "i":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ints"

    invoke-static {v7, v6}, Lorg/junit/experimental/theories/PotentialAssignment;->forValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/junit/experimental/theories/PotentialAssignment;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .end local v5    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 23
    :cond_0
    return-object v0
.end method
