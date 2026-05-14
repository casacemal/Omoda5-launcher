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
import com.chery.media.view.adapter.DABEnsembleNameListAdapter;
import com.chery.media.viewmodel.DabViewModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DabEnsembleListFragment extends FragmentBase {
    private static final int MSG_ALL_LIST_CHANGED = 0;
    private static final String TAG = CarLog.concatTag("DAB", DabEnsembleListFragment.class);
    private FragmentDabPtyListBinding binding;
    private DABEnsembleNameListAdapter dabEnsembleListAdapter;
    private DABAllListAdapter dabEnsembleStationListAdapter;
    private DabViewModel dabViewModel;
    private Handler handler = new Handler();
    private List<DabInfo> dabList = new ArrayList();
    private Observer<DabInfo> curPlayInfoObserver = new Observer<DabInfo>() { // from class: com.chery.media.view.fragment.DabEnsembleListFragment.5
        @Override // androidx.lifecycle.Observer
        public void onChanged(DabInfo dabInfo) {
            DabEnsembleListFragment.this.dabEnsembleStationListAdapter.setCurPlayInfo(dabInfo);
        }
    };
    private Observer<Boolean> playingStateObserver = new Observer<Boolean>() { // from class: com.chery.media.view.fragment.DabEnsembleListFragment.6
        @Override // androidx.lifecycle.Observer
        public void onChanged(Boolean bool) {
            DabEnsembleListFragment.this.dabEnsembleStationListAdapter.setPlayingState(bool);
        }
    };
    private DabBusiness.DabBusinessCallback callback = new DabBusiness.DabBusinessCallback() { // from class: com.chery.media.view.fragment.DabEnsembleListFragment.7
        @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
        public void favorInfoChanged() {
        }

        @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
        public void allListChanged() {
            DabEnsembleListFragment.this.mHandler.sendEmptyMessage(0);
        }
    };
    private Handler mHandler = new Handler() { // from class: com.chery.media.view.fragment.DabEnsembleListFragment.8
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 0) {
                return;
            }
            DabEnsembleListFragment.this.dabEnsembleListAdapter.setData(DabEnsembleListFragment.this.dabViewModel.getAllEnsembleName());
            DabEnsembleListFragment.this.binding.tvEmptyList.setVisibility(DabEnsembleListFragment.this.dabViewModel.getALLList().size() > 0 ? 8 : 0);
            if (DabEnsembleListFragment.this.dabViewModel.getAllEnsembleName().size() > 0) {
                DabEnsembleListFragment.this.dabEnsembleStationListAdapter.setData(DabEnsembleListFragment.this.dabViewModel.getDabListByEnsembleName(DabEnsembleListFragment.this.dabViewModel.getAllEnsembleName().get(0)));
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
        this.dabEnsembleListAdapter.setData(null);
        this.binding.dabPtyStationListRv.setAdapter(null);
        this.binding.dabPtyStationListRv.setLayoutManager(null);
    }

    private void initView() {
        this.dabEnsembleListAdapter = new DABEnsembleNameListAdapter(getActivity().getBaseContext());
        this.binding.dabPtyNameListRv.setAdapter(this.dabEnsembleListAdapter);
        this.binding.dabPtyNameListRv.setLayoutManager(new GridLayoutManager(getActivity(), 1));
        this.dabEnsembleListAdapter.setData(this.dabViewModel.getAllEnsembleName());
        this.binding.tvEmptyList.setVisibility(this.dabViewModel.getALLList().size() > 0 ? 8 : 0);
        this.dabEnsembleStationListAdapter = new DABAllListAdapter(getActivity().getBaseContext());
        this.binding.dabPtyStationListRv.setAdapter(this.dabEnsembleStationListAdapter);
        this.binding.dabPtyStationListRv.setLayoutManager(new GridLayoutManager(getActivity(), 4));
        this.binding.dabPtyStationListRv.setSeekBar(this.binding.sbListBar, this.binding.llListBar);
        this.binding.dabPtyStationListRv.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.DabEnsembleListFragment.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                if (r3 != 0) {
                    DabEnsembleListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.DabEnsembleListFragment.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DabEnsembleListFragment.this.updateListMask();
                        }
                    });
                }
            }
        });
        if (this.dabViewModel.getAllEnsembleName().size() > 0) {
            DABAllListAdapter dABAllListAdapter = this.dabEnsembleStationListAdapter;
            DabViewModel dabViewModel = this.dabViewModel;
            dABAllListAdapter.setData(dabViewModel.getDabListByEnsembleName(dabViewModel.getAllEnsembleName().get(0)));
        }
        this.binding.dabPtyStationListRv.addOnChildAttachStateChangeListener(new C09332());
        this.dabEnsembleStationListAdapter.setItemClickListener(new DABAllListAdapter.onItemClickListener() { // from class: com.chery.media.view.fragment.DabEnsembleListFragment.3
            @Override // com.chery.media.view.adapter.DABAllListAdapter.onItemClickListener
            public void onCancelFavor(DabInfo dabInfo) {
            }

            @Override // com.chery.media.view.adapter.DABAllListAdapter.onItemClickListener
            public void onItemClicked(DabInfo dabInfo, boolean z) {
                if (z) {
                    DabEnsembleListFragment.this.dabViewModel.playChannel(dabInfo);
                    DabEnsembleListFragment.this.dabViewModel.setCurPlayType(1, dabInfo.ensembleName);
                } else {
                    DabEnsembleListFragment.this.dabViewModel.playPause();
                }
            }
        });
        this.dabEnsembleListAdapter.setItemClickListener(new DABEnsembleNameListAdapter.onItemClickListener() { // from class: com.chery.media.view.fragment.DabEnsembleListFragment.4
            @Override // com.chery.media.view.adapter.DABEnsembleNameListAdapter.onItemClickListener
            public void onItemClicked(String str) {
                DabEnsembleListFragment.this.dabEnsembleStationListAdapter.setData(DabEnsembleListFragment.this.dabViewModel.getDabListByEnsembleName(str));
            }
        });
        updateListMask();
    }

    /* renamed from: com.chery.media.view.fragment.DabEnsembleListFragment$2 */
    class C09332 implements RecyclerView.OnChildAttachStateChangeListener {
        C09332() {
        }

        public /* synthetic */ void lambda$onChildViewAttachedToWindow$0$DabEnsembleListFragment$2() {
            DabEnsembleListFragment.this.updateListMask();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewAttachedToWindow(View view) {
            DabEnsembleListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.-$$Lambda$DabEnsembleListFragment$2$5qIVGXpjvUenK0QG3NGLJ3hP6g0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onChildViewAttachedToWindow$0$DabEnsembleListFragment$2();
                }
            });
        }

        public /* synthetic */ void lambda$onChildViewDetachedFromWindow$1$DabEnsembleListFragment$2() {
            DabEnsembleListFragment.this.updateListMask();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewDetachedFromWindow(View view) {
            DabEnsembleListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.-$$Lambda$DabEnsembleListFragment$2$YrodPTq6ZlcM3QbClLjvwkrJL94
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onChildViewDetachedFromWindow$1$DabEnsembleListFragment$2();
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
