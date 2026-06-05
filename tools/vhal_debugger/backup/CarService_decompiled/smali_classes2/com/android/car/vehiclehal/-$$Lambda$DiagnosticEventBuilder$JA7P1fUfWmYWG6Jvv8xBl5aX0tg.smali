.class public final synthetic Lcom/android/car/vehiclehal/-$$Lambda$DiagnosticEventBuilder$JA7P1fUfWmYWG6Jvv8xBl5aX0tg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/vehiclehal/VehiclePropValueBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/vehiclehal/VehiclePropValueBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/vehiclehal/-$$Lambda$DiagnosticEventBuilder$JA7P1fUfWmYWG6Jvv8xBl5aX0tg;->f$0:Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/vehiclehal/-$$Lambda$DiagnosticEventBuilder$JA7P1fUfWmYWG6Jvv8xBl5aX0tg;->f$0:Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder;->lambda$build$0(Lcom/android/car/vehiclehal/VehiclePropValueBuilder;I)V

    return-void
.end method
