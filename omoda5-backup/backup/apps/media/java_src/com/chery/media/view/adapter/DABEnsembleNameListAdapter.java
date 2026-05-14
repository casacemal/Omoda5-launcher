package com.chery.media.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.databinding.DabListPtyItemLayoutBinding;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DABEnsembleNameListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("DAB", DABEnsembleNameListAdapter.class);
    private onItemClickListener clickListener;
    private Context mContext;
    private List<String> ensembleNameList = new ArrayList();
    private int curIndex = 0;

    public interface onItemClickListener {
        void onItemClicked(String str);
    }

    public void setItemClickListener(onItemClickListener r1) {
        this.clickListener = r1;
    }

    public DABEnsembleNameListAdapter(Context context) {
        this.mContext = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r3) {
        return new ViewHolder(DabListPtyItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int r6) {
        viewHolder.binding.tvTitle.setText(this.ensembleNameList.get(r6));
        viewHolder.binding.tvTitleMarquee.setText(this.ensembleNameList.get(r6));
        viewHolder.binding.tvTitle.setVisibility(r6 == this.curIndex ? 8 : 0);
        viewHolder.binding.tvTitleMarquee.setVisibility(r6 == this.curIndex ? 0 : 8);
        viewHolder.binding.highLight.setVisibility(r6 == this.curIndex ? 0 : 8);
        viewHolder.binding.tvTitle.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.DABEnsembleNameListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DABEnsembleNameListAdapter.this.clickListener.onItemClicked((String) DABEnsembleNameListAdapter.this.ensembleNameList.get(r6));
                DABEnsembleNameListAdapter.this.setCurIndex(r6);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        super.onViewRecycled((DABEnsembleNameListAdapter) viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<String> list = this.ensembleNameList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        DabListPtyItemLayoutBinding binding;

        public ViewHolder(DabListPtyItemLayoutBinding dabListPtyItemLayoutBinding) {
            super(dabListPtyItemLayoutBinding.getRoot());
            this.binding = dabListPtyItemLayoutBinding;
        }
    }

    public void setData(List<String> list) {
        this.ensembleNameList.clear();
        if (list != null) {
            this.ensembleNameList.addAll(list);
        }
        notifyDataSetChanged();
    }

    public void setCurIndex(int r2) {
        if (this.curIndex != r2) {
            this.curIndex = r2;
            notifyDataSetChanged();
        }
    }
}
