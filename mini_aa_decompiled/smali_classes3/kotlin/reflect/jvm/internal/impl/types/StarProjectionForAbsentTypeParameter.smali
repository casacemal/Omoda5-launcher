.class public final Lkotlin/reflect/jvm/internal/impl/types/StarProjectionForAbsentTypeParameter;
.super Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;
.source "StarProjectionImpl.kt"


# instance fields
.field private final nullableAnyType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;)V
    .locals 1

    const-string v0, "kotlinBuiltIns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;-><init>()V

    .line 86
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNullableAnyType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    const-string v0, "kotlinBuiltIns.nullableAnyType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionForAbsentTypeParameter;->nullableAnyType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-void
.end method


# virtual methods
.method public getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .locals 0

    .line 90
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p0
.end method

.method public getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 0

    .line 92
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionForAbsentTypeParameter;->nullableAnyType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object p0
.end method

.method public isStarProjection()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    return-object p0
.end method
