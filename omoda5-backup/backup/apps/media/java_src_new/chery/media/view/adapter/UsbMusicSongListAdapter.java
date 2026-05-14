package com.chery.media.view.adapter;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.MediaUsbMusicSongListItemLayoutBinding;
import com.chery.media.model.business.MediaDef;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class UsbMusicSongListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("MEDIA", UsbMusicSongListAdapter.class);
    private OnItemClickListener clickListener;
    private List<MediaDef.UsbMusicInfo> usbMusicInfoList = new ArrayList();
    private MediaDef.UsbMusicInfo playingMusic = null;
    private boolean isPlaying = false;

    public interface OnItemClickListener {
        void onItemClick(int r1, MediaDef.UsbMusicInfo usbMusicInfo);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.clickListener = onItemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r2) {
        return new ViewHolder(MediaUsbMusicSongListItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext())));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int r8) {
        final MediaDef.UsbMusicInfo usbMusicInfo = this.usbMusicInfoList.get(r8);
        MediaDef.UsbMusicInfo usbMusicInfo2 = this.playingMusic;
        boolean z = usbMusicInfo2 != null && usbMusicInfo2.path.equals(usbMusicInfo.path);
        if (z) {
            viewHolder.itemView.setSelected(true);
        } else {
            viewHolder.itemView.setSelected(false);
        }
        if (z) {
            viewHolder.binding.tvIndex.setVisibility(8);
            viewHolder.binding.anPlayIcon.setVisibility(0);
            if (this.isPlaying) {
                viewHolder.binding.anPlayIcon.startAnim();
            } else {
                viewHolder.binding.anPlayIcon.pauseAnim();
            }
        } else {
            viewHolder.binding.tvIndex.setText(String.format("%02d", Integer.valueOf(r8 + 1)));
            viewHolder.binding.anPlayIcon.setVisibility(8);
            viewHolder.binding.anPlayIcon.pauseAnim();
        }
        viewHolder.binding.tvMusicTitle.setText(usbMusicInfo.title);
        if (TextUtils.isEmpty(usbMusicInfo.artist) || TextUtils.equals(usbMusicInfo.artist, "<unknown>")) {
            viewHolder.binding.tvMusicArtist.setText(viewHolder.binding.getRoot().getContext().getString(C0632R.string.media_unknown));
        } else {
            viewHolder.binding.tvMusicArtist.setText(usbMusicInfo.artist);
        }
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.UsbMusicSongListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UsbMusicSongListAdapter.this.clickListener != null) {
                    UsbMusicSongListAdapter.this.clickListener.onItemClick(r8, usbMusicInfo);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        super.onViewRecycled((UsbMusicSongListAdapter) viewHolder);
        viewHolder.binding.anPlayIcon.cancelAnim();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<MediaDef.UsbMusicInfo> list = this.usbMusicInfoList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        MediaUsbMusicSongListItemLayoutBinding binding;

        public ViewHolder(MediaUsbMusicSongListItemLayoutBinding mediaUsbMusicSongListItemLayoutBinding) {
            super(mediaUsbMusicSongListItemLayoutBinding.getRoot());
            this.binding = mediaUsbMusicSongListItemLayoutBinding;
        }
    }

    public void setMusicList(List<MediaDef.UsbMusicInfo> list) {
        this.usbMusicInfoList = list;
        notifyDataSetChanged();
    }

    public List<MediaDef.UsbMusicInfo> getMusicList() {
        return this.usbMusicInfoList;
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
