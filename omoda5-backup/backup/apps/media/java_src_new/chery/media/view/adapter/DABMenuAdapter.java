package com.chery.media.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.databinding.DabListMenuItemLayoutBinding;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DABMenuAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("DAB", DABMenuAdapter.class);
    private onItemClickListener clickListener;
    private Context mContext;
    private List<String> menuList = new ArrayList();
    private int curIndex = 0;

    public interface onItemClickListener {
        void onItemClicked(int r1);
    }

    public void setItemClickListener(onItemClickListener r1) {
        this.clickListener = r1;
    }

    public DABMenuAdapter(Context context) {
        this.mContext = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r3) {
        return new ViewHolder(DabListMenuItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int r4) {
        viewHolder.binding.tvTitle.setText(this.menuList.get(r4));
        viewHolder.binding.tvTitle.setSelected(r4 == this.curIndex);
        viewHolder.binding.tvTitle.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.DABMenuAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DABMenuAdapter.this.setCurIndex(r4);
                DABMenuAdapter.this.clickListener.onItemClicked(r4);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        super.onViewRecycled((DABMenuAdapter) viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<String> list = this.menuList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        DabListMenuItemLayoutBinding binding;

        public ViewHolder(DabListMenuItemLayoutBinding dabListMenuItemLayoutBinding) {
            super(dabListMenuItemLayoutBinding.getRoot());
            this.binding = dabListMenuItemLayoutBinding;
        }
    }

    public void setData(List<String> list) {
        this.menuList.clear();
        if (list != null) {
            this.menuList.addAll(list);
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
