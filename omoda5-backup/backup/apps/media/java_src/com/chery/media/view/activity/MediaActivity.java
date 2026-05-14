package com.chery.media.view.activity;

import android.animation.ObjectAnimator;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.provider.Settings;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import androidx.core.graphics.drawable.RoundedBitmapDrawable;
import androidx.core.graphics.drawable.RoundedBitmapDrawableFactory;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.common.PageConstants;
import com.chery.media.C0632R;
import com.chery.media.databinding.ActivityMediaBinding;
import com.chery.media.model.business.BtMusicBusiness;
import com.chery.media.model.business.DabInfo;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.RadioBusiness;
import com.chery.media.model.business.RadioDef;
import com.chery.media.model.business.ThumbnailClient;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.view.fragment.BtMusicPlayerFragment;
import com.chery.media.view.fragment.DabPlayerFragment;
import com.chery.media.view.fragment.LocalMusicListFragment;
import com.chery.media.view.fragment.LocalMusicPlayerFragment;
import com.chery.media.view.fragment.MediaMainFragment;
import com.chery.media.view.fragment.RadioPlayerFragment;
import com.chery.media.view.fragment.UsbMusicListFragment;
import com.chery.media.view.fragment.UsbMusicPlayerFragment;
import com.chery.media.viewmodel.BtMusicViewModel;
import com.chery.media.viewmodel.DabViewModel;
import com.chery.media.viewmodel.LocalMusicViewModel;
import com.chery.media.viewmodel.MediaViewModel;
import com.chery.media.viewmodel.RadioViewModel;
import com.chery.media.viewmodel.UsbMusicViewModel;
import com.chery.media.viewmodel.UsbScannerViewModel;
import java.util.List;

/* loaded from: classes.dex */
public class MediaActivity extends BaseActivity {
    private static final String TAG = CarLog.concatTag("MEDIA", MediaActivity.class);
    private static MediaActivity mediaActivity;
    private ActivityMediaBinding binding;
    private BtMusicViewModel btMusicViewModel;
    private DabViewModel dabViewModel;
    private LocalMusicViewModel localMusicViewModel;
    private MediaViewModel mediaViewModel;
    private RadioViewModel radioViewModel;
    private ObjectAnimator topCoverAni;
    private UsbMusicViewModel usbMusicViewModel;
    private UsbScannerViewModel usbScannerViewModel;
    private boolean hasIntentPage = false;
    private int currentTopSource = 0;

    @Override // com.chery.media.view.activity.BaseActivity
    protected int getContainerId() {
        return C0632R.id.media_fragment_container;
    }

    public static MediaActivity getInstance() {
        return mediaActivity;
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        mediaActivity = this;
        if (CarAdapterUse.getCarConfigInfoClient().isRudderRight()) {
            this.binding = ActivityMediaBinding.bind(getLayoutInflater().inflate(C0632R.layout.activity_media_right, (ViewGroup) null, false));
        } else {
            this.binding = ActivityMediaBinding.bind(getLayoutInflater().inflate(C0632R.layout.activity_media, (ViewGroup) null, false));
        }
        setContentView(this.binding.getRoot());
        MediaViewModel mediaViewModel = (MediaViewModel) new ViewModelProvider(this).get(MediaViewModel.class);
        this.mediaViewModel = mediaViewModel;
        mediaViewModel.getCurrentAudioSource().observe(this, new Observer<Integer>() { // from class: com.chery.media.view.activity.MediaActivity.1
            @Override // androidx.lifecycle.Observer
            public void onChanged(Integer num) {
                MediaActivity.this.updateCurrentTopSource(num.intValue());
            }
        });
        UsbScannerViewModel usbScannerViewModel = (UsbScannerViewModel) new ViewModelProvider(this).get(UsbScannerViewModel.class);
        this.usbScannerViewModel = usbScannerViewModel;
        usbScannerViewModel.observeUsbMountStatusDatas(this, new Observer<UsbScannerViewModel.UsbMountStatusData>() { // from class: com.chery.media.view.activity.MediaActivity.2
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbScannerViewModel.UsbMountStatusData usbMountStatusData) {
                if (usbMountStatusData.mounted) {
                    return;
                }
                Fragment currentFragment = MediaActivity.this.getCurrentFragment();
                if ((currentFragment instanceof UsbMusicListFragment) && usbMountStatusData.usbType == ((UsbMusicListFragment) currentFragment).getThisUsbType()) {
                    MediaActivity.this.replaceAll(MediaMainFragment.newInstance(null, null));
                }
            }
        });
        UsbMusicViewModel usbMusicViewModel = (UsbMusicViewModel) new ViewModelProvider(this).get(UsbMusicViewModel.class);
        this.usbMusicViewModel = usbMusicViewModel;
        usbMusicViewModel.getCurrentUsbData().observe(this, new Observer<Integer>() { // from class: com.chery.media.view.activity.MediaActivity.3
            @Override // androidx.lifecycle.Observer
            public void onChanged(Integer num) {
                if (num.intValue() == -1 && (MediaActivity.this.getCurrentFragment() instanceof UsbMusicPlayerFragment)) {
                    MediaActivity.this.replaceAll(MediaMainFragment.newInstance(null, null));
                }
            }
        });
        this.usbMusicViewModel.observeCurrentPlayingDatas(this, new Observer<UsbMusicViewModel.CurrentPlayingData>() { // from class: com.chery.media.view.activity.MediaActivity.4
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbMusicViewModel.CurrentPlayingData currentPlayingData) {
                if (MediaDef.getUsbMusicAudioSource(currentPlayingData.usbType) == MediaActivity.this.currentTopSource) {
                    MediaActivity.this.updateTopPlaying();
                    MediaActivity.this.updateTopPlayingVisible();
                }
            }
        });
        this.usbMusicViewModel.observePlayingStateDatas(this, new Observer<UsbMusicViewModel.PlayingStateData>() { // from class: com.chery.media.view.activity.MediaActivity.5
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbMusicViewModel.PlayingStateData playingStateData) {
                if (MediaDef.getUsbMusicAudioSource(playingStateData.usbType) == MediaActivity.this.currentTopSource) {
                    MediaActivity.this.updateTopCoverAnim();
                }
            }
        });
        LocalMusicViewModel localMusicViewModel = (LocalMusicViewModel) new ViewModelProvider(this).get(LocalMusicViewModel.class);
        this.localMusicViewModel = localMusicViewModel;
        localMusicViewModel.getLocalMusics().observe(this, new Observer<List<MediaDef.LocalMusicInfo>>() { // from class: com.chery.media.view.activity.MediaActivity.6
            @Override // androidx.lifecycle.Observer
            public void onChanged(List<MediaDef.LocalMusicInfo> list) {
                if (list == null || list.isEmpty()) {
                    if ((MediaActivity.this.getCurrentFragment() instanceof LocalMusicPlayerFragment) || (MediaActivity.this.getCurrentFragment() instanceof LocalMusicListFragment)) {
                        MediaActivity.this.replaceAll(MediaMainFragment.newInstance(null, null));
                    }
                }
            }
        });
        this.localMusicViewModel.getCurrentPlaying().observe(this, new Observer<MediaDef.LocalMusicInfo>() { // from class: com.chery.media.view.activity.MediaActivity.7
            @Override // androidx.lifecycle.Observer
            public void onChanged(MediaDef.LocalMusicInfo localMusicInfo) {
                if (MediaActivity.this.currentTopSource == 12) {
                    MediaActivity.this.updateTopPlaying();
                    MediaActivity.this.updateTopPlayingVisible();
                }
            }
        });
        this.localMusicViewModel.isPlaying().observe(this, new Observer<Boolean>() { // from class: com.chery.media.view.activity.MediaActivity.8
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                if (MediaActivity.this.currentTopSource == 12) {
                    MediaActivity.this.updateTopCoverAnim();
                }
            }
        });
        RadioViewModel radioViewModel = (RadioViewModel) new ViewModelProvider(this).get(RadioViewModel.class);
        this.radioViewModel = radioViewModel;
        radioViewModel.getCurrentChannel().observe(this, new Observer<RadioDef>() { // from class: com.chery.media.view.activity.MediaActivity.9
            @Override // androidx.lifecycle.Observer
            public void onChanged(RadioDef radioDef) {
                if (MediaActivity.this.currentTopSource == 1 || MediaActivity.this.currentTopSource == 2) {
                    MediaActivity.this.updateTopPlaying();
                }
            }
        });
        this.radioViewModel.getPlayingState().observe(this, new Observer<Boolean>() { // from class: com.chery.media.view.activity.MediaActivity.10
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                if (MediaActivity.this.currentTopSource == 1 || MediaActivity.this.currentTopSource == 2) {
                    MediaActivity.this.updateTopCoverAnim();
                }
            }
        });
        DabViewModel dabViewModel = (DabViewModel) new ViewModelProvider(this).get(DabViewModel.class);
        this.dabViewModel = dabViewModel;
        dabViewModel.getPlayingState().observe(this, new Observer<Boolean>() { // from class: com.chery.media.view.activity.MediaActivity.11
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                if (MediaActivity.this.currentTopSource == 3) {
                    MediaActivity.this.updateTopCoverAnim();
                }
            }
        });
        this.dabViewModel.getCurPlayInfo().observe(this, new Observer<DabInfo>() { // from class: com.chery.media.view.activity.MediaActivity.12
            @Override // androidx.lifecycle.Observer
            public void onChanged(DabInfo dabInfo) {
                if (MediaActivity.this.currentTopSource == 3) {
                    MediaActivity.this.updateTopPlaying();
                }
            }
        });
        BtMusicViewModel btMusicViewModel = (BtMusicViewModel) new ViewModelProvider(this).get(BtMusicViewModel.class);
        this.btMusicViewModel = btMusicViewModel;
        btMusicViewModel.getBtMusicInfo().observe(this, new Observer<BtMusicBusiness.BtMusicInfo>() { // from class: com.chery.media.view.activity.MediaActivity.13
            @Override // androidx.lifecycle.Observer
            public void onChanged(BtMusicBusiness.BtMusicInfo btMusicInfo) {
                if (MediaActivity.this.currentTopSource == 5) {
                    MediaActivity.this.updateTopPlaying();
                    MediaActivity.this.updateTopPlayingVisible();
                }
            }
        });
        this.btMusicViewModel.getBtMusicState().observe(this, new Observer<Boolean>() { // from class: com.chery.media.view.activity.MediaActivity.14
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                if (MediaActivity.this.currentTopSource == 5) {
                    MediaActivity.this.updateTopPlaying();
                    MediaActivity.this.updateTopPlayingVisible();
                }
            }
        });
        this.btMusicViewModel.getPlaybackState().observe(this, new Observer<Boolean>() { // from class: com.chery.media.view.activity.MediaActivity.15
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                if (MediaActivity.this.currentTopSource == 5) {
                    MediaActivity.this.updateTopCoverAnim();
                }
            }
        });
        this.binding.tvTopPlayingTitle.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.activity.MediaActivity.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int r3 = MediaActivity.this.currentTopSource;
                if (r3 == 1 || r3 == 2) {
                    MediaActivity.this.gotoFragment(RadioPlayerFragment.newInstance(null, null));
                    return;
                }
                if (r3 == 3) {
                    MediaActivity.this.gotoFragment(new DabPlayerFragment());
                    return;
                }
                if (r3 == 5) {
                    MediaActivity.this.gotoFragment(BtMusicPlayerFragment.newInstance(null, null));
                } else if (r3 == 6) {
                    MediaActivity.this.gotoFragment(UsbMusicPlayerFragment.newInstance(null, null));
                } else {
                    if (r3 != 12) {
                        return;
                    }
                    MediaActivity.this.gotoFragment(LocalMusicPlayerFragment.newInstance(null, null));
                }
            }
        });
        updateCurrentTopSource(this.mediaViewModel.getCurrentAudioSource().getValue().intValue());
        updateTopPlaying();
        updateTopPlayingVisible();
        updateTopCoverAnim();
        if (getCurrentFragment() == null) {
            replaceAll(MediaMainFragment.newInstance(null, null));
        }
        handleIntent(getIntent());
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        handleIntent(intent);
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.hasIntentPage = false;
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        mediaActivity = null;
        PFLog.m25d(TAG, "post page PAGE_NONE");
        Settings.System.putString(getContentResolver(), PageConstants.Media.MEDIA_PAGE_ID_KEY, "PAGE_NONE");
        stopTopCoverAnim();
        this.binding.tvTopPlayingTitle.setText((CharSequence) null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handleIntent(android.content.Intent r6) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.view.activity.MediaActivity.handleIntent(android.content.Intent):void");
    }

    @Override // com.chery.media.view.activity.BaseActivity
    protected void onCurrentFragmentChanged(Fragment fragment, String str, Fragment fragment2, String str2) {
        String str3;
        super.onCurrentFragmentChanged(fragment, str, fragment2, str2);
        if (fragment2 instanceof MediaMainFragment) {
            str3 = PageConstants.Media.MediaPageId.PAGE_MENU;
        } else if (fragment2 instanceof RadioPlayerFragment) {
            str3 = PageConstants.Media.MediaPageId.PAGE_RADIO_PLAYER;
        } else if (fragment2 instanceof BtMusicPlayerFragment) {
            str3 = PageConstants.Media.MediaPageId.PAGE_BT_MUSIC_PLAYER;
        } else if (fragment2 instanceof UsbMusicListFragment) {
            str3 = PageConstants.Media.MediaPageId.PAGE_USB_MUSIC_LIST;
        } else if (fragment2 instanceof UsbMusicPlayerFragment) {
            str3 = PageConstants.Media.MediaPageId.PAGE_USB_MUSIC_PLAYER;
        } else if (fragment2 instanceof LocalMusicListFragment) {
            str3 = PageConstants.Media.MediaPageId.PAGE_LOCAL_MUSIC_LIST;
        } else {
            str3 = fragment2 instanceof LocalMusicPlayerFragment ? PageConstants.Media.MediaPageId.PAGE_LOCAL_MUSIC_PLAYER : "PAGE_NONE";
        }
        PFLog.m25d(TAG, "post page " + str3);
        Settings.System.putString(getContentResolver(), PageConstants.Media.MEDIA_PAGE_ID_KEY, str3);
        updateTopPlayingVisible();
    }

    public void updateCurrentTopSource(int r3) {
        int r0 = this.currentTopSource;
        if (r3 != 1 && r3 != 2 && r3 != 3 && r3 != 5 && r3 != 6 && r3 != 12) {
            r3 = r0;
        }
        if (r3 == this.currentTopSource) {
            return;
        }
        this.currentTopSource = r3;
        updateTopPlaying();
        updateTopPlayingVisible();
        updateTopCoverAnim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTopPlaying() {
        int r0 = this.currentTopSource;
        if (r0 == 1 || r0 == 2) {
            updateTopInfoOfRadio();
            return;
        }
        if (r0 == 3) {
            updateTopInfoOfDab();
            return;
        }
        if (r0 == 5) {
            updateTopInfoOfBtMusic();
        } else if (r0 == 6) {
            updateTopInfoOfUsbMusic(MediaDef.getUsbMusicTypeOfAudioSource(r0));
        } else {
            if (r0 != 12) {
                return;
            }
            updateTopInfoOfLocalMusic();
        }
    }

    private void updateTopInfoOfRadio() {
        String str;
        RadioDef value = this.radioViewModel.getCurrentChannel().getValue();
        if (value != null) {
            if (value.frequencyKhz > RadioBusiness.FREQ_DIVIDE_BAND.intValue()) {
                if (this.radioViewModel.getArea().getValue().intValue() == 1) {
                    str = "FM " + (value.frequencyKhz / 1000) + "." + String.format("%1$02d", Integer.valueOf((value.frequencyKhz % 1000) / 10));
                } else {
                    str = "FM " + (value.frequencyKhz / 1000) + "." + ((value.frequencyKhz % 1000) / 100);
                }
                this.binding.tvTopPlayingTitle.setText(str);
            } else {
                this.binding.tvTopPlayingTitle.setText("AM " + value.frequencyKhz);
            }
        } else {
            this.binding.tvTopPlayingTitle.setText("");
        }
        this.binding.ivTopPlayingCover.setImageResource(C0632R.drawable.media_menu_top_player_default_music_cover);
    }

    private void updateTopInfoOfDab() {
        String str;
        DabInfo value = this.dabViewModel.getCurPlayInfo().getValue();
        if (value != null) {
            str = "DAB " + value.serviceName;
        } else {
            str = "";
        }
        this.binding.tvTopPlayingTitle.setText(str);
        this.binding.ivTopPlayingCover.setImageResource(C0632R.drawable.media_menu_top_player_default_music_cover);
    }

    private void updateTopInfoOfBtMusic() {
        this.binding.ivTopPlayingCover.setImageResource(C0632R.drawable.media_menu_top_player_default_music_cover);
        if (this.btMusicViewModel.getBtMusicState().getValue() == null || !this.btMusicViewModel.getBtMusicState().getValue().booleanValue()) {
            this.binding.tvTopPlayingTitle.setText("");
            return;
        }
        BtMusicBusiness.BtMusicInfo value = this.btMusicViewModel.getBtMusicInfo().getValue();
        if (value != null) {
            this.binding.tvTopPlayingTitle.setText(value.title);
        } else {
            this.binding.tvTopPlayingTitle.setText("");
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.chery.media.view.activity.MediaActivity$17] */
    private void updateTopInfoOfUsbMusic(int r4) {
        final MediaDef.UsbMusicInfo currentPlaying = this.usbMusicViewModel.getCurrentPlaying(r4);
        if (currentPlaying != null) {
            this.binding.tvTopPlayingTitle.setText(currentPlaying.title);
            this.binding.ivTopPlayingCover.setImageResource(C0632R.drawable.media_menu_top_player_default_music_cover);
            new Thread() { // from class: com.chery.media.view.activity.MediaActivity.17
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    Bitmap bitmapCreateAudioThumbnail = ThumbnailClient.getInstance().createAudioThumbnail(currentPlaying.path);
                    if (bitmapCreateAudioThumbnail != null) {
                        RoundedBitmapDrawable roundedBitmapDrawableCreate = RoundedBitmapDrawableFactory.create(MediaActivity.this.getResources(), Bitmap.createScaledBitmap(bitmapCreateAudioThumbnail, 60, 60, true));
                        roundedBitmapDrawableCreate.setCircular(true);
                        roundedBitmapDrawableCreate.setAntiAlias(true);
                        MediaActivity.this.binding.ivTopPlayingCover.setImageDrawable(roundedBitmapDrawableCreate);
                    }
                }
            }.start();
        } else {
            this.binding.tvTopPlayingTitle.setText("");
            this.binding.ivTopPlayingCover.setImageResource(C0632R.drawable.media_menu_top_player_default_music_cover);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.chery.media.view.activity.MediaActivity$18] */
    private void updateTopInfoOfLocalMusic() {
        final MediaDef.LocalMusicInfo value = this.localMusicViewModel.getCurrentPlaying().getValue();
        if (value != null) {
            this.binding.tvTopPlayingTitle.setText(value.originalMusicInfo.title);
            this.binding.ivTopPlayingCover.setImageResource(C0632R.drawable.media_menu_top_player_default_music_cover);
            new Thread() { // from class: com.chery.media.view.activity.MediaActivity.18
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    Bitmap bitmapCreateAudioThumbnail = ThumbnailClient.getInstance().createAudioThumbnail(value.path);
                    if (bitmapCreateAudioThumbnail != null) {
                        RoundedBitmapDrawable roundedBitmapDrawableCreate = RoundedBitmapDrawableFactory.create(MediaActivity.this.getResources(), Bitmap.createScaledBitmap(bitmapCreateAudioThumbnail, 60, 60, true));
                        roundedBitmapDrawableCreate.setCircular(true);
                        roundedBitmapDrawableCreate.setAntiAlias(true);
                        MediaActivity.this.binding.ivTopPlayingCover.setImageDrawable(roundedBitmapDrawableCreate);
                    }
                }
            }.start();
        } else {
            this.binding.tvTopPlayingTitle.setText("");
            this.binding.ivTopPlayingCover.setImageResource(C0632R.drawable.media_menu_top_player_default_music_cover);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTopPlayingVisible() {
        int r0;
        Fragment currentFragment = getCurrentFragment();
        if (currentFragment == null) {
            return;
        }
        boolean z = true;
        if ((!(currentFragment instanceof MediaMainFragment) && !(currentFragment instanceof UsbMusicListFragment) && !(currentFragment instanceof LocalMusicListFragment)) || ((r0 = this.currentTopSource) != 1 && r0 != 2 && r0 != 3 && (r0 == 5 ? this.btMusicViewModel.getBtMusicState().getValue() == null || !this.btMusicViewModel.getBtMusicState().getValue().booleanValue() || this.btMusicViewModel.getBtMusicInfo().getValue() == null : r0 == 6 ? this.usbMusicViewModel.getCurrentPlaying(MediaDef.getUsbMusicTypeOfAudioSource(r0)) == null : r0 != 12 || this.localMusicViewModel.getCurrentPlaying().getValue() == null))) {
            z = false;
        }
        if (z) {
            if (this.binding.clTopPlaying.getVisibility() == 8) {
                this.binding.clTopPlaying.setVisibility(0);
            }
        } else if (this.binding.clTopPlaying.getVisibility() == 0) {
            this.binding.clTopPlaying.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTopCoverAnim() {
        int r0 = this.currentTopSource;
        if (r0 == 1 || r0 == 2) {
            updateTopCoverAnimOfRadio();
            return;
        }
        if (r0 == 3) {
            updateTopCoverAnimOfDab();
            return;
        }
        if (r0 == 5) {
            updateTopCoverAnimOfBtMusic();
            return;
        }
        if (r0 == 6) {
            updateTopCoverAnimOfUsbMusic(MediaDef.getUsbMusicTypeOfAudioSource(r0));
        } else if (r0 == 12) {
            updateTopCoverAnimOfLocalMusic();
        } else {
            stopTopCoverAnim();
        }
    }

    private void updateTopCoverAnimOfRadio() {
        if (this.radioViewModel.getPlayingState().getValue() != null && this.radioViewModel.getPlayingState().getValue().booleanValue()) {
            startTopCoverAnim();
        } else {
            stopTopCoverAnim();
        }
    }

    private void updateTopCoverAnimOfDab() {
        if (this.dabViewModel.getPlayingState().getValue() != null && this.dabViewModel.getPlayingState().getValue().booleanValue()) {
            startTopCoverAnim();
        } else {
            stopTopCoverAnim();
        }
    }

    private void updateTopCoverAnimOfBtMusic() {
        if (this.btMusicViewModel.getPlaybackState().getValue() != null && this.btMusicViewModel.getPlaybackState().getValue().booleanValue()) {
            startTopCoverAnim();
        } else {
            stopTopCoverAnim();
        }
    }

    private void updateTopCoverAnimOfUsbMusic(int r2) {
        if (this.usbMusicViewModel.isPlaying(r2)) {
            startTopCoverAnim();
        } else {
            stopTopCoverAnim();
        }
    }

    private void updateTopCoverAnimOfLocalMusic() {
        if (this.localMusicViewModel.isPlaying().getValue().booleanValue()) {
            startTopCoverAnim();
        } else {
            stopTopCoverAnim();
        }
    }

    private void startTopCoverAnim() {
        if (this.topCoverAni == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.binding.ivTopPlayingCover, "rotation", 0.0f, 360.0f);
            this.topCoverAni = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(8000L);
            this.topCoverAni.setRepeatCount(-1);
            this.topCoverAni.setRepeatMode(1);
            this.topCoverAni.setInterpolator(new LinearInterpolator());
        }
        if (!this.topCoverAni.isStarted()) {
            this.topCoverAni.start();
        } else if (this.topCoverAni.isPaused()) {
            this.topCoverAni.resume();
        }
    }

    private void stopTopCoverAnim() {
        ObjectAnimator objectAnimator = this.topCoverAni;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.topCoverAni.end();
    }

    public void checkFragmentToSource(int r4) {
        Fragment currentFragment = getCurrentFragment();
        if (r4 == 1 || r4 == 2) {
            if ((currentFragment instanceof RadioPlayerFragment) || (currentFragment instanceof MediaMainFragment)) {
                return;
            }
            replaceFragment(RadioPlayerFragment.newInstance(null, null));
            return;
        }
        if (r4 == 3) {
            if ((currentFragment instanceof DabPlayerFragment) || (currentFragment instanceof MediaMainFragment)) {
                return;
            }
            replaceFragment(new DabPlayerFragment());
            return;
        }
        if (r4 == 5) {
            if ((currentFragment instanceof BtMusicPlayerFragment) || (currentFragment instanceof MediaMainFragment)) {
                return;
            }
            replaceFragment(BtMusicPlayerFragment.newInstance(null, null));
            return;
        }
        if (r4 == 6) {
            if ((currentFragment instanceof UsbMusicPlayerFragment) || (currentFragment instanceof UsbMusicListFragment) || (currentFragment instanceof MediaMainFragment)) {
                return;
            }
            replaceFragment(UsbMusicPlayerFragment.newInstance(null, null));
            return;
        }
        if (r4 != 12 || (currentFragment instanceof LocalMusicPlayerFragment) || (currentFragment instanceof LocalMusicListFragment) || (currentFragment instanceof MediaMainFragment)) {
            return;
        }
        replaceFragment(LocalMusicPlayerFragment.newInstance(null, null));
    }
}
