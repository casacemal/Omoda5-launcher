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
import com.chery.media.databinding.VideoPlayerListItemLayoutBinding;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.ThumbnailCache;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class VideoPlayerListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("MEDIA", VideoPlayerListAdapter.class);
    private OnItemClickListener clickListener;
    private Context context;
    private MediaDef.UsbVideoInfo currentVideoInfo;
    private ThumbnailCache thumbnailCache;
    private List<MediaDef.UsbVideoInfo> videoInfoList;
    private boolean isPlaying = false;
    private Map<Integer, ViewHolder> holders = new HashMap();

    public interface OnItemClickListener {
        void onItemClick(int r1, MediaDef.UsbVideoInfo usbVideoInfo);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.clickListener = onItemClickListener;
    }

    public VideoPlayerListAdapter(Context context, ThumbnailCache thumbnailCache) {
        this.context = context;
        this.thumbnailCache = thumbnailCache;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r2) {
        return new ViewHolder(VideoPlayerListItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext())));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final ViewHolder viewHolder, final int r9) {
        this.holders.put(Integer.valueOf(r9), viewHolder);
        final MediaDef.UsbVideoInfo usbVideoInfo = this.videoInfoList.get(r9);
        viewHolder.binding.tvTitle.setText(usbVideoInfo.name);
        if (this.thumbnailCache.hasCacheThumbnail(usbVideoInfo.path)) {
            Bitmap thumbnail = this.thumbnailCache.getThumbnail(usbVideoInfo.path, new Size(270, 152));
            if (thumbnail != null) {
                viewHolder.binding.ivPic.setImageBitmap(thumbnail);
            } else {
                viewHolder.binding.ivPic.setImageResource(C0632R.drawable.video_all_video_error_icon);
            }
        } else {
            viewHolder.binding.ivPic.setImageResource(C0632R.drawable.video_all_default_video_icon);
            ThumbnailCache.ThumbnailRequest thumbnailRequest = new ThumbnailCache.ThumbnailRequest(usbVideoInfo.path, new ThumbnailCache.ThumbnailResponse() { // from class: com.chery.media.view.adapter.VideoPlayerListAdapter.1
                @Override // com.chery.media.model.business.ThumbnailCache.ThumbnailResponse
                public void onThumbnailReady(Bitmap bitmap, Object obj) {
                    Object tag = viewHolder.binding.ivPic.getTag();
                    if ((tag instanceof ThumbnailCache.ThumbnailRequest) && ((ThumbnailCache.ThumbnailRequest) tag).response == this && bitmap != null) {
                        viewHolder.binding.ivPic.setImageBitmap(bitmap);
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
            if (this.isPlaying) {
                viewHolder.binding.anPlayIcon.startAnim();
            } else {
                viewHolder.binding.anPlayIcon.pauseAnim();
            }
        } else {
            viewHolder.binding.anPlayIcon.setVisibility(8);
            viewHolder.binding.anPlayIcon.pauseAnim();
        }
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.VideoPlayerListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (VideoPlayerListAdapter.this.clickListener != null) {
                    VideoPlayerListAdapter.this.clickListener.onItemClick(r9, usbVideoInfo);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        super.onViewRecycled((VideoPlayerListAdapter) viewHolder);
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
        viewHolder.binding.anPlayIcon.cancelAnim();
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
        VideoPlayerListItemLayoutBinding binding;

        public ViewHolder(VideoPlayerListItemLayoutBinding videoPlayerListItemLayoutBinding) {
            super(videoPlayerListItemLayoutBinding.getRoot());
            this.binding = videoPlayerListItemLayoutBinding;
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

    public void setPlaying(boolean z) {
        this.isPlaying = z;
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
                viewHolder.binding.tvTitle.setText(usbVideoInfo.name);
                if (this.currentVideoInfo != null && usbVideoInfo.path.equals(this.currentVideoInfo.path)) {
                    viewHolder.binding.getRoot().setSelected(true);
                } else {
                    viewHolder.binding.getRoot().setSelected(false);
                }
                if (this.currentVideoInfo != null && usbVideoInfo.path.equals(this.currentVideoInfo.path)) {
                    viewHolder.binding.anPlayIcon.setVisibility(0);
                    if (this.isPlaying) {
                        viewHolder.binding.anPlayIcon.startAnim();
                    } else {
                        viewHolder.binding.anPlayIcon.pauseAnim();
                    }
                } else {
                    viewHolder.binding.anPlayIcon.setVisibility(8);
                    viewHolder.binding.anPlayIcon.pauseAnim();
                }
            }
        }
    }
}
