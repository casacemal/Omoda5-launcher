package com.chery.media.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.databinding.DabListEpgItemLayoutBinding;
import com.chery.media.model.business.DabProgramInfo;
import com.chery.media.viewmodel.DabViewModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DABEpgListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("DAB", DABEpgListAdapter.class);
    private onItemClickListener clickListener;
    private DabViewModel dabViewModel;
    private List<DabProgramInfo> epgList = new ArrayList();
    private Context mContext;

    public interface onItemClickListener {
        void onItemClicked(DabProgramInfo dabProgramInfo, boolean z);
    }

    public void setItemClickListener(onItemClickListener r1) {
        this.clickListener = r1;
    }

    public DABEpgListAdapter(Context context, DabViewModel dabViewModel) {
        this.mContext = context;
        this.dabViewModel = dabViewModel;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r3) {
        return new ViewHolder(DabListEpgItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int r10) {
        Object objValueOf;
        Object objValueOf2;
        byte ePGTimeHour = this.epgList.get(r10).startTime.getEPGTimeHour();
        byte ePGTimeMinute = this.epgList.get(r10).startTime.getEPGTimeMinute();
        TextView textView = viewHolder.binding.tvDate;
        StringBuilder sb = new StringBuilder();
        if (ePGTimeHour > 9) {
            objValueOf = Integer.valueOf(ePGTimeHour);
        } else {
            objValueOf = "0" + ((int) ePGTimeHour);
        }
        sb.append(objValueOf);
        sb.append(":");
        if (ePGTimeMinute > 9) {
            objValueOf2 = Integer.valueOf(ePGTimeMinute);
        } else {
            objValueOf2 = "0" + ((int) ePGTimeMinute);
        }
        sb.append(objValueOf2);
        textView.setText(sb.toString());
        viewHolder.binding.tvProgramName.setText(this.epgList.get(r10).programName);
        viewHolder.binding.ivAppointment.setSelected(this.epgList.get(r10).hasReserved);
        boolean zIsReservedExpired = this.dabViewModel.isReservedExpired(this.epgList.get(r10));
        boolean zIsCurPlayingProgram = this.dabViewModel.isCurPlayingProgram(this.epgList.get(r10));
        if (zIsCurPlayingProgram) {
            viewHolder.binding.anPlayIcon.setVisibility(0);
            viewHolder.binding.anPlayIcon.startAnim();
        } else {
            viewHolder.binding.anPlayIcon.setVisibility(8);
            viewHolder.binding.anPlayIcon.pauseAnim();
        }
        viewHolder.binding.tvDate.setTextColor((!zIsReservedExpired || zIsCurPlayingProgram) ? -1 : -7829368);
        viewHolder.binding.tvProgramName.setTextColor((!zIsReservedExpired || zIsCurPlayingProgram) ? -1 : -7829368);
        viewHolder.binding.ivAppointment.setVisibility(zIsReservedExpired ? 8 : 0);
        viewHolder.binding.ivAppointment.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.DABEpgListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DABEpgListAdapter.this.clickListener.onItemClicked((DabProgramInfo) DABEpgListAdapter.this.epgList.get(r10), !((DabProgramInfo) DABEpgListAdapter.this.epgList.get(r10)).hasReserved);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        super.onViewRecycled((DABEpgListAdapter) viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<DabProgramInfo> list = this.epgList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        DabListEpgItemLayoutBinding binding;

        public ViewHolder(DabListEpgItemLayoutBinding dabListEpgItemLayoutBinding) {
            super(dabListEpgItemLayoutBinding.getRoot());
            this.binding = dabListEpgItemLayoutBinding;
        }
    }

    public void setData(List<DabProgramInfo> list) {
        this.epgList.clear();
        if (list != null) {
            this.epgList.addAll(list);
        }
        notifyDataSetChanged();
    }
}
