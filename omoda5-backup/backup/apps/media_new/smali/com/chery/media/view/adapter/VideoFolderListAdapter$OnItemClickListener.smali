.class public interface abstract Lcom/chery/media/view/adapter/VideoFolderListAdapter$OnItemClickListener;
.super Ljava/lang/Object;
.source "VideoFolderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/VideoFolderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemClickListener"
.end annotation


# virtual methods
.method public abstract onSubFolderClick(ILcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V
.end method

.method public abstract onVideoClick(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V
.end method
