.class Lcom/chery/media/view/fragment/RadioPlayerFragment$20;
.super Ljava/lang/Object;
.source "RadioPlayerFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/RadioPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/chery/media/model/business/RadioDef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/model/business/RadioDef;)V
    .locals 12

    .line 418
    iget v0, p1, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v1, v0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$602(Lcom/chery/media/view/fragment/RadioPlayerFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 420
    invoke-static {}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentChannelObserver :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/chery/media/model/business/RadioDef;->band:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/chery/media/model/business/RadioBusiness;->FREQ_DIVIDE_BAND:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x22

    const/16 v5, 0x3c

    const/4 v6, 0x0

    const/16 v7, 0x12

    if-le v1, v2, :cond_1

    .line 423
    iget-object v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$100(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/viewmodel/RadioViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/RadioViewModel;->getArea()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x7f0e00bf

    const-string v8, "."

    const-string v9, "FM "

    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    .line 424
    new-instance v1, Landroid/text/SpannableString;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    div-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    rem-int/lit16 v9, v9, 0x3e8

    div-int/lit8 v9, v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "%1$02d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-virtual {v3}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 426
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    div-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rem-int/lit16 v8, v8, 0x3e8

    div-int/lit8 v8, v8, 0x64

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-virtual {v3}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 428
    :goto_0
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-interface {v1, v2, v6, v3, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 429
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-interface {v1, v2, v3, v4, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 430
    iget-object v2, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v2}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->arcScaleview:Lcom/chery/media/view/component/ArcScaleView;

    invoke-virtual {v1, v10}, Lcom/chery/media/view/component/ArcScaleView;->setRadioBand(I)V

    .line 432
    iget-object v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->arcScaleview:Lcom/chery/media/view/component/ArcScaleView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/chery/media/view/component/ArcScaleView;->setCurrentValue(I)V

    goto :goto_1

    .line 434
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AM "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-virtual {v3}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v8, 0x7f0e00bb

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 435
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-interface {v1, v2, v6, v3, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 436
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-interface {v1, v2, v3, v4, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 437
    iget-object v2, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v2}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->arcScaleview:Lcom/chery/media/view/component/ArcScaleView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/chery/media/view/component/ArcScaleView;->setRadioBand(I)V

    .line 439
    iget-object v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->arcScaleview:Lcom/chery/media/view/component/ArcScaleView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/chery/media/view/component/ArcScaleView;->setCurrentValue(I)V

    .line 442
    :goto_1
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivCollection:Landroid/widget/ImageView;

    iget-boolean p1, p1, Lcom/chery/media/model/business/RadioDef;->isCollection:Z

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 443
    iget-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$100(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/viewmodel/RadioViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/RadioViewModel;->getTunerState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    .line 444
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$700(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 415
    check-cast p1, Lcom/chery/media/model/business/RadioDef;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;->onChanged(Lcom/chery/media/model/business/RadioDef;)V

    return-void
.end method
