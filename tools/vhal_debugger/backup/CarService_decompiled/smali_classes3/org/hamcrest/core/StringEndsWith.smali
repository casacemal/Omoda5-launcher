.class public Lorg/hamcrest/core/StringEndsWith;
.super Lorg/hamcrest/core/SubstringMatcher;
.source "StringEndsWith.java"


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .param p1, "ignoringCase"    # Z
    .param p2, "substring"    # Ljava/lang/String;

    .line 9
    const-string v0, "ending with"

    invoke-direct {p0, v0, p1, p2}, Lorg/hamcrest/core/SubstringMatcher;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static endsWith(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 2
    .param p0, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/hamcrest/core/StringEndsWith;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/hamcrest/core/StringEndsWith;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static endsWithIgnoringCase(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 2
    .param p0, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/hamcrest/core/StringEndsWith;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/hamcrest/core/StringEndsWith;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected evalSubstringOf(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 13
    invoke-virtual {p0, p1}, Lorg/hamcrest/core/StringEndsWith;->converted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/hamcrest/core/StringEndsWith;->substring:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/hamcrest/core/StringEndsWith;->converted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
