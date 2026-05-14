package com.chery.media.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.databinding.RadioListItemLayoutBinding;
import com.chery.media.model.business.DabInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DABPlayListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("DAB", DABPlayListAdapter.class);
    private onItemClickListener clickListener;
    private Context mContext;
    private List<DabInfo> dabList = new ArrayList();
    private DabInfo curDabInfo = new DabInfo();
    private Boolean isPlaying = false;

    public interface onItemClickListener {
        void onCollectionClicked(DabInfo dabInfo, boolean z);

        void onItemClicked(DabInfo dabInfo);
    }

    public void setItemClickListener(onItemClickListener r1) {
        this.clickListener = r1;
    }

    public DABPlayListAdapter(Context context, List<DabInfo> list) {
        this.mContext = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r2) {
        return new ViewHolder(RadioListItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext())));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int r5) {
        DabInfo dabInfo = this.dabList.get(r5);
        viewHolder.binding.tvMusicTitle.setText(hasSameServiceName(dabInfo) ? dabInfo.componentName : dabInfo.serviceName);
        viewHolder.binding.tvIndex.setText(Integer.toString(r5 + 1));
        viewHolder.binding.clItem.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.DABPlayListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DABPlayListAdapter.this.clickListener.onItemClicked((DabInfo) DABPlayListAdapter.this.dabList.get(r5));
            }
        });
        if (this.curDabInfo.equals(dabInfo)) {
            viewHolder.binding.tvIndex.setVisibility(8);
            viewHolder.binding.tvMusicTitle.setSelected(true);
            if (this.isPlaying.booleanValue()) {
                viewHolder.binding.anPlayIcon.startAnim();
            } else {
                viewHolder.binding.anPlayIcon.pauseAnim();
            }
            viewHolder.binding.anPlayIcon.setVisibility(0);
        } else {
            viewHolder.binding.tvMusicTitle.setSelected(false);
            viewHolder.binding.anPlayIcon.pauseAnim();
            viewHolder.binding.anPlayIcon.setVisibility(8);
            viewHolder.binding.tvIndex.setVisibility(0);
        }
        viewHolder.binding.ivCollection.setSelected(this.dabList.get(r5).isFavor);
        viewHolder.binding.ivCollection.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.DABPlayListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DABPlayListAdapter.this.clickListener.onCollectionClicked((DabInfo) DABPlayListAdapter.this.dabList.get(r5), !((DabInfo) DABPlayListAdapter.this.dabList.get(r5)).isFavor);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        super.onViewRecycled((DABPlayListAdapter) viewHolder);
        viewHolder.binding.anPlayIcon.cancelAnim();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<DabInfo> list = this.dabList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        RadioListItemLayoutBinding binding;

        public ViewHolder(RadioListItemLayoutBinding radioListItemLayoutBinding) {
            super(radioListItemLayoutBinding.getRoot());
            this.binding = radioListItemLayoutBinding;
        }
    }

    public void setData(List<DabInfo> list) {
        this.dabList.clear();
        if (list != null) {
            this.dabList.addAll(list);
        }
        notifyDataSetChanged();
    }

    public void setCurPlayInfo(DabInfo dabInfo) {
        this.curDabInfo = dabInfo;
        notifyDataSetChanged();
    }

    public void setPlayingState(Boolean bool) {
        this.isPlaying = bool;
        notifyDataSetChanged();
    }

    public boolean hasSameServiceName(DabInfo dabInfo) {
        for (DabInfo dabInfo2 : this.dabList) {
            if (dabInfo2.serviceName.equals(dabInfo.serviceName) && !dabInfo2.equals(dabInfo)) {
                return true;
            }
        }
        return false;
    }
}
