.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;
.source "DescriptorVisibility.kt"


# instance fields
.field private final delegate:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;->delegate:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    return-void
.end method


# virtual methods
.method public getDelegate()Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
    .locals 0

    .line 83
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;->delegate:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    return-object p0
.end method

.method public getInternalDisplayName()Ljava/lang/String;
    .locals 0

    .line 90
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;->getDelegate()Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;->getInternalDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public normalize()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;->getDelegate()Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;->normalize()Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->toDescriptorVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    move-result-object p0

    const-string v0, "toDescriptorVisibility(delegate.normalize())"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
