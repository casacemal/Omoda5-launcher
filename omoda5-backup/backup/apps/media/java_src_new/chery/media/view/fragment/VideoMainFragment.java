package com.chery.media.view.fragment;

import android.content.Intent;
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
import com.avn.tools.log.PFLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.FragmentVideoMainBinding;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.ThumbnailCache;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.view.activity.VideoPlayerActivity;
import com.chery.media.view.adapter.VideoAllListAdapter;
import com.chery.media.view.adapter.VideoFolderListAdapter;
import com.chery.media.view.component.RecycleViewSb;
import com.chery.media.viewmodel.UsbScannerViewModel;
import com.chery.media.viewmodel.VideoViewModel;

/* loaded from: classes.dex */
public class VideoMainFragment extends FragmentBase {
    private static final String ARG_PARAM1 = "usbType";
    private static final String TAG = CarLog.concatTag("MEDIA", VideoMainFragment.class);
    private FragmentVideoMainBinding binding;
    private Handler handler;
    private UsbScannerViewModel usbScannerViewModel;
    private VideoAllListAdapter videoAllListAdapter;
    private VideoFolderListAdapter videoFolderListAdapter;
    private VideoViewModel videoViewModel;
    private int currentViewUsbType = -1;
    private int listMode = 0;

    public static VideoMainFragment newInstance(int r3) {
        VideoMainFragment videoMainFragment = new VideoMainFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(ARG_PARAM1, r3);
        videoMainFragment.setArguments(bundle);
        return videoMainFragment;
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.currentViewUsbType = getArguments().getInt(ARG_PARAM1);
        }
        this.handler = new Handler();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (CarAdapterUse.getCarConfigInfoClient().isRudderRight()) {
            this.binding = FragmentVideoMainBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_video_main_right, viewGroup, false));
        } else {
            this.binding = FragmentVideoMainBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_video_main, viewGroup, false));
        }
        return this.binding.getRoot();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        initViewModel();
        initView();
        updateUsbTab();
        updateListTab();
        updateUsbState();
        updateList();
        updateListMask();
        updateCurrentPlaying();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.videoAllListAdapter.setVideoList(null);
        this.binding.rvVideoList.setAdapter(null);
        this.binding.rvVideoList.setLayoutManager(null);
        this.videoFolderListAdapter.setFolderInfo(null);
        this.binding.rvFolderList.setAdapter(null);
        this.binding.rvFolderList.setLayoutManager(null);
    }

    private void initViewModel() {
        PFLog.m25d(TAG, "initViewModel");
        UsbScannerViewModel usbScannerViewModel = (UsbScannerViewModel) new ViewModelProvider(getActivity()).get(UsbScannerViewModel.class);
        this.usbScannerViewModel = usbScannerViewModel;
        usbScannerViewModel.observeUsbMountStatusDatas(getViewLifecycleOwner(), new Observer<UsbScannerViewModel.UsbMountStatusData>() { // from class: com.chery.media.view.fragment.VideoMainFragment.1
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbScannerViewModel.UsbMountStatusData usbMountStatusData) {
                if (usbMountStatusData.usbType == VideoMainFragment.this.currentViewUsbType) {
                    VideoMainFragment.this.updateUsbState();
                    VideoMainFragment.this.updateList();
                }
            }
        });
        this.usbScannerViewModel.observeUsbScanStatusDatas(getViewLifecycleOwner(), new Observer<UsbScannerViewModel.UsbScanStatusData>() { // from class: com.chery.media.view.fragment.VideoMainFragment.2
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbScannerViewModel.UsbScanStatusData usbScanStatusData) {
                if (usbScanStatusData.usbType == VideoMainFragment.this.currentViewUsbType) {
                    VideoMainFragment.this.updateUsbState();
                    VideoMainFragment.this.updateList();
                }
            }
        });
        VideoViewModel videoViewModel = (VideoViewModel) new ViewModelProvider(getActivity()).get(VideoViewModel.class);
        this.videoViewModel = videoViewModel;
        videoViewModel.observeCurrentPlayingDatas(getViewLifecycleOwner(), new Observer<VideoViewModel.CurrentPlayingData>() { // from class: com.chery.media.view.fragment.VideoMainFragment.3
            @Override // androidx.lifecycle.Observer
            public void onChanged(VideoViewModel.CurrentPlayingData currentPlayingData) {
                if (currentPlayingData.usbType == VideoMainFragment.this.currentViewUsbType) {
                    VideoMainFragment.this.updateCurrentPlaying();
                }
            }
        });
    }

    private void initView() {
        PFLog.m25d(TAG, "initView");
        initList();
        this.binding.tvTabUsb1.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.VideoMainFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoMainFragment.this.setCurrentViewUsbType(0);
            }
        });
        this.binding.tvAllVideos.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.VideoMainFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoMainFragment.this.setListMode(0);
            }
        });
        this.binding.tvFolders.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.VideoMainFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoMainFragment.this.setListMode(1);
            }
        });
        this.binding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.VideoMainFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaDef.UsbFolderInfo folderInfo = VideoMainFragment.this.usbScannerViewModel.getFolderInfo(VideoMainFragment.this.currentViewUsbType, VideoMainFragment.this.videoFolderListAdapter.getFolderInfo().dir);
                VideoMainFragment.this.videoFolderListAdapter.setFolderInfo(folderInfo);
                VideoMainFragment.this.binding.tvFolderName.setText(folderInfo.fileName);
                VideoMainFragment.this.updateFolderBackVisible();
            }
        });
    }

    public void setCurrentViewUsbType(int r3) {
        if (r3 == this.currentViewUsbType) {
            return;
        }
        this.currentViewUsbType = r3;
        getArguments().putInt(ARG_PARAM1, r3);
        updateUsbTab();
        updateUsbState();
        clearList();
        updateList();
        setListMode(0);
    }

    private void updateUsbTab() {
        if (this.currentViewUsbType == 0) {
            this.binding.tvTabUsb1.setSelected(true);
        } else {
            this.binding.tvTabUsb1.setSelected(false);
        }
    }

    private void updateListTab() {
        int r0 = this.listMode;
        if (r0 == 0) {
            this.binding.tvAllVideos.setSelected(true);
            this.binding.tvFolders.setSelected(false);
            this.binding.rvVideoList.setVisibility(0);
            this.binding.rvFolderList.setVisibility(8);
            return;
        }
        if (r0 == 1) {
            this.binding.tvAllVideos.setSelected(false);
            this.binding.tvFolders.setSelected(true);
            this.binding.rvVideoList.setVisibility(8);
            this.binding.rvFolderList.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUsbState() {
        if (!this.usbScannerViewModel.isMounted(this.currentViewUsbType)) {
            this.binding.ivUsbState.setImageResource(C0632R.drawable.video_and_pic_usb_disconnect_icon);
            this.binding.tvUsbState.setText(C0632R.string.video_pic_usb_disconnect);
            this.binding.clUsbState.setVisibility(0);
            this.binding.clVideoContent.setVisibility(8);
            return;
        }
        if (this.usbScannerViewModel.getUsbScanStatus(this.currentViewUsbType) != 35) {
            if (this.usbScannerViewModel.getUsbDeviceInfo(this.currentViewUsbType).videosCount == 0) {
                this.binding.ivUsbState.setImageResource(C0632R.drawable.video_and_pic_usb_loading_icon);
                this.binding.tvUsbState.setText(C0632R.string.video_pic_usb_loading);
                this.binding.clUsbState.setVisibility(0);
                this.binding.clVideoContent.setVisibility(8);
                return;
            }
            this.binding.clUsbState.setVisibility(8);
            this.binding.clVideoContent.setVisibility(0);
            return;
        }
        if (this.usbScannerViewModel.getUsbDeviceInfo(this.currentViewUsbType).videosCount == 0) {
            this.binding.ivUsbState.setImageResource(C0632R.drawable.video_and_pic_usb_no_content);
            this.binding.tvUsbState.setText(C0632R.string.video_pic_usb_no_content);
            this.binding.clUsbState.setVisibility(0);
            this.binding.clVideoContent.setVisibility(8);
            return;
        }
        this.binding.clUsbState.setVisibility(8);
        this.binding.clVideoContent.setVisibility(0);
    }

    private void initList() {
        VideoAllListAdapter videoAllListAdapter = new VideoAllListAdapter(getContext(), ThumbnailCache.getThumbnailCache(this.currentViewUsbType));
        this.videoAllListAdapter = videoAllListAdapter;
        videoAllListAdapter.setOnItemClickListener(new VideoAllListAdapter.OnItemClickListener() { // from class: com.chery.media.view.fragment.VideoMainFragment.8
            @Override // com.chery.media.view.adapter.VideoAllListAdapter.OnItemClickListener
            public void onItemClick(int r4, MediaDef.UsbVideoInfo usbVideoInfo) {
                VideoMainFragment.this.videoViewModel.changePlaylist(VideoMainFragment.this.currentViewUsbType, 0, null);
                VideoMainFragment.this.videoViewModel.changeCurrentPlaying(VideoMainFragment.this.currentViewUsbType, usbVideoInfo);
                VideoMainFragment.this.videoViewModel.play(VideoMainFragment.this.currentViewUsbType);
                VideoMainFragment.this.startActivity(new Intent(VideoMainFragment.this.getContext(), (Class<?>) VideoPlayerActivity.class));
            }
        });
        this.binding.rvVideoList.setAdapter(this.videoAllListAdapter);
        this.binding.rvVideoList.setLayoutManager(new GridLayoutManager(getContext(), 5));
        this.binding.rvVideoList.setSeekBar(this.binding.sbListBar, this.binding.llListBar);
        this.binding.rvVideoList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.VideoMainFragment.9
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                if (r3 != 0) {
                    VideoMainFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.VideoMainFragment.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            VideoMainFragment.this.updateListMask();
                        }
                    });
                }
            }
        });
        this.binding.rvVideoList.addOnChildAttachStateChangeListener(new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.chery.media.view.fragment.VideoMainFragment.10
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(View view) {
                VideoMainFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.VideoMainFragment.10.1
                    @Override // java.lang.Runnable
                    public void run() {
                        VideoMainFragment.this.updateListMask();
                    }
                });
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
                VideoMainFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.VideoMainFragment.10.2
                    @Override // java.lang.Runnable
                    public void run() {
                        VideoMainFragment.this.updateListMask();
                    }
                });
            }
        });
        VideoFolderListAdapter videoFolderListAdapter = new VideoFolderListAdapter(getContext(), this.usbScannerViewModel, this.videoViewModel, ThumbnailCache.getThumbnailCache(this.currentViewUsbType));
        this.videoFolderListAdapter = videoFolderListAdapter;
        videoFolderListAdapter.setOnItemClickListener(new VideoFolderListAdapter.OnItemClickListener() { // from class: com.chery.media.view.fragment.VideoMainFragment.11
            @Override // com.chery.media.view.adapter.VideoFolderListAdapter.OnItemClickListener
            public void onSubFolderClick(int r2, MediaDef.UsbFolderInfo usbFolderInfo) {
                MediaDef.UsbFolderInfo folderInfo = VideoMainFragment.this.usbScannerViewModel.getFolderInfo(VideoMainFragment.this.currentViewUsbType, usbFolderInfo.path);
                VideoMainFragment.this.videoFolderListAdapter.setFolderInfo(folderInfo);
                VideoMainFragment.this.binding.tvFolderName.setText(folderInfo.fileName);
                VideoMainFragment.this.updateFolderBackVisible();
            }

            @Override // com.chery.media.view.adapter.VideoFolderListAdapter.OnItemClickListener
            public void onVideoClick(int r4, MediaDef.UsbVideoInfo usbVideoInfo) {
                VideoMainFragment.this.videoViewModel.changePlaylist(VideoMainFragment.this.currentViewUsbType, 1, VideoMainFragment.this.videoFolderListAdapter.getFolderInfo().path);
                VideoMainFragment.this.videoViewModel.changeCurrentPlaying(VideoMainFragment.this.currentViewUsbType, usbVideoInfo);
                VideoMainFragment.this.videoViewModel.play(VideoMainFragment.this.currentViewUsbType);
                VideoMainFragment.this.startActivity(new Intent(VideoMainFragment.this.getContext(), (Class<?>) VideoPlayerActivity.class));
            }
        });
        this.binding.rvFolderList.setAdapter(this.videoFolderListAdapter);
        this.binding.rvFolderList.setLayoutManager(new GridLayoutManager(getContext(), 5));
        this.binding.rvFolderList.setSeekBar(this.binding.sbListBar, this.binding.llListBar);
        this.binding.rvFolderList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.VideoMainFragment.12
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                if (r3 != 0) {
                    VideoMainFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.VideoMainFragment.12.1
                        @Override // java.lang.Runnable
                        public void run() {
                            VideoMainFragment.this.updateListMask();
                        }
                    });
                }
            }
        });
        this.binding.rvFolderList.addOnChildAttachStateChangeListener(new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.chery.media.view.fragment.VideoMainFragment.13
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(View view) {
                VideoMainFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.VideoMainFragment.13.1
                    @Override // java.lang.Runnable
                    public void run() {
                        VideoMainFragment.this.updateListMask();
                    }
                });
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
                VideoMainFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.VideoMainFragment.13.2
                    @Override // java.lang.Runnable
                    public void run() {
                        VideoMainFragment.this.updateListMask();
                    }
                });
            }
        });
    }

    private void clearList() {
        this.videoAllListAdapter.setVideoList(null);
        this.videoFolderListAdapter.setFolderInfo(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateList() {
        MediaDef.UsbFolderInfo folderInfo;
        this.videoAllListAdapter.setVideoList(this.usbScannerViewModel.getVideos(this.currentViewUsbType));
        UsbScannerViewModel usbScannerViewModel = this.usbScannerViewModel;
        int r1 = this.currentViewUsbType;
        MediaDef.UsbFolderInfo folderInfo2 = usbScannerViewModel.getFolderInfo(r1, usbScannerViewModel.getUsbDeviceInfo(r1).mountPath);
        MediaDef.UsbFolderInfo folderInfo3 = this.videoFolderListAdapter.getFolderInfo();
        if (folderInfo3 != null && (folderInfo = this.usbScannerViewModel.getFolderInfo(this.currentViewUsbType, folderInfo3.path)) != null) {
            folderInfo2 = folderInfo;
        }
        this.videoFolderListAdapter.setFolderInfo(folderInfo2);
        updateFolderBackVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateListMask() {
        RecycleViewSb recycleViewSb = this.listMode == 0 ? this.binding.rvVideoList : this.binding.rvFolderList;
        if (recycleViewSb.getAdapter() == null || recycleViewSb.getLayoutManager() == null) {
            return;
        }
        if (((GridLayoutManager) recycleViewSb.getLayoutManager()).findLastVisibleItemPosition() / 5 == (recycleViewSb.getAdapter().getItemCount() - 1) / 5) {
            this.binding.ivListMask.setVisibility(4);
        } else {
            this.binding.ivListMask.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFolderBackVisible() {
        if (this.listMode == 1 && !this.videoFolderListAdapter.isRootFolder()) {
            this.binding.clFolderListBack.setVisibility(0);
            this.binding.clUsbTabs.setVisibility(8);
        } else {
            this.binding.clUsbTabs.setVisibility(0);
            this.binding.clFolderListBack.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlaying() {
        this.videoAllListAdapter.setCurrentVideoInfo(this.videoViewModel.getCurrentPlaying(this.currentViewUsbType));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setListMode(int r2) {
        if (r2 == this.listMode) {
            return;
        }
        this.listMode = r2;
        updateListTab();
        updateListMask();
        updateFolderBackVisible();
    }
}
