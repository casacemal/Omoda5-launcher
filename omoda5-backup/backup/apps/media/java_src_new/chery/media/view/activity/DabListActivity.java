package com.chery.media.view.activity;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import com.avn.tools.log.CarLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.ActivityDabListBinding;
import com.chery.media.view.adapter.DABMenuAdapter;
import com.chery.media.view.fragment.DabAllListFragment;
import com.chery.media.view.fragment.DabEnsembleListFragment;
import com.chery.media.view.fragment.DabFavorListFragment;
import com.chery.media.view.fragment.DabPtyListFragment;
import com.chery.media.viewmodel.DabViewModel;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DabListActivity extends BaseActivity {
    private static final String TAG = CarLog.concatTag("DAB", DabListActivity.class);
    private ActivityDabListBinding binding;
    private DABMenuAdapter dabMenuAdapter;
    private DabViewModel dabViewModel;

    @Override // com.chery.media.view.activity.BaseActivity
    protected int getContainerId() {
        return C0632R.id.dab_list_fragment_container;
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityDabListBinding activityDabListBindingBind = ActivityDabListBinding.bind(getLayoutInflater().inflate(C0632R.layout.activity_dab_list, (ViewGroup) null, false));
        this.binding = activityDabListBindingBind;
        setContentView(activityDabListBindingBind.getRoot());
        this.dabViewModel = (DabViewModel) new ViewModelProvider(this).get(DabViewModel.class);
        initView();
        gotoPage(this.dabViewModel.getLastListPage());
        this.dabMenuAdapter.setCurIndex(this.dabViewModel.getLastListPage());
    }

    private void initView() {
        this.dabMenuAdapter = new DABMenuAdapter(getApplicationContext());
        this.binding.dabListMenuRv.setAdapter(this.dabMenuAdapter);
        this.binding.dabListMenuRv.setLayoutManager(new GridLayoutManager(this, 4));
        ArrayList arrayList = new ArrayList();
        arrayList.add(getResources().getString(C0632R.string.dab_all_station));
        arrayList.add(getResources().getString(C0632R.string.dab_station_list));
        arrayList.add(getResources().getString(C0632R.string.dab_pty_list));
        arrayList.add(getResources().getString(C0632R.string.dab_favor_list));
        this.dabMenuAdapter.setData(arrayList);
        this.dabMenuAdapter.setItemClickListener(new DABMenuAdapter.onItemClickListener() { // from class: com.chery.media.view.activity.DabListActivity.1
            @Override // com.chery.media.view.adapter.DABMenuAdapter.onItemClickListener
            public void onItemClicked(int r2) {
                DabListActivity.this.dabViewModel.setLastListPage(r2);
                DabListActivity.this.gotoPage(r2);
            }
        });
        this.binding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.activity.DabListActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DabListActivity.this.finish();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoPage(int r2) {
        if (r2 == 0) {
            gotoFragment(new DabAllListFragment());
            return;
        }
        if (r2 == 1) {
            gotoFragment(new DabEnsembleListFragment());
        } else if (r2 == 2) {
            gotoFragment(new DabPtyListFragment());
        } else {
            if (r2 != 3) {
                return;
            }
            gotoFragment(new DabFavorListFragment());
        }
    }
}
