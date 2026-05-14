.class Lcom/chery/window/UiVisibilityTest$1;
.super Ljava/lang/Object;
.source "UiVisibilityTest.java"

# interfaces
.implements Lcom/chery/window/UiVisibility$BindStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/window/UiVisibilityTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/window/UiVisibilityTest;


# direct methods
.method constructor <init>(Lcom/chery/window/UiVisibilityTest;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/chery/window/UiVisibilityTest$1;->this$0:Lcom/chery/window/UiVisibilityTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindServiceStatus(Z)V
    .locals 1

    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBindServiceStatus: connect is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiVisibilityTest"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
