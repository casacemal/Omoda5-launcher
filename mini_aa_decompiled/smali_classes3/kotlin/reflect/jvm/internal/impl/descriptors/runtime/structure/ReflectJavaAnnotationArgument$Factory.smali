.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationArgument$Factory;
.super Ljava/lang/Object;
.source "ReflectJavaAnnotationArguments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationArgument$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationArgument;
    .locals 0

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->isEnumClassOrSpecializedEnumEntryClass(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaEnumValueAnnotationArgument;

    check-cast p1, Ljava/lang/Enum;

    invoke-direct {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaEnumValueAnnotationArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Enum;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationArgument;

    goto :goto_0

    .line 30
    :cond_0
    instance-of p0, p1, Ljava/lang/annotation/Annotation;

    if-eqz p0, :cond_1

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationAsAnnotationArgument;

    check-cast p1, Ljava/lang/annotation/Annotation;

    invoke-direct {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationAsAnnotationArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/annotation/Annotation;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationArgument;

    goto :goto_0

    .line 31
    :cond_1
    instance-of p0, p1, [Ljava/lang/Object;

    if-eqz p0, :cond_2

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayAnnotationArgument;

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayAnnotationArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Ljava/lang/Object;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationArgument;

    goto :goto_0

    .line 32
    :cond_2
    instance-of p0, p1, Ljava/lang/Class;

    if-eqz p0, :cond_3

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassObjectAnnotationArgument;

    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassObjectAnnotationArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Class;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationArgument;

    goto :goto_0

    .line 33
    :cond_3
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaLiteralAnnotationArgument;

    invoke-direct {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaLiteralAnnotationArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotationArgument;

    :goto_0
    return-object p0
.end method
