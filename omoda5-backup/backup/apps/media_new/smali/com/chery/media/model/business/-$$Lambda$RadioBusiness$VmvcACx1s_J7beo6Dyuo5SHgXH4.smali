.class public final synthetic Lcom/chery/media/model/business/-$$Lambda$RadioBusiness$VmvcACx1s_J7beo6Dyuo5SHgXH4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/chery/media/model/business/-$$Lambda$RadioBusiness$VmvcACx1s_J7beo6Dyuo5SHgXH4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chery/media/model/business/-$$Lambda$RadioBusiness$VmvcACx1s_J7beo6Dyuo5SHgXH4;

    invoke-direct {v0}, Lcom/chery/media/model/business/-$$Lambda$RadioBusiness$VmvcACx1s_J7beo6Dyuo5SHgXH4;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/-$$Lambda$RadioBusiness$VmvcACx1s_J7beo6Dyuo5SHgXH4;->INSTANCE:Lcom/chery/media/model/business/-$$Lambda$RadioBusiness$VmvcACx1s_J7beo6Dyuo5SHgXH4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/chery/media/model/business/RadioDef;

    check-cast p2, Lcom/chery/media/model/business/RadioDef;

    invoke-static {p1, p2}, Lcom/chery/media/model/business/RadioBusiness;->lambda$null$0(Lcom/chery/media/model/business/RadioDef;Lcom/chery/media/model/business/RadioDef;)I

    move-result p0

    return p0
.end method
