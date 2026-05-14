package com.chery.media.view.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.FragmentLocalMusicListBinding;
import com.chery.media.model.business.MediaDef;
import com.chery.media.view.activity.MediaActivity;
import com.chery.media.view.adapter.LocalMusicListAdapter;
import com.chery.media.view.dialog.Dialog_TextConfirmCancel;
import com.chery.media.viewmodel.LocalMusicViewModel;
import java.util.List;

/* loaded from: classes.dex */
public class LocalMusicListFragment extends FragmentBase {
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private static final String TAG = CarLog.concatTag("MEDIA", LocalMusicListFragment.class);
    private FragmentLocalMusicListBinding binding;
    private Dialog_TextConfirmCancel dialog;
    private Handler handler;
    private boolean isEditing = false;
    private LocalMusicListAdapter localMusicListAdapter;
    private LocalMusicViewModel localMusicViewModel;
    private String mParam1;
    private String mParam2;

    public static LocalMusicListFragment newInstance(String str, String str2) {
        LocalMusicListFragment localMusicListFragment = new LocalMusicListFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        bundle.putString(ARG_PARAM2, str2);
        localMusicListFragment.setArguments(bundle);
        return localMusicListFragment;
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.mParam1 = getArguments().getString(ARG_PARAM1);
            this.mParam2 = getArguments().getString(ARG_PARAM2);
        }
        this.handler = new Handler();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FragmentLocalMusicListBinding fragmentLocalMusicListBindingInflate = FragmentLocalMusicListBinding.inflate(getLayoutInflater(), viewGroup, false);
        this.binding = fragmentLocalMusicListBindingInflate;
        return fragmentLocalMusicListBindingInflate.getRoot();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        initViewModel();
        initView();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (isTopWhenStarted() && ((MediaActivity) getActivity()).getCurrentFragment() == this) {
            this.localMusicViewModel.requestAudioFocus();
        }
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        Dialog_TextConfirmCancel dialog_TextConfirmCancel = this.dialog;
        if (dialog_TextConfirmCancel == null || !dialog_TextConfirmCancel.isShowing()) {
            return;
        }
        this.dialog.dismiss();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.localMusicListAdapter.setMusicList(null);
        this.binding.rvMusicList.setAdapter(null);
        this.binding.rvMusicList.setLayoutManager(null);
    }

    private void initViewModel() {
        PFLog.m25d(TAG, "initViewModel");
        LocalMusicViewModel localMusicViewModel = (LocalMusicViewModel) new ViewModelProvider(getActivity()).get(LocalMusicViewModel.class);
        this.localMusicViewModel = localMusicViewModel;
        localMusicViewModel.getLocalMusics().observe(getViewLifecycleOwner(), new Observer<List<MediaDef.LocalMusicInfo>>() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.1
            @Override // androidx.lifecycle.Observer
            public void onChanged(List<MediaDef.LocalMusicInfo> list) {
                LocalMusicListFragment.this.updateList();
                LocalMusicListFragment.this.updateCurrentPlayingItemPosition();
            }
        });
        this.localMusicViewModel.getCurrentPlaying().observe(getViewLifecycleOwner(), new Observer<MediaDef.LocalMusicInfo>() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.2
            @Override // androidx.lifecycle.Observer
            public void onChanged(MediaDef.LocalMusicInfo localMusicInfo) {
                LocalMusicListFragment.this.updateCurrentPlaying();
                LocalMusicListFragment.this.updateCurrentPlayingItemPosition();
            }
        });
        this.localMusicViewModel.isPlaying().observe(getViewLifecycleOwner(), new Observer<Boolean>() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.3
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                LocalMusicListFragment.this.updateCurrentPlayingIconAnim();
            }
        });
    }

    private void initView() {
        PFLog.m25d(TAG, "initView");
        initList();
        updateList();
        updateCurrentPlaying();
        updateCurrentPlayingIconAnim();
        updateCurrentPlayingItemPosition();
        updateListMask();
        this.isEditing = false;
        updateEdit();
        updateEditAll();
        updateEditCancel();
        updateEditDelete();
        this.binding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((MediaActivity) LocalMusicListFragment.this.getActivity()).replaceAll(MediaMainFragment.newInstance(null, null));
            }
        });
        this.binding.ivEdit.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LocalMusicListFragment.this.isEditing = true;
                LocalMusicListFragment.this.localMusicListAdapter.setEdit(true);
                LocalMusicListFragment.this.updateEdit();
                LocalMusicListFragment.this.updateEditAll();
                LocalMusicListFragment.this.updateEditCancel();
                LocalMusicListFragment.this.updateEditDelete();
            }
        });
        this.binding.tvEditAll.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LocalMusicListFragment.this.localMusicListAdapter.isEditingAll()) {
                    LocalMusicListFragment.this.localMusicListAdapter.cancelAll();
                    LocalMusicListFragment.this.updateEditDelete();
                } else {
                    LocalMusicListFragment.this.localMusicListAdapter.editAll();
                    LocalMusicListFragment.this.updateEditDelete();
                }
            }
        });
        this.binding.tvEditCancel.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LocalMusicListFragment.this.isEditing = false;
                LocalMusicListFragment.this.localMusicListAdapter.cancelAll();
                LocalMusicListFragment.this.localMusicListAdapter.setEdit(false);
                LocalMusicListFragment.this.updateEdit();
                LocalMusicListFragment.this.updateEditAll();
                LocalMusicListFragment.this.updateEditCancel();
                LocalMusicListFragment.this.updateEditDelete();
            }
        });
        this.binding.tvEditDelete.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LocalMusicListFragment.this.dialog == null) {
                    LocalMusicListFragment.this.dialog = new Dialog_TextConfirmCancel(LocalMusicListFragment.this.getContext(), LocalMusicListFragment.this.getString(C0632R.string.media_local_music_confirm_delete), null, null, false);
                    LocalMusicListFragment.this.dialog.setConfirmClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.8.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            LocalMusicListFragment.this.localMusicViewModel.deleteLocals(LocalMusicListFragment.this.localMusicListAdapter.getSelectList(), null);
                            LocalMusicListFragment.this.dialog.dismiss();
                        }
                    });
                }
                LocalMusicListFragment.this.dialog.show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEdit() {
        if (this.isEditing) {
            this.binding.ivEdit.setVisibility(8);
        } else {
            this.binding.ivEdit.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEditAll() {
        if (this.isEditing) {
            this.binding.tvEditAll.setVisibility(0);
        } else {
            this.binding.tvEditAll.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEditCancel() {
        if (this.isEditing) {
            this.binding.tvEditCancel.setVisibility(0);
        } else {
            this.binding.tvEditCancel.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEditDelete() {
        if (this.isEditing) {
            int size = this.localMusicListAdapter.getSelectList().size();
            if (size > 0) {
                this.binding.tvEditDelete.setText(getContext().getString(C0632R.string.media_local_music_edit_delete) + String.format("(%d)", Integer.valueOf(size)));
            } else {
                this.binding.tvEditDelete.setText(getContext().getString(C0632R.string.media_local_music_edit_delete));
            }
            this.binding.tvEditDelete.setEnabled(size > 0);
            this.binding.tvEditDelete.setVisibility(0);
            return;
        }
        this.binding.tvEditDelete.setVisibility(8);
    }

    private void initList() {
        LocalMusicListAdapter localMusicListAdapter = new LocalMusicListAdapter();
        this.localMusicListAdapter = localMusicListAdapter;
        localMusicListAdapter.setOnItemClickListener(new LocalMusicListAdapter.OnItemClickListener() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.9
            @Override // com.chery.media.view.adapter.LocalMusicListAdapter.OnItemClickListener
            public void onItemClick(int r2, MediaDef.LocalMusicInfo localMusicInfo) {
                if (LocalMusicListFragment.this.isEditing) {
                    LocalMusicListFragment.this.updateEditDelete();
                    return;
                }
                LocalMusicListFragment.this.localMusicViewModel.changePlaylist(0);
                LocalMusicListFragment.this.localMusicViewModel.changeCurrentPlaying(localMusicInfo);
                LocalMusicListFragment.this.localMusicViewModel.play();
                ((MediaActivity) LocalMusicListFragment.this.getActivity()).updateCurrentTopSource(12);
            }
        });
        this.binding.rvMusicList.setAdapter(this.localMusicListAdapter);
        this.binding.rvMusicList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.binding.rvMusicList.setSeekBar(this.binding.sbMusicListBar, this.binding.llMusicListBar);
        this.binding.rvMusicList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.10
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                if (r3 != 0) {
                    LocalMusicListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            LocalMusicListFragment.this.updateListMask();
                        }
                    });
                }
            }
        });
        this.binding.rvMusicList.addOnChildAttachStateChangeListener(new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.11
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(View view) {
                LocalMusicListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.11.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LocalMusicListFragment.this.updateListMask();
                    }
                });
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
                LocalMusicListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.LocalMusicListFragment.11.2
                    @Override // java.lang.Runnable
                    public void run() {
                        LocalMusicListFragment.this.updateListMask();
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateList() {
        List<MediaDef.LocalMusicInfo> value = this.localMusicViewModel.getLocalMusics().getValue();
        this.localMusicListAdapter.setMusicList(value);
        this.binding.tvMusicCount.setText(String.format(getContext().getString(C0632R.string.media_local_music_count_info), Integer.valueOf(value.size())));
        updateEditDelete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlaying() {
        this.localMusicListAdapter.setCurrentPlaying(this.localMusicViewModel.getCurrentPlaying().getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlayingIconAnim() {
        this.localMusicListAdapter.setPlaying(this.localMusicViewModel.isPlaying().getValue().booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlayingItemPosition() {
        List<MediaDef.LocalMusicInfo> musicList;
        int r0;
        if (this.isEditing || this.binding.rvMusicList.getScrollState() != 0 || (musicList = this.localMusicListAdapter.getMusicList()) == null || (r0 = musicList.indexOf(this.localMusicViewModel.getCurrentPlaying().getValue())) < 0) {
            return;
        }
        ((LinearLayoutManager) this.binding.rvMusicList.getLayoutManager()).scrollToPositionWithOffset(Math.max(r0 - 1, 0), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateListMask() {
        if (this.binding.rvMusicList.getAdapter() == null || this.binding.rvMusicList.getLayoutManager() == null) {
            return;
        }
        if (((LinearLayoutManager) this.binding.rvMusicList.getLayoutManager()).findLastVisibleItemPosition() == this.binding.rvMusicList.getAdapter().getItemCount() - 1) {
            this.binding.ivListMask.setVisibility(4);
        } else {
            this.binding.ivListMask.setVisibility(0);
        }
    }
}
