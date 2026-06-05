.class public final synthetic Lcom/android/car/audio/-$$Lambda$GmcZA0zXB8mu4enjpmQnD7hZdQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/audio/-$$Lambda$GmcZA0zXB8mu4enjpmQnD7hZdQI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/audio/-$$Lambda$GmcZA0zXB8mu4enjpmQnD7hZdQI;

    invoke-direct {v0}, Lcom/android/car/audio/-$$Lambda$GmcZA0zXB8mu4enjpmQnD7hZdQI;-><init>()V

    sput-object v0, Lcom/android/car/audio/-$$Lambda$GmcZA0zXB8mu4enjpmQnD7hZdQI;->INSTANCE:Lcom/android/car/audio/-$$Lambda$GmcZA0zXB8mu4enjpmQnD7hZdQI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result p1

    return p1
.end method
