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
import com.chery.media.databinding.FragmentDabAllListBinding;
import com.chery.media.model.business.DabBusiness;
import com.chery.media.model.business.DabInfo;
import com.chery.media.view.adapter.DABAllListAdapter;
import com.chery.media.viewmodel.DabViewModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DabAllListFragment extends FragmentBase {
    private static final int MSG_ALL_LIST_CHANGED = 0;
    private static final String TAG = CarLog.concatTag("DAB", DabAllListFragment.class);
    private FragmentDabAllListBinding binding;
    private DABAllListAdapter dabAllListAdapter;
    private DabViewModel dabViewModel;
    private Handler handler = new Handler();
    private List<DabInfo> dabList = new ArrayList();
    private Observer<DabInfo> curPlayInfoObserver = new Observer<DabInfo>() { // from class: com.chery.media.view.fragment.DabAllListFragment.4
        @Override // androidx.lifecycle.Observer
        public void onChanged(DabInfo dabInfo) {
            DabAllListFragment.this.dabAllListAdapter.setCurPlayInfo(dabInfo);
        }
    };
    private Observer<Boolean> playingStateObserver = new Observer<Boolean>() { // from class: com.chery.media.view.fragment.DabAllListFragment.5
        @Override // androidx.lifecycle.Observer
        public void onChanged(Boolean bool) {
            DabAllListFragment.this.dabAllListAdapter.setPlayingState(bool);
        }
    };
    private DabBusiness.DabBusinessCallback callback = new DabBusiness.DabBusinessCallback() { // from class: com.chery.media.view.fragment.DabAllListFragment.6
        @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
        public void favorInfoChanged() {
        }

        @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
        public void allListChanged() {
            DabAllListFragment.this.mHandler.sendEmptyMessage(0);
        }
    };
    private Handler mHandler = new Handler() { // from class: com.chery.media.view.fragment.DabAllListFragment.7
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 0) {
                return;
            }
            DabAllListFragment dabAllListFragment = DabAllListFragment.this;
            dabAllListFragment.dabList = dabAllListFragment.dabViewModel.getALLList();
            DabAllListFragment.this.dabAllListAdapter.setData(DabAllListFragment.this.dabList);
            DabAllListFragment.this.binding.tvNoFavor.setVisibility(DabAllListFragment.this.dabList.size() > 0 ? 8 : 0);
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
        this.dabAllListAdapter.setData(null);
        this.binding.dabAllListRv.setAdapter(null);
        this.binding.dabAllListRv.setLayoutManager(null);
    }

    private void initView() {
        this.dabAllListAdapter = new DABAllListAdapter(getActivity().getBaseContext());
        this.binding.dabAllListRv.setAdapter(this.dabAllListAdapter);
        this.binding.dabAllListRv.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        this.binding.dabAllListRv.setSeekBar(this.binding.sbListBar, this.binding.llListBar);
        this.binding.dabAllListRv.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.DabAllListFragment.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                if (r3 != 0) {
                    DabAllListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.DabAllListFragment.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DabAllListFragment.this.updateListMask();
                        }
                    });
                }
            }
        });
        List<DabInfo> aLLList = this.dabViewModel.getALLList();
        this.dabList = aLLList;
        this.dabAllListAdapter.setData(aLLList);
        this.binding.tvNoFavor.setText(getResources().getString(C0632R.string.dab_empty_list));
        this.binding.tvNoFavor.setVisibility(this.dabList.size() > 0 ? 8 : 0);
        this.binding.dabAllListRv.addOnChildAttachStateChangeListener(new C09262());
        this.dabAllListAdapter.setItemClickListener(new DABAllListAdapter.onItemClickListener() { // from class: com.chery.media.view.fragment.DabAllListFragment.3
            @Override // com.chery.media.view.adapter.DABAllListAdapter.onItemClickListener
            public void onCancelFavor(DabInfo dabInfo) {
            }

            @Override // com.chery.media.view.adapter.DABAllListAdapter.onItemClickListener
            public void onItemClicked(DabInfo dabInfo, boolean z) {
                if (z) {
                    DabAllListFragment.this.dabViewModel.playChannel(dabInfo);
                    DabAllListFragment.this.dabViewModel.setCurPlayType(0, "");
                } else {
                    DabAllListFragment.this.dabViewModel.playPause();
                }
            }
        });
        updateListMask();
    }

    /* renamed from: com.chery.media.view.fragment.DabAllListFragment$2 */
    class C09262 implements RecyclerView.OnChildAttachStateChangeListener {
        C09262() {
        }

        public /* synthetic */ void lambda$onChildViewAttachedToWindow$0$DabAllListFragment$2() {
            DabAllListFragment.this.updateListMask();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewAttachedToWindow(View view) {
            DabAllListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.-$$Lambda$DabAllListFragment$2$rYwBG9p71Guk0-4Z1txptekjsnE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onChildViewAttachedToWindow$0$DabAllListFragment$2();
                }
            });
        }

        public /* synthetic */ void lambda$onChildViewDetachedFromWindow$1$DabAllListFragment$2() {
            DabAllListFragment.this.updateListMask();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewDetachedFromWindow(View view) {
            DabAllListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.-$$Lambda$DabAllListFragment$2$-UllUp8egPYlCyehRZmLA6NifR4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onChildViewDetachedFromWindow$1$DabAllListFragment$2();
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
