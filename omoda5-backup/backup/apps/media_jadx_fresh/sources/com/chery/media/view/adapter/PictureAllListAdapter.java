package com.chery.media.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.avn.tools.log.CarLog;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.chery.media.C0632R;
import com.chery.media.databinding.VideoAndPicAllListItemLayoutBinding;
import com.chery.media.model.business.MediaDef;
import com.chery.media.util.Utils;
import java.util.List;

/* loaded from: classes.dex */
public class PictureAllListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("MEDIA", PictureAllListAdapter.class);
    private OnItemClickListener clickListener;
    private Context context;
    private MediaDef.UsbPictureInfo currentPictureInfo;
    private List<MediaDef.UsbPictureInfo> pictureInfoList;

    public interface OnItemClickListener {
        void onItemClick(int r1, MediaDef.UsbPictureInfo usbPictureInfo);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.clickListener = onItemClickListener;
    }

    public PictureAllListAdapter(Context context) {
        this.context = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r2) {
        return new ViewHolder(VideoAndPicAllListItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext())));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int r8) {
        final MediaDef.UsbPictureInfo usbPictureInfo = this.pictureInfoList.get(r8);
        viewHolder.binding.tvFolderName.setVisibility(8);
        viewHolder.binding.tvTitle.setText(usbPictureInfo.name);
        viewHolder.binding.tvTitle.setVisibility(0);
        viewHolder.binding.tvFileSize.setText(Utils.getFileSizeString(usbPictureInfo.size));
        Glide.with(this.context).asBitmap().load(this.pictureInfoList.get(r8).path).placeholder(C0632R.drawable.pic_all_default_pic_icon).error(C0632R.drawable.pic_all_pic_error_icon).apply((BaseRequestOptions<?>) new RequestOptions().override(270, 152)).thumbnail(0.5f).timeout(PathInterpolatorCompat.MAX_NUM_POINTS).into(viewHolder.binding.ivPic);
        if (this.currentPictureInfo != null && usbPictureInfo.path.equals(this.currentPictureInfo.path)) {
            viewHolder.binding.getRoot().setSelected(true);
        } else {
            viewHolder.binding.getRoot().setSelected(false);
        }
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.PictureAllListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PictureAllListAdapter.this.clickListener != null) {
                    PictureAllListAdapter.this.clickListener.onItemClick(r8, usbPictureInfo);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<MediaDef.UsbPictureInfo> list = this.pictureInfoList;
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

    public void setPictureList(List<MediaDef.UsbPictureInfo> list) {
        this.pictureInfoList = list;
        notifyDataSetChanged();
    }

    public List<MediaDef.UsbPictureInfo> getPictureList() {
        return this.pictureInfoList;
    }

    public void setCurrentPictureInfo(MediaDef.UsbPictureInfo usbPictureInfo) {
        this.currentPictureInfo = usbPictureInfo;
        notifyDataSetChanged();
    }
}
