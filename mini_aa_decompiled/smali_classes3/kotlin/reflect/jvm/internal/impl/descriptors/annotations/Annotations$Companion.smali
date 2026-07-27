.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;
.super Ljava/lang/Object;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;

.field private static final EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;

    .line 38
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;-><init>()V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;"
        }
    .end annotation

    const-string p0, "annotations"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(Ljava/util/List;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    :goto_0
    return-object p0
.end method

.method public final getEMPTY()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .locals 0

    .line 38
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    return-object p0
.end method
