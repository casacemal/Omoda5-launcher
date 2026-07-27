.class public abstract Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;
.super Lkotlin/reflect/jvm/internal/impl/types/AbstractTypePreparator;
.source "KotlinTypePreparator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinTypePreparator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinTypePreparator.kt\norg/jetbrains/kotlin/types/checker/KotlinTypePreparator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt\n+ 5 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt$transformComponents$1\n*L\n1#1,76:1\n1#2:77\n1549#3:78\n1620#3,3:79\n1549#3:82\n1620#3,3:83\n1549#3:92\n1620#3,2:93\n1622#3:101\n98#4,6:86\n104#4:95\n105#4,4:97\n112#4,7:102\n99#5:96\n*S KotlinDebug\n*F\n+ 1 KotlinTypePreparator.kt\norg/jetbrains/kotlin/types/checker/KotlinTypePreparator\n*L\n27#1:78\n27#1:79,3\n37#1:82\n37#1:83,3\n48#1:92\n48#1:93,2\n48#1:101\n48#1:86,6\n48#1:95\n48#1:97,4\n48#1:102,7\n48#1:96\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypePreparator;-><init>()V

    return-void
.end method

.method private final transformToNewType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 13

    .line 19
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    .line 21
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 22
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getProjection()Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v2

    :cond_1
    move-object v6, v2

    .line 25
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getNewTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v0

    if-nez v0, :cond_3

    .line 27
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getProjection()Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v8

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getSupertypes()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 79
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 80
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 27
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    .line 80
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_2
    move-object v9, v2

    check-cast v9, Ljava/util/List;

    .line 27
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->setNewTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;)V

    .line 29
    :cond_3
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;

    .line 30
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getNewTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v7

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->isMarkedNullable()Z

    move-result v8

    const/16 v10, 0x20

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    .line 29
    invoke-direct/range {v3 .. v11}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v0

    .line 35
    :cond_4
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerValueTypeConstructor;

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 37
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerValueTypeConstructor;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerValueTypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 83
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 84
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 37
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->isMarkedNullable()Z

    move-result v2

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableAsSpecified(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    const-string v2, "makeNullableAsSpecified(it, type.isMarkedNullable)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 85
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 82
    check-cast v0, Ljava/util/Collection;

    .line 37
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    .line 39
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v0

    .line 40
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    .line 38
    invoke-static {v0, p0, v1, v3, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleTypeWithNonTrivialMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0

    .line 47
    :cond_6
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->isMarkedNullable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    .line 91
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 93
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 94
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 48
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    .line 94
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_3

    .line 101
    :cond_7
    check-cast v0, Ljava/util/List;

    if-nez v3, :cond_8

    goto :goto_4

    .line 104
    :cond_8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getAlternativeType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 48
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    .line 108
    :cond_9
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->setAlternative(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object v2

    :goto_4
    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    move-object p0, v2

    .line 49
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->createType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p1
.end method


# virtual methods
.method public prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v0, :cond_4

    .line 59
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    .line 61
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->transformToNewType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    goto :goto_1

    .line 62
    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    if-eqz v0, :cond_3

    .line 63
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->transformToNewType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->transformToNewType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    .line 65
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    .line 71
    :goto_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$prepareType$1;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$prepareType$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt;->inheritEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    return-object p0

    .line 68
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 58
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    return-object p0
.end method
