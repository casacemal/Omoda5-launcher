.class public final synthetic Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$$ExternalSyntheticLambda14;->f$0:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$$ExternalSyntheticLambda14;->f$0:Z

    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    invoke-static {p0, p1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->$r8$lambda$MPGQt7-rQqq67mGuY98AdRUnRL0(ZLandroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ContentTransform;

    move-result-object p0

    return-object p0
.end method
