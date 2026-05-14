package com.chery.media.view.activity;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import com.avn.tools.log.CarLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.ActivityDabAnnounceBinding;
import com.chery.media.model.business.DabAnnounceInfo;
import com.chery.media.view.adapter.DABAnnounceListAdapter;
import com.chery.media.viewmodel.DabViewModel;
import java.util.List;

/* loaded from: classes.dex */
public class DabAnnounceActivity extends BaseActivity {
    private static final String TAG = CarLog.concatTag("DAB", DabAnnounceActivity.class);
    private Observer<List<DabAnnounceInfo>> announceListObserver = new Observer<List<DabAnnounceInfo>>() { // from class: com.chery.media.view.activity.DabAnnounceActivity.3
        @Override // androidx.lifecycle.Observer
        public void onChanged(List<DabAnnounceInfo> list) {
            DabAnnounceActivity.this.dabAnnounceListAdapter.setData(list);
        }
    };
    private ActivityDabAnnounceBinding binding;
    private DABAnnounceListAdapter dabAnnounceListAdapter;
    private DabViewModel dabViewModel;

    @Override // com.chery.media.view.activity.BaseActivity
    protected int getContainerId() {
        return C0632R.id.dab_list_fragment_container;
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityDabAnnounceBinding activityDabAnnounceBindingBind = ActivityDabAnnounceBinding.bind(getLayoutInflater().inflate(C0632R.layout.activity_dab_announce, (ViewGroup) null, false));
        this.binding = activityDabAnnounceBindingBind;
        setContentView(activityDabAnnounceBindingBind.getRoot());
        initViewModel();
        initView();
    }

    private void initView() {
        this.dabAnnounceListAdapter = new DABAnnounceListAdapter(getApplicationContext());
        this.binding.dabListAnnounceRv.setAdapter(this.dabAnnounceListAdapter);
        this.binding.dabListAnnounceRv.setLayoutManager(new GridLayoutManager(this, 2));
        this.dabAnnounceListAdapter.setItemClickListener(new DABAnnounceListAdapter.onItemClickListener() { // from class: com.chery.media.view.activity.DabAnnounceActivity.1
            @Override // com.chery.media.view.adapter.DABAnnounceListAdapter.onItemClickListener
            public void onItemClicked(int r1, boolean z) {
                if (r1 == 0) {
                    return;
                }
                DabAnnounceActivity.this.dabViewModel.setAnnouncementTypeSwitch(r1, z);
            }
        });
        this.binding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.activity.DabAnnounceActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DabAnnounceActivity.this.finish();
            }
        });
    }

    private void initViewModel() {
        DabViewModel dabViewModel = (DabViewModel) new ViewModelProvider(this).get(DabViewModel.class);
        this.dabViewModel = dabViewModel;
        dabViewModel.getAnnounceList().observe(this, this.announceListObserver);
    }
}
