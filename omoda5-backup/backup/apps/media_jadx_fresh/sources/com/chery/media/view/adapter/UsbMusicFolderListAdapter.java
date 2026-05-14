package com.chery.media.view.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.MediaUsbMusicFolderListItemLayoutBinding;
import com.chery.media.databinding.MediaUsbMusicSongListItemLayoutBinding;
import com.chery.media.model.business.MediaDef;
import com.chery.media.viewmodel.UsbMusicViewModel;
import com.chery.media.viewmodel.UsbScannerViewModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class UsbMusicFolderListAdapter extends RecyclerView.Adapter<MyViewHolder> {
    private static final String TAG = CarLog.concatTag("MEDIA", UsbMusicFolderListAdapter.class);
    private static final int TYPE_FOLDER = 0;
    private static final int TYPE_MUSIC = 1;
    private OnItemClickListener clickListener;
    private MediaDef.UsbFolderInfo folderInfo;
    private int thisUsbType;
    private UsbMusicViewModel usbMusicViewModel;
    private UsbScannerViewModel usbScannerViewModel;
    private List<MediaDef.UsbFolderInfo> subFolderInfos = new ArrayList();
    private MediaDef.UsbMusicInfo playingMusic = null;
    private boolean isPlaying = false;

    public interface OnItemClickListener {
        void onMusicClick(int r1, MediaDef.UsbMusicInfo usbMusicInfo);

        void onRootFolderClick(int r1);

        void onSubFolderClick(int r1, MediaDef.UsbFolderInfo usbFolderInfo);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.clickListener = onItemClickListener;
    }

    public UsbMusicFolderListAdapter(int r2, UsbScannerViewModel usbScannerViewModel, UsbMusicViewModel usbMusicViewModel) {
        this.thisUsbType = r2;
        this.usbScannerViewModel = usbScannerViewModel;
        this.usbMusicViewModel = usbMusicViewModel;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int r2) {
        return r2 <= this.subFolderInfos.size() - (isRootFolder() ? 1 : 0) ? 0 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int r2) {
        if (r2 == 0) {
            return new MyViewHolder(MediaUsbMusicFolderListItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext())));
        }
        return new MyViewHolder(MediaUsbMusicSongListItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext())));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, final int r8) {
        if (r8 <= this.subFolderInfos.size() - (isRootFolder() ? 1 : 0)) {
            if (r8 == 0 && !isRootFolder()) {
                myViewHolder.folderBinding.ivFolderIcon.setImageResource(C0632R.drawable.media_list_btn_folder_back);
                myViewHolder.folderBinding.tvFolderName.setText(this.folderInfo.fileName);
                myViewHolder.itemView.setSelected(false);
                myViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.UsbMusicFolderListAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (UsbMusicFolderListAdapter.this.clickListener != null) {
                            UsbMusicFolderListAdapter.this.clickListener.onRootFolderClick(r8);
                        }
                    }
                });
                return;
            }
            final MediaDef.UsbFolderInfo usbFolderInfo = this.subFolderInfos.get(r8 - (!isRootFolder() ? 1 : 0));
            myViewHolder.folderBinding.ivFolderIcon.setImageResource(C0632R.drawable.media_usb_music_folder_list_folder_icon);
            myViewHolder.folderBinding.tvFolderName.setText(usbFolderInfo.fileName);
            MediaDef.UsbMusicInfo usbMusicInfo = this.playingMusic;
            if (usbMusicInfo != null && usbMusicInfo.path.startsWith(usbFolderInfo.path) && this.playingMusic.path.charAt(usbFolderInfo.path.length()) == '/') {
                myViewHolder.itemView.setSelected(true);
            } else {
                myViewHolder.itemView.setSelected(false);
            }
            myViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.UsbMusicFolderListAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UsbMusicFolderListAdapter.this.setFolderInfo(usbFolderInfo);
                    if (UsbMusicFolderListAdapter.this.clickListener != null) {
                        UsbMusicFolderListAdapter.this.clickListener.onSubFolderClick(r8, usbFolderInfo);
                    }
                }
            });
            return;
        }
        int size = (r8 - (!isRootFolder() ? 1 : 0)) - this.subFolderInfos.size();
        myViewHolder.musicBinding.tvIndex.setText(String.format("%02d", Integer.valueOf(size + 1)));
        final MediaDef.UsbMusicInfo usbMusicInfo2 = this.folderInfo.musicInfos.get(size);
        myViewHolder.musicBinding.tvMusicTitle.setText(usbMusicInfo2.title);
        myViewHolder.musicBinding.tvMusicArtist.setText(usbMusicInfo2.artist);
        MediaDef.UsbMusicInfo usbMusicInfo3 = this.playingMusic;
        if (usbMusicInfo3 != null && usbMusicInfo3.path.equals(usbMusicInfo2.path)) {
            myViewHolder.itemView.setSelected(true);
            myViewHolder.musicBinding.tvIndex.setVisibility(8);
            myViewHolder.musicBinding.anPlayIcon.setVisibility(0);
            if (this.isPlaying) {
                myViewHolder.musicBinding.anPlayIcon.startAnim();
            } else {
                myViewHolder.musicBinding.anPlayIcon.pauseAnim();
            }
        } else {
            myViewHolder.itemView.setSelected(false);
            myViewHolder.musicBinding.anPlayIcon.setVisibility(8);
            myViewHolder.musicBinding.anPlayIcon.pauseAnim();
        }
        myViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.UsbMusicFolderListAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UsbMusicFolderListAdapter.this.clickListener != null) {
                    UsbMusicFolderListAdapter.this.clickListener.onMusicClick(r8, usbMusicInfo2);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(MyViewHolder myViewHolder) {
        super.onViewRecycled((UsbMusicFolderListAdapter) myViewHolder);
        if (myViewHolder.musicBinding != null) {
            myViewHolder.musicBinding.anPlayIcon.cancelAnim();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.folderInfo == null) {
            return 0;
        }
        return (!isRootFolder() ? 1 : 0) + this.subFolderInfos.size() + this.folderInfo.musicInfos.size();
    }

    public class MyViewHolder extends RecyclerView.ViewHolder {
        MediaUsbMusicFolderListItemLayoutBinding folderBinding;
        MediaUsbMusicSongListItemLayoutBinding musicBinding;

        public MyViewHolder(MediaUsbMusicFolderListItemLayoutBinding mediaUsbMusicFolderListItemLayoutBinding) {
            super(mediaUsbMusicFolderListItemLayoutBinding.getRoot());
            this.folderBinding = mediaUsbMusicFolderListItemLayoutBinding;
        }

        public MyViewHolder(MediaUsbMusicSongListItemLayoutBinding mediaUsbMusicSongListItemLayoutBinding) {
            super(mediaUsbMusicSongListItemLayoutBinding.getRoot());
            this.musicBinding = mediaUsbMusicSongListItemLayoutBinding;
        }
    }

    public void setFolderInfo(MediaDef.UsbFolderInfo usbFolderInfo) {
        this.folderInfo = usbFolderInfo;
        this.subFolderInfos.clear();
        if (usbFolderInfo != null) {
            for (MediaDef.UsbFolderInfo usbFolderInfo2 : usbFolderInfo.subFolderInfos) {
                if (MediaDef.getFolderAllMusicsCount(usbFolderInfo2) > 0) {
                    this.subFolderInfos.add(usbFolderInfo2);
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

    public List<MediaDef.UsbFolderInfo> getSubFolderInfos() {
        return this.subFolderInfos;
    }

    public void setPlayingMusic(MediaDef.UsbMusicInfo usbMusicInfo) {
        this.playingMusic = usbMusicInfo;
        notifyDataSetChanged();
    }

    public void setPlaying(boolean z) {
        this.isPlaying = z;
        notifyDataSetChanged();
    }
}
