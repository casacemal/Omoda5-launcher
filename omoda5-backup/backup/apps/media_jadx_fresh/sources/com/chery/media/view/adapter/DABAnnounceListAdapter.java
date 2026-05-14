package com.chery.media.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.databinding.DabListAnnounceItemLayoutBinding;
import com.chery.media.model.business.DabAnnounceInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DABAnnounceListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("DAB", DABAnnounceListAdapter.class);
    private List<DabAnnounceInfo> announceList = new ArrayList();
    private onItemClickListener clickListener;
    private Context mContext;

    public interface onItemClickListener {
        void onItemClicked(int r1, boolean z);
    }

    public void setItemClickListener(onItemClickListener r1) {
        this.clickListener = r1;
    }

    public DABAnnounceListAdapter(Context context) {
        this.mContext = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r3) {
        return new ViewHolder(DabListAnnounceItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int r4) {
        viewHolder.binding.tvTitle.setText(this.announceList.get(r4).announceName);
        viewHolder.binding.ivSelect.setSelected(this.announceList.get(r4).announceSwitchOn);
        viewHolder.binding.ivSelect.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.DABAnnounceListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DABAnnounceListAdapter.this.clickListener.onItemClicked(r4, !((DabAnnounceInfo) DABAnnounceListAdapter.this.announceList.get(r4)).announceSwitchOn);
            }
        });
        viewHolder.binding.tvTitle.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.DABAnnounceListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DABAnnounceListAdapter.this.clickListener.onItemClicked(r4, !((DabAnnounceInfo) DABAnnounceListAdapter.this.announceList.get(r4)).announceSwitchOn);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        super.onViewRecycled((DABAnnounceListAdapter) viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<DabAnnounceInfo> list = this.announceList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        DabListAnnounceItemLayoutBinding binding;

        public ViewHolder(DabListAnnounceItemLayoutBinding dabListAnnounceItemLayoutBinding) {
            super(dabListAnnounceItemLayoutBinding.getRoot());
            this.binding = dabListAnnounceItemLayoutBinding;
        }
    }

    public void setData(List<DabAnnounceInfo> list) {
        this.announceList.clear();
        if (list != null) {
            this.announceList.addAll(list);
        }
        notifyDataSetChanged();
    }
}
