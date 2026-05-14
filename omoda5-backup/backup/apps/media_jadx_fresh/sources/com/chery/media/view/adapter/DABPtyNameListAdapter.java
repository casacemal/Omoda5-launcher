package com.chery.media.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.databinding.DabListPtyItemLayoutBinding;
import com.chery.media.viewmodel.DabViewModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DABPtyNameListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("DAB", DABPtyNameListAdapter.class);
    private onItemClickListener clickListener;
    private DabViewModel dabViewModel;
    private Context mContext;
    private List<Integer> ptyNameList = new ArrayList();
    private int curIndex = 0;

    public interface onItemClickListener {
        void onItemClicked(int r1);
    }

    public void setItemClickListener(onItemClickListener r1) {
        this.clickListener = r1;
    }

    public DABPtyNameListAdapter(Context context, DabViewModel dabViewModel) {
        this.mContext = context;
        this.dabViewModel = dabViewModel;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r3) {
        return new ViewHolder(DabListPtyItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int r6) {
        viewHolder.binding.tvTitle.setText(this.dabViewModel.getPtyName(this.ptyNameList.get(r6).intValue()));
        viewHolder.binding.tvTitleMarquee.setText(this.dabViewModel.getPtyName(this.ptyNameList.get(r6).intValue()));
        viewHolder.binding.tvTitle.setVisibility(r6 == this.curIndex ? 8 : 0);
        viewHolder.binding.tvTitleMarquee.setVisibility(r6 == this.curIndex ? 0 : 8);
        viewHolder.binding.highLight.setVisibility(r6 == this.curIndex ? 0 : 8);
        viewHolder.binding.tvTitle.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.DABPtyNameListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DABPtyNameListAdapter.this.clickListener.onItemClicked(((Integer) DABPtyNameListAdapter.this.ptyNameList.get(r6)).intValue());
                DABPtyNameListAdapter.this.setCurIndex(r6);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        super.onViewRecycled((DABPtyNameListAdapter) viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<Integer> list = this.ptyNameList;
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

    public void setData(List<Integer> list) {
        this.ptyNameList.clear();
        if (list != null) {
            this.ptyNameList.addAll(list);
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
