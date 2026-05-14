.class public Lcom/chery/test/TestCarPropertyManager;
.super Ljava/lang/Object;
.source "TestCarPropertyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-class v0, Lcom/chery/test/TestCarPropertyManager;

    const-string v1, "CAR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/test/TestCarPropertyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 4

    .line 20
    invoke-static {p1}, Lcom/chery/caradapter/carapi/CarAdapterClient;->getInstance(Landroid/content/Context;)Lcom/chery/caradapter/carapi/CarAdapterClient;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/chery/caradapter/carapi/CarAdapterClient;->getCarClient(I)Lcom/chery/caradapter/carapi/client/CarBaseClient;

    move-result-object p1

    check-cast p1, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    .line 22
    invoke-virtual {p1}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->getWelcomeLightPolling()I

    move-result v0

    .line 23
    sget-object v1, Lcom/chery/test/TestCarPropertyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: light="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Lcom/chery/test/TestCarPropertyManager$1;

    invoke-direct {v0, p0}, Lcom/chery/test/TestCarPropertyManager$1;-><init>(Lcom/chery/test/TestCarPropertyManager;)V

    invoke-virtual {p1, v0}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->setListener(Lcom/chery/caradapter/carapi/interfaces/IIntelligentKeyListener;)V

    return-void
.end method
