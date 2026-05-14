package com.chery.media.view.fragment;

import android.os.Bundle;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.common.PackageConstants;
import com.chery.common.PageConstants;
import com.chery.common.PageManager;
import com.chery.media.C0632R;
import com.chery.media.databinding.FragmentMediaMainBinding;
import com.chery.media.model.business.BtMusicBusiness;
import com.chery.media.model.business.MediaBusiness;
import com.chery.media.model.business.MediaDef;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.view.activity.MediaActivity;
import com.chery.media.view.dialog.Dialog_SingleText;
import com.chery.media.viewmodel.BtMusicViewModel;
import com.chery.media.viewmodel.DabViewModel;
import com.chery.media.viewmodel.LocalMusicViewModel;
import com.chery.media.viewmodel.MediaViewModel;
import com.chery.media.viewmodel.RadioViewModel;
import com.chery.media.viewmodel.UsbMusicViewModel;
import com.chery.media.viewmodel.UsbScannerViewModel;
import java.util.List;

/* loaded from: classes.dex */
public class MediaMainFragment extends FragmentBase {
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private static final String TAG = CarLog.concatTag("MEDIA", MediaMainFragment.class);
    private FragmentMediaMainBinding binding;
    private DabViewModel dabViewModel;
    private LocalMusicViewModel localMusicViewModel;
    private BtMusicViewModel mBtMusicViewModel;
    private String mParam1;
    private String mParam2;
    private MediaViewModel mediaViewModel;
    private RadioViewModel radioViewModel;
    private UsbMusicViewModel usbMusicViewModel;
    private UsbScannerViewModel usbScannerViewModel;

    public static MediaMainFragment newInstance(String str, String str2) {
        MediaMainFragment mediaMainFragment = new MediaMainFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        bundle.putString(ARG_PARAM2, str2);
        mediaMainFragment.setArguments(bundle);
        return mediaMainFragment;
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.mParam1 = getArguments().getString(ARG_PARAM1);
            this.mParam2 = getArguments().getString(ARG_PARAM2);
        }
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (CarAdapterUse.getCarConfigInfoClient().isRudderRight()) {
            this.binding = FragmentMediaMainBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_media_main_right, viewGroup, false));
        } else {
            this.binding = FragmentMediaMainBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_media_main, viewGroup, false));
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
    public void onDestroyView() {
        super.onDestroyView();
        this.binding.anRadioPlayIcon.cancelAnim();
        this.binding.anBtMusicPlayIcon.cancelAnim();
        this.binding.anUsb1MusicPlayIcon.cancelAnim();
        this.binding.anLocalMusicPlayIcon.cancelAnim();
    }

    private void initViewModel() {
        PFLog.m25d(TAG, "initViewModel");
        MediaViewModel mediaViewModel = (MediaViewModel) new ViewModelProvider(getActivity()).get(MediaViewModel.class);
        this.mediaViewModel = mediaViewModel;
        mediaViewModel.getCurrentAudioSource().observe(getViewLifecycleOwner(), new Observer<Integer>() { // from class: com.chery.media.view.fragment.MediaMainFragment.1
            @Override // androidx.lifecycle.Observer
            public void onChanged(Integer num) {
                MediaMainFragment.this.updateCurrentPlayingIconVisible();
                MediaMainFragment.this.updateCurrentPlayingIconAnim();
            }
        });
        UsbScannerViewModel usbScannerViewModel = (UsbScannerViewModel) new ViewModelProvider(getActivity()).get(UsbScannerViewModel.class);
        this.usbScannerViewModel = usbScannerViewModel;
        usbScannerViewModel.observeUsbMountStatusDatas(getViewLifecycleOwner(), new Observer<UsbScannerViewModel.UsbMountStatusData>() { // from class: com.chery.media.view.fragment.MediaMainFragment.2
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbScannerViewModel.UsbMountStatusData usbMountStatusData) {
                MediaMainFragment.this.updateUsbMusicIcon(usbMountStatusData.usbType);
            }
        });
        this.usbScannerViewModel.observeUsbScanStatusDatas(getViewLifecycleOwner(), new Observer<UsbScannerViewModel.UsbScanStatusData>() { // from class: com.chery.media.view.fragment.MediaMainFragment.3
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbScannerViewModel.UsbScanStatusData usbScanStatusData) {
                MediaMainFragment.this.updateUsbMusicIcon(usbScanStatusData.usbType);
                MediaMainFragment.this.updateUsbMusicCount(usbScanStatusData.usbType);
            }
        });
        UsbMusicViewModel usbMusicViewModel = (UsbMusicViewModel) new ViewModelProvider(this).get(UsbMusicViewModel.class);
        this.usbMusicViewModel = usbMusicViewModel;
        usbMusicViewModel.observeCurrentPlayingDatas(this, new Observer<UsbMusicViewModel.CurrentPlayingData>() { // from class: com.chery.media.view.fragment.MediaMainFragment.4
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbMusicViewModel.CurrentPlayingData currentPlayingData) {
                if (MediaDef.getUsbMusicAudioSource(currentPlayingData.usbType) == MediaMainFragment.this.mediaViewModel.getCurrentAudioSource().getValue().intValue()) {
                    MediaMainFragment.this.updateCurrentPlayingIconVisible();
                }
            }
        });
        this.usbMusicViewModel.observePlayingStateDatas(this, new Observer<UsbMusicViewModel.PlayingStateData>() { // from class: com.chery.media.view.fragment.MediaMainFragment.5
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbMusicViewModel.PlayingStateData playingStateData) {
                if (MediaDef.getUsbMusicAudioSource(playingStateData.usbType) == MediaMainFragment.this.mediaViewModel.getCurrentAudioSource().getValue().intValue()) {
                    MediaMainFragment.this.updateCurrentPlayingIconAnim();
                }
            }
        });
        LocalMusicViewModel localMusicViewModel = (LocalMusicViewModel) new ViewModelProvider(this).get(LocalMusicViewModel.class);
        this.localMusicViewModel = localMusicViewModel;
        localMusicViewModel.getLocalMusics().observe(getViewLifecycleOwner(), new Observer<List<MediaDef.LocalMusicInfo>>() { // from class: com.chery.media.view.fragment.MediaMainFragment.6
            @Override // androidx.lifecycle.Observer
            public void onChanged(List<MediaDef.LocalMusicInfo> list) {
                MediaMainFragment.this.updateLocalMusicIcon();
                MediaMainFragment.this.updateLocalMusicCount();
            }
        });
        this.localMusicViewModel.getCurrentPlaying().observe(getViewLifecycleOwner(), new Observer<MediaDef.LocalMusicInfo>() { // from class: com.chery.media.view.fragment.MediaMainFragment.7
            @Override // androidx.lifecycle.Observer
            public void onChanged(MediaDef.LocalMusicInfo localMusicInfo) {
                if (MediaMainFragment.this.mediaViewModel.getCurrentAudioSource().getValue().intValue() == 12) {
                    MediaMainFragment.this.updateCurrentPlayingIconVisible();
                }
            }
        });
        this.localMusicViewModel.isPlaying().observe(getViewLifecycleOwner(), new Observer<Boolean>() { // from class: com.chery.media.view.fragment.MediaMainFragment.8
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                if (MediaMainFragment.this.mediaViewModel.getCurrentAudioSource().getValue().intValue() == 12) {
                    MediaMainFragment.this.updateCurrentPlayingIconAnim();
                }
            }
        });
        BtMusicViewModel btMusicViewModel = (BtMusicViewModel) new ViewModelProvider(getActivity()).get(BtMusicViewModel.class);
        this.mBtMusicViewModel = btMusicViewModel;
        btMusicViewModel.getBtMusicState().observe(getViewLifecycleOwner(), new Observer() { // from class: com.chery.media.view.fragment.-$$Lambda$MediaMainFragment$xuGlEAXkmiLR5uhi0n3_VMdxxZI
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.updateBtMusicState(((Boolean) obj).booleanValue());
            }
        });
        this.mBtMusicViewModel.getConnectedDevice().observe(getViewLifecycleOwner(), new Observer() { // from class: com.chery.media.view.fragment.-$$Lambda$MediaMainFragment$-lHN6TrkMo8kcOg9S27Ll7C0bxc
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.updateBtMusicDeviceName((String) obj);
            }
        });
        this.mBtMusicViewModel.getPlaybackState().observe(getViewLifecycleOwner(), new Observer() { // from class: com.chery.media.view.fragment.-$$Lambda$MediaMainFragment$D4YEcNT18cNKtT2p2zpDr2MM9uI
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.updateBtPlaybackState(((Boolean) obj).booleanValue());
            }
        });
        this.mBtMusicViewModel.getBtMusicInfo().observe(getViewLifecycleOwner(), new Observer<BtMusicBusiness.BtMusicInfo>() { // from class: com.chery.media.view.fragment.MediaMainFragment.9
            @Override // androidx.lifecycle.Observer
            public void onChanged(BtMusicBusiness.BtMusicInfo btMusicInfo) {
                if (MediaMainFragment.this.mediaViewModel.getCurrentAudioSource().getValue().intValue() == 5) {
                    MediaMainFragment.this.updateCurrentPlayingIconVisible();
                }
            }
        });
        RadioViewModel radioViewModel = (RadioViewModel) new ViewModelProvider(getActivity()).get(RadioViewModel.class);
        this.radioViewModel = radioViewModel;
        radioViewModel.getPlayingState().observe(getViewLifecycleOwner(), new Observer<Boolean>() { // from class: com.chery.media.view.fragment.MediaMainFragment.10
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                MediaMainFragment.this.updateRadioPlaybackState();
                if (MediaMainFragment.this.mediaViewModel.getCurrentAudioSource().getValue().intValue() == 1 || MediaMainFragment.this.mediaViewModel.getCurrentAudioSource().getValue().intValue() == 2) {
                    MediaMainFragment.this.updateCurrentPlayingIconAnim();
                }
            }
        });
        DabViewModel dabViewModel = (DabViewModel) new ViewModelProvider(getActivity()).get(DabViewModel.class);
        this.dabViewModel = dabViewModel;
        dabViewModel.getPlayingState().observe(getViewLifecycleOwner(), new Observer<Boolean>() { // from class: com.chery.media.view.fragment.MediaMainFragment.11
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                MediaMainFragment.this.updateRadioPlaybackState();
                if (MediaMainFragment.this.mediaViewModel.getCurrentAudioSource().getValue().intValue() == 3) {
                    MediaMainFragment.this.updateCurrentPlayingIconAnim();
                }
            }
        });
    }

    private void initView() {
        PFLog.m25d(TAG, "initView");
        this.binding.ivRadio.setEnabled(true);
        this.binding.ivRadio.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.MediaMainFragment.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaActivity mediaActivity = (MediaActivity) MediaMainFragment.this.getActivity();
                if (MediaMainFragment.this.mediaViewModel.getCurrentAudioSource().getValue().intValue() == 3 || MediaBusiness.getInstance().isDabLastPlayed()) {
                    mediaActivity.gotoFragment(new DabPlayerFragment());
                } else {
                    mediaActivity.gotoFragment(RadioPlayerFragment.newInstance(null, null));
                }
            }
        });
        this.binding.ivRadioPlaypause.setEnabled(true);
        updateRadioPlaybackState();
        this.binding.ivRadioPlaypause.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.MediaMainFragment.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MediaMainFragment.this.mediaViewModel.getCurrentAudioSource().getValue().intValue() == 1 || MediaMainFragment.this.mediaViewModel.getCurrentAudioSource().getValue().intValue() == 2 || MediaMainFragment.this.mediaViewModel.getCurrentAudioSource().getValue().intValue() == 3) {
                    if (MediaMainFragment.this.mediaViewModel.getCurrentAudioSource().getValue().intValue() != 3) {
                        MediaMainFragment.this.radioViewModel.playPause();
                        return;
                    } else {
                        MediaMainFragment.this.dabViewModel.playPause();
                        return;
                    }
                }
                if (MediaBusiness.getInstance().isDabLastPlayed()) {
                    MediaMainFragment.this.dabViewModel.requestAudioFocus();
                } else {
                    MediaMainFragment.this.radioViewModel.requestAudioFocus();
                }
            }
        });
        this.binding.ivBtMusic.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.MediaMainFragment.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Boolean value = MediaMainFragment.this.mBtMusicViewModel.getBtMusicState().getValue();
                if (value != null && value.booleanValue()) {
                    ((MediaActivity) MediaMainFragment.this.getActivity()).gotoFragment(BtMusicPlayerFragment.newInstance(null, null));
                }
            }
        });
        this.binding.tvBtConnect.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.MediaMainFragment.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new PageManager(MediaMainFragment.this.getContext()).openPage(PackageConstants.Settings.PACKAGE_NAME, PackageConstants.Settings.SYSTEM_ACTIVITY_NAME, PageConstants.SystemSettings.ACTION_OPEN, PageConstants.SystemSettings.PAGE_ID_KEY, "1");
            }
        });
        this.binding.ivBtMusicPlaypause.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.MediaMainFragment.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaMainFragment.this.mBtMusicViewModel.playPause();
            }
        });
        updateUsbMusicIcon(0);
        updateUsbMusicCount(0);
        int r1 = Settings.System.getInt(getContext().getContentResolver(), "com.citos.setting.theme.mode", 2);
        if (r1 == 0) {
            this.binding.tvUsb1MusicCount.setVisibility(0);
            this.binding.tvUsb1MusicCountSuffix.setVisibility(8);
        } else {
            this.binding.tvUsb1MusicCount.setVisibility(8);
            this.binding.tvUsb1MusicCountSuffix.setVisibility(0);
        }
        this.binding.ivUsb1Music.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.MediaMainFragment.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MediaMainFragment.this.usbScannerViewModel.isMounted(0)) {
                    if (MediaMainFragment.this.usbScannerViewModel.getUsbDeviceInfo(0).musicsCount == 0) {
                        new Dialog_SingleText(MediaMainFragment.this.getContext()).showText(MediaMainFragment.this.getString(C0632R.string.media_menu_no_usb_musics), PathInterpolatorCompat.MAX_NUM_POINTS);
                        return;
                    } else {
                        ((MediaActivity) MediaMainFragment.this.getActivity()).gotoFragment(UsbMusicListFragment.newInstance(0));
                        return;
                    }
                }
                new Dialog_SingleText(MediaMainFragment.this.getContext()).showText(MediaMainFragment.this.getString(C0632R.string.media_menu_no_usb_device), PathInterpolatorCompat.MAX_NUM_POINTS);
            }
        });
        updateLocalMusicIcon();
        updateLocalMusicCount();
        if (r1 == 0) {
            this.binding.tvLocalMusicCount.setVisibility(0);
            this.binding.tvLocalMusicCountSuffix.setVisibility(8);
        } else {
            this.binding.tvLocalMusicCount.setVisibility(8);
            this.binding.tvLocalMusicCountSuffix.setVisibility(0);
        }
        this.binding.ivLocalMusic.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.MediaMainFragment.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MediaMainFragment.this.localMusicViewModel.getLocalMusics().getValue().isEmpty()) {
                    new Dialog_SingleText(MediaMainFragment.this.getContext()).showText(MediaMainFragment.this.getString(C0632R.string.media_menu_no_local_musics), PathInterpolatorCompat.MAX_NUM_POINTS);
                } else {
                    ((MediaActivity) MediaMainFragment.this.getActivity()).gotoFragment(LocalMusicListFragment.newInstance(null, null));
                }
            }
        });
        updateCurrentPlayingIconVisible();
        updateCurrentPlayingIconAnim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUsbMusicIcon(int r2) {
        if (r2 != 0) {
            return;
        }
        boolean z = this.usbScannerViewModel.getUsbDeviceInfo(r2).musicsCount > 0;
        this.binding.ivUsb1Music.setSelected(z);
        this.binding.tvUsb1MusicTitle.setEnabled(z);
        this.binding.tvUsb1MusicCount.setEnabled(z);
        this.binding.tvUsb1MusicCountSuffix.setEnabled(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUsbMusicCount(int r4) {
        String str = String.format("(%d)", Integer.valueOf(this.usbScannerViewModel.getUsbDeviceInfo(r4).musicsCount));
        if (r4 != 0) {
            return;
        }
        this.binding.tvUsb1MusicCount.setText(str);
        this.binding.tvUsb1MusicCountSuffix.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLocalMusicIcon() {
        boolean z = !this.localMusicViewModel.getLocalMusics().getValue().isEmpty();
        this.binding.ivLocalMusic.setSelected(z);
        this.binding.tvLocalMusicTitle.setEnabled(z);
        this.binding.tvLocalMusicCount.setEnabled(z);
        this.binding.tvLocalMusicCountSuffix.setEnabled(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLocalMusicCount() {
        String str = String.format("(%d)", Integer.valueOf(this.localMusicViewModel.getLocalMusics().getValue().size()));
        this.binding.tvLocalMusicCount.setText(str);
        this.binding.tvLocalMusicCountSuffix.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBtMusicState(boolean z) {
        PFLog.m29i(TAG, "updateBtMusicState " + z);
        this.binding.ivBtMusic.setEnabled(z);
        this.binding.tvBtMusicTitle.setEnabled(z);
        if (!z) {
            this.binding.tvBtConnect.setVisibility(0);
            this.binding.ivBtMusicPlaypause.setVisibility(8);
            this.binding.tvBtDeviceName.setVisibility(8);
        } else {
            this.binding.tvBtConnect.setVisibility(8);
            this.binding.ivBtMusicPlaypause.setVisibility(0);
            this.binding.tvBtDeviceName.setVisibility(0);
        }
        updateCurrentPlayingIconVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBtMusicDeviceName(String str) {
        this.binding.tvBtDeviceName.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBtPlaybackState(boolean z) {
        PFLog.m29i(TAG, "updateBtPlaybackState " + z);
        this.binding.ivBtMusicPlaypause.setImageResource(z ? C0632R.drawable.media_menu_btn_play : C0632R.drawable.media_menu_btn_pause);
        if (this.mediaViewModel.getCurrentAudioSource().getValue().intValue() == 5) {
            updateCurrentPlayingIconAnim();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRadioPlaybackState() {
        if (this.radioViewModel.getPlayingState().getValue() != null && this.dabViewModel.getPlayingState().getValue() != null) {
            if (this.radioViewModel.getPlayingState().getValue().booleanValue() || this.dabViewModel.getPlayingState().getValue().booleanValue()) {
                this.binding.ivRadioPlaypause.setImageResource(C0632R.drawable.media_menu_btn_play);
                return;
            } else {
                this.binding.ivRadioPlaypause.setImageResource(C0632R.drawable.media_menu_btn_pause);
                return;
            }
        }
        this.binding.ivRadioPlaypause.setImageResource(C0632R.drawable.media_menu_btn_pause);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlayingIconVisible() {
        int r0 = this.mediaViewModel.getCurrentAudioSource().getValue().intValue();
        if (r0 == 1 || r0 == 2 || r0 == 3) {
            this.binding.anRadioPlayIcon.setVisibility(0);
            this.binding.anBtMusicPlayIcon.setVisibility(8);
            this.binding.anUsb1MusicPlayIcon.setVisibility(8);
            this.binding.anLocalMusicPlayIcon.setVisibility(8);
            return;
        }
        if (r0 == 5) {
            this.binding.anRadioPlayIcon.setVisibility(8);
            if (this.mBtMusicViewModel.getBtMusicState().getValue().booleanValue() && this.mBtMusicViewModel.getBtMusicInfo().getValue() != null) {
                this.binding.anBtMusicPlayIcon.setVisibility(0);
            } else {
                this.binding.anBtMusicPlayIcon.setVisibility(8);
            }
            this.binding.anUsb1MusicPlayIcon.setVisibility(8);
            this.binding.anLocalMusicPlayIcon.setVisibility(8);
            return;
        }
        if (r0 == 6) {
            this.binding.anRadioPlayIcon.setVisibility(8);
            this.binding.anBtMusicPlayIcon.setVisibility(8);
            if (this.usbMusicViewModel.getCurrentPlaying(MediaDef.getUsbMusicTypeOfAudioSource(r0)) != null) {
                this.binding.anUsb1MusicPlayIcon.setVisibility(0);
            } else {
                this.binding.anUsb1MusicPlayIcon.setVisibility(8);
            }
            this.binding.anLocalMusicPlayIcon.setVisibility(8);
            return;
        }
        if (r0 == 12) {
            this.binding.anRadioPlayIcon.setVisibility(8);
            this.binding.anBtMusicPlayIcon.setVisibility(8);
            this.binding.anUsb1MusicPlayIcon.setVisibility(8);
            if (this.localMusicViewModel.getCurrentPlaying().getValue() != null) {
                this.binding.anLocalMusicPlayIcon.setVisibility(0);
                return;
            } else {
                this.binding.anLocalMusicPlayIcon.setVisibility(8);
                return;
            }
        }
        this.binding.anRadioPlayIcon.setVisibility(8);
        this.binding.anBtMusicPlayIcon.setVisibility(8);
        this.binding.anUsb1MusicPlayIcon.setVisibility(8);
        this.binding.anLocalMusicPlayIcon.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlayingIconAnim() {
        int r0 = this.mediaViewModel.getCurrentAudioSource().getValue().intValue();
        if (r0 == 1 || r0 == 2) {
            if (this.radioViewModel.getPlayingState().getValue().booleanValue()) {
                this.binding.anRadioPlayIcon.startAnim();
                return;
            } else {
                this.binding.anRadioPlayIcon.pauseAnim();
                return;
            }
        }
        if (r0 == 3) {
            if (this.dabViewModel.getPlayingState().getValue() != null) {
                if (this.dabViewModel.getPlayingState().getValue().booleanValue()) {
                    this.binding.anRadioPlayIcon.startAnim();
                    return;
                } else {
                    this.binding.anRadioPlayIcon.pauseAnim();
                    return;
                }
            }
            this.binding.anRadioPlayIcon.pauseAnim();
            return;
        }
        if (r0 == 5) {
            if (this.mBtMusicViewModel.getPlaybackState().getValue().booleanValue()) {
                this.binding.anBtMusicPlayIcon.startAnim();
                return;
            } else {
                this.binding.anBtMusicPlayIcon.pauseAnim();
                return;
            }
        }
        if (r0 == 6) {
            if (this.usbMusicViewModel.isPlaying(MediaDef.getUsbMusicTypeOfAudioSource(r0))) {
                this.binding.anUsb1MusicPlayIcon.startAnim();
                return;
            } else {
                this.binding.anUsb1MusicPlayIcon.pauseAnim();
                return;
            }
        }
        if (r0 == 12) {
            if (this.localMusicViewModel.isPlaying().getValue().booleanValue()) {
                this.binding.anLocalMusicPlayIcon.startAnim();
                return;
            } else {
                this.binding.anLocalMusicPlayIcon.pauseAnim();
                return;
            }
        }
        this.binding.anRadioPlayIcon.pauseAnim();
        this.binding.anBtMusicPlayIcon.pauseAnim();
        this.binding.anUsb1MusicPlayIcon.pauseAnim();
        this.binding.anLocalMusicPlayIcon.pauseAnim();
    }
}
