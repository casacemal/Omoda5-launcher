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
import com.chery.media.viewmodel.PictureViewModel;
import com.chery.media.viewmodel.UsbScannerViewModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class PictureFolderListAdapter extends RecyclerView.Adapter<MyViewHolder> {
    private static final String TAG = CarLog.concatTag("MEDIA", PictureFolderListAdapter.class);
    private OnItemClickListener clickListener;
    private Context context;
    private MediaDef.UsbFolderInfo folderInfo;
    private List<MediaDef.UsbFolderInfo> subPictureFolderInfos = new ArrayList();
    private PictureViewModel usbPictureViewModel;
    private UsbScannerViewModel usbScannerViewModel;

    public interface OnItemClickListener {
        void onPictureClick(int r1, MediaDef.UsbPictureInfo usbPictureInfo);

        void onSubFolderClick(int r1, MediaDef.UsbFolderInfo usbFolderInfo);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.clickListener = onItemClickListener;
    }

    public PictureFolderListAdapter(Context context, UsbScannerViewModel usbScannerViewModel, PictureViewModel pictureViewModel) {
        this.context = context;
        this.usbScannerViewModel = usbScannerViewModel;
        this.usbPictureViewModel = pictureViewModel;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int r2) {
        return new MyViewHolder(VideoAndPicAllListItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext())));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, final int r9) {
        if (r9 < this.subPictureFolderInfos.size()) {
            final MediaDef.UsbFolderInfo usbFolderInfo = this.subPictureFolderInfos.get(r9);
            myViewHolder.binding.ivPic.setImageResource(C0632R.drawable.video_and_pic_all_default_folder_icon);
            myViewHolder.binding.tvFolderName.setText(usbFolderInfo.fileName);
            myViewHolder.binding.tvFolderName.setVisibility(0);
            myViewHolder.binding.tvTitle.setVisibility(8);
            myViewHolder.binding.tvFileSize.setVisibility(8);
            myViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.PictureFolderListAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (PictureFolderListAdapter.this.clickListener != null) {
                        PictureFolderListAdapter.this.clickListener.onSubFolderClick(r9, usbFolderInfo);
                    }
                }
            });
            return;
        }
        final MediaDef.UsbPictureInfo usbPictureInfo = this.folderInfo.pictureInfos.get(r9 - this.subPictureFolderInfos.size());
        Glide.with(this.context).asBitmap().load(usbPictureInfo.path).placeholder(C0632R.drawable.pic_all_default_pic_icon).error(C0632R.drawable.pic_all_pic_error_icon).apply((BaseRequestOptions<?>) new RequestOptions().override(270, 152)).thumbnail(0.5f).timeout(PathInterpolatorCompat.MAX_NUM_POINTS).into(myViewHolder.binding.ivPic);
        myViewHolder.binding.tvFolderName.setVisibility(8);
        myViewHolder.binding.tvTitle.setText(usbPictureInfo.fileName);
        myViewHolder.binding.tvTitle.setVisibility(0);
        myViewHolder.binding.tvFileSize.setText(Utils.getFileSizeString(usbPictureInfo.size));
        myViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.PictureFolderListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PictureFolderListAdapter.this.clickListener != null) {
                    PictureFolderListAdapter.this.clickListener.onPictureClick(r9, usbPictureInfo);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.folderInfo == null) {
            return 0;
        }
        return this.subPictureFolderInfos.size() + this.folderInfo.pictureInfos.size();
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
        this.subPictureFolderInfos.clear();
        if (usbFolderInfo != null) {
            for (MediaDef.UsbFolderInfo usbFolderInfo2 : usbFolderInfo.subFolderInfos) {
                if (MediaDef.getFolderAllPicturesCount(usbFolderInfo2) > 0) {
                    this.subPictureFolderInfos.add(usbFolderInfo2);
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
