package com.chery.media.view.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.MediaPlayerUsbMusicListItemLayoutBinding;
import com.chery.media.model.business.MediaDef;
import com.chery.media.view.dialog.Dialog_TextConfirmCancel;
import com.chery.media.viewmodel.LocalMusicViewModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class LocalMusicPlayerListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("MEDIA", LocalMusicPlayerListAdapter.class);
    private OnItemClickListener clickListener;
    private Context context;
    private MediaDef.LocalMusicInfo currentPlaying;
    private LocalMusicViewModel localMusicViewModel;
    private List<MediaDef.LocalMusicInfo> localMusicInfos = new ArrayList();
    private boolean isPlaying = false;

    public interface OnItemClickListener {
        void onItemClick(int r1, MediaDef.LocalMusicInfo localMusicInfo);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.clickListener = onItemClickListener;
    }

    public LocalMusicPlayerListAdapter(Context context, LocalMusicViewModel localMusicViewModel) {
        this.context = context;
        this.localMusicViewModel = localMusicViewModel;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r2) {
        return new ViewHolder(MediaPlayerUsbMusicListItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext())));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int r8) {
        final MediaDef.LocalMusicInfo localMusicInfo = this.localMusicInfos.get(r8);
        viewHolder.binding.tvMusicTitle.setText(localMusicInfo.originalMusicInfo.title);
        if (TextUtils.isEmpty(localMusicInfo.originalMusicInfo.artist) || TextUtils.equals(localMusicInfo.originalMusicInfo.artist, "<unknown>")) {
            viewHolder.binding.tvMusicArtist.setText(viewHolder.binding.getRoot().getContext().getString(C0632R.string.media_unknown));
        } else {
            viewHolder.binding.tvMusicArtist.setText(localMusicInfo.originalMusicInfo.artist);
        }
        MediaDef.LocalMusicInfo localMusicInfo2 = this.currentPlaying;
        if (localMusicInfo2 != null && localMusicInfo2.path.equals(localMusicInfo.path)) {
            viewHolder.binding.getRoot().setSelected(true);
        } else {
            viewHolder.binding.getRoot().setSelected(false);
        }
        MediaDef.LocalMusicInfo localMusicInfo3 = this.currentPlaying;
        if (localMusicInfo3 != null && localMusicInfo3.path.equals(localMusicInfo.path)) {
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
        viewHolder.binding.clItem.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.LocalMusicPlayerListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LocalMusicPlayerListAdapter.this.clickListener != null) {
                    LocalMusicPlayerListAdapter.this.clickListener.onItemClick(r8, localMusicInfo);
                }
            }
        });
        viewHolder.binding.ivDownload.setImageResource(C0632R.drawable.media_player_list_icon_delete);
        viewHolder.binding.ivDownload.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.LocalMusicPlayerListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                final Dialog_TextConfirmCancel dialog_TextConfirmCancel = new Dialog_TextConfirmCancel(LocalMusicPlayerListAdapter.this.context, LocalMusicPlayerListAdapter.this.context.getString(C0632R.string.media_local_music_confirm_delete), null, null, false);
                dialog_TextConfirmCancel.setConfirmClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.LocalMusicPlayerListAdapter.2.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        LocalMusicPlayerListAdapter.this.localMusicViewModel.deleteLocal(localMusicInfo, null);
                        dialog_TextConfirmCancel.dismiss();
                    }
                });
                dialog_TextConfirmCancel.show();
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        super.onViewRecycled((LocalMusicPlayerListAdapter) viewHolder);
        viewHolder.binding.anPlayIcon.cancelAnim();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<MediaDef.LocalMusicInfo> list = this.localMusicInfos;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        MediaPlayerUsbMusicListItemLayoutBinding binding;

        public ViewHolder(MediaPlayerUsbMusicListItemLayoutBinding mediaPlayerUsbMusicListItemLayoutBinding) {
            super(mediaPlayerUsbMusicListItemLayoutBinding.getRoot());
            this.binding = mediaPlayerUsbMusicListItemLayoutBinding;
        }
    }

    public void setMusicList(List<MediaDef.LocalMusicInfo> list) {
        this.localMusicInfos = list;
        notifyDataSetChanged();
    }

    public List<MediaDef.LocalMusicInfo> getMusicList() {
        return this.localMusicInfos;
    }

    public void setCurrentPlaying(MediaDef.LocalMusicInfo localMusicInfo) {
        this.currentPlaying = localMusicInfo;
        notifyDataSetChanged();
    }

    public void setPlaying(boolean z) {
        this.isPlaying = z;
        notifyDataSetChanged();
    }
}
