.class public interface abstract Lcom/chery/media/view/adapter/PictureFolderListAdapter$OnItemClickListener;
.super Ljava/lang/Object;
.source "PictureFolderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/adapter/PictureFolderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemClickListener"
.end annotation


# virtual methods
.method public abstract onPictureClick(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V
.end method

.method public abstract onSubFolderClick(ILcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V
.end method
