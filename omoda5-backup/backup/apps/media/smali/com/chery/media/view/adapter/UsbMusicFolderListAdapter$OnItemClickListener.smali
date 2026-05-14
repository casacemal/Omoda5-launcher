.class public interface abstract Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$OnItemClickListener;
.super Ljava/lang/Object;
.source "UsbMusicFolderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemClickListener"
.end annotation


# virtual methods
.method public abstract onMusicClick(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
.end method

.method public abstract onRootFolderClick(I)V
.end method

.method public abstract onSubFolderClick(ILcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V
.end method
