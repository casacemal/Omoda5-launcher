package com.chery.media.view.fragment;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.core.graphics.drawable.RoundedBitmapDrawable;
import androidx.core.graphics.drawable.RoundedBitmapDrawableFactory;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.common.PackageConstants;
import com.chery.common.PageConstants;
import com.chery.common.PageManager;
import com.chery.media.C0632R;
import com.chery.media.databinding.FragmentUsbMusicPlayerBinding;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.ThumbnailClient;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.util.Utils;
import com.chery.media.view.activity.MediaActivity;
import com.chery.media.view.adapter.UsbMusicPlayerListAdapter;
import com.chery.media.viewmodel.LocalMusicViewModel;
import com.chery.media.viewmodel.UsbMusicViewModel;
import java.util.List;

/* loaded from: classes.dex */
public class UsbMusicPlayerFragment extends FragmentBase {
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private static final String TAG = CarLog.concatTag("MEDIA", UsbMusicPlayerFragment.class);
    private FragmentUsbMusicPlayerBinding binding;
    private Handler handler;
    private LocalMusicViewModel localMusicViewModel;
    private String mParam1;
    private String mParam2;
    private UsbMusicPlayerListAdapter usbMusicPlayerListAdapter;
    private UsbMusicViewModel usbMusicViewModel;
    private int currentUsbType = -1;
    private boolean playerSeekBarTracking = false;

    public static UsbMusicPlayerFragment newInstance(String str, String str2) {
        UsbMusicPlayerFragment usbMusicPlayerFragment = new UsbMusicPlayerFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        bundle.putString(ARG_PARAM2, str2);
        usbMusicPlayerFragment.setArguments(bundle);
        return usbMusicPlayerFragment;
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
        if (CarAdapterUse.getCarConfigInfoClient().isRudderRight()) {
            this.binding = FragmentUsbMusicPlayerBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_usb_music_player_right, viewGroup, false));
        } else {
            this.binding = FragmentUsbMusicPlayerBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_usb_music_player, viewGroup, false));
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
        if (isTopWhenStarted() && ((MediaActivity) getActivity()).getCurrentFragment() == this) {
            UsbMusicViewModel usbMusicViewModel = this.usbMusicViewModel;
            usbMusicViewModel.requestAudioFocus(usbMusicViewModel.getCurrentUsbData().getValue().intValue());
        }
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding.inPlayerControl.anAlbumCover.cancelAnim();
        this.binding.tvMusicTitle.setText((CharSequence) null);
        this.usbMusicPlayerListAdapter.setMusicList(null);
        this.usbMusicPlayerListAdapter.clear();
        this.binding.rvMusicList.setAdapter(null);
        this.binding.rvMusicList.setLayoutManager(null);
    }

    private void initViewModel() {
        PFLog.m25d(TAG, "initViewModel");
        UsbMusicViewModel usbMusicViewModel = (UsbMusicViewModel) new ViewModelProvider(getActivity()).get(UsbMusicViewModel.class);
        this.usbMusicViewModel = usbMusicViewModel;
        this.currentUsbType = usbMusicViewModel.getCurrentUsbData().getValue().intValue();
        this.usbMusicViewModel.getCurrentUsbData().observe(getViewLifecycleOwner(), new Observer<Integer>() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.1
            @Override // androidx.lifecycle.Observer
            public void onChanged(Integer num) {
                if (num.intValue() != UsbMusicPlayerFragment.this.currentUsbType) {
                    UsbMusicPlayerFragment.this.currentUsbType = num.intValue();
                    UsbMusicPlayerFragment.this.updateArtistUsbIcon();
                    UsbMusicPlayerFragment.this.updateTitleAndArtist();
                    UsbMusicPlayerFragment.this.updateCover();
                    UsbMusicPlayerFragment.this.updatePlayPauseIcon();
                    UsbMusicPlayerFragment.this.updateDuration();
                    UsbMusicPlayerFragment.this.updatePosition();
                    UsbMusicPlayerFragment.this.updatePlaylist();
                    UsbMusicPlayerFragment.this.updateCurrentPlaying();
                    UsbMusicPlayerFragment.this.updateCurrentPlayingIconAnim();
                    UsbMusicPlayerFragment.this.updateCurrentPlayingItemPosition();
                    UsbMusicPlayerFragment.this.updateListMask();
                    UsbMusicPlayerFragment.this.updatePlayMode();
                    UsbMusicPlayerFragment.this.updateAlbumCoverAnim();
                }
            }
        });
        this.usbMusicViewModel.observePlaylistDatas(getViewLifecycleOwner(), new Observer<UsbMusicViewModel.PlaylistData>() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.2
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbMusicViewModel.PlaylistData playlistData) {
                if (playlistData.usbType == UsbMusicPlayerFragment.this.currentUsbType) {
                    UsbMusicPlayerFragment.this.updatePlaylist();
                    UsbMusicPlayerFragment.this.updateCurrentPlayingItemPosition();
                }
            }
        });
        this.usbMusicViewModel.observeCurrentPlayingDatas(getViewLifecycleOwner(), new Observer<UsbMusicViewModel.CurrentPlayingData>() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.3
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbMusicViewModel.CurrentPlayingData currentPlayingData) {
                if (currentPlayingData.usbType == UsbMusicPlayerFragment.this.currentUsbType) {
                    UsbMusicPlayerFragment.this.updateTitleAndArtist();
                    UsbMusicPlayerFragment.this.updateCover();
                    UsbMusicPlayerFragment.this.updateCurrentPlaying();
                    UsbMusicPlayerFragment.this.updateCurrentPlayingItemPosition();
                }
            }
        });
        this.usbMusicViewModel.observePlayingStateDatas(getViewLifecycleOwner(), new Observer<UsbMusicViewModel.PlayingStateData>() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.4
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbMusicViewModel.PlayingStateData playingStateData) {
                if (playingStateData.usbType == UsbMusicPlayerFragment.this.currentUsbType) {
                    UsbMusicPlayerFragment.this.updatePlayPauseIcon();
                    UsbMusicPlayerFragment.this.updateAlbumCoverAnim();
                    UsbMusicPlayerFragment.this.updateCurrentPlayingIconAnim();
                }
            }
        });
        this.usbMusicViewModel.observePlayingDurationDatas(getViewLifecycleOwner(), new Observer<UsbMusicViewModel.PlayingDurationData>() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.5
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbMusicViewModel.PlayingDurationData playingDurationData) {
                if (playingDurationData.usbType == UsbMusicPlayerFragment.this.currentUsbType) {
                    UsbMusicPlayerFragment.this.updateDuration();
                }
            }
        });
        this.usbMusicViewModel.observePlayingPositionDatas(getViewLifecycleOwner(), new Observer<UsbMusicViewModel.PlayingPositionData>() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.6
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbMusicViewModel.PlayingPositionData playingPositionData) {
                if (playingPositionData.usbType == UsbMusicPlayerFragment.this.currentUsbType) {
                    UsbMusicPlayerFragment.this.updatePosition();
                }
            }
        });
        this.usbMusicViewModel.observePlayModeDatas(getViewLifecycleOwner(), new Observer<UsbMusicViewModel.PlayModeData>() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.7
            @Override // androidx.lifecycle.Observer
            public void onChanged(UsbMusicViewModel.PlayModeData playModeData) {
                if (playModeData.usbType == UsbMusicPlayerFragment.this.currentUsbType) {
                    UsbMusicPlayerFragment.this.updatePlayMode();
                }
            }
        });
        LocalMusicViewModel localMusicViewModel = (LocalMusicViewModel) new ViewModelProvider(getActivity()).get(LocalMusicViewModel.class);
        this.localMusicViewModel = localMusicViewModel;
        localMusicViewModel.getLocalMusics().observe(getViewLifecycleOwner(), new Observer<List<MediaDef.LocalMusicInfo>>() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.8
            @Override // androidx.lifecycle.Observer
            public void onChanged(List<MediaDef.LocalMusicInfo> list) {
                if (UsbMusicPlayerFragment.this.usbMusicPlayerListAdapter != null) {
                    UsbMusicPlayerFragment.this.usbMusicPlayerListAdapter.notifyDataSetChanged();
                }
            }
        });
    }

    private void initView() {
        PFLog.m25d(TAG, "initView");
        updateArtistUsbIcon();
        updateTitleAndArtist();
        updateCover();
        updatePlayPauseIcon();
        updateDuration();
        updatePosition();
        initPlaylist();
        updatePlaylist();
        updateCurrentPlaying();
        updateCurrentPlayingIconAnim();
        updateCurrentPlayingItemPosition();
        updateListMask();
        updatePlayMode();
        updateAlbumCoverAnim();
        this.binding.ivRetract.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaActivity mediaActivity = (MediaActivity) UsbMusicPlayerFragment.this.getActivity();
                if (mediaActivity != null) {
                    mediaActivity.replaceAll(MediaMainFragment.newInstance(null, null));
                }
            }
        });
        this.binding.inPlayerControl.ivPlaypause.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UsbMusicPlayerFragment.this.usbMusicViewModel.playPause(UsbMusicPlayerFragment.this.currentUsbType);
            }
        });
        this.binding.inPlayerControl.ivLast.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Log.d(UsbMusicPlayerFragment.TAG, "ivLast onClick");
                UsbMusicPlayerFragment.this.usbMusicViewModel.playPrior(UsbMusicPlayerFragment.this.currentUsbType);
            }
        });
        this.binding.inPlayerControl.ivLast.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.12
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Log.d(UsbMusicPlayerFragment.TAG, "ivLast onLongClick");
                UsbMusicPlayerFragment.this.usbMusicViewModel.fastBackward(UsbMusicPlayerFragment.this.currentUsbType);
                return true;
            }
        });
        this.binding.inPlayerControl.ivLast.setOnTouchListener(new View.OnTouchListener() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.13
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 1 && actionMasked != 3 && 0.0f <= motionEvent.getX() && motionEvent.getX() <= view.getWidth() && 0.0f <= motionEvent.getY() && motionEvent.getY() <= view.getHeight()) {
                    return false;
                }
                Log.d(UsbMusicPlayerFragment.TAG, "ivLast UP or CANCEL");
                UsbMusicPlayerFragment.this.usbMusicViewModel.stopFastPlay(UsbMusicPlayerFragment.this.currentUsbType);
                return false;
            }
        });
        this.binding.inPlayerControl.ivNext.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Log.d(UsbMusicPlayerFragment.TAG, "ivNext onClick");
                UsbMusicPlayerFragment.this.usbMusicViewModel.playNext(UsbMusicPlayerFragment.this.currentUsbType);
            }
        });
        this.binding.inPlayerControl.ivNext.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.15
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Log.d(UsbMusicPlayerFragment.TAG, "ivNext onLongClick");
                UsbMusicPlayerFragment.this.usbMusicViewModel.fastForward(UsbMusicPlayerFragment.this.currentUsbType);
                return true;
            }
        });
        this.binding.inPlayerControl.ivNext.setOnTouchListener(new View.OnTouchListener() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.16
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 1 && actionMasked != 3 && 0.0f <= motionEvent.getX() && motionEvent.getX() <= view.getWidth() && 0.0f <= motionEvent.getY() && motionEvent.getY() <= view.getHeight()) {
                    return false;
                }
                Log.d(UsbMusicPlayerFragment.TAG, "ivNext UP or CANCEL");
                UsbMusicPlayerFragment.this.usbMusicViewModel.stopFastPlay(UsbMusicPlayerFragment.this.currentUsbType);
                return false;
            }
        });
        this.binding.inPlayerTimeBar.sbTimeBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.17
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int r4, boolean z) {
                if (z) {
                    UsbMusicPlayerFragment.this.binding.inPlayerTimeBar.tvMusicTime.setText(Utils.getTimeString((UsbMusicPlayerFragment.this.usbMusicViewModel.getPlayingDuration(UsbMusicPlayerFragment.this.currentUsbType) * r4) / 1000));
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                PFLog.m25d(UsbMusicPlayerFragment.TAG, "onStartTrackingTouch");
                UsbMusicPlayerFragment.this.playerSeekBarTracking = true;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                PFLog.m25d(UsbMusicPlayerFragment.TAG, "onStopTrackingTouch");
                UsbMusicPlayerFragment.this.playerSeekBarTracking = false;
                UsbMusicPlayerFragment.this.usbMusicViewModel.seekTo(UsbMusicPlayerFragment.this.currentUsbType, (UsbMusicPlayerFragment.this.usbMusicViewModel.getPlayingDuration(UsbMusicPlayerFragment.this.currentUsbType) * seekBar.getProgress()) / 1000);
                UsbMusicPlayerFragment.this.usbMusicViewModel.play(UsbMusicPlayerFragment.this.currentUsbType);
            }
        });
        this.binding.ivMusicMode.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int playMode = UsbMusicPlayerFragment.this.usbMusicViewModel.getPlayMode(UsbMusicPlayerFragment.this.currentUsbType);
                if (playMode == 0) {
                    UsbMusicPlayerFragment.this.usbMusicViewModel.changePlayMode(UsbMusicPlayerFragment.this.currentUsbType, 1);
                } else if (playMode == 1) {
                    UsbMusicPlayerFragment.this.usbMusicViewModel.changePlayMode(UsbMusicPlayerFragment.this.currentUsbType, 2);
                } else {
                    if (playMode != 2) {
                        return;
                    }
                    UsbMusicPlayerFragment.this.usbMusicViewModel.changePlayMode(UsbMusicPlayerFragment.this.currentUsbType, 0);
                }
            }
        });
        this.binding.ivSoundEffects.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.19
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new PageManager(UsbMusicPlayerFragment.this.getContext()).openPage(PackageConstants.Settings.PACKAGE_NAME, PackageConstants.Settings.SYSTEM_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, new String[]{PageConstants.SystemSettings.PAGE_ID_KEY, PageConstants.SystemSettings.IS_FINISH_SELF}, new String[]{"8", "1"});
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateArtistUsbIcon() {
        if (this.currentUsbType == 0) {
            Drawable drawable = getContext().getDrawable(C0632R.drawable.media_player_source_icon_usb1);
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            this.binding.tvMusicArtist.setCompoundDrawables(drawable, null, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTitleAndArtist() {
        MediaDef.UsbMusicInfo currentPlaying = this.usbMusicViewModel.getCurrentPlaying(this.currentUsbType);
        if (currentPlaying != null) {
            this.binding.tvMusicTitle.setVisibility(0);
            this.binding.tvMusicArtist.setVisibility(0);
            this.binding.tvMusicTitle.setText(currentPlaying.title);
            if (currentPlaying.artist.isEmpty() || "<unknown>".equals(currentPlaying.artist)) {
                this.binding.tvMusicArtist.setText("");
                return;
            } else {
                this.binding.tvMusicArtist.setText(currentPlaying.artist);
                return;
            }
        }
        this.binding.tvMusicTitle.setVisibility(8);
        this.binding.tvMusicArtist.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.chery.media.view.fragment.UsbMusicPlayerFragment$20] */
    public void updateCover() {
        this.binding.inPlayerControl.anAlbumCover.setAlbumCover(getActivity().getDrawable(C0632R.drawable.media_player_album_cover_default));
        final MediaDef.UsbMusicInfo currentPlaying = this.usbMusicViewModel.getCurrentPlaying(this.currentUsbType);
        if (currentPlaying != null) {
            new Thread() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.20
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    Bitmap bitmapCreateAudioThumbnail = ThumbnailClient.getInstance().createAudioThumbnail(currentPlaying.path);
                    if (bitmapCreateAudioThumbnail != null) {
                        final Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateAudioThumbnail, 210, 210, true);
                        UsbMusicPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.20.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (UsbMusicPlayerFragment.this.getContext() != null) {
                                    RoundedBitmapDrawable roundedBitmapDrawableCreate = RoundedBitmapDrawableFactory.create(UsbMusicPlayerFragment.this.getResources(), bitmapCreateScaledBitmap);
                                    roundedBitmapDrawableCreate.setCircular(true);
                                    roundedBitmapDrawableCreate.setAntiAlias(true);
                                    UsbMusicPlayerFragment.this.binding.inPlayerControl.anAlbumCover.setAlbumCover(roundedBitmapDrawableCreate);
                                }
                            }
                        });
                    }
                }
            }.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayPauseIcon() {
        if (this.usbMusicViewModel.isPlaying(this.currentUsbType)) {
            this.binding.inPlayerControl.ivPlaypause.setImageDrawable(getContext().getDrawable(C0632R.drawable.media_player_btn_play));
        } else {
            this.binding.inPlayerControl.ivPlaypause.setImageDrawable(getContext().getDrawable(C0632R.drawable.media_player_btn_pause));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDuration() {
        this.binding.inPlayerTimeBar.tvMusicDuration.setText(Utils.getTimeString(this.usbMusicViewModel.getPlayingDuration(this.currentUsbType)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePosition() {
        if (!this.playerSeekBarTracking) {
            long playingPosition = this.usbMusicViewModel.getPlayingPosition(this.currentUsbType);
            this.binding.inPlayerTimeBar.tvMusicTime.setText(Utils.getTimeString(playingPosition));
            long playingDuration = this.usbMusicViewModel.getPlayingDuration(this.currentUsbType);
            this.binding.inPlayerTimeBar.sbTimeBar.setProgress((int) (playingDuration != 0 ? (playingPosition * 1000) / playingDuration : 0L));
            return;
        }
        PFLog.m25d(TAG, "playerSeekBarTracking, ignore");
    }

    private void initPlaylist() {
        UsbMusicPlayerListAdapter usbMusicPlayerListAdapter = new UsbMusicPlayerListAdapter(getContext(), this.localMusicViewModel);
        this.usbMusicPlayerListAdapter = usbMusicPlayerListAdapter;
        usbMusicPlayerListAdapter.setOnItemClickListener(new UsbMusicPlayerListAdapter.OnItemClickListener() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.21
            @Override // com.chery.media.view.adapter.UsbMusicPlayerListAdapter.OnItemClickListener
            public void onItemClick(int r2, MediaDef.UsbMusicInfo usbMusicInfo) {
                UsbMusicPlayerFragment.this.usbMusicViewModel.changeCurrentPlaying(UsbMusicPlayerFragment.this.currentUsbType, usbMusicInfo);
                UsbMusicPlayerFragment.this.usbMusicViewModel.play(UsbMusicPlayerFragment.this.currentUsbType);
            }
        });
        this.binding.rvMusicList.setAdapter(this.usbMusicPlayerListAdapter);
        this.binding.rvMusicList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.binding.rvMusicList.setSeekBar(this.binding.sbMusicListBar, this.binding.llMusicListBar);
        this.binding.rvMusicList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.22
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                if (r3 != 0) {
                    UsbMusicPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.22.1
                        @Override // java.lang.Runnable
                        public void run() {
                            UsbMusicPlayerFragment.this.updateListMask();
                        }
                    });
                }
            }
        });
        this.binding.rvMusicList.addOnChildAttachStateChangeListener(new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.23
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(View view) {
                UsbMusicPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.23.1
                    @Override // java.lang.Runnable
                    public void run() {
                        UsbMusicPlayerFragment.this.updateListMask();
                    }
                });
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
                UsbMusicPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.UsbMusicPlayerFragment.23.2
                    @Override // java.lang.Runnable
                    public void run() {
                        UsbMusicPlayerFragment.this.updateListMask();
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlaylist() {
        List<MediaDef.UsbMusicInfo> playlist = this.usbMusicViewModel.getPlaylist(this.currentUsbType);
        this.usbMusicPlayerListAdapter.setMusicList(playlist);
        TextView textView = this.binding.tvMusicListTitle;
        Object[] objArr = new Object[2];
        objArr[0] = getString(C0632R.string.media_player_list_title);
        objArr[1] = Integer.valueOf(playlist != null ? playlist.size() : 0);
        textView.setText(String.format("%s (%s)", objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlaying() {
        this.usbMusicPlayerListAdapter.setCurrentPlaying(this.usbMusicViewModel.getCurrentPlaying(this.currentUsbType));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlayingIconAnim() {
        this.usbMusicPlayerListAdapter.setPlaying(this.usbMusicViewModel.isPlaying(this.currentUsbType));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlayingItemPosition() {
        List<MediaDef.UsbMusicInfo> musicList;
        int r0;
        if (this.binding.rvMusicList.getScrollState() != 0 || (musicList = this.usbMusicPlayerListAdapter.getMusicList()) == null || (r0 = musicList.indexOf(this.usbMusicViewModel.getCurrentPlaying(this.currentUsbType))) < 0) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayMode() {
        int playMode = this.usbMusicViewModel.getPlayMode(this.currentUsbType);
        if (playMode == 0) {
            this.binding.ivMusicMode.setImageResource(C0632R.drawable.media_mode_btn_single);
        } else if (playMode == 1) {
            this.binding.ivMusicMode.setImageResource(C0632R.drawable.media_mode_btn_shuffle);
        } else {
            if (playMode != 2) {
                return;
            }
            this.binding.ivMusicMode.setImageResource(C0632R.drawable.media_mode_btn_circle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAlbumCoverAnim() {
        if (this.usbMusicViewModel.isPlaying(this.currentUsbType)) {
            this.binding.inPlayerControl.anAlbumCover.startAnim();
        } else {
            this.binding.inPlayerControl.anAlbumCover.pauseAnim();
        }
    }
}
