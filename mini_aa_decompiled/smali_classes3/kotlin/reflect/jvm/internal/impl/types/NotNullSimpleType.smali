.class final Lkotlin/reflect/jvm/internal/impl/types/NotNullSimpleType;
.super Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleTypeImpl;
.source "KotlinTypeFactory.kt"


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    return-void
.end method


# virtual methods
.method public isMarkedNullable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/NotNullSimpleType;->replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/NotNullSimpleType;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;

    return-object p0
.end method

.method public replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/NotNullSimpleType;
    .locals 0

    const-string p0, "delegate"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/types/NotNullSimpleType;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/NotNullSimpleType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    return-object p0
.end method
