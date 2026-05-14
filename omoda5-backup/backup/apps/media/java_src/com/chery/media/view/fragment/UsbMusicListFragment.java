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
import com.chery.libvr.bean.params.ParamsSource;
import com.chery.media.C0632R;
import com.chery.media.databinding.FragmentUsbMusicListBinding;
import com.chery.media.model.business.MediaDef;
import com.chery.media.view.activity.MediaActivity;
import com.chery.media.view.adapter.UsbMusicFolderListAdapter;
import com.chery.media.view.adapter.UsbMusicSongListAdapter;
import com.chery.media.view.component.RecycleViewSb;
import com.chery.media.viewmodel.UsbMusicViewModel;
import com.chery.media.viewmodel.UsbScannerViewModel;
import java.util.List;

/* loaded from: classes.dex */
public class UsbMusicListFragment extends FragmentBase {
    private static final String ARG_PARAM1 = "usb";
    private static final String TAG = CarLog.concatTag("MEDIA", UsbMusicListFragment.class);
    private FragmentUsbMusicListBinding binding;
    private Handler handler;
    private UsbMusicFolderListAdapter usbMusicFolderListAdapter;
    private UsbMusicSongListAdapter usbMusicSongListAdapter;
    private UsbMusicViewModel usbMusicViewModel;
    private UsbScannerViewModel usbScannerViewModel;
    private int thisUsbType = -1;
    private int listMode = 0;

    public static UsbMusicListFragment newInstance(int r3) {
        UsbMusicListFragment usbMusicListFragment = new UsbMusicListFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(ARG_PARAM1, r3);
        usbMusicListFragment.setArguments(bundle);
        return usbMusicListFragment;
    }

    public int getThisUsbType() {
        return this.thisUsbType;
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.thisUsbType = getArguments().getInt(ARG_PARAM1);
            PFLog.m25d(TAG, "thisUsbType " + this.thisUsbType);
        }
        this.handler = new Handler();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FragmentUsbMusicListBinding fragmentUsbMusicListBindingInflate = FragmentUsbMusicListBinding.inflate(getLayoutInflater(), viewGroup, false);
        this.binding = fragmentUsbMusicListBindingInflate;
        return fragmentUsbMusicListBindingInflate.getRoot();
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
            this.usbMusicViewModel.requestAudioFocus(this.thisUsbType);
        }
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.usbMusicSongListAdapter.setMusicList(null);
        this.binding.rvMusicList.setAdapter(null);
        this.binding.rvMusicList.setLayoutManager(null);
        this.usbMusicFolderListAdapter.setFolderInfo(null);
        this.binding.rvFolderList.setAdapter(null);
        this.binding.rvFolderList.setLayoutManager(null);
    }

    private void initViewModel() {
        PFLog.m25d(TAG, "initViewModel");
        UsbScannerViewModel usbScannerViewModel = (UsbScannerViewModel) new ViewModelProvider(getActivity()).get(UsbScannerViewModel.class);
        this.usbScannerViewModel = usbScannerViewModel;
        usbScannerViewModel.observeUsbScanStatusDatas(getViewLifecycleOwner(), new Observer<UsbScannerViewModel.UsbScanStatusData>() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.1
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbScannerViewModel.UsbScanStatusData usbScanStatusData) {
                if (usbScanStatusData.usbType == UsbMusicListFragment.this.thisUsbType) {
                    UsbMusicListFragment.this.updateList();
                    UsbMusicListFragment.this.updateUsbMusicsCount();
                }
            }
        });
        UsbMusicViewModel usbMusicViewModel = (UsbMusicViewModel) new ViewModelProvider(getActivity()).get(UsbMusicViewModel.class);
        this.usbMusicViewModel = usbMusicViewModel;
        usbMusicViewModel.observePlaylistDatas(getViewLifecycleOwner(), new Observer<UsbMusicViewModel.PlaylistData>() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.2
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbMusicViewModel.PlaylistData playlistData) {
                if (playlistData.usbType == UsbMusicListFragment.this.thisUsbType) {
                    UsbMusicListFragment.this.updateCurrentPlaying();
                    UsbMusicListFragment.this.updateCurrentPlayingItemPosition();
                }
            }
        });
        this.usbMusicViewModel.observeCurrentPlayingDatas(getViewLifecycleOwner(), new Observer<UsbMusicViewModel.CurrentPlayingData>() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.3
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbMusicViewModel.CurrentPlayingData currentPlayingData) {
                if (currentPlayingData.usbType == UsbMusicListFragment.this.thisUsbType) {
                    UsbMusicListFragment.this.updateCurrentPlaying();
                    UsbMusicListFragment.this.updateCurrentPlayingItemPosition();
                }
            }
        });
        this.usbMusicViewModel.observePlayingStateDatas(getViewLifecycleOwner(), new Observer<UsbMusicViewModel.PlayingStateData>() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.4
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbMusicViewModel.PlayingStateData playingStateData) {
                if (playingStateData.usbType == UsbMusicListFragment.this.thisUsbType) {
                    UsbMusicListFragment.this.updateCurrentPlayingIconAnim();
                }
            }
        });
    }

    private void initView() {
        PFLog.m25d(TAG, "initView");
        updateUsbLabel();
        updateListTab();
        initList();
        updateList();
        updateCurrentPlaying();
        updateCurrentPlayingIconAnim();
        updateCurrentPlayingItemPosition();
        updateListMask();
        updateUsbMusicsCount();
        this.binding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((MediaActivity) UsbMusicListFragment.this.getActivity()).replaceAll(MediaMainFragment.newInstance(null, null));
            }
        });
        this.binding.tvTabSongs.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UsbMusicListFragment.this.setListMode(0);
            }
        });
        this.binding.tvTabFolders.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UsbMusicListFragment.this.setListMode(1);
            }
        });
    }

    public void setThisUsbType(int r3) {
        if (r3 == this.thisUsbType) {
            return;
        }
        this.thisUsbType = r3;
        getArguments().putInt(ARG_PARAM1, r3);
        updateUsbLabel();
        updateList();
        updateCurrentPlaying();
        updateCurrentPlayingIconAnim();
        updateCurrentPlayingItemPosition();
        updateUsbMusicsCount();
    }

    private void updateUsbLabel() {
        if (this.thisUsbType == 0) {
            this.binding.tvTitle.setText(ParamsSource.USB);
            this.binding.tvBigIconTitle.setText(ParamsSource.USB);
        } else {
            this.binding.tvTitle.setText("");
            this.binding.tvBigIconTitle.setText("");
        }
    }

    private void updateListTab() {
        int r0 = this.listMode;
        if (r0 == 0) {
            this.binding.tvTabSongs.setSelected(true);
            this.binding.tvTabFolders.setSelected(false);
            this.binding.rvMusicList.setVisibility(0);
            this.binding.rvFolderList.setVisibility(8);
            return;
        }
        if (r0 == 1) {
            this.binding.tvTabSongs.setSelected(false);
            this.binding.tvTabFolders.setSelected(true);
            this.binding.rvMusicList.setVisibility(8);
            this.binding.rvFolderList.setVisibility(0);
        }
    }

    private void initList() {
        UsbMusicSongListAdapter usbMusicSongListAdapter = new UsbMusicSongListAdapter();
        this.usbMusicSongListAdapter = usbMusicSongListAdapter;
        usbMusicSongListAdapter.setOnItemClickListener(new UsbMusicSongListAdapter.OnItemClickListener() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.8
            @Override // com.chery.media.view.adapter.UsbMusicSongListAdapter.OnItemClickListener
            public void onItemClick(int r4, MediaDef.UsbMusicInfo usbMusicInfo) {
                UsbMusicListFragment.this.usbMusicViewModel.changePlaylist(UsbMusicListFragment.this.thisUsbType, 0, null);
                UsbMusicListFragment.this.usbMusicViewModel.changeCurrentPlaying(UsbMusicListFragment.this.thisUsbType, usbMusicInfo);
                UsbMusicListFragment.this.usbMusicViewModel.play(UsbMusicListFragment.this.thisUsbType);
                ((MediaActivity) UsbMusicListFragment.this.getActivity()).updateCurrentTopSource(6);
            }
        });
        this.binding.rvMusicList.setAdapter(this.usbMusicSongListAdapter);
        this.binding.rvMusicList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.binding.rvMusicList.setSeekBar(this.binding.sbMusicListBar, this.binding.llMusicListBar);
        this.binding.rvMusicList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.9
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                if (r3 != 0) {
                    UsbMusicListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            UsbMusicListFragment.this.updateListMask();
                        }
                    });
                }
            }
        });
        this.binding.rvMusicList.addOnChildAttachStateChangeListener(new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.10
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(View view) {
                UsbMusicListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.10.1
                    @Override // java.lang.Runnable
                    public void run() {
                        UsbMusicListFragment.this.updateListMask();
                    }
                });
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
                UsbMusicListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.10.2
                    @Override // java.lang.Runnable
                    public void run() {
                        UsbMusicListFragment.this.updateListMask();
                    }
                });
            }
        });
        UsbMusicFolderListAdapter usbMusicFolderListAdapter = new UsbMusicFolderListAdapter(this.thisUsbType, this.usbScannerViewModel, this.usbMusicViewModel);
        this.usbMusicFolderListAdapter = usbMusicFolderListAdapter;
        usbMusicFolderListAdapter.setOnItemClickListener(new UsbMusicFolderListAdapter.OnItemClickListener() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.11
            @Override // com.chery.media.view.adapter.UsbMusicFolderListAdapter.OnItemClickListener
            public void onRootFolderClick(int r4) {
                UsbMusicListFragment.this.usbMusicFolderListAdapter.setFolderInfo(UsbMusicListFragment.this.usbScannerViewModel.getFolderInfo(UsbMusicListFragment.this.thisUsbType, UsbMusicListFragment.this.usbMusicFolderListAdapter.getFolderInfo().dir));
                UsbMusicListFragment.this.updateCurrentPlayingItemPosition();
            }

            @Override // com.chery.media.view.adapter.UsbMusicFolderListAdapter.OnItemClickListener
            public void onSubFolderClick(int r1, MediaDef.UsbFolderInfo usbFolderInfo) {
                UsbMusicListFragment.this.usbMusicFolderListAdapter.setFolderInfo(usbFolderInfo);
                UsbMusicListFragment.this.updateCurrentPlayingItemPosition();
            }

            @Override // com.chery.media.view.adapter.UsbMusicFolderListAdapter.OnItemClickListener
            public void onMusicClick(int r4, MediaDef.UsbMusicInfo usbMusicInfo) {
                UsbMusicListFragment.this.usbMusicViewModel.changePlaylist(UsbMusicListFragment.this.thisUsbType, 1, UsbMusicListFragment.this.usbMusicFolderListAdapter.getFolderInfo().path);
                UsbMusicListFragment.this.usbMusicViewModel.changeCurrentPlaying(UsbMusicListFragment.this.thisUsbType, usbMusicInfo);
                UsbMusicListFragment.this.usbMusicViewModel.play(UsbMusicListFragment.this.thisUsbType);
                ((MediaActivity) UsbMusicListFragment.this.getActivity()).updateCurrentTopSource(6);
            }
        });
        this.binding.rvFolderList.setAdapter(this.usbMusicFolderListAdapter);
        this.binding.rvFolderList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.binding.rvFolderList.setSeekBar(this.binding.sbMusicListBar, this.binding.llMusicListBar);
        this.binding.rvFolderList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.12
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                if (r3 != 0) {
                    UsbMusicListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.12.1
                        @Override // java.lang.Runnable
                        public void run() {
                            UsbMusicListFragment.this.updateListMask();
                        }
                    });
                }
            }
        });
        this.binding.rvFolderList.addOnChildAttachStateChangeListener(new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.13
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(View view) {
                UsbMusicListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.13.1
                    @Override // java.lang.Runnable
                    public void run() {
                        UsbMusicListFragment.this.updateListMask();
                    }
                });
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
                UsbMusicListFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.UsbMusicListFragment.13.2
                    @Override // java.lang.Runnable
                    public void run() {
                        UsbMusicListFragment.this.updateListMask();
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateList() {
        MediaDef.UsbFolderInfo folderInfo;
        this.usbMusicSongListAdapter.setMusicList(this.usbScannerViewModel.getMusics(this.thisUsbType));
        UsbScannerViewModel usbScannerViewModel = this.usbScannerViewModel;
        int r1 = this.thisUsbType;
        MediaDef.UsbFolderInfo folderInfo2 = usbScannerViewModel.getFolderInfo(r1, usbScannerViewModel.getUsbDeviceInfo(r1).mountPath);
        MediaDef.UsbFolderInfo folderInfo3 = this.usbMusicFolderListAdapter.getFolderInfo();
        if (folderInfo3 != null && (folderInfo = this.usbScannerViewModel.getFolderInfo(this.thisUsbType, folderInfo3.path)) != null) {
            folderInfo2 = folderInfo;
        }
        this.usbMusicFolderListAdapter.setFolderInfo(folderInfo2);
        updateCurrentPlayingItemPosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlaying() {
        this.usbMusicSongListAdapter.setPlayingMusic(this.usbMusicViewModel.getCurrentPlaying(this.thisUsbType));
        this.usbMusicFolderListAdapter.setPlayingMusic(this.usbMusicViewModel.getCurrentPlaying(this.thisUsbType));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlayingIconAnim() {
        boolean zIsPlaying = this.usbMusicViewModel.isPlaying(this.thisUsbType);
        this.usbMusicSongListAdapter.setPlaying(zIsPlaying);
        this.usbMusicFolderListAdapter.setPlaying(zIsPlaying);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlayingItemPosition() {
        MediaDef.UsbFolderInfo folderInfo;
        List<MediaDef.UsbMusicInfo> musicList;
        if (this.binding.rvMusicList.getScrollState() == 0 && (musicList = this.usbMusicSongListAdapter.getMusicList()) != null) {
            int r0 = musicList.indexOf(this.usbMusicViewModel.getCurrentPlaying(this.thisUsbType));
            if (r0 >= 0) {
                ((LinearLayoutManager) this.binding.rvMusicList.getLayoutManager()).scrollToPositionWithOffset(Math.max(r0 - 1, 0), 0);
            } else {
                ((LinearLayoutManager) this.binding.rvMusicList.getLayoutManager()).scrollToPositionWithOffset(0, 0);
            }
        }
        if (this.binding.rvFolderList.getScrollState() != 0 || (folderInfo = this.usbMusicFolderListAdapter.getFolderInfo()) == null) {
            return;
        }
        if (folderInfo.musicInfos.indexOf(this.usbMusicViewModel.getCurrentPlaying(this.thisUsbType)) >= 0) {
            ((LinearLayoutManager) this.binding.rvFolderList.getLayoutManager()).scrollToPositionWithOffset(Math.max(this.usbMusicFolderListAdapter.isRootFolder() ? 0 : ((this.usbMusicFolderListAdapter.getSubFolderInfos().size() + 1) + r0) - 1, 0), 0);
        } else {
            ((LinearLayoutManager) this.binding.rvFolderList.getLayoutManager()).scrollToPositionWithOffset(0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateListMask() {
        RecycleViewSb recycleViewSb = this.listMode == 0 ? this.binding.rvMusicList : this.binding.rvFolderList;
        if (recycleViewSb.getAdapter() == null || recycleViewSb.getLayoutManager() == null) {
            return;
        }
        if (((LinearLayoutManager) recycleViewSb.getLayoutManager()).findLastVisibleItemPosition() == recycleViewSb.getAdapter().getItemCount() - 1) {
            this.binding.ivListMask.setVisibility(4);
        } else {
            this.binding.ivListMask.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUsbMusicsCount() {
        this.binding.tvMusicCount.setText(String.format(getContext().getString(C0632R.string.media_local_music_count_info), Integer.valueOf(this.usbScannerViewModel.getUsbDeviceInfo(this.thisUsbType).musicsCount)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setListMode(int r2) {
        if (r2 == this.listMode) {
            return;
        }
        this.listMode = r2;
        updateListTab();
        updateListMask();
    }
}
