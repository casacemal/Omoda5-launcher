.class Lcom/android/car/VmsPublisherService$PacketCountAndSize;
.super Ljava/lang/Object;
.source "VmsPublisherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/VmsPublisherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PacketCountAndSize"
.end annotation


# instance fields
.field mCount:J

.field mSize:J

.field final synthetic this$0:Lcom/android/car/VmsPublisherService;


# direct methods
.method private constructor <init>(Lcom/android/car/VmsPublisherService;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/car/VmsPublisherService$PacketCountAndSize;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/VmsPublisherService;Lcom/android/car/VmsPublisherService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/VmsPublisherService;
    .param p2, "x1"    # Lcom/android/car/VmsPublisherService$1;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/car/VmsPublisherService$PacketCountAndSize;-><init>(Lcom/android/car/VmsPublisherService;)V

    return-void
.end method
