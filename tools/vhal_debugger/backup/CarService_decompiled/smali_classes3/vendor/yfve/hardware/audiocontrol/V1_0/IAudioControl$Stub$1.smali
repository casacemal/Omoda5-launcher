.class Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub$1;
.super Ljava/lang/Object;
.source "IAudioControl.java"

# interfaces
.implements Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$getParametersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;

    .line 816
    iput-object p1, p0, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub$1;->this$0:Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;

    iput-object p2, p0, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "retval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;",
            ">;)V"
        }
    .end annotation

    .line 819
    .local p2, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    iget-object v0, p0, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 820
    iget-object v0, p0, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 821
    iget-object v0, p0, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-static {v0, p2}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 822
    iget-object v0, p0, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 823
    return-void
.end method
