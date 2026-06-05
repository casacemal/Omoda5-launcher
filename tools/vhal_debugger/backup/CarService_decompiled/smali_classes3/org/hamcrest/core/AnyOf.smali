.class public Lorg/hamcrest/core/AnyOf;
.super Lorg/hamcrest/core/ShortcutCombination;
.source "AnyOf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/core/ShortcutCombination<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;>;)V"
        }
    .end annotation

    .line 16
    .local p0, "this":Lorg/hamcrest/core/AnyOf;, "Lorg/hamcrest/core/AnyOf<TT;>;"
    .local p1, "matchers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-direct {p0, p1}, Lorg/hamcrest/core/ShortcutCombination;-><init>(Ljava/lang/Iterable;)V

    .line 17
    return-void
.end method

.method public static anyOf(Ljava/lang/Iterable;)Lorg/hamcrest/core/AnyOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 35
    .local p0, "matchers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/hamcrest/Matcher<-TT;>;>;"
    new-instance v0, Lorg/hamcrest/core/AnyOf;

    invoke-direct {v0, p0}, Lorg/hamcrest/core/AnyOf;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs anyOf([Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 45
    .local p0, "matchers":[Lorg/hamcrest/Matcher;, "[Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/hamcrest/core/AnyOf;->anyOf(Ljava/lang/Iterable;)Lorg/hamcrest/core/AnyOf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 26
    .local p0, "this":Lorg/hamcrest/core/AnyOf;, "Lorg/hamcrest/core/AnyOf<TT;>;"
    const-string v0, "or"

    invoke-virtual {p0, p1, v0}, Lorg/hamcrest/core/AnyOf;->describeTo(Lorg/hamcrest/Description;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public bridge synthetic describeTo(Lorg/hamcrest/Description;Ljava/lang/String;)V
    .locals 0

    .line 13
    .local p0, "this":Lorg/hamcrest/core/AnyOf;, "Lorg/hamcrest/core/AnyOf<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/hamcrest/core/ShortcutCombination;->describeTo(Lorg/hamcrest/Description;Ljava/lang/String;)V

    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 21
    .local p0, "this":Lorg/hamcrest/core/AnyOf;, "Lorg/hamcrest/core/AnyOf<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/hamcrest/core/AnyOf;->matches(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method
