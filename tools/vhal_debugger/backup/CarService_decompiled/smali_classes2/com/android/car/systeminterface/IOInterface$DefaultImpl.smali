.class public Lcom/android/car/systeminterface/IOInterface$DefaultImpl;
.super Ljava/lang/Object;
.source "IOInterface.java"

# interfaces
.implements Lcom/android/car/systeminterface/IOInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/systeminterface/IOInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImpl"
.end annotation


# instance fields
.field private final mSystemCarDir:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/car"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/systeminterface/IOInterface$DefaultImpl;->mSystemCarDir:Ljava/io/File;

    .line 39
    return-void
.end method


# virtual methods
.method public getSystemCarDir()Ljava/io/File;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/car/systeminterface/IOInterface$DefaultImpl;->mSystemCarDir:Ljava/io/File;

    return-object v0
.end method
