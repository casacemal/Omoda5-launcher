.class final Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StatusBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->StatusBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZZZZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miniaa.launcher.ui.statusbar.StatusBarKt$StatusBar$5$1$onLocation$1$1"
    f = "StatusBar.kt"
    i = {
        0x0
    }
    l = {
        0xbc
    }
    m = "invokeSuspend"
    n = {
        "result"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $currentGeocoderType$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $geocoder:Landroid/location/Geocoder;

.field final synthetic $gpsLocationName$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lat:D

.field final synthetic $lon:D

.field final synthetic $tripTracker:Lcom/miniaa/launcher/data/trip/TripTracker;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(DDLandroid/location/Geocoder;Lcom/miniaa/launcher/data/trip/TripTracker;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Landroid/location/Geocoder;",
            "Lcom/miniaa/launcher/data/trip/TripTracker;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$lat:D

    iput-wide p3, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$lon:D

    iput-object p5, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$geocoder:Landroid/location/Geocoder;

    iput-object p6, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$tripTracker:Lcom/miniaa/launcher/data/trip/TripTracker;

    iput-object p7, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$currentGeocoderType$delegate:Landroidx/compose/runtime/State;

    iput-object p8, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$gpsLocationName$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;

    iget-wide v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$lat:D

    iget-wide v3, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$lon:D

    iget-object v5, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$geocoder:Landroid/location/Geocoder;

    iget-object v6, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$tripTracker:Lcom/miniaa/launcher/data/trip/TripTracker;

    iget-object v7, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$currentGeocoderType$delegate:Landroidx/compose/runtime/State;

    iget-object v8, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$gpsLocationName$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;-><init>(DDLandroid/location/Geocoder;Lcom/miniaa/launcher/data/trip/TripTracker;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 184
    iget v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$currentGeocoderType$delegate:Landroidx/compose/runtime/State;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$StatusBar$lambda$25(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "nominatim"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_5

    .line 188
    :try_start_1
    sget-object v4, Lcom/miniaa/launcher/data/location/NominatimGeocoder;->INSTANCE:Lcom/miniaa/launcher/data/location/NominatimGeocoder;

    iget-wide v5, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$lat:D

    iget-wide v7, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$lon:D

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->label:I

    invoke-virtual/range {v4 .. v9}, Lcom/miniaa/launcher/data/location/NominatimGeocoder;->reverse(DDLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    .line 184
    :goto_0
    :try_start_2
    check-cast p1, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;

    if-eqz p1, :cond_3

    .line 190
    sget-object v1, Lcom/miniaa/launcher/data/location/NominatimGeocoder;->INSTANCE:Lcom/miniaa/launcher/data/location/NominatimGeocoder;

    invoke-virtual {v1, p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder;->formatLocation(Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, p1

    goto :goto_1

    :catch_0
    move-object v0, v1

    :catch_1
    :cond_3
    move-object v1, v0

    .line 193
    :goto_1
    move-object p1, v1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_7

    iget-object v3, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$geocoder:Landroid/location/Geocoder;

    if-eqz v3, :cond_7

    .line 196
    :try_start_3
    iget-wide v4, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$lat:D

    iget-wide v6, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$lon:D

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/location/Address;

    :cond_4
    if-eqz v2, :cond_7

    .line 197
    invoke-static {v2}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$formatAndroidGeocoderResult(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 201
    :cond_5
    iget-object v3, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$geocoder:Landroid/location/Geocoder;

    if-eqz v3, :cond_7

    .line 204
    :try_start_4
    iget-wide v4, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$lat:D

    iget-wide v6, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$lon:D

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/location/Address;

    :cond_6
    if-eqz v2, :cond_7

    .line 205
    invoke-static {v2}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$formatAndroidGeocoderResult(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 209
    :catch_2
    :cond_7
    :goto_2
    move-object p1, v1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_8

    .line 210
    iget-object p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$gpsLocationName$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1, v1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$StatusBar$lambda$17(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 211
    iget-object p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$onLocation$1$1;->$tripTracker:Lcom/miniaa/launcher/data/trip/TripTracker;

    invoke-virtual {p0, v1}, Lcom/miniaa/launcher/data/trip/TripTracker;->updateLocationName(Ljava/lang/String;)V

    .line 213
    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
