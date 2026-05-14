package com.chery.media.view.activity;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.ActivityDabEpgListBinding;
import com.chery.media.model.business.DabBusiness;
import com.chery.media.model.business.DabInfo;
import com.chery.media.model.business.DabProgramInfo;
import com.chery.media.view.adapter.DABEpgListAdapter;
import com.chery.media.viewmodel.DabViewModel;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class DabEpgActivity extends BaseActivity {
    private static final int MAX_DAY = 7;
    private static final String TAG = CarLog.concatTag("DAB", DabEpgActivity.class);
    private ActivityDabEpgListBinding binding;
    private DabInfo curDabInfo;
    private DABEpgListAdapter dabEpgListAdapter;
    private DabViewModel dabViewModel;
    private List<DateInfo> dateList = new ArrayList(7);
    private int curDateIndex = 0;
    private Handler handler = new Handler();
    private Observer<DabInfo> curPlayInfoObserver = new Observer<DabInfo>() { // from class: com.chery.media.view.activity.DabEpgActivity.7
        @Override // androidx.lifecycle.Observer
        public void onChanged(DabInfo dabInfo) {
            DabEpgActivity.this.curDabInfo = dabInfo;
            DabEpgActivity.this.updateProgramList();
        }
    };
    private DabBusiness.DabBusinessCallback callback = new DabBusiness.DabBusinessCallback() { // from class: com.chery.media.view.activity.DabEpgActivity.8
        @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
        public void allListChanged() {
        }

        @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
        public void favorInfoChanged() {
        }

        @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
        public void programInfoListChanged() {
            DabEpgActivity.this.updateProgramList();
        }
    };
    private Runnable runnable = new Runnable() { // from class: com.chery.media.view.activity.DabEpgActivity.9
        @Override // java.lang.Runnable
        public void run() {
            DabEpgActivity.this.updateProgramList();
            DabEpgActivity.this.handler.postDelayed(DabEpgActivity.this.runnable, 1000L);
        }
    };

    @Override // com.chery.media.view.activity.BaseActivity
    protected int getContainerId() {
        return C0632R.id.dab_list_fragment_container;
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.dabViewModel.removeCallback(this.callback);
        this.handler.removeCallbacks(this.runnable);
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityDabEpgListBinding activityDabEpgListBindingBind = ActivityDabEpgListBinding.bind(getLayoutInflater().inflate(C0632R.layout.activity_dab_epg_list, (ViewGroup) null, false));
        this.binding = activityDabEpgListBindingBind;
        setContentView(activityDabEpgListBindingBind.getRoot());
        DabViewModel dabViewModel = (DabViewModel) new ViewModelProvider(this).get(DabViewModel.class);
        this.dabViewModel = dabViewModel;
        dabViewModel.getCurPlayInfo().observe(this, this.curPlayInfoObserver);
        initView();
        initDateMap();
        this.handler.postDelayed(this.runnable, 1000L);
    }

    private void initView() {
        this.dabEpgListAdapter = new DABEpgListAdapter(getApplicationContext(), this.dabViewModel);
        this.binding.dabListEpgRv.setAdapter(this.dabEpgListAdapter);
        updateProgramList();
        this.binding.dabListEpgRv.setLayoutManager(new LinearLayoutManager(this));
        this.binding.dabListEpgRv.setSeekBar(this.binding.sbListBar, this.binding.llListBar);
        this.binding.dabListEpgRv.addOnScrollListener(new C08361());
        this.binding.dabListEpgRv.addOnChildAttachStateChangeListener(new C08372());
        this.dabEpgListAdapter.setItemClickListener(new DABEpgListAdapter.onItemClickListener() { // from class: com.chery.media.view.activity.DabEpgActivity.3
            @Override // com.chery.media.view.adapter.DABEpgListAdapter.onItemClickListener
            public void onItemClicked(DabProgramInfo dabProgramInfo, boolean z) {
                if (z) {
                    DabEpgActivity.this.dabViewModel.addReserve(dabProgramInfo);
                } else {
                    DabEpgActivity.this.dabViewModel.removeReserve(dabProgramInfo);
                }
            }
        });
        this.binding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.activity.DabEpgActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DabEpgActivity.this.finish();
            }
        });
        this.binding.ivNext.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.activity.DabEpgActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DabEpgActivity.this.nextDay();
                DabEpgActivity.this.updateProgramList();
            }
        });
        this.binding.ivPrev.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.activity.DabEpgActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DabEpgActivity.this.prevDay();
                DabEpgActivity.this.updateProgramList();
            }
        });
        this.dabViewModel.addCallback(this.callback);
    }

    /* renamed from: com.chery.media.view.activity.DabEpgActivity$1 */
    class C08361 extends RecyclerView.OnScrollListener {
        C08361() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
            super.onScrolled(recyclerView, r2, r3);
            if (r3 != 0) {
                DabEpgActivity.this.handler.post(new Runnable() { // from class: com.chery.media.view.activity.-$$Lambda$DabEpgActivity$1$GbD3_4hPdy9s2tpWRe8WKhkKEkQ
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onScrolled$0$DabEpgActivity$1();
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onScrolled$0$DabEpgActivity$1() {
            DabEpgActivity.this.updateListMask();
        }
    }

    /* renamed from: com.chery.media.view.activity.DabEpgActivity$2 */
    class C08372 implements RecyclerView.OnChildAttachStateChangeListener {
        C08372() {
        }

        public /* synthetic */ void lambda$onChildViewAttachedToWindow$0$DabEpgActivity$2() {
            DabEpgActivity.this.updateListMask();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewAttachedToWindow(View view) {
            DabEpgActivity.this.handler.post(new Runnable() { // from class: com.chery.media.view.activity.-$$Lambda$DabEpgActivity$2$mlm4XP26hk9YGqNIFTR-g6RtrRE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onChildViewAttachedToWindow$0$DabEpgActivity$2();
                }
            });
        }

        public /* synthetic */ void lambda$onChildViewDetachedFromWindow$1$DabEpgActivity$2() {
            DabEpgActivity.this.updateListMask();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewDetachedFromWindow(View view) {
            DabEpgActivity.this.handler.post(new Runnable() { // from class: com.chery.media.view.activity.-$$Lambda$DabEpgActivity$2$utU1c19tCe_iW81SWHqQghMfBWQ
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onChildViewDetachedFromWindow$1$DabEpgActivity$2();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateListMask() {
        if (this.binding.dabListEpgRv.getAdapter() == null || this.binding.dabListEpgRv.getLayoutManager() == null) {
            return;
        }
        if (((LinearLayoutManager) this.binding.dabListEpgRv.getLayoutManager()).findLastVisibleItemPosition() == this.binding.dabListEpgRv.getAdapter().getItemCount() - 1) {
            this.binding.ivListMask.setVisibility(4);
        } else {
            this.binding.ivListMask.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgramList() {
        DabInfo dabInfo = this.curDabInfo;
        if (dabInfo != null) {
            List<DabProgramInfo> dabProgramInfoList = this.dabViewModel.getDabProgramInfoList(dabInfo.ensembleId, this.curDabInfo.serviceId, this.curDabInfo.scIds, this.dateList.get(this.curDateIndex).year, this.dateList.get(this.curDateIndex).month, this.dateList.get(this.curDateIndex).day);
            this.dabEpgListAdapter.setData(dabProgramInfoList);
            this.binding.tvEmptyList.setVisibility(dabProgramInfoList.size() == 0 ? 0 : 8);
        }
    }

    private void initDateMap() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(this.dabViewModel.getCurTimeSeconds() * 1000);
        for (int r1 = 0; r1 < 7; r1++) {
            DateInfo dateInfo = new DateInfo(this, null);
            dateInfo.year = calendar.get(1);
            dateInfo.month = calendar.get(2) + 1;
            dateInfo.day = calendar.get(5);
            this.dateList.add(dateInfo);
            calendar.add(5, 1);
        }
        updateDate();
        for (DateInfo dateInfo2 : this.dateList) {
            PFLog.m29i(TAG, "year:" + dateInfo2.year + ", month: " + dateInfo2.month + ", day: " + dateInfo2.day);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nextDay() {
        int r0 = this.curDateIndex;
        if (r0 < 6) {
            this.curDateIndex = r0 + 1;
        }
        updateDate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prevDay() {
        int r0 = this.curDateIndex;
        if (r0 > 0) {
            this.curDateIndex = r0 - 1;
        }
        updateDate();
    }

    private void updateDate() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(this.dateList.get(this.curDateIndex).year, this.dateList.get(this.curDateIndex).month - 1, this.dateList.get(this.curDateIndex).day, 0, 0, 0);
        this.binding.tvDate.setText(new SimpleDateFormat("MMMM dd", Locale.getDefault()).format(new Date(calendar.getTimeInMillis())));
        this.binding.ivPrev.setEnabled(this.curDateIndex != 0);
        this.binding.ivNext.setEnabled(this.curDateIndex != 6);
    }

    private class DateInfo {
        public int day;
        public int month;
        public int year;

        private DateInfo() {
        }

        /* synthetic */ DateInfo(DabEpgActivity dabEpgActivity, C08361 c08361) {
            this();
        }
    }
}
