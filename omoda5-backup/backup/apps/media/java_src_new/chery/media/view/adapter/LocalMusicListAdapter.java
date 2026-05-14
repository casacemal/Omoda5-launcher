package com.chery.media.view.adapter;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.MediaLocalMusicListItemLayoutBinding;
import com.chery.media.model.business.MediaDef;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LocalMusicListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("MEDIA", LocalMusicListAdapter.class);
    private OnItemClickListener clickListener;
    private MediaDef.LocalMusicInfo currentPlaying;
    private List<MediaDef.LocalMusicInfo> localMusicInfos = new ArrayList();
    private boolean isPlaying = false;
    private boolean isEditing = false;
    private Map<MediaDef.LocalMusicInfo, Boolean> selectList = new HashMap();

    public interface OnItemClickListener {
        void onItemClick(int r1, MediaDef.LocalMusicInfo localMusicInfo);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.clickListener = onItemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r2) {
        return new ViewHolder(MediaLocalMusicListItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext())));
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
        if (this.isEditing) {
            viewHolder.binding.getRoot().setSelected(this.selectList.get(localMusicInfo).booleanValue());
            viewHolder.binding.tvIndex.setVisibility(8);
            viewHolder.binding.anPlayIcon.setVisibility(8);
            viewHolder.binding.ivChooseBox.setVisibility(0);
            viewHolder.binding.ivChooseBox.setSelected(this.selectList.get(localMusicInfo).booleanValue());
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.LocalMusicListAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LocalMusicListAdapter.this.selectList.put(localMusicInfo, Boolean.valueOf(!((Boolean) LocalMusicListAdapter.this.selectList.get(localMusicInfo)).booleanValue()));
                    if (LocalMusicListAdapter.this.clickListener != null) {
                        LocalMusicListAdapter.this.clickListener.onItemClick(r8, localMusicInfo);
                        LocalMusicListAdapter.this.notifyItemChanged(r8);
                    }
                }
            });
            return;
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
        viewHolder.binding.ivChooseBox.setVisibility(8);
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.LocalMusicListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LocalMusicListAdapter.this.clickListener != null) {
                    LocalMusicListAdapter.this.clickListener.onItemClick(r8, localMusicInfo);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        super.onViewRecycled((LocalMusicListAdapter) viewHolder);
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
        MediaLocalMusicListItemLayoutBinding binding;

        public ViewHolder(MediaLocalMusicListItemLayoutBinding mediaLocalMusicListItemLayoutBinding) {
            super(mediaLocalMusicListItemLayoutBinding.getRoot());
            this.binding = mediaLocalMusicListItemLayoutBinding;
        }
    }

    public void setMusicList(List<MediaDef.LocalMusicInfo> list) {
        this.localMusicInfos = list;
        HashMap map = new HashMap();
        if (list != null) {
            Iterator<MediaDef.LocalMusicInfo> it = list.iterator();
            while (it.hasNext()) {
                map.put(it.next(), false);
            }
            for (Map.Entry<MediaDef.LocalMusicInfo, Boolean> entry : this.selectList.entrySet()) {
                if (entry.getValue().booleanValue() && map.containsKey(entry.getKey())) {
                    map.put(entry.getKey(), true);
                }
            }
        }
        this.selectList = map;
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

    public void setEdit(boolean z) {
        if (z == this.isEditing) {
            return;
        }
        this.isEditing = z;
        notifyDataSetChanged();
    }

    public void editAll() {
        if (this.isEditing) {
            Iterator<Map.Entry<MediaDef.LocalMusicInfo, Boolean>> it = this.selectList.entrySet().iterator();
            while (it.hasNext()) {
                it.next().setValue(true);
            }
            notifyDataSetChanged();
        }
    }

    public boolean isEditingAll() {
        if (this.isEditing && !this.selectList.isEmpty()) {
            return !this.selectList.containsValue(false);
        }
        return false;
    }

    public void cancelAll() {
        if (this.isEditing) {
            Iterator<Map.Entry<MediaDef.LocalMusicInfo, Boolean>> it = this.selectList.entrySet().iterator();
            while (it.hasNext()) {
                it.next().setValue(false);
            }
            notifyDataSetChanged();
        }
    }

    public List<MediaDef.LocalMusicInfo> getSelectList() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<MediaDef.LocalMusicInfo, Boolean> entry : this.selectList.entrySet()) {
            if (entry.getValue().booleanValue()) {
                arrayList.add(entry.getKey());
            }
        }
        return arrayList;
    }
}
