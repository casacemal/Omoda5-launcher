.class final Lcom/chery/media/util/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/util/Utils;->sortByDefault(Ljava/util/List;Lcom/chery/media/util/Utils$SortField;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$sortField:Lcom/chery/media/util/Utils$SortField;


# direct methods
.method constructor <init>(Lcom/chery/media/util/Utils$SortField;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/chery/media/util/Utils$2;->val$sortField:Lcom/chery/media/util/Utils$SortField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/chery/media/util/Utils$2;->val$sortField:Lcom/chery/media/util/Utils$SortField;

    invoke-interface {v0, p1}, Lcom/chery/media/util/Utils$SortField;->getFiled(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/util/Utils$2;->val$sortField:Lcom/chery/media/util/Utils$SortField;

    invoke-interface {p0, p2}, Lcom/chery/media/util/Utils$SortField;->getFiled(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
