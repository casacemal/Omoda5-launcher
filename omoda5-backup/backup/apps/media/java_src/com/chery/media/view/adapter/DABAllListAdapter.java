package com.chery.media.view.adapter;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.DabListAllItemLayoutBinding;
import com.chery.media.model.business.DabInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DABAllListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("DAB", DABAllListAdapter.class);
    private onItemClickListener clickListener;
    private Context mContext;
    private List<DabInfo> dabList = new ArrayList();
    private DabInfo curDabInfo = new DabInfo();
    private boolean isPlaying = false;

    public interface onItemClickListener {
        void onCancelFavor(DabInfo dabInfo);

        void onItemClicked(DabInfo dabInfo, boolean z);
    }

    public void setItemClickListener(onItemClickListener r1) {
        this.clickListener = r1;
    }

    public DABAllListAdapter(Context context) {
        this.mContext = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r3) {
        return new ViewHolder(DabListAllItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int r8) {
        DabInfo dabInfo = this.dabList.get(r8);
        viewHolder.binding.tvTitle.setText((!hasSameServiceName(dabInfo) || dabInfo.componentName.isEmpty()) ? dabInfo.serviceName : dabInfo.componentName);
        if (this.dabList.get(r8).dabImage != null) {
            byte[] imagearray = this.dabList.get(r8).dabImage.getImagearray();
            if (imagearray.length > 0) {
                viewHolder.binding.ivDabCover.setBackground(new BitmapDrawable(this.mContext.getResources(), BitmapFactory.decodeByteArray(imagearray, 0, imagearray.length)));
            }
        } else {
            viewHolder.binding.ivDabCover.setBackgroundResource(C0632R.drawable.dab_list_default_icon);
        }
        final boolean zEquals = this.curDabInfo.equals(dabInfo);
        if (zEquals) {
            if (this.isPlaying) {
                viewHolder.binding.anPlayIcon.startAnim();
            } else {
                viewHolder.binding.anPlayIcon.pauseAnim();
            }
            viewHolder.binding.anPlayIcon.setVisibility(0);
        } else {
            viewHolder.binding.anPlayIcon.pauseAnim();
            viewHolder.binding.anPlayIcon.setVisibility(8);
        }
        viewHolder.binding.ivDabFavor.setVisibility(dabInfo.isFavor ? 0 : 8);
        viewHolder.binding.tvTitle.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.DABAllListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DABAllListAdapter.this.clickListener.onItemClicked((DabInfo) DABAllListAdapter.this.dabList.get(r8), (zEquals && DABAllListAdapter.this.isPlaying) ? false : true);
            }
        });
        viewHolder.binding.ivDabFavor.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.DABAllListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DABAllListAdapter.this.clickListener.onCancelFavor((DabInfo) DABAllListAdapter.this.dabList.get(r8));
            }
        });
        viewHolder.binding.ivDabCover.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.DABAllListAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DABAllListAdapter.this.clickListener.onItemClicked((DabInfo) DABAllListAdapter.this.dabList.get(r8), (zEquals && DABAllListAdapter.this.isPlaying) ? false : true);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        super.onViewRecycled((DABAllListAdapter) viewHolder);
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
        DabListAllItemLayoutBinding binding;

        public ViewHolder(DabListAllItemLayoutBinding dabListAllItemLayoutBinding) {
            super(dabListAllItemLayoutBinding.getRoot());
            this.binding = dabListAllItemLayoutBinding;
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
        this.isPlaying = bool.booleanValue();
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
