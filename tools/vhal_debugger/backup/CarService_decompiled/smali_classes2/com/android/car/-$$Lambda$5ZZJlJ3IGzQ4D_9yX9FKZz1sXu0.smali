.class public final synthetic Lcom/android/car/-$$Lambda$5ZZJlJ3IGzQ4D_9yX9FKZz1sXu0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$5ZZJlJ3IGzQ4D_9yX9FKZz1sXu0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$5ZZJlJ3IGzQ4D_9yX9FKZz1sXu0;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$5ZZJlJ3IGzQ4D_9yX9FKZz1sXu0;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$5ZZJlJ3IGzQ4D_9yX9FKZz1sXu0;->INSTANCE:Lcom/android/car/-$$Lambda$5ZZJlJ3IGzQ4D_9yX9FKZz1sXu0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/car/VmsPublisherService$PublisherProxy;

    invoke-virtual {p1}, Lcom/android/car/VmsPublisherService$PublisherProxy;->unregister()V

    return-void
.end method
