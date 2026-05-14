package com.chery.media.view.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.FragmentDabAllListBinding;
import com.chery.media.model.business.DabBusiness;
import com.chery.media.model.business.DabInfo;
import com.chery.media.view.adapter.DABAllListAdapter;
import com.chery.media.viewmodel.DabViewModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DabFavorListFragment extends FragmentBase {
    private static final String TAG = CarLog.concatTag("DAB", DabFavorListFragment.class);
    private FragmentDabAllListBinding binding;
    private DABAllListAdapter dabFavorListAdapter;
    private DabViewModel dabViewModel;
    private Handler handler = new Handler();
    private List<DabInfo> dabList = new ArrayList();
    private Observer<DabInfo> curPlayInfoObserver = new Observer<DabInfo>() { // from class: com.chery.media.view.fragment.DabFavorListFragment.4
        @Override // androidx.lifecycle.Observer
        public void onChanged(DabInfo dabInfo) {
            DabFavorListFragment.this.dabFavorListAdapter.setCurPlayInfo(dabInfo);
        }
    };
    private Observer<Boolean> playingStateObserver = new Observer<Boolean>() { // from class: com.chery.media.view.fragment.DabFavorListFragment.5
        @Override // androidx.lifecycle.Observer
        public void onChanged(Boolean bool) {
            DabFavorListFragment.this.dabFavorListAdapter.setPlayingState(bool);
        }
    };
    private DabBusiness.DabBusinessCallback callback = new DabBusiness.DabBusinessCallback() { // from class: com.chery.media.view.fragment.DabFavorListFragment.6
        @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
        public void allListChanged() {
        }

        @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
        public void favorInfoChanged() {
            DabFavorListFragment.this.dabFavorListAdapter.setData(DabFavorListFragment.this.dabViewModel.getFavorList());
            DabFavorListFragment.this.binding.tvNoFavor.setVisibility(DabFavorListFragment.this.dabViewModel.getFavorList().size() > 0 ? 8 : 0);
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
        FragmentDabAllListBinding fragmentDabAllListBindingBind = FragmentDabAllListBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_dab_all_list, viewGroup, false));
        this.binding = fragmentDabAllListBindingBind;
        return fragmentDabAllListBindingBind.getRoot();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.dabViewModel.removeCallback(this.callback);
        this.dabFavorListAdapter.setData(null);
        this.binding.dabAllListRv.setAdapter(null);
        this.binding.dabAllListRv.setLayoutManager(null);
    }

    private void initView() {
        this.dabFavorListAdapter = new DABAllListAdapter(getActivity().getBaseContext());
        this.binding.dabAllListRv.setAdapter(this.dabFavorListAdapter);
        this.binding.dabAllListRv.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        this.binding.dabAllListRv.setSeekBar(this.binding.sbListBar, this.binding.llListBar);
        this.binding.dabAllListRv.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.DabFavorListFragment.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                if (r3 != 0) {
                    DabFavorListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.DabFavorListFragment.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DabFavorListFragment.this.updateListMask();
                        }
                    });
                }
            }
        });
        this.dabFavorListAdapter.setData(this.dabViewModel.getFavorList());
        this.binding.tvNoFavor.setVisibility(this.dabViewModel.getFavorList().size() > 0 ? 8 : 0);
        this.binding.dabAllListRv.addOnChildAttachStateChangeListener(new C09412());
        this.dabFavorListAdapter.setItemClickListener(new DABAllListAdapter.onItemClickListener() { // from class: com.chery.media.view.fragment.DabFavorListFragment.3
            @Override // com.chery.media.view.adapter.DABAllListAdapter.onItemClickListener
            public void onItemClicked(DabInfo dabInfo, boolean z) {
                if (z) {
                    DabFavorListFragment.this.dabViewModel.playChannel(dabInfo);
                    DabFavorListFragment.this.dabViewModel.setCurPlayType(3, "");
                } else {
                    DabFavorListFragment.this.dabViewModel.playPause();
                }
            }

            @Override // com.chery.media.view.adapter.DABAllListAdapter.onItemClickListener
            public void onCancelFavor(DabInfo dabInfo) {
                DabFavorListFragment.this.dabViewModel.cancelFavor(dabInfo);
            }
        });
        updateListMask();
    }

    /* renamed from: com.chery.media.view.fragment.DabFavorListFragment$2 */
    class C09412 implements RecyclerView.OnChildAttachStateChangeListener {
        C09412() {
        }

        public /* synthetic */ void lambda$onChildViewAttachedToWindow$0$DabFavorListFragment$2() {
            DabFavorListFragment.this.updateListMask();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewAttachedToWindow(View view) {
            DabFavorListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.-$$Lambda$DabFavorListFragment$2$Bmsxe8dd_8x-e9Mkfro8zL82eIU
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onChildViewAttachedToWindow$0$DabFavorListFragment$2();
                }
            });
        }

        public /* synthetic */ void lambda$onChildViewDetachedFromWindow$1$DabFavorListFragment$2() {
            DabFavorListFragment.this.updateListMask();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewDetachedFromWindow(View view) {
            DabFavorListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.-$$Lambda$DabFavorListFragment$2$jZeDrXfKPmtGovzL75bqmFdmFdc
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onChildViewDetachedFromWindow$1$DabFavorListFragment$2();
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
        if (this.binding.dabAllListRv.getAdapter() == null || this.binding.dabAllListRv.getLayoutManager() == null) {
            return;
        }
        if (((GridLayoutManager) this.binding.dabAllListRv.getLayoutManager()).findLastVisibleItemPosition() / 5 == (this.binding.dabAllListRv.getAdapter().getItemCount() - 1) / 5) {
            this.binding.ivListMask.setVisibility(4);
        } else {
            this.binding.ivListMask.setVisibility(0);
        }
    }
}
