package com.chery.media.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.databinding.RadioListItemLayoutBinding;
import com.chery.media.model.business.RadioDef;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class RadioListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("MEDIA", RadioListAdapter.class);
    private onItemClickListener clickListener;
    private Context mContext;
    private List<RadioDef> radioList = new ArrayList();
    private int region = 0;

    public interface onItemClickListener {
        void onCollectionClicked(int r1, boolean z);

        void onItemClicked(int r1);
    }

    public void setItemClickListener(onItemClickListener r1) {
        this.clickListener = r1;
    }

    public RadioListAdapter(Context context, List<RadioDef> list) {
        this.mContext = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r2) {
        return new ViewHolder(RadioListItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext())));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int r7) {
        String str;
        if (this.radioList.get(r7).band == 1) {
            if (this.region == 1) {
                str = "FM " + (this.radioList.get(r7).frequencyKhz / 1000) + "." + String.format("%1$02d", Integer.valueOf((this.radioList.get(r7).frequencyKhz % 1000) / 10));
            } else {
                str = "FM " + (this.radioList.get(r7).frequencyKhz / 1000) + "." + ((this.radioList.get(r7).frequencyKhz % 1000) / 100);
            }
        } else {
            str = "AM " + this.radioList.get(r7).frequencyKhz;
        }
        viewHolder.binding.tvMusicTitle.setText(str);
        viewHolder.binding.tvIndex.setText(Integer.toString(r7 + 1));
        viewHolder.binding.clItem.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.RadioListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RadioListAdapter.this.clickListener.onItemClicked(((RadioDef) RadioListAdapter.this.radioList.get(r7)).frequencyKhz);
            }
        });
        if (this.radioList.get(r7).isCurrentFreq) {
            viewHolder.binding.tvIndex.setVisibility(8);
            viewHolder.binding.tvMusicTitle.setSelected(true);
            if (this.radioList.get(r7).isPlaying) {
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
        viewHolder.binding.ivCollection.setSelected(this.radioList.get(r7).isCollection);
        viewHolder.binding.ivCollection.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.RadioListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RadioListAdapter.this.clickListener.onCollectionClicked(((RadioDef) RadioListAdapter.this.radioList.get(r7)).frequencyKhz, !((RadioDef) RadioListAdapter.this.radioList.get(r7)).isCollection);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        super.onViewRecycled((RadioListAdapter) viewHolder);
        viewHolder.binding.anPlayIcon.cancelAnim();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<RadioDef> list = this.radioList;
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

    public void setData(List<RadioDef> list) {
        this.radioList.clear();
        if (list != null) {
            this.radioList.addAll(list);
        }
        notifyDataSetChanged();
    }

    public void setPlay(boolean z) {
        for (RadioDef radioDef : this.radioList) {
            if (radioDef.isCurrentFreq) {
                radioDef.isPlaying = z;
                notifyDataSetChanged();
                return;
            }
        }
    }

    public void setRegion(int r1) {
        this.region = r1;
    }
}
