.class interface abstract Lcom/android/car/protobuf/MutabilityOracle;
.super Ljava/lang/Object;
.source "MutabilityOracle.java"


# static fields
.field public static final IMMUTABLE:Lcom/android/car/protobuf/MutabilityOracle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/android/car/protobuf/MutabilityOracle$1;

    invoke-direct {v0}, Lcom/android/car/protobuf/MutabilityOracle$1;-><init>()V

    sput-object v0, Lcom/android/car/protobuf/MutabilityOracle;->IMMUTABLE:Lcom/android/car/protobuf/MutabilityOracle;

    return-void
.end method


# virtual methods
.method public abstract ensureMutable()V
.end method
