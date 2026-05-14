package com.chery.media.view.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.FragmentDabPtyListBinding;
import com.chery.media.model.business.DabBusiness;
import com.chery.media.model.business.DabInfo;
import com.chery.media.view.adapter.DABAllListAdapter;
import com.chery.media.view.adapter.DABPtyNameListAdapter;
import com.chery.media.viewmodel.DabViewModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DabPtyListFragment extends FragmentBase {
    private static final int MSG_ALL_LIST_CHANGED = 0;
    private static final String TAG = CarLog.concatTag("DAB", DabPtyListFragment.class);
    private FragmentDabPtyListBinding binding;
    private DABPtyNameListAdapter dabPtyNameListAdapter;
    private DABAllListAdapter dabPtyStationListAdapter;
    private DabViewModel dabViewModel;
    private Handler handler = new Handler();
    private List<DabInfo> dabList = new ArrayList();
    private Observer<DabInfo> curPlayInfoObserver = new Observer<DabInfo>() { // from class: com.chery.media.view.fragment.DabPtyListFragment.5
        @Override // androidx.lifecycle.Observer
        public void onChanged(DabInfo dabInfo) {
            DabPtyListFragment.this.dabPtyStationListAdapter.setCurPlayInfo(dabInfo);
        }
    };
    private Observer<Boolean> playingStateObserver = new Observer<Boolean>() { // from class: com.chery.media.view.fragment.DabPtyListFragment.6
        @Override // androidx.lifecycle.Observer
        public void onChanged(Boolean bool) {
            DabPtyListFragment.this.dabPtyStationListAdapter.setPlayingState(bool);
        }
    };
    private DabBusiness.DabBusinessCallback callback = new DabBusiness.DabBusinessCallback() { // from class: com.chery.media.view.fragment.DabPtyListFragment.7
        @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
        public void favorInfoChanged() {
        }

        @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
        public void allListChanged() {
            DabPtyListFragment.this.mHandler.sendEmptyMessage(0);
        }
    };
    private Handler mHandler = new Handler() { // from class: com.chery.media.view.fragment.DabPtyListFragment.8
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 0) {
                return;
            }
            DabPtyListFragment.this.dabPtyNameListAdapter.setData(DabPtyListFragment.this.dabViewModel.getAllPtyId());
            DabPtyListFragment.this.binding.tvEmptyList.setVisibility(DabPtyListFragment.this.dabViewModel.getALLList().size() > 0 ? 8 : 0);
            if (DabPtyListFragment.this.dabViewModel.getAllPtyId().size() > 0) {
                DabPtyListFragment.this.dabPtyStationListAdapter.setData(DabPtyListFragment.this.dabViewModel.getDabListByPty(DabPtyListFragment.this.dabViewModel.getAllPtyId().get(0).intValue()));
            }
        }
    };

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        initViewModel();
        initView();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FragmentDabPtyListBinding fragmentDabPtyListBindingBind = FragmentDabPtyListBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_dab_pty_list, viewGroup, false));
        this.binding = fragmentDabPtyListBindingBind;
        return fragmentDabPtyListBindingBind.getRoot();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.dabViewModel.removeCallback(this.callback);
        this.dabPtyStationListAdapter.setData(null);
        this.binding.dabPtyStationListRv.setAdapter(null);
        this.binding.dabPtyStationListRv.setLayoutManager(null);
    }

    private void initView() {
        this.dabPtyNameListAdapter = new DABPtyNameListAdapter(getActivity().getBaseContext(), this.dabViewModel);
        this.binding.dabPtyNameListRv.setAdapter(this.dabPtyNameListAdapter);
        this.binding.dabPtyNameListRv.setLayoutManager(new GridLayoutManager(getActivity(), 1));
        this.dabPtyNameListAdapter.setData(this.dabViewModel.getAllPtyId());
        this.binding.tvEmptyList.setVisibility(this.dabViewModel.getALLList().size() > 0 ? 8 : 0);
        this.dabPtyStationListAdapter = new DABAllListAdapter(getActivity().getBaseContext());
        this.binding.dabPtyStationListRv.setAdapter(this.dabPtyStationListAdapter);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getActivity(), 4);
        this.binding.dabPtyStationListRv.setLayoutManager(gridLayoutManager);
        this.binding.dabPtyStationListRv.setLayoutManager(gridLayoutManager);
        this.binding.dabPtyStationListRv.setSeekBar(this.binding.sbListBar, this.binding.llListBar);
        this.binding.dabPtyStationListRv.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.DabPtyListFragment.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                if (r3 != 0) {
                    DabPtyListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.DabPtyListFragment.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DabPtyListFragment.this.updateListMask();
                        }
                    });
                }
            }
        });
        if (this.dabViewModel.getAllPtyId().size() > 0) {
            DABAllListAdapter dABAllListAdapter = this.dabPtyStationListAdapter;
            DabViewModel dabViewModel = this.dabViewModel;
            dABAllListAdapter.setData(dabViewModel.getDabListByPty(dabViewModel.getAllPtyId().get(0).intValue()));
        }
        this.binding.dabPtyStationListRv.addOnChildAttachStateChangeListener(new C09732());
        this.dabPtyStationListAdapter.setItemClickListener(new DABAllListAdapter.onItemClickListener() { // from class: com.chery.media.view.fragment.DabPtyListFragment.3
            @Override // com.chery.media.view.adapter.DABAllListAdapter.onItemClickListener
            public void onCancelFavor(DabInfo dabInfo) {
            }

            @Override // com.chery.media.view.adapter.DABAllListAdapter.onItemClickListener
            public void onItemClicked(DabInfo dabInfo, boolean z) {
                if (z) {
                    DabPtyListFragment.this.dabViewModel.playChannel(dabInfo);
                    DabPtyListFragment.this.dabViewModel.setCurPlayType(2, DabPtyListFragment.this.dabViewModel.getPtyName(dabInfo.servicePty));
                } else {
                    DabPtyListFragment.this.dabViewModel.playPause();
                }
            }
        });
        this.dabPtyNameListAdapter.setItemClickListener(new DABPtyNameListAdapter.onItemClickListener() { // from class: com.chery.media.view.fragment.DabPtyListFragment.4
            @Override // com.chery.media.view.adapter.DABPtyNameListAdapter.onItemClickListener
            public void onItemClicked(int r2) {
                DabPtyListFragment.this.dabPtyStationListAdapter.setData(DabPtyListFragment.this.dabViewModel.getDabListByPty(r2));
            }
        });
        updateListMask();
    }

    /* renamed from: com.chery.media.view.fragment.DabPtyListFragment$2 */
    class C09732 implements RecyclerView.OnChildAttachStateChangeListener {
        C09732() {
        }

        public /* synthetic */ void lambda$onChildViewAttachedToWindow$0$DabPtyListFragment$2() {
            DabPtyListFragment.this.updateListMask();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewAttachedToWindow(View view) {
            DabPtyListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.-$$Lambda$DabPtyListFragment$2$-BUlvdLv0jqqt2YUfXscZ0Wupk4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onChildViewAttachedToWindow$0$DabPtyListFragment$2();
                }
            });
        }

        public /* synthetic */ void lambda$onChildViewDetachedFromWindow$1$DabPtyListFragment$2() {
            DabPtyListFragment.this.updateListMask();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewDetachedFromWindow(View view) {
            DabPtyListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.-$$Lambda$DabPtyListFragment$2$GQ6tVxnLgYAh_BLSd2nZVY87qoA
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onChildViewDetachedFromWindow$1$DabPtyListFragment$2();
                }
            });
        }
    }

    private void initViewModel() {
        DabViewModel dabViewModel = (DabViewModel) new ViewModelProvider(this).get(DabViewModel.class);
        this.dabViewModel = dabViewModel;
        dabViewModel.getCurPlayInfo().observe(getViewLifecycleOwner(), this.curPlayInfoObserver);
        this.dabViewModel.getPlayingState().observe(getViewLifecycleOwner(), this.playingStateObserver);
        this.dabViewModel.addCallback(this.callback);
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateListMask() {
        if (this.binding.dabPtyStationListRv.getAdapter() == null || this.binding.dabPtyStationListRv.getLayoutManager() == null) {
            return;
        }
        if (((GridLayoutManager) this.binding.dabPtyStationListRv.getLayoutManager()).findLastVisibleItemPosition() / 4 == (this.binding.dabPtyStationListRv.getAdapter().getItemCount() - 1) / 4) {
            this.binding.ivListMask.setVisibility(4);
        } else {
            this.binding.ivListMask.setVisibility(0);
        }
    }
}
