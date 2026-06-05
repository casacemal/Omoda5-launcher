.class public Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    .local p0, "this":Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter;, "Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter<TT;>;"
    sget v0, Lcom/android/settingslib/widget/R$layout;->settings_spinner_view:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 38
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter;->setDropDownViewResource(I)V

    .line 39
    return-void
.end method
