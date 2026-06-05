.class public Lorg/hamcrest/core/StringContains;
.super Lorg/hamcrest/core/SubstringMatcher;
.source "StringContains.java"


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .param p1, "ignoringCase"    # Z
    .param p2, "substring"    # Ljava/lang/String;

    .line 10
    const-string v0, "containing"

    invoke-direct {p0, v0, p1, p2}, Lorg/hamcrest/core/SubstringMatcher;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 11
    return-void
.end method

.method public static containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 2
    .param p0, "substring"    # Ljava/lang/String;
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

    .line 29
    new-instance v0, Lorg/hamcrest/core/StringContains;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/hamcrest/core/StringContains;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static containsStringIgnoringCase(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 2
    .param p0, "substring"    # Ljava/lang/String;
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

    .line 43
    new-instance v0, Lorg/hamcrest/core/StringContains;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/hamcrest/core/StringContains;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected evalSubstringOf(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 15
    invoke-virtual {p0, p1}, Lorg/hamcrest/core/StringContains;->converted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/hamcrest/core/StringContains;->substring:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/hamcrest/core/StringContains;->converted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
