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
import com.avn.tools.log.PFLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.FragmentPictureMainBinding;
import com.chery.media.model.business.MediaBusiness;
import com.chery.media.model.business.MediaDef;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.view.activity.BaseActivity;
import com.chery.media.view.activity.PictureActivity;
import com.chery.media.view.adapter.PictureAllListAdapter;
import com.chery.media.view.adapter.PictureFolderListAdapter;
import com.chery.media.view.component.RecycleViewSb;
import com.chery.media.viewmodel.PictureViewModel;
import com.chery.media.viewmodel.UsbScannerViewModel;

/* loaded from: classes.dex */
public class PictureMainFragment extends FragmentBase {
    private static final String ARG_PARAM1 = "usbType";
    private static final String TAG = CarLog.concatTag("MEDIA", PictureMainFragment.class);
    private FragmentPictureMainBinding binding;
    private Handler handler;
    private PictureAllListAdapter pictureAllListAdapter;
    private PictureFolderListAdapter pictureFolderListAdapter;
    private PictureViewModel pictureViewModel;
    private UsbScannerViewModel usbScannerViewModel;
    private int currentViewUsbType = -1;
    private int listMode = 0;

    public static PictureMainFragment newInstance(int r3) {
        PictureMainFragment pictureMainFragment = new PictureMainFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(ARG_PARAM1, r3);
        pictureMainFragment.setArguments(bundle);
        return pictureMainFragment;
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
            this.binding = FragmentPictureMainBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_picture_main_right, viewGroup, false));
        } else {
            this.binding = FragmentPictureMainBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_picture_main, viewGroup, false));
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
    public void onResume() {
        super.onResume();
        if (isTopWhenStarted() && ((BaseActivity) getActivity()).getCurrentFragment() == this) {
            MediaBusiness.getInstance().updateFullscreenState(false);
        }
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.pictureAllListAdapter.setPictureList(null);
        this.binding.rvPictureList.setAdapter(null);
        this.binding.rvPictureList.setLayoutManager(null);
        this.pictureFolderListAdapter.setFolderInfo(null);
        this.binding.rvFolderList.setAdapter(null);
        this.binding.rvFolderList.setLayoutManager(null);
    }

    private void initViewModel() {
        PFLog.m25d(TAG, "initViewModel");
        UsbScannerViewModel usbScannerViewModel = (UsbScannerViewModel) new ViewModelProvider(getActivity()).get(UsbScannerViewModel.class);
        this.usbScannerViewModel = usbScannerViewModel;
        usbScannerViewModel.observeUsbMountStatusDatas(getViewLifecycleOwner(), new Observer<UsbScannerViewModel.UsbMountStatusData>() { // from class: com.chery.media.view.fragment.PictureMainFragment.1
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbScannerViewModel.UsbMountStatusData usbMountStatusData) {
                if (usbMountStatusData.usbType == PictureMainFragment.this.currentViewUsbType) {
                    PictureMainFragment.this.updateUsbState();
                    PictureMainFragment.this.updateList();
                }
            }
        });
        this.usbScannerViewModel.observeUsbScanStatusDatas(getViewLifecycleOwner(), new Observer<UsbScannerViewModel.UsbScanStatusData>() { // from class: com.chery.media.view.fragment.PictureMainFragment.2
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbScannerViewModel.UsbScanStatusData usbScanStatusData) {
                if (usbScanStatusData.usbType == PictureMainFragment.this.currentViewUsbType) {
                    PictureMainFragment.this.updateUsbState();
                    PictureMainFragment.this.updateList();
                }
            }
        });
        PictureViewModel pictureViewModel = (PictureViewModel) new ViewModelProvider(getActivity()).get(PictureViewModel.class);
        this.pictureViewModel = pictureViewModel;
        pictureViewModel.observeCurrentPlayingDatas(getViewLifecycleOwner(), new Observer<PictureViewModel.CurrentPlayingData>() { // from class: com.chery.media.view.fragment.PictureMainFragment.3
            @Override // androidx.lifecycle.Observer
            public void onChanged(PictureViewModel.CurrentPlayingData currentPlayingData) {
                if (currentPlayingData.usbType == PictureMainFragment.this.currentViewUsbType) {
                    PictureMainFragment.this.updateCurrentPlaying();
                }
            }
        });
    }

    private void initView() {
        PFLog.m25d(TAG, "initView");
        initList();
        this.binding.tvTabUsb1.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.PictureMainFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PictureMainFragment.this.setCurrentViewUsbType(0);
            }
        });
        this.binding.tvAllPictures.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.PictureMainFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PictureMainFragment.this.setListMode(0);
            }
        });
        this.binding.tvFolders.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.PictureMainFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PictureMainFragment.this.setListMode(1);
            }
        });
        this.binding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.PictureMainFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaDef.UsbFolderInfo folderInfo = PictureMainFragment.this.usbScannerViewModel.getFolderInfo(PictureMainFragment.this.currentViewUsbType, PictureMainFragment.this.pictureFolderListAdapter.getFolderInfo().dir);
                PictureMainFragment.this.pictureFolderListAdapter.setFolderInfo(folderInfo);
                PictureMainFragment.this.binding.tvFolderName.setText(folderInfo.fileName);
                PictureMainFragment.this.updateFolderBackVisible();
            }
        });
        this.binding.ivFullscreen.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.PictureMainFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PictureMainFragment.this.pictureViewModel.changeCurrentUsb(PictureMainFragment.this.currentViewUsbType);
                PictureMainFragment.this.pictureViewModel.changeCurrentPlaying(PictureMainFragment.this.currentViewUsbType, 0);
                PictureActivity pictureActivity = (PictureActivity) PictureMainFragment.this.getActivity();
                final PictureViewerFragment pictureViewerFragmentNewInstance = PictureViewerFragment.newInstance(null, null);
                pictureActivity.gotoFragment(pictureViewerFragmentNewInstance);
                pictureViewerFragmentNewInstance.addResumeRunnable(new Runnable() { // from class: com.chery.media.view.fragment.PictureMainFragment.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        pictureViewerFragmentNewInstance.startAutoChange();
                    }
                });
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
            this.binding.tvAllPictures.setSelected(true);
            this.binding.tvFolders.setSelected(false);
            this.binding.rvPictureList.setVisibility(0);
            this.binding.rvFolderList.setVisibility(8);
            return;
        }
        if (r0 == 1) {
            this.binding.tvAllPictures.setSelected(false);
            this.binding.tvFolders.setSelected(true);
            this.binding.rvPictureList.setVisibility(8);
            this.binding.rvFolderList.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUsbState() {
        if (!this.usbScannerViewModel.isMounted(this.currentViewUsbType)) {
            this.binding.ivUsbState.setImageResource(C0632R.drawable.video_and_pic_usb_disconnect_icon);
            this.binding.tvUsbState.setText(C0632R.string.video_pic_usb_disconnect);
            this.binding.clUsbState.setVisibility(0);
            this.binding.clPictureContent.setVisibility(8);
            return;
        }
        if (this.usbScannerViewModel.getUsbScanStatus(this.currentViewUsbType) != 35) {
            if (this.usbScannerViewModel.getUsbDeviceInfo(this.currentViewUsbType).picturesCount == 0) {
                this.binding.ivUsbState.setImageResource(C0632R.drawable.video_and_pic_usb_loading_icon);
                this.binding.tvUsbState.setText(C0632R.string.video_pic_usb_loading);
                this.binding.clUsbState.setVisibility(0);
                this.binding.clPictureContent.setVisibility(8);
                return;
            }
            this.binding.clUsbState.setVisibility(8);
            this.binding.clPictureContent.setVisibility(0);
            return;
        }
        if (this.usbScannerViewModel.getUsbDeviceInfo(this.currentViewUsbType).picturesCount == 0) {
            this.binding.ivUsbState.setImageResource(C0632R.drawable.video_and_pic_usb_no_content);
            this.binding.tvUsbState.setText(C0632R.string.video_pic_usb_no_content);
            this.binding.clUsbState.setVisibility(0);
            this.binding.clPictureContent.setVisibility(8);
            return;
        }
        this.binding.clUsbState.setVisibility(8);
        this.binding.clPictureContent.setVisibility(0);
    }

    private void initList() {
        PictureAllListAdapter pictureAllListAdapter = new PictureAllListAdapter(getContext());
        this.pictureAllListAdapter = pictureAllListAdapter;
        pictureAllListAdapter.setOnItemClickListener(new PictureAllListAdapter.OnItemClickListener() { // from class: com.chery.media.view.fragment.PictureMainFragment.9
            @Override // com.chery.media.view.adapter.PictureAllListAdapter.OnItemClickListener
            public void onItemClick(int r4, MediaDef.UsbPictureInfo usbPictureInfo) {
                PictureMainFragment.this.pictureViewModel.changeCurrentUsb(PictureMainFragment.this.currentViewUsbType);
                PictureMainFragment.this.pictureViewModel.changePlaylist(PictureMainFragment.this.currentViewUsbType, 0, PictureMainFragment.this.pictureAllListAdapter.getPictureList());
                PictureMainFragment.this.pictureViewModel.changeCurrentPlaying(PictureMainFragment.this.currentViewUsbType, usbPictureInfo);
                ((PictureActivity) PictureMainFragment.this.getActivity()).gotoFragment(PictureViewerFragment.newInstance(null, null));
            }
        });
        this.binding.rvPictureList.setAdapter(this.pictureAllListAdapter);
        this.binding.rvPictureList.setLayoutManager(new GridLayoutManager(getContext(), 5));
        this.binding.rvPictureList.setSeekBar(this.binding.sbListBar, this.binding.llListBar);
        this.binding.rvPictureList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.PictureMainFragment.10
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                if (r3 != 0) {
                    PictureMainFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.PictureMainFragment.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PictureMainFragment.this.updateListMask();
                        }
                    });
                }
            }
        });
        this.binding.rvPictureList.addOnChildAttachStateChangeListener(new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.chery.media.view.fragment.PictureMainFragment.11
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(View view) {
                PictureMainFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.PictureMainFragment.11.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PictureMainFragment.this.updateListMask();
                    }
                });
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
                PictureMainFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.PictureMainFragment.11.2
                    @Override // java.lang.Runnable
                    public void run() {
                        PictureMainFragment.this.updateListMask();
                    }
                });
            }
        });
        PictureFolderListAdapter pictureFolderListAdapter = new PictureFolderListAdapter(getContext(), this.usbScannerViewModel, this.pictureViewModel);
        this.pictureFolderListAdapter = pictureFolderListAdapter;
        pictureFolderListAdapter.setOnItemClickListener(new PictureFolderListAdapter.OnItemClickListener() { // from class: com.chery.media.view.fragment.PictureMainFragment.12
            @Override // com.chery.media.view.adapter.PictureFolderListAdapter.OnItemClickListener
            public void onSubFolderClick(int r2, MediaDef.UsbFolderInfo usbFolderInfo) {
                MediaDef.UsbFolderInfo folderInfo = PictureMainFragment.this.usbScannerViewModel.getFolderInfo(PictureMainFragment.this.currentViewUsbType, usbFolderInfo.path);
                PictureMainFragment.this.pictureFolderListAdapter.setFolderInfo(folderInfo);
                PictureMainFragment.this.binding.tvFolderName.setText(folderInfo.fileName);
                PictureMainFragment.this.updateFolderBackVisible();
            }

            @Override // com.chery.media.view.adapter.PictureFolderListAdapter.OnItemClickListener
            public void onPictureClick(int r4, MediaDef.UsbPictureInfo usbPictureInfo) {
                PictureMainFragment.this.pictureViewModel.changeCurrentUsb(PictureMainFragment.this.currentViewUsbType);
                PictureMainFragment.this.pictureViewModel.changePlaylist(PictureMainFragment.this.currentViewUsbType, 1, PictureMainFragment.this.pictureFolderListAdapter.getFolderInfo().pictureInfos);
                PictureMainFragment.this.pictureViewModel.changeCurrentPlaying(PictureMainFragment.this.currentViewUsbType, usbPictureInfo);
                ((PictureActivity) PictureMainFragment.this.getActivity()).gotoFragment(PictureViewerFragment.newInstance(null, null));
            }
        });
        this.binding.rvFolderList.setAdapter(this.pictureFolderListAdapter);
        this.binding.rvFolderList.setLayoutManager(new GridLayoutManager(getContext(), 5));
        this.binding.rvFolderList.setSeekBar(this.binding.sbListBar, this.binding.llListBar);
        this.binding.rvFolderList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.PictureMainFragment.13
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                if (r3 != 0) {
                    PictureMainFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.PictureMainFragment.13.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PictureMainFragment.this.updateListMask();
                        }
                    });
                }
            }
        });
        this.binding.rvFolderList.addOnChildAttachStateChangeListener(new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.chery.media.view.fragment.PictureMainFragment.14
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(View view) {
                PictureMainFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.PictureMainFragment.14.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PictureMainFragment.this.updateListMask();
                    }
                });
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
                PictureMainFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.PictureMainFragment.14.2
                    @Override // java.lang.Runnable
                    public void run() {
                        PictureMainFragment.this.updateListMask();
                    }
                });
            }
        });
    }

    private void clearList() {
        this.pictureAllListAdapter.setPictureList(null);
        this.pictureFolderListAdapter.setFolderInfo(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateList() {
        MediaDef.UsbFolderInfo folderInfo;
        this.pictureAllListAdapter.setPictureList(this.usbScannerViewModel.getPictures(this.currentViewUsbType));
        UsbScannerViewModel usbScannerViewModel = this.usbScannerViewModel;
        int r1 = this.currentViewUsbType;
        MediaDef.UsbFolderInfo folderInfo2 = usbScannerViewModel.getFolderInfo(r1, usbScannerViewModel.getUsbDeviceInfo(r1).mountPath);
        MediaDef.UsbFolderInfo folderInfo3 = this.pictureFolderListAdapter.getFolderInfo();
        if (folderInfo3 != null && (folderInfo = this.usbScannerViewModel.getFolderInfo(this.currentViewUsbType, folderInfo3.path)) != null) {
            folderInfo2 = folderInfo;
        }
        this.pictureFolderListAdapter.setFolderInfo(folderInfo2);
        updateFolderBackVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateListMask() {
        RecycleViewSb recycleViewSb = this.listMode == 0 ? this.binding.rvPictureList : this.binding.rvFolderList;
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
        if (this.listMode == 1 && !this.pictureFolderListAdapter.isRootFolder()) {
            this.binding.clFolderListBack.setVisibility(0);
            this.binding.clUsbTabs.setVisibility(8);
        } else {
            this.binding.clUsbTabs.setVisibility(0);
            this.binding.clFolderListBack.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlaying() {
        this.pictureAllListAdapter.setCurrentPictureInfo(this.pictureViewModel.getCurrentPlaying(this.currentViewUsbType));
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
