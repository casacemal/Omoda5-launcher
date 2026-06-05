.class public final synthetic Lcom/android/car/vehiclehal/-$$Lambda$DiagnosticJson$jQRvOI9zncWW64SQ9Wxf63kQZps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/vehiclehal/DiagnosticEventBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/vehiclehal/DiagnosticEventBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/vehiclehal/-$$Lambda$DiagnosticJson$jQRvOI9zncWW64SQ9Wxf63kQZps;->f$0:Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/vehiclehal/-$$Lambda$DiagnosticJson$jQRvOI9zncWW64SQ9Wxf63kQZps;->f$0:Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    check-cast p1, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;

    invoke-static {v0, p1}, Lcom/android/car/vehiclehal/DiagnosticJson;->lambda$build$0(Lcom/android/car/vehiclehal/DiagnosticEventBuilder;Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;)V

    return-void
.end method
