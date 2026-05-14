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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class VideoAllListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("MEDIA", VideoAllListAdapter.class);
    private OnItemClickListener clickListener;
    private Context context;
    private MediaDef.UsbVideoInfo currentVideoInfo;
    private Map<Integer, ViewHolder> holders = new HashMap();
    private ThumbnailCache thumbnailCache;
    private List<MediaDef.UsbVideoInfo> videoInfoList;

    public interface OnItemClickListener {
        void onItemClick(int r1, MediaDef.UsbVideoInfo usbVideoInfo);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.clickListener = onItemClickListener;
    }

    public VideoAllListAdapter(Context context, ThumbnailCache thumbnailCache) {
        this.context = context;
        this.thumbnailCache = thumbnailCache;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r2) {
        return new ViewHolder(VideoAndPicAllListItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext())));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final ViewHolder viewHolder, final int r11) {
        this.holders.put(Integer.valueOf(r11), viewHolder);
        final MediaDef.UsbVideoInfo usbVideoInfo = this.videoInfoList.get(r11);
        viewHolder.binding.tvFolderName.setVisibility(8);
        viewHolder.binding.tvTitle.setText(usbVideoInfo.name);
        viewHolder.binding.tvTitle.setVisibility(0);
        viewHolder.binding.tvFileSize.setText(Utils.getFileSizeString(usbVideoInfo.size));
        if (this.thumbnailCache.hasCacheThumbnail(usbVideoInfo.path)) {
            Bitmap thumbnail = this.thumbnailCache.getThumbnail(usbVideoInfo.path, new Size(270, 152));
            if (thumbnail != null) {
                viewHolder.binding.ivPic.setImageBitmap(thumbnail);
            } else {
                viewHolder.binding.ivPic.setImageResource(C0632R.drawable.video_all_video_error_icon);
            }
        } else {
            viewHolder.binding.ivPic.setImageResource(C0632R.drawable.video_all_default_video_icon);
            ThumbnailCache.ThumbnailRequest thumbnailRequest = new ThumbnailCache.ThumbnailRequest(usbVideoInfo.path, new ThumbnailCache.ThumbnailResponse() { // from class: com.chery.media.view.adapter.VideoAllListAdapter.1
                @Override // com.chery.media.model.business.ThumbnailCache.ThumbnailResponse
                public void onThumbnailReady(Bitmap bitmap, Object obj) {
                    Object tag = viewHolder.binding.ivPic.getTag();
                    if ((tag instanceof ThumbnailCache.ThumbnailRequest) && ((ThumbnailCache.ThumbnailRequest) tag).response == this) {
                        if (bitmap != null) {
                            viewHolder.binding.ivPic.setImageBitmap(bitmap);
                        } else {
                            viewHolder.binding.ivPic.setImageResource(C0632R.drawable.video_all_video_error_icon);
                        }
                    }
                }
            }, new Size(270, 152));
            viewHolder.binding.ivPic.setTag(thumbnailRequest);
            this.thumbnailCache.requestThumbnail(thumbnailRequest);
        }
        if (this.currentVideoInfo != null && usbVideoInfo.path.equals(this.currentVideoInfo.path)) {
            viewHolder.binding.getRoot().setSelected(true);
        } else {
            viewHolder.binding.getRoot().setSelected(false);
        }
        if (this.currentVideoInfo != null && usbVideoInfo.path.equals(this.currentVideoInfo.path)) {
            viewHolder.binding.anPlayIcon.setVisibility(0);
        } else {
            viewHolder.binding.anPlayIcon.setVisibility(8);
        }
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.VideoAllListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (VideoAllListAdapter.this.clickListener != null) {
                    VideoAllListAdapter.this.clickListener.onItemClick(r11, usbVideoInfo);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        super.onViewRecycled((VideoAllListAdapter) viewHolder);
        Iterator<Integer> it = this.holders.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            int r1 = it.next().intValue();
            if (this.holders.get(Integer.valueOf(r1)) == viewHolder) {
                this.holders.remove(Integer.valueOf(r1));
                break;
            }
        }
        if (viewHolder.binding.ivPic.getTag() instanceof ThumbnailCache.ThumbnailRequest) {
            this.thumbnailCache.removeThumbnail((ThumbnailCache.ThumbnailRequest) viewHolder.binding.ivPic.getTag());
        }
        viewHolder.binding.ivPic.setTag(null);
        viewHolder.binding.ivPic.setImageDrawable(null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<MediaDef.UsbVideoInfo> list = this.videoInfoList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        VideoAndPicAllListItemLayoutBinding binding;

        public ViewHolder(VideoAndPicAllListItemLayoutBinding videoAndPicAllListItemLayoutBinding) {
            super(videoAndPicAllListItemLayoutBinding.getRoot());
            this.binding = videoAndPicAllListItemLayoutBinding;
        }
    }

    public void setVideoList(List<MediaDef.UsbVideoInfo> list) {
        this.videoInfoList = list;
        notifyDataSetChanged();
    }

    public List<MediaDef.UsbVideoInfo> getVideoList() {
        return this.videoInfoList;
    }

    public void setCurrentVideoInfo(MediaDef.UsbVideoInfo usbVideoInfo) {
        this.currentVideoInfo = usbVideoInfo;
        refreshList();
    }

    private void refreshList() {
        if (this.videoInfoList == null) {
            return;
        }
        Iterator<Integer> it = this.holders.keySet().iterator();
        while (it.hasNext()) {
            int r1 = it.next().intValue();
            if (r1 >= 0 && r1 < this.videoInfoList.size()) {
                MediaDef.UsbVideoInfo usbVideoInfo = this.videoInfoList.get(r1);
                ViewHolder viewHolder = this.holders.get(Integer.valueOf(r1));
                viewHolder.binding.tvFolderName.setVisibility(8);
                viewHolder.binding.tvTitle.setText(usbVideoInfo.name);
                viewHolder.binding.tvTitle.setVisibility(0);
                viewHolder.binding.tvFileSize.setText(Utils.getFileSizeString(usbVideoInfo.size));
                if (this.currentVideoInfo != null && usbVideoInfo.path.equals(this.currentVideoInfo.path)) {
                    viewHolder.binding.getRoot().setSelected(true);
                } else {
                    viewHolder.binding.getRoot().setSelected(false);
                }
                if (this.currentVideoInfo != null && usbVideoInfo.path.equals(this.currentVideoInfo.path)) {
                    viewHolder.binding.anPlayIcon.setVisibility(0);
                } else {
                    viewHolder.binding.anPlayIcon.setVisibility(8);
                }
            }
        }
    }
}
