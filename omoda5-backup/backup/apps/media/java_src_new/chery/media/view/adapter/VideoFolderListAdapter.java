package com.chery.media.view.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.VideoAndPicAllListItemLayoutBinding;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.ThumbnailCache;
import com.chery.media.util.Utils;
import com.chery.media.viewmodel.UsbScannerViewModel;
import com.chery.media.viewmodel.VideoViewModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class VideoFolderListAdapter extends RecyclerView.Adapter<MyViewHolder> {
    private static final String TAG = CarLog.concatTag("MEDIA", VideoFolderListAdapter.class);
    private OnItemClickListener clickListener;
    private Context context;
    private MediaDef.UsbFolderInfo folderInfo;
    private List<MediaDef.UsbFolderInfo> subVideoFolderInfos = new ArrayList();
    private ThumbnailCache thumbnailCache;
    private UsbScannerViewModel usbScannerViewModel;
    private VideoViewModel usbVideoViewModel;

    public interface OnItemClickListener {
        void onSubFolderClick(int r1, MediaDef.UsbFolderInfo usbFolderInfo);

        void onVideoClick(int r1, MediaDef.UsbVideoInfo usbVideoInfo);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.clickListener = onItemClickListener;
    }

    public VideoFolderListAdapter(Context context, UsbScannerViewModel usbScannerViewModel, VideoViewModel videoViewModel, ThumbnailCache thumbnailCache) {
        this.context = context;
        this.usbScannerViewModel = usbScannerViewModel;
        this.usbVideoViewModel = videoViewModel;
        this.thumbnailCache = thumbnailCache;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int r2) {
        return new MyViewHolder(VideoAndPicAllListItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext())));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final MyViewHolder myViewHolder, final int r11) {
        if (r11 < this.subVideoFolderInfos.size()) {
            final MediaDef.UsbFolderInfo usbFolderInfo = this.subVideoFolderInfos.get(r11);
            myViewHolder.binding.ivPic.setImageResource(C0632R.drawable.video_and_pic_all_default_folder_icon);
            myViewHolder.binding.tvFolderName.setText(usbFolderInfo.fileName);
            myViewHolder.binding.tvFolderName.setVisibility(0);
            myViewHolder.binding.tvTitle.setVisibility(8);
            myViewHolder.binding.tvFileSize.setVisibility(8);
            myViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.VideoFolderListAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (VideoFolderListAdapter.this.clickListener != null) {
                        VideoFolderListAdapter.this.clickListener.onSubFolderClick(r11, usbFolderInfo);
                    }
                }
            });
            return;
        }
        final MediaDef.UsbVideoInfo usbVideoInfo = this.folderInfo.videoInfos.get(r11 - this.subVideoFolderInfos.size());
        if (this.thumbnailCache.hasCacheThumbnail(usbVideoInfo.path)) {
            Bitmap thumbnail = this.thumbnailCache.getThumbnail(usbVideoInfo.path, new Size(270, 152));
            if (thumbnail != null) {
                myViewHolder.binding.ivPic.setImageBitmap(thumbnail);
            } else {
                myViewHolder.binding.ivPic.setImageResource(C0632R.drawable.video_all_video_error_icon);
            }
        } else {
            myViewHolder.binding.ivPic.setImageResource(C0632R.drawable.video_all_default_video_icon);
            ThumbnailCache.ThumbnailRequest thumbnailRequest = new ThumbnailCache.ThumbnailRequest(usbVideoInfo.path, new ThumbnailCache.ThumbnailResponse() { // from class: com.chery.media.view.adapter.VideoFolderListAdapter.2
                @Override // com.chery.media.model.business.ThumbnailCache.ThumbnailResponse
                public void onThumbnailReady(Bitmap bitmap, Object obj) {
                    Object tag = myViewHolder.binding.ivPic.getTag();
                    if ((tag instanceof ThumbnailCache.ThumbnailRequest) && ((ThumbnailCache.ThumbnailRequest) tag).response == this) {
                        if (bitmap != null) {
                            myViewHolder.binding.ivPic.setImageBitmap(bitmap);
                        } else {
                            myViewHolder.binding.ivPic.setImageResource(C0632R.drawable.video_all_video_error_icon);
                        }
                    }
                }
            }, new Size(270, 152));
            myViewHolder.binding.ivPic.setTag(thumbnailRequest);
            this.thumbnailCache.requestThumbnail(thumbnailRequest);
        }
        myViewHolder.binding.tvFolderName.setVisibility(8);
        myViewHolder.binding.tvTitle.setText(usbVideoInfo.fileName);
        myViewHolder.binding.tvTitle.setVisibility(0);
        myViewHolder.binding.tvFileSize.setText(Utils.getFileSizeString(usbVideoInfo.size));
        myViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.VideoFolderListAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (VideoFolderListAdapter.this.clickListener != null) {
                    VideoFolderListAdapter.this.clickListener.onVideoClick(r11, usbVideoInfo);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(MyViewHolder myViewHolder) {
        super.onViewRecycled((VideoFolderListAdapter) myViewHolder);
        if (myViewHolder.binding.ivPic.getTag() instanceof ThumbnailCache.ThumbnailRequest) {
            this.thumbnailCache.removeThumbnail((ThumbnailCache.ThumbnailRequest) myViewHolder.binding.ivPic.getTag());
        }
        myViewHolder.binding.ivPic.setTag(null);
        myViewHolder.binding.ivPic.setImageDrawable(null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.folderInfo == null) {
            return 0;
        }
        return this.subVideoFolderInfos.size() + this.folderInfo.videoInfos.size();
    }

    public class MyViewHolder extends RecyclerView.ViewHolder {
        VideoAndPicAllListItemLayoutBinding binding;

        public MyViewHolder(VideoAndPicAllListItemLayoutBinding videoAndPicAllListItemLayoutBinding) {
            super(videoAndPicAllListItemLayoutBinding.getRoot());
            this.binding = videoAndPicAllListItemLayoutBinding;
        }
    }

    public void setFolderInfo(MediaDef.UsbFolderInfo usbFolderInfo) {
        this.folderInfo = usbFolderInfo;
        this.subVideoFolderInfos.clear();
        if (usbFolderInfo != null) {
            for (MediaDef.UsbFolderInfo usbFolderInfo2 : usbFolderInfo.subFolderInfos) {
                if (MediaDef.getFolderAllVideosCount(usbFolderInfo2) > 0) {
                    this.subVideoFolderInfos.add(usbFolderInfo2);
                }
            }
        }
        notifyDataSetChanged();
    }

    public boolean isRootFolder() {
        MediaDef.UsbFolderInfo usbFolderInfo = this.folderInfo;
        return usbFolderInfo == null || usbFolderInfo.dir.equals("/storage");
    }

    public MediaDef.UsbFolderInfo getFolderInfo() {
        return this.folderInfo;
    }
}
