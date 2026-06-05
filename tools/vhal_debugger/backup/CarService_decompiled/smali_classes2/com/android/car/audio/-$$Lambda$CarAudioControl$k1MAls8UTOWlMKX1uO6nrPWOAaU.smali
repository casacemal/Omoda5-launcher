.class public final synthetic Lcom/android/car/audio/-$$Lambda$CarAudioControl$k1MAls8UTOWlMKX1uO6nrPWOAaU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$getParametersCallback;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/audio/-$$Lambda$CarAudioControl$k1MAls8UTOWlMKX1uO6nrPWOAaU;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/audio/-$$Lambda$CarAudioControl$k1MAls8UTOWlMKX1uO6nrPWOAaU;->f$0:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/android/car/audio/CarAudioControl;->lambda$getAudioSettingInternal$0(Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    return-void
.end method
