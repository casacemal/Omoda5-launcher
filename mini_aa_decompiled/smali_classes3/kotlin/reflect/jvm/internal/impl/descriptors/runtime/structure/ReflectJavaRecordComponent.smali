.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaRecordComponent;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;
.source "ReflectJavaRecordComponent.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaRecordComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReflectJavaRecordComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaRecordComponent.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaRecordComponent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"
.end annotation


# instance fields
.field private final recordComponent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "recordComponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaRecordComponent;->recordComponent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .line 20
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java16RecordComponentsLoader;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java16RecordComponentsLoader;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaRecordComponent;->recordComponent:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java16RecordComponentsLoader;->loadGetAccessor(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/reflect/Member;

    return-object p0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-string v0, "Can\'t find `getAccessor` method"

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType()Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;
    .locals 1

    .line 15
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java16RecordComponentsLoader;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java16RecordComponentsLoader;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaRecordComponent;->recordComponent:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java16RecordComponentsLoader;->loadGetType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    check-cast p0, Ljava/lang/reflect/Type;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;-><init>(Ljava/lang/reflect/Type;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;

    return-object v0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-string v0, "Can\'t find `getType` method"

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVararg()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
