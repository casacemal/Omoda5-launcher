package com.chery.media.view.fragment;

import android.bluetooth.BluetoothHeadsetClientCall;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.btphone.livedata.BtCallStateLiveData;
import com.chery.caradapter.carapi.interfaces.IPowerListener;
import com.chery.media.C0632R;
import com.chery.media.databinding.FragmentPictureViewerBinding;
import com.chery.media.model.business.HardKeyBusiness;
import com.chery.media.model.business.MediaBusiness;
import com.chery.media.model.business.MediaDef;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.util.Utils;
import com.chery.media.view.activity.BaseActivity;
import com.chery.media.view.adapter.PictureViewerAdapter;
import com.chery.media.viewmodel.PictureViewModel;
import com.github.chrisbanes.photoview.PhotoView;
import java.util.List;

/* loaded from: classes.dex */
public class PictureViewerFragment extends FragmentBase {
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private static final int AUTO_CHANGE_INTERVAL = 5;
    private static final String TAG = CarLog.concatTag("MEDIA", PictureViewerFragment.class);
    private FragmentPictureViewerBinding binding;
    private BtCallStateLiveData btCallStateLiveData;
    private View.OnClickListener clickListener;
    private Runnable fullscreenRun;
    private Handler handler;
    private HardKeyBusiness.HardKeyListener hardKeyListener;
    private String mParam1;
    private String mParam2;
    private PictureViewModel pictureViewModel;
    private PictureViewerAdapter pictureViewerAdapter;
    private IPowerListener powerListener;
    private Runnable runAutoChange;
    private MediaBusiness.ScreenSwitchListener screenSwitchListener;
    private int currentUsbType = -1;
    private int autoChangeLeftDuration = 0;

    public static PictureViewerFragment newInstance(String str, String str2) {
        PictureViewerFragment pictureViewerFragment = new PictureViewerFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        bundle.putString(ARG_PARAM2, str2);
        pictureViewerFragment.setArguments(bundle);
        return pictureViewerFragment;
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.mParam1 = getArguments().getString(ARG_PARAM1);
            this.mParam2 = getArguments().getString(ARG_PARAM2);
        }
        this.handler = new Handler();
        this.screenSwitchListener = new MediaBusiness.ScreenSwitchListener() { // from class: com.chery.media.view.fragment.PictureViewerFragment.1
            @Override // com.chery.media.model.business.MediaBusiness.ScreenSwitchListener
            public void onScreenOnChanged(boolean z) {
                PFLog.m25d(PictureViewerFragment.TAG, "onScreenOnChanged " + z);
                if (z) {
                    return;
                }
                PictureViewerFragment.this.stopAutoChange();
            }
        };
        MediaBusiness.getInstance().addScreenSwitchListener(this.screenSwitchListener);
        this.hardKeyListener = new HardKeyBusiness.HardKeyListener() { // from class: com.chery.media.view.fragment.PictureViewerFragment.2
            @Override // com.chery.media.model.business.HardKeyBusiness.HardKeyListener
            public void onHardKey(int r1, boolean z, boolean z2) {
                if (r1 != 289 || z) {
                    return;
                }
                PictureViewerFragment.this.stopAutoChange();
            }
        };
        HardKeyBusiness.getInstance().addHardKeyListener(this.hardKeyListener);
        IPowerListener iPowerListener = new IPowerListener() { // from class: com.chery.media.view.fragment.PictureViewerFragment.3
            @Override // com.chery.caradapter.carapi.interfaces.IPowerListener
            public void onStateChanged(int r2) {
                if (r2 == 18) {
                    PictureViewerFragment.this.stopAutoChange();
                }
            }
        };
        this.powerListener = iPowerListener;
        CarAdapterUse.addCarPowerClientListener(iPowerListener);
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (CarAdapterUse.getCarConfigInfoClient().isRudderRight()) {
            this.binding = FragmentPictureViewerBinding.bind(layoutInflater.inflate(C0632R.layout.fragment_picture_viewer_right, viewGroup, false));
        } else {
            this.binding = FragmentPictureViewerBinding.bind(layoutInflater.inflate(C0632R.layout.fragment_picture_viewer, viewGroup, false));
        }
        return this.binding.getRoot();
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
        if (isTopWhenStarted() && ((BaseActivity) getActivity()).getCurrentFragment() == this) {
            MediaBusiness.getInstance().updateFullscreenState(true);
            if (isFromStopped()) {
                showControls(true);
            }
        }
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        if (((BaseActivity) getActivity()).getCurrentFragment() == this) {
            stopAutoChange();
            showControls(false);
        }
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.pictureViewerAdapter.setPictureList(null);
        this.binding.viewPager.setAdapter(null);
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaBusiness.getInstance().removeScreenSwitchListener(this.screenSwitchListener);
        HardKeyBusiness.getInstance().removeHardKeyListener(this.hardKeyListener);
        CarAdapterUse.removeCarPowerClientListener(this.powerListener);
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (!z) {
            showControls(true);
        } else {
            stopAutoChange();
        }
    }

    private void initViewModel() {
        PFLog.m25d(TAG, "initViewModel");
        PictureViewModel pictureViewModel = (PictureViewModel) new ViewModelProvider(getActivity()).get(PictureViewModel.class);
        this.pictureViewModel = pictureViewModel;
        this.currentUsbType = pictureViewModel.getCurrentUsbData().getValue().intValue();
        this.pictureViewModel.getCurrentUsbData().observe(getViewLifecycleOwner(), new Observer<Integer>() { // from class: com.chery.media.view.fragment.PictureViewerFragment.4
            @Override // androidx.lifecycle.Observer
            public void onChanged(Integer num) {
                if (num.intValue() != PictureViewerFragment.this.currentUsbType) {
                    PictureViewerFragment.this.currentUsbType = num.intValue();
                    PictureViewerFragment.this.updateList();
                    PictureViewerFragment.this.updateCurrentPlaying();
                    if (PictureViewerFragment.this.runAutoChange == null || !PictureViewerFragment.this.handler.hasCallbacks(PictureViewerFragment.this.runAutoChange)) {
                        PictureViewerFragment.this.resetAutoChangeLeftDuration();
                    }
                }
            }
        });
        this.pictureViewModel.observePlaylistDatas(getViewLifecycleOwner(), new Observer<PictureViewModel.PlaylistData>() { // from class: com.chery.media.view.fragment.PictureViewerFragment.5
            @Override // androidx.lifecycle.Observer
            public void onChanged(PictureViewModel.PlaylistData playlistData) {
                if (playlistData.usbType == PictureViewerFragment.this.currentUsbType) {
                    PictureViewerFragment.this.updateList();
                    if (PictureViewerFragment.this.runAutoChange == null || !PictureViewerFragment.this.handler.hasCallbacks(PictureViewerFragment.this.runAutoChange)) {
                        PictureViewerFragment.this.resetAutoChangeLeftDuration();
                    }
                }
            }
        });
        this.pictureViewModel.observeCurrentPlayingDatas(getViewLifecycleOwner(), new Observer<PictureViewModel.CurrentPlayingData>() { // from class: com.chery.media.view.fragment.PictureViewerFragment.6
            @Override // androidx.lifecycle.Observer
            public void onChanged(PictureViewModel.CurrentPlayingData currentPlayingData) {
                if (currentPlayingData.usbType == PictureViewerFragment.this.currentUsbType) {
                    PictureViewerFragment.this.updateCurrentPlaying();
                    if (PictureViewerFragment.this.runAutoChange != null) {
                        PictureViewerFragment.this.resetAutoChangeLeftDuration();
                    }
                }
            }
        });
        this.pictureViewModel.getSpeedLimitView().observe(getViewLifecycleOwner(), new Observer<Boolean>() { // from class: com.chery.media.view.fragment.PictureViewerFragment.7
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                PictureViewerFragment.this.updatePictureCover();
            }
        });
        this.pictureViewModel.getSpeedLimitSetting().observe(getViewLifecycleOwner(), new Observer<Boolean>() { // from class: com.chery.media.view.fragment.PictureViewerFragment.8
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                PictureViewerFragment.this.updatePictureCover();
            }
        });
        BtCallStateLiveData btCallStateLiveData = new BtCallStateLiveData(getContext());
        this.btCallStateLiveData = btCallStateLiveData;
        btCallStateLiveData.observe(getViewLifecycleOwner(), new Observer<List<BluetoothHeadsetClientCall>>() { // from class: com.chery.media.view.fragment.PictureViewerFragment.9
            @Override // androidx.lifecycle.Observer
            public void onChanged(List<BluetoothHeadsetClientCall> list) {
                PFLog.m25d(PictureViewerFragment.TAG, "btCallStateLiveData onChanged " + list);
                if (list == null || list.isEmpty()) {
                    return;
                }
                PictureViewerFragment.this.stopAutoChange();
            }
        });
    }

    private void initView() {
        PFLog.m25d(TAG, "initView");
        initList();
        updateList();
        updateCurrentPlaying();
        this.binding.inPictureCover.tvCoverHint.setText(getContext().getString(C0632R.string.video_player_cover_forbidden));
        updatePictureCover();
        this.clickListener = new View.OnClickListener() { // from class: com.chery.media.view.fragment.PictureViewerFragment.10
            /* JADX WARN: Removed duplicated region for block: B:15:0x0092  */
            /* JADX WARN: Removed duplicated region for block: B:24:0x00ae  */
            /* JADX WARN: Removed duplicated region for block: B:34:0x00c5  */
            @Override // android.view.View.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onClick(android.view.View r9) {
                /*
                    Method dump skipped, instructions count: 549
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.chery.media.view.fragment.PictureViewerFragment.ViewOnClickListenerC104510.onClick(android.view.View):void");
            }
        };
        this.binding.ivBack.setOnClickListener(this.clickListener);
        this.binding.ivAutoChangePaused.setOnClickListener(this.clickListener);
        this.binding.ivRotate.setOnClickListener(this.clickListener);
        this.binding.ivAutoPlay.setOnClickListener(this.clickListener);
        this.binding.ivPlayPrior.setOnClickListener(this.clickListener);
        this.binding.ivPlayNext.setOnClickListener(this.clickListener);
        this.binding.ivZoomIn.setOnClickListener(this.clickListener);
        this.binding.ivZoomOut.setOnClickListener(this.clickListener);
    }

    private void initList() {
        PictureViewerAdapter pictureViewerAdapter = new PictureViewerAdapter(getContext());
        this.pictureViewerAdapter = pictureViewerAdapter;
        pictureViewerAdapter.setOnItemClickListener(new PictureViewerAdapter.OnItemClickListener() { // from class: com.chery.media.view.fragment.PictureViewerFragment.11
            @Override // com.chery.media.view.adapter.PictureViewerAdapter.OnItemClickListener
            public void onItemClick(int r3) {
                PictureViewerFragment.this.resetFullScreenTimer();
                if (PictureViewerFragment.this.runAutoChange != null) {
                    if (PictureViewerFragment.this.handler.hasCallbacks(PictureViewerFragment.this.runAutoChange)) {
                        if (PictureViewerFragment.this.binding.clControl.getVisibility() != 0) {
                            PictureViewerFragment.this.showControls(true);
                            return;
                        } else {
                            PictureViewerFragment.this.pauseAutoChange();
                            return;
                        }
                    }
                    if (PictureViewerFragment.this.binding.clControl.getVisibility() != 0) {
                        PictureViewerFragment.this.showControls(true);
                        return;
                    } else {
                        PictureViewerFragment.this.stopAutoChange();
                        return;
                    }
                }
                PictureViewerFragment.this.switchControls(true);
            }
        });
        this.pictureViewerAdapter.setOnCurrentItemListener(new PictureViewerAdapter.OnCurrentItemListener() { // from class: com.chery.media.view.fragment.PictureViewerFragment.12
            @Override // com.chery.media.view.adapter.PictureViewerAdapter.OnCurrentItemListener
            public void onCurrentItemChanged(View view, View view2) {
                if (view2 != null) {
                    PhotoView photoView = (PhotoView) view2.findViewById(C0632R.id.iv_pic);
                    photoView.setScale(photoView.getMinimumScale(), false);
                }
                if (view != null) {
                    PhotoView photoView2 = (PhotoView) view.findViewById(C0632R.id.iv_pic);
                    PictureViewerFragment.this.binding.ivZoomIn.setEnabled(((double) Math.abs(photoView2.getScale() - photoView2.getMaximumScale())) > 0.1d);
                    PictureViewerFragment.this.binding.ivZoomOut.setEnabled(((double) Math.abs(photoView2.getScale() - photoView2.getMinimumScale())) > 0.1d);
                }
            }

            @Override // com.chery.media.view.adapter.PictureViewerAdapter.OnCurrentItemListener
            public void onCurrentPositionChanged(int r2, MediaDef.UsbPictureInfo usbPictureInfo, View view, View view2) {
                PictureViewerFragment.this.pictureViewModel.changeCurrentPlaying(PictureViewerFragment.this.currentUsbType, usbPictureInfo);
                onCurrentItemChanged(view, view2);
            }
        });
        this.pictureViewerAdapter.setOnPhotoViewScaleListener(new PictureViewerAdapter.OnPhotoViewScaleChangeListener() { // from class: com.chery.media.view.fragment.PictureViewerFragment.13
            @Override // com.chery.media.view.adapter.PictureViewerAdapter.OnPhotoViewScaleChangeListener
            public void onScaleChanged(int r6, PhotoView photoView, float f) {
                if (r6 == PictureViewerFragment.this.binding.viewPager.getCurrentItem()) {
                    PictureViewerFragment.this.binding.ivZoomIn.setEnabled(((double) Math.abs(f - photoView.getMaximumScale())) > 0.1d);
                    PictureViewerFragment.this.binding.ivZoomOut.setEnabled(((double) Math.abs(f - photoView.getMinimumScale())) > 0.1d);
                }
            }
        });
        this.binding.viewPager.setAdapter(this.pictureViewerAdapter);
        this.binding.viewPager.setCurrentItem(1073741823);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateList() {
        this.pictureViewerAdapter.setPictureList(this.pictureViewModel.getPlaylist(this.currentUsbType));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlaying() {
        int r1;
        List<MediaDef.UsbPictureInfo> playlist = this.pictureViewModel.getPlaylist(this.currentUsbType);
        if (playlist == null || playlist.isEmpty() || (r1 = playlist.indexOf(this.pictureViewModel.getCurrentPlaying(this.currentUsbType))) < 0) {
            return;
        }
        int currentItem = this.binding.viewPager.getCurrentItem();
        this.binding.viewPager.setCurrentItem(currentItem + (r1 - (currentItem % playlist.size())), false);
    }

    public void startAutoChange() {
        PFLog.m25d(TAG, "startAutoChange");
        if (this.runAutoChange == null) {
            PFLog.m25d(TAG, "startAutoChange in");
            Runnable runnable = new Runnable() { // from class: com.chery.media.view.fragment.PictureViewerFragment.14
                @Override // java.lang.Runnable
                public void run() {
                    PictureViewerFragment.this.setAutoChangeLeftDuration(r0.autoChangeLeftDuration - 1);
                    if (PictureViewerFragment.this.autoChangeLeftDuration % 5 == 0) {
                        PictureViewerFragment.this.pictureViewModel.changeNext(PictureViewerFragment.this.currentUsbType);
                        if (PictureViewerFragment.this.autoChangeLeftDuration == 0) {
                            PictureViewerFragment.this.resetAutoChangeLeftDuration();
                        }
                    }
                    PictureViewerFragment.this.handler.postDelayed(this, 1000L);
                }
            };
            this.runAutoChange = runnable;
            this.handler.postDelayed(runnable, 1000L);
            this.binding.clSubControl.setVisibility(8);
            resetAutoChangeLeftDuration();
            this.binding.tvLeftDuration.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pauseAutoChange() {
        PFLog.m25d(TAG, "pauseAutoChange");
        if (this.runAutoChange != null) {
            PFLog.m25d(TAG, "pauseAutoChange in");
            this.handler.removeCallbacks(this.runAutoChange);
            this.binding.ivAutoChangePaused.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeAutoChange() {
        PFLog.m25d(TAG, "resumeAutoChange");
        if (this.runAutoChange != null) {
            PFLog.m25d(TAG, "resumeAutoChange in");
            this.handler.postDelayed(this.runAutoChange, 1000L);
            this.binding.ivAutoChangePaused.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopAutoChange() {
        PFLog.m25d(TAG, "stopAutoChange");
        if (this.runAutoChange != null) {
            PFLog.m25d(TAG, "stopAutoChange in");
            this.handler.removeCallbacks(this.runAutoChange);
            this.runAutoChange = null;
            this.binding.ivAutoChangePaused.setVisibility(8);
            this.binding.tvLeftDuration.setVisibility(8);
            this.binding.clSubControl.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetAutoChangeLeftDuration() {
        List<MediaDef.UsbPictureInfo> playlist = this.pictureViewModel.getPlaylist(this.currentUsbType);
        if (playlist == null || playlist.isEmpty()) {
            setAutoChangeLeftDuration(0);
            return;
        }
        int r2 = playlist.indexOf(this.pictureViewModel.getCurrentPlaying(this.currentUsbType));
        if (r2 < 0) {
            setAutoChangeLeftDuration(0);
        } else {
            setAutoChangeLeftDuration((playlist.size() - r2) * 5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAutoChangeLeftDuration(int r3) {
        this.autoChangeLeftDuration = r3;
        this.binding.tvLeftDuration.setText(Utils.getTimeString(r3 * 1000));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetFullScreenTimer() {
        PFLog.m25d(TAG, "resetFullScreenTimer");
        if (this.fullscreenRun == null) {
            this.fullscreenRun = new Runnable() { // from class: com.chery.media.view.fragment.PictureViewerFragment.15
                @Override // java.lang.Runnable
                public void run() {
                    PictureViewerFragment.this.hideControls();
                }
            };
        }
        this.handler.removeCallbacks(this.fullscreenRun);
        this.handler.postDelayed(this.fullscreenRun, 5000L);
    }

    private void clearFullScreenTimer() {
        PFLog.m25d(TAG, "clearFullScreenTimer");
        Runnable runnable = this.fullscreenRun;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showControls(boolean z) {
        PFLog.m25d(TAG, "showControls autoDismiss:" + z);
        this.binding.clControl.setVisibility(0);
        if (z) {
            resetFullScreenTimer();
        } else {
            clearFullScreenTimer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideControls() {
        PFLog.m25d(TAG, "hideControls");
        this.binding.clControl.setVisibility(8);
        clearFullScreenTimer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchControls(boolean z) {
        PFLog.m25d(TAG, "switchControls autoDismiss:" + z);
        if (this.binding.clControl.getVisibility() == 0) {
            hideControls();
        } else {
            showControls(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePictureCover() {
        if (this.pictureViewModel.getSpeedLimitSetting().getValue().booleanValue() && this.pictureViewModel.getSpeedLimitView().getValue().booleanValue()) {
            this.binding.inPictureCover.getRoot().setVisibility(0);
        } else {
            this.binding.inPictureCover.getRoot().setVisibility(8);
        }
    }
}
