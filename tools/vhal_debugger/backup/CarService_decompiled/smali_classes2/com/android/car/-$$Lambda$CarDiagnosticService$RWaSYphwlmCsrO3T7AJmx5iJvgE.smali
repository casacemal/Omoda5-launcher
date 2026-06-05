.class public final synthetic Lcom/android/car/-$$Lambda$CarDiagnosticService$RWaSYphwlmCsrO3T7AJmx5iJvgE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$CarDiagnosticService$RWaSYphwlmCsrO3T7AJmx5iJvgE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$CarDiagnosticService$RWaSYphwlmCsrO3T7AJmx5iJvgE;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$CarDiagnosticService$RWaSYphwlmCsrO3T7AJmx5iJvgE;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$CarDiagnosticService$RWaSYphwlmCsrO3T7AJmx5iJvgE;->INSTANCE:Lcom/android/car/-$$Lambda$CarDiagnosticService$RWaSYphwlmCsrO3T7AJmx5iJvgE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/car/Listeners;

    invoke-static {p1, p2}, Lcom/android/car/CarDiagnosticService;->lambda$release$0(Ljava/lang/Integer;Lcom/android/car/Listeners;)V

    return-void
.end method
