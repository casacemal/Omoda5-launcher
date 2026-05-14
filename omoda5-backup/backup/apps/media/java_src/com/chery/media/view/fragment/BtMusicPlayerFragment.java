package com.chery.media.view.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.common.PackageConstants;
import com.chery.common.PageConstants;
import com.chery.common.PageManager;
import com.chery.media.C0632R;
import com.chery.media.databinding.FragmentBtMusicPlayerBinding;
import com.chery.media.model.business.BtMusicBusiness;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.util.Utils;
import com.chery.media.view.activity.MediaActivity;
import com.chery.media.viewmodel.BtMusicViewModel;

/* loaded from: classes.dex */
public class BtMusicPlayerFragment extends FragmentBase {
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private static final String TAG = CarLog.concatTag(CarLog.TAG_BT_MUSIC, BtMusicPlayerFragment.class);
    private FragmentBtMusicPlayerBinding mBinding;
    private BtMusicViewModel mBtMusicViewModel;
    private String mParam1;
    private String mParam2;

    public static BtMusicPlayerFragment newInstance(String str, String str2) {
        BtMusicPlayerFragment btMusicPlayerFragment = new BtMusicPlayerFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        bundle.putString(ARG_PARAM2, str2);
        btMusicPlayerFragment.setArguments(bundle);
        return btMusicPlayerFragment;
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
            this.mBinding = FragmentBtMusicPlayerBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_bt_music_player_right, viewGroup, false));
        } else {
            this.mBinding = FragmentBtMusicPlayerBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_bt_music_player, viewGroup, false));
        }
        return this.mBinding.getRoot();
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
            this.mBtMusicViewModel.requestBtMusicAudioFocus();
        }
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.mBinding.inPlayerControl.anAlbumCover.cancelAnim();
    }

    private void initViewModel() {
        PFLog.m25d(TAG, "initViewModel");
        MediaActivity mediaActivity = (MediaActivity) getActivity();
        if (mediaActivity != null) {
            BtMusicViewModel btMusicViewModel = (BtMusicViewModel) new ViewModelProvider(mediaActivity).get(BtMusicViewModel.class);
            this.mBtMusicViewModel = btMusicViewModel;
            btMusicViewModel.getBtMusicState().observe(getViewLifecycleOwner(), new Observer() { // from class: com.chery.media.view.fragment.-$$Lambda$BtMusicPlayerFragment$mkylSO7n8BWj3v9zlMQ_wDgZs1o
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    this.f$0.updateBtMusicState(((Boolean) obj).booleanValue());
                }
            });
            this.mBtMusicViewModel.getBtMusicInfo().observe(getViewLifecycleOwner(), new Observer() { // from class: com.chery.media.view.fragment.-$$Lambda$BtMusicPlayerFragment$oFWy_iZaiH_RyOAeu8FMYuqPrLs
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    this.f$0.updateMusicInfo((BtMusicBusiness.BtMusicInfo) obj);
                }
            });
            this.mBtMusicViewModel.getBtMusicPosition().observe(getViewLifecycleOwner(), new Observer() { // from class: com.chery.media.view.fragment.-$$Lambda$BtMusicPlayerFragment$XePU3_4Uo_0CHcVDWG2bm-iUv5M
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    this.f$0.updateMusicPosition(((Integer) obj).intValue());
                }
            });
            this.mBtMusicViewModel.getPlaybackState().observe(getViewLifecycleOwner(), new Observer() { // from class: com.chery.media.view.fragment.-$$Lambda$BtMusicPlayerFragment$ZpyS84-Ah-XrYbGYdtHq82woSsc
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    this.f$0.updatePlaybackState(((Boolean) obj).booleanValue());
                }
            });
            this.mBtMusicViewModel.getConnectedDevice().observe(getViewLifecycleOwner(), new Observer() { // from class: com.chery.media.view.fragment.-$$Lambda$BtMusicPlayerFragment$DlNxjyIXrvbvlnw_LkerYBQZJuE
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    this.f$0.updateDeviceName((String) obj);
                }
            });
            return;
        }
        PFLog.m27e(TAG, "initViewModel: MediaActivity NULL");
    }

    private void initView() {
        PFLog.m29i(TAG, "initView");
        this.mBinding.inPlayerTimeBar.sbTimeBar.setEnabled(false);
        this.mBinding.inPlayerControl.anAlbumCover.startAnim();
        this.mBinding.tvMusicTitle.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        this.mBinding.tvMusicTitle.setSingleLine();
        this.mBinding.tvMusicTitle.setSelected(true);
        this.mBinding.tvMusicTitle.setMarqueeRepeatLimit(-1);
        this.mBinding.tvMusicArtist.setEllipsize(TextUtils.TruncateAt.END);
        this.mBinding.tvMusicArtist.setSingleLine();
        this.mBinding.inPlayerControl.ivPlaypause.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.-$$Lambda$BtMusicPlayerFragment$UjWT-ME_ChP-O87FCGsLRFklWEQ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initView$0$BtMusicPlayerFragment(view);
            }
        });
        this.mBinding.inPlayerControl.ivLast.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.-$$Lambda$BtMusicPlayerFragment$u5TcgoOOTKV5haSXBjZoILCDnso
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initView$1$BtMusicPlayerFragment(view);
            }
        });
        this.mBinding.inPlayerControl.ivNext.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.-$$Lambda$BtMusicPlayerFragment$I1eFsVxd0HcJxW7iM5-1i9SSpHs
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initView$2$BtMusicPlayerFragment(view);
            }
        });
        this.mBinding.ivSoundEffects.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.-$$Lambda$BtMusicPlayerFragment$6neQ5yIAXhLiEU9H5Xgb8aOTiqQ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initView$3$BtMusicPlayerFragment(view);
            }
        });
        this.mBinding.ivDeviceNameBg.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.-$$Lambda$BtMusicPlayerFragment$mvBJJiFXhabDm1Cvo9wsGbbeHgc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initView$4$BtMusicPlayerFragment(view);
            }
        });
        this.mBinding.ivRetract.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.-$$Lambda$BtMusicPlayerFragment$BrmgDwE8JEhIqprfdoeD-uwzesM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initView$5$BtMusicPlayerFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$BtMusicPlayerFragment(View view) {
        this.mBtMusicViewModel.playPause();
    }

    public /* synthetic */ void lambda$initView$1$BtMusicPlayerFragment(View view) {
        this.mBtMusicViewModel.previous();
    }

    public /* synthetic */ void lambda$initView$2$BtMusicPlayerFragment(View view) {
        this.mBtMusicViewModel.next();
    }

    public /* synthetic */ void lambda$initView$3$BtMusicPlayerFragment(View view) {
        if (getContext() == null) {
            return;
        }
        new PageManager(getContext()).openPage(PackageConstants.Settings.PACKAGE_NAME, PackageConstants.Settings.SYSTEM_ACTIVITY_NAME, PageConstants.SystemSettings.ACTION_OPEN, new String[]{PageConstants.SystemSettings.PAGE_ID_KEY, PageConstants.SystemSettings.IS_FINISH_SELF}, new String[]{"8", "1"});
    }

    public /* synthetic */ void lambda$initView$4$BtMusicPlayerFragment(View view) {
        if (getContext() == null) {
            return;
        }
        new PageManager(getContext()).openPage(PackageConstants.Settings.PACKAGE_NAME, PackageConstants.Settings.SYSTEM_ACTIVITY_NAME, PageConstants.SystemSettings.ACTION_OPEN, PageConstants.SystemSettings.PAGE_ID_KEY, "1");
    }

    public /* synthetic */ void lambda$initView$5$BtMusicPlayerFragment(View view) {
        MediaActivity mediaActivity = (MediaActivity) getActivity();
        if (mediaActivity != null) {
            mediaActivity.replaceAll(MediaMainFragment.newInstance(null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBtMusicState(boolean z) {
        PFLog.m29i(TAG, "updateBtMusicState " + z);
        if (z) {
            return;
        }
        MediaActivity mediaActivity = (MediaActivity) getActivity();
        if (mediaActivity != null && mediaActivity.getCurrentFragment() == this) {
            mediaActivity.replaceAll(MediaMainFragment.newInstance(null, null));
        } else {
            PFLog.m27e(TAG, "updateBtMusicState: MediaActivity NULL");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDeviceName(String str) {
        this.mBinding.tvDeviceName.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMusicInfo(BtMusicBusiness.BtMusicInfo btMusicInfo) {
        PFLog.m29i(TAG, "updateMusicInfo");
        if (btMusicInfo == null) {
            return;
        }
        if (!this.mBinding.tvMusicTitle.getText().toString().equals(btMusicInfo.title)) {
            this.mBinding.tvMusicTitle.setText(btMusicInfo.title);
        }
        if (TextUtils.isEmpty(btMusicInfo.artist) || TextUtils.equals(btMusicInfo.artist, "<unknown>")) {
            this.mBinding.tvMusicArtist.setText(requireContext().getString(C0632R.string.media_unknown));
        } else {
            this.mBinding.tvMusicArtist.setText(btMusicInfo.artist);
        }
        this.mBinding.inPlayerTimeBar.tvMusicDuration.setText(Utils.getTimeString(btMusicInfo.duration));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMusicPosition(int r6) {
        BtMusicBusiness.BtMusicInfo value = this.mBtMusicViewModel.getBtMusicInfo().getValue();
        if (r6 > 0) {
            this.mBinding.inPlayerTimeBar.tvMusicTime.setText(Utils.getTimeString(r6));
            if (value != null && value.duration > 0) {
                this.mBinding.inPlayerTimeBar.sbTimeBar.setProgress((r6 * 1000) / value.duration);
                return;
            } else {
                this.mBinding.inPlayerTimeBar.sbTimeBar.setProgress(0);
                return;
            }
        }
        this.mBinding.inPlayerTimeBar.tvMusicTime.setText(Utils.getTimeString(0L));
        this.mBinding.inPlayerTimeBar.sbTimeBar.setProgress(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlaybackState(boolean z) {
        PFLog.m29i(TAG, "updatePlaybackState " + z);
        this.mBinding.inPlayerControl.ivPlaypause.setImageResource(z ? C0632R.drawable.media_player_btn_play : C0632R.drawable.media_player_btn_pause);
        if (z) {
            this.mBinding.inPlayerControl.anAlbumCover.startAnim();
        } else {
            this.mBinding.inPlayerControl.anAlbumCover.pauseAnim();
        }
    }

    private void requestBtMusicAudioFocus(boolean z) {
        PFLog.m29i(TAG, "requestBtMusicAudioFocus   isPlay : " + z);
        if (z && ((MediaActivity) getActivity()).getCurrentFragment() == this) {
            this.mBtMusicViewModel.requestBtMusicAudioFocus();
        }
    }
}
