package com.chery.media.view.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.util.Size;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.FragmentVideoPlayerBinding;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.ThumbnailCache;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.util.Utils;
import com.chery.media.view.activity.VideoActivity;
import com.chery.media.view.adapter.VideoPlayerListAdapter;
import com.chery.media.viewmodel.VideoViewModel;

/* loaded from: classes.dex */
public class VideoPlayerFragment extends FragmentBase {
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private static final String TAG = CarLog.concatTag("MEDIA", VideoPlayerFragment.class);
    private static final String brightnessKey = "brightness";
    private static final String spName = "video";
    private FragmentVideoPlayerBinding binding;
    private Runnable fullscreenRun;
    private Handler handler;
    private String mParam1;
    private String mParam2;
    private Runnable runHideVideoCover;
    private int systemBrightness;
    private VideoPlayerListAdapter videoPlayerListAdapter;
    private VideoViewModel videoViewModel;
    private int currentUsbType = -1;
    private boolean playerSeekBarTracking = false;
    private boolean volumeGesturing = false;
    private float volumePending = 0.0f;
    private boolean brightnessGesturing = false;
    private float brightnessPending = 0.0f;
    private boolean brightnessSeekBarTracking = false;
    private boolean positionGesturing = false;
    private float positionPending = 0.0f;
    private long positionGesturePos = 0;
    private boolean surfaceCreated = false;
    private int surfaceWidth = -1;
    private int surfaceHeight = -1;

    public static VideoPlayerFragment newInstance(String str, String str2) {
        VideoPlayerFragment videoPlayerFragment = new VideoPlayerFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        bundle.putString(ARG_PARAM2, str2);
        videoPlayerFragment.setArguments(bundle);
        return videoPlayerFragment;
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
            this.binding = FragmentVideoPlayerBinding.bind(layoutInflater.inflate(C0632R.layout.fragment_video_player_right, viewGroup, false));
        } else {
            this.binding = FragmentVideoPlayerBinding.bind(layoutInflater.inflate(C0632R.layout.fragment_video_player, viewGroup, false));
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
    public void onStart() {
        super.onStart();
        if (isTopWhenStarted()) {
            setControlView(true);
            this.videoViewModel.setUiEnablePlay(true);
            this.videoViewModel.requestAudioFocus();
            this.systemBrightness = this.videoViewModel.getBrightness().getValue().intValue();
            int r0 = getContext().getSharedPreferences(spName, 0).getInt(brightnessKey, 0);
            PFLog.m25d(TAG, "sp read brightness " + r0);
            if (r0 != 0) {
                this.videoViewModel.changeBrightness(r0);
            }
        }
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        if (isTopWhenStarted()) {
            setControlView(false);
            this.videoViewModel.freeze(this.currentUsbType);
            this.videoViewModel.setUiEnablePlay(false);
            this.videoViewModel.changeBrightness(this.systemBrightness);
        }
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding.tvVideoName.setText((CharSequence) null);
        this.videoPlayerListAdapter.setVideoList(null);
        this.binding.rvVideoList.setAdapter(null);
        this.binding.rvVideoList.setLayoutManager(null);
    }

    private void initViewModel() {
        PFLog.m25d(TAG, "initViewModel");
        VideoViewModel videoViewModel = (VideoViewModel) new ViewModelProvider(getActivity()).get(VideoViewModel.class);
        this.videoViewModel = videoViewModel;
        this.currentUsbType = videoViewModel.getCurrentUsbData().getValue().intValue();
        this.videoViewModel.getCurrentUsbData().observe(getViewLifecycleOwner(), new Observer<Integer>() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.1
            @Override // androidx.lifecycle.Observer
            public void onChanged(Integer num) {
                if (num.intValue() != VideoPlayerFragment.this.currentUsbType) {
                    VideoPlayerFragment.this.currentUsbType = num.intValue();
                    VideoPlayerFragment.this.updateSurface();
                    VideoPlayerFragment.this.updateVideoName();
                    VideoPlayerFragment.this.updatePlayPauseIcon();
                    VideoPlayerFragment.this.updateDuration();
                    VideoPlayerFragment.this.updatePosition();
                    VideoPlayerFragment.this.updateList();
                    VideoPlayerFragment.this.updateListCurrentPlaying();
                    VideoPlayerFragment.this.updateListCurrentPlayingIconAnim();
                }
            }
        });
        this.videoViewModel.observePlaylistDatas(getViewLifecycleOwner(), new Observer<VideoViewModel.PlaylistData>() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.2
            @Override // androidx.lifecycle.Observer
            public void onChanged(VideoViewModel.PlaylistData playlistData) {
                if (playlistData.usbType == VideoPlayerFragment.this.currentUsbType) {
                    VideoPlayerFragment.this.updateList();
                    VideoPlayerFragment.this.updateListCurrentPlaying();
                }
            }
        });
        this.videoViewModel.observeCurrentPlayingDatas(getViewLifecycleOwner(), new Observer<VideoViewModel.CurrentPlayingData>() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.3
            @Override // androidx.lifecycle.Observer
            public void onChanged(VideoViewModel.CurrentPlayingData currentPlayingData) {
                if (currentPlayingData.usbType == VideoPlayerFragment.this.currentUsbType) {
                    VideoPlayerFragment.this.updateVideoName();
                    VideoPlayerFragment.this.updateListCurrentPlaying();
                }
            }
        });
        this.videoViewModel.observePlayingStateDatas(getViewLifecycleOwner(), new Observer<VideoViewModel.PlayingStateData>() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.4
            @Override // androidx.lifecycle.Observer
            public void onChanged(VideoViewModel.PlayingStateData playingStateData) {
                if (playingStateData.usbType == VideoPlayerFragment.this.currentUsbType) {
                    if (playingStateData.playingState == 5) {
                        VideoPlayerFragment.this.binding.clLoadFailed.setVisibility(0);
                    } else {
                        VideoPlayerFragment.this.binding.clLoadFailed.setVisibility(8);
                    }
                    VideoPlayerFragment.this.updatePlayPauseIcon();
                    VideoPlayerFragment.this.updateListCurrentPlayingIconAnim();
                }
            }
        });
        this.videoViewModel.observePlayingDurationDatas(getViewLifecycleOwner(), new Observer<VideoViewModel.PlayingDurationData>() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.5
            @Override // androidx.lifecycle.Observer
            public void onChanged(VideoViewModel.PlayingDurationData playingDurationData) {
                if (playingDurationData.usbType == VideoPlayerFragment.this.currentUsbType) {
                    VideoPlayerFragment.this.updateDuration();
                }
            }
        });
        this.videoViewModel.observePlayingPositionDatas(getViewLifecycleOwner(), new Observer<VideoViewModel.PlayingPositionData>() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.6
            @Override // androidx.lifecycle.Observer
            public void onChanged(VideoViewModel.PlayingPositionData playingPositionData) {
                if (playingPositionData.usbType == VideoPlayerFragment.this.currentUsbType) {
                    VideoPlayerFragment.this.updatePosition();
                }
            }
        });
        this.videoViewModel.observeVideoSizeDatas(getViewLifecycleOwner(), new Observer<VideoViewModel.VideoSizeData>() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.7
            @Override // androidx.lifecycle.Observer
            public void onChanged(VideoViewModel.VideoSizeData videoSizeData) {
                if (videoSizeData.usbType == VideoPlayerFragment.this.currentUsbType) {
                    VideoPlayerFragment.this.updateSurface();
                }
            }
        });
        this.videoViewModel.getVolume().observe(getViewLifecycleOwner(), new Observer<Integer>() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.8
            @Override // androidx.lifecycle.Observer
            public void onChanged(Integer num) {
                VideoPlayerFragment.this.binding.sbVolume.setProgress(num.intValue());
                if (num.intValue() == 0) {
                    VideoPlayerFragment.this.binding.ivPopupVolIcon.setImageResource(C0632R.drawable.video_playing_popup_vol_mute_icon);
                } else {
                    VideoPlayerFragment.this.binding.ivPopupVolIcon.setImageResource(C0632R.drawable.video_playing_popup_vol_icon);
                }
            }
        });
        this.videoViewModel.getBrightness().observe(getViewLifecycleOwner(), new Observer<Integer>() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.9
            @Override // androidx.lifecycle.Observer
            public void onChanged(Integer num) {
                if (!VideoPlayerFragment.this.brightnessSeekBarTracking) {
                    VideoPlayerFragment.this.binding.sbBrightness.setProgress(num.intValue());
                }
                if (VideoPlayerFragment.this.isResumed()) {
                    PFLog.m25d(VideoPlayerFragment.TAG, "sp write brightness " + num);
                    VideoPlayerFragment.this.getContext().getSharedPreferences(VideoPlayerFragment.spName, 0).edit().putInt(VideoPlayerFragment.brightnessKey, num.intValue()).apply();
                }
            }
        });
        this.videoViewModel.getSpeedLimitSetting().observe(getViewLifecycleOwner(), new Observer<Boolean>() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.10
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                VideoPlayerFragment.this.updateVideoCover();
            }
        });
        this.videoViewModel.getSpeedLimitView().observe(getViewLifecycleOwner(), new Observer<Boolean>() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.11
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                VideoPlayerFragment.this.updateVideoCover();
            }
        });
    }

    private void initView() {
        PFLog.m25d(TAG, "initView");
        this.currentUsbType = this.videoViewModel.getCurrentUsbData().getValue().intValue();
        updateSurface();
        updateVideoName();
        updatePlayPauseIcon();
        updateDuration();
        updatePosition();
        initList();
        updateList();
        updateListCurrentPlaying();
        updateListCurrentPlayingIconAnim();
        updateVideoCover();
        this.binding.surface.getHolder().addCallback(new SurfaceHolder.Callback() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.12
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                PFLog.m25d(VideoPlayerFragment.TAG, "surfaceCreated " + surfaceHolder);
                VideoPlayerFragment.this.surfaceCreated = true;
                VideoPlayerFragment.this.videoViewModel.setSurfaceHolder(surfaceHolder);
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int r5, int r6, int r7) {
                PFLog.m25d(VideoPlayerFragment.TAG, String.format("surfaceChanged %s %s %s %s", surfaceHolder, Integer.valueOf(r5), Integer.valueOf(r6), Integer.valueOf(r7)));
                VideoPlayerFragment.this.surfaceWidth = r6;
                VideoPlayerFragment.this.surfaceHeight = r7;
                VideoPlayerFragment.this.updateSurface();
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                PFLog.m25d(VideoPlayerFragment.TAG, "surfaceDestroyed " + surfaceHolder);
                VideoPlayerFragment.this.surfaceCreated = false;
                VideoPlayerFragment.this.videoViewModel.setSurfaceHolder(null);
            }
        });
        this.binding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoPlayerFragment.this.startActivity(new Intent(VideoPlayerFragment.this.getContext(), (Class<?>) VideoActivity.class));
            }
        });
        this.binding.ivList.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoPlayerFragment.this.binding.tvVideoName.setVisibility(4);
                VideoPlayerFragment.this.binding.clVideoList.setVisibility(0);
                VideoPlayerFragment.this.binding.clPlayControl.setVisibility(4);
                VideoPlayerFragment.this.resetFullScreenTimer();
            }
        });
        this.binding.ivPlayPause.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoPlayerFragment.this.videoViewModel.playPause(VideoPlayerFragment.this.currentUsbType);
                VideoPlayerFragment.this.resetFullScreenTimer();
            }
        });
        this.binding.ivPlayPrior.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Log.d(VideoPlayerFragment.TAG, "ivLast onClick");
                VideoPlayerFragment.this.videoViewModel.playPrior(VideoPlayerFragment.this.currentUsbType);
            }
        });
        this.binding.ivPlayPrior.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.17
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Log.d(VideoPlayerFragment.TAG, "ivLast onLongClick");
                VideoPlayerFragment.this.videoViewModel.fastBackward(VideoPlayerFragment.this.currentUsbType);
                return true;
            }
        });
        this.binding.ivPlayPrior.setOnTouchListener(new View.OnTouchListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.18
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 1 && actionMasked != 3 && 0.0f <= motionEvent.getX() && motionEvent.getX() <= view.getWidth() && 0.0f <= motionEvent.getY() && motionEvent.getY() <= view.getHeight()) {
                    return false;
                }
                Log.d(VideoPlayerFragment.TAG, "ivLast UP or CANCEL");
                VideoPlayerFragment.this.videoViewModel.stopFastPlay(VideoPlayerFragment.this.currentUsbType);
                return false;
            }
        });
        this.binding.ivPlayNext.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.19
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Log.d(VideoPlayerFragment.TAG, "ivNext onClick");
                VideoPlayerFragment.this.videoViewModel.playNext(VideoPlayerFragment.this.currentUsbType);
            }
        });
        this.binding.ivPlayNext.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.20
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Log.d(VideoPlayerFragment.TAG, "ivNext onLongClick");
                VideoPlayerFragment.this.videoViewModel.fastForward(VideoPlayerFragment.this.currentUsbType);
                return true;
            }
        });
        this.binding.ivPlayNext.setOnTouchListener(new View.OnTouchListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.21
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 1 && actionMasked != 3 && 0.0f <= motionEvent.getX() && motionEvent.getX() <= view.getWidth() && 0.0f <= motionEvent.getY() && motionEvent.getY() <= view.getHeight()) {
                    return false;
                }
                Log.d(VideoPlayerFragment.TAG, "ivNext UP or CANCEL");
                VideoPlayerFragment.this.videoViewModel.stopFastPlay(VideoPlayerFragment.this.currentUsbType);
                return false;
            }
        });
        this.binding.sbTimeBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.22
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int r4, boolean z) {
                if (z) {
                    long playingDuration = (VideoPlayerFragment.this.videoViewModel.getPlayingDuration(VideoPlayerFragment.this.currentUsbType) * r4) / VideoPlayerFragment.this.binding.sbTimeBar.getMax();
                    VideoPlayerFragment.this.binding.tvMusicTime.setText(Utils.getTimeString(playingDuration));
                    VideoPlayerFragment.this.binding.tvFastMusicTime.setText(Utils.getTimeString(playingDuration));
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                PFLog.m25d(VideoPlayerFragment.TAG, "onStartTrackingTouch");
                VideoPlayerFragment.this.playerSeekBarTracking = true;
                VideoPlayerFragment.this.setFullScreenView();
                VideoPlayerFragment.this.binding.sbTimeBar.setVisibility(0);
                VideoPlayerFragment.this.binding.llFastTime.setVisibility(0);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                PFLog.m25d(VideoPlayerFragment.TAG, "onStopTrackingTouch");
                VideoPlayerFragment.this.playerSeekBarTracking = false;
                VideoPlayerFragment.this.videoViewModel.seekTo(VideoPlayerFragment.this.currentUsbType, (VideoPlayerFragment.this.videoViewModel.getPlayingDuration(VideoPlayerFragment.this.currentUsbType) * seekBar.getProgress()) / VideoPlayerFragment.this.binding.sbTimeBar.getMax());
                VideoPlayerFragment.this.videoViewModel.play(VideoPlayerFragment.this.currentUsbType);
                VideoPlayerFragment.this.setControlView(true);
            }
        });
        this.binding.sbVolume.setMin(this.videoViewModel.getVolumeMin());
        this.binding.sbVolume.setMax(this.videoViewModel.getVolumeMax());
        this.binding.sbVolume.setProgress(this.videoViewModel.getVolume().getValue().intValue());
        this.binding.ivVolSetting.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.23
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoPlayerFragment.this.setFullScreenView();
                VideoPlayerFragment.this.binding.clVolSetting.setVisibility(0);
                VideoPlayerFragment.this.resetFullScreenTimer();
            }
        });
        this.binding.sbBrightness.setMin(this.videoViewModel.getBrightnessMin());
        this.binding.sbBrightness.setMax(this.videoViewModel.getBrightnessMax());
        this.binding.sbBrightness.setProgress(this.videoViewModel.getBrightness().getValue().intValue());
        this.binding.ivBrightnessSetting.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.24
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoPlayerFragment.this.setFullScreenView();
                VideoPlayerFragment.this.binding.clBrightnessSetting.setVisibility(0);
                VideoPlayerFragment.this.resetFullScreenTimer();
            }
        });
        final GestureDetector gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.25
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                if (VideoPlayerFragment.this.binding.clVolSetting.getVisibility() != 0 && VideoPlayerFragment.this.binding.clBrightnessSetting.getVisibility() != 0 && VideoPlayerFragment.this.binding.clControl.getVisibility() == 0) {
                    if (VideoPlayerFragment.this.binding.clVideoList.getVisibility() == 0) {
                        VideoPlayerFragment.this.binding.clVideoList.setVisibility(4);
                        VideoPlayerFragment.this.binding.tvVideoName.setVisibility(0);
                        VideoPlayerFragment.this.binding.clPlayControl.setVisibility(0);
                        VideoPlayerFragment.this.resetFullScreenTimer();
                    } else {
                        VideoPlayerFragment.this.setFullScreenView();
                    }
                } else {
                    VideoPlayerFragment.this.setControlView(true);
                }
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (VideoPlayerFragment.this.positionGesturing || !(VideoPlayerFragment.this.brightnessGesturing || VideoPlayerFragment.this.volumeGesturing || Math.abs(f) <= Math.abs(f2))) {
                    if (!VideoPlayerFragment.this.positionGesturing) {
                        VideoPlayerFragment.this.positionGesturing = true;
                        VideoPlayerFragment.this.setFullScreenView();
                        VideoPlayerFragment.this.binding.sbTimeBar.setVisibility(0);
                        VideoPlayerFragment.this.binding.llFastTime.setVisibility(0);
                        VideoPlayerFragment.this.positionPending = 0.0f;
                        VideoPlayerFragment videoPlayerFragment = VideoPlayerFragment.this;
                        videoPlayerFragment.positionGesturePos = videoPlayerFragment.videoViewModel.getPlayingPosition(VideoPlayerFragment.this.currentUsbType);
                    }
                    if ((f > 0.0f && VideoPlayerFragment.this.positionPending < 0.0f) || (f < 0.0f && VideoPlayerFragment.this.positionPending > 0.0f)) {
                        VideoPlayerFragment.this.positionPending = 0.0f;
                    }
                    VideoPlayerFragment.this.positionPending -= f;
                    VideoPlayerFragment.this.positionGesturePos = (long) (r6.positionGesturePos + (VideoPlayerFragment.this.positionPending * 60.0f));
                    long playingDuration = VideoPlayerFragment.this.videoViewModel.getPlayingDuration(VideoPlayerFragment.this.currentUsbType);
                    VideoPlayerFragment videoPlayerFragment2 = VideoPlayerFragment.this;
                    videoPlayerFragment2.positionGesturePos = Math.min(Math.max(0L, videoPlayerFragment2.positionGesturePos), playingDuration);
                    VideoPlayerFragment.this.binding.tvFastMusicTime.setText(Utils.getTimeString(VideoPlayerFragment.this.positionGesturePos));
                } else if (motionEvent2.getX() > 960.0f) {
                    if (VideoPlayerFragment.this.volumeGesturing) {
                        VideoPlayerFragment.this.volumeGesturing = false;
                        VideoPlayerFragment.this.setFullScreenView();
                    }
                    if (!VideoPlayerFragment.this.brightnessGesturing) {
                        VideoPlayerFragment.this.brightnessGesturing = true;
                        VideoPlayerFragment.this.setFullScreenView();
                        VideoPlayerFragment.this.binding.clBrightnessSetting.setVisibility(0);
                        VideoPlayerFragment.this.brightnessPending = 0.0f;
                    }
                    if ((f2 > 0.0f && VideoPlayerFragment.this.brightnessPending < 0.0f) || (f2 < 0.0f && VideoPlayerFragment.this.brightnessPending > 0.0f)) {
                        VideoPlayerFragment.this.brightnessPending = 0.0f;
                    }
                    VideoPlayerFragment.this.brightnessPending += f2;
                    int r6 = (int) (VideoPlayerFragment.this.brightnessPending / 30.0f);
                    if (r6 != 0) {
                        VideoPlayerFragment.this.brightnessPending = 0.0f;
                        VideoPlayerFragment.this.videoViewModel.changeBrightnessBy(r6);
                    }
                } else if (motionEvent2.getX() < 960.0f) {
                    if (VideoPlayerFragment.this.brightnessGesturing) {
                        VideoPlayerFragment.this.brightnessGesturing = false;
                        VideoPlayerFragment.this.setFullScreenView();
                    }
                    if (!VideoPlayerFragment.this.volumeGesturing) {
                        VideoPlayerFragment.this.volumeGesturing = true;
                        VideoPlayerFragment.this.setFullScreenView();
                        VideoPlayerFragment.this.binding.clVolSetting.setVisibility(0);
                        VideoPlayerFragment.this.volumePending = 0.0f;
                    }
                    if ((f2 > 0.0f && VideoPlayerFragment.this.volumePending < 0.0f) || (f2 < 0.0f && VideoPlayerFragment.this.volumePending > 0.0f)) {
                        VideoPlayerFragment.this.volumePending = 0.0f;
                    }
                    VideoPlayerFragment.this.volumePending += f2;
                    int r62 = (int) (VideoPlayerFragment.this.volumePending / 20.0d);
                    if (r62 != 0) {
                        VideoPlayerFragment.this.volumePending = 0.0f;
                        int volumeMax = VideoPlayerFragment.this.videoViewModel.getVolume().getValue().intValue() + r62;
                        if (volumeMax < VideoPlayerFragment.this.videoViewModel.getVolumeMin()) {
                            volumeMax = VideoPlayerFragment.this.videoViewModel.getVolumeMin();
                        }
                        if (volumeMax > VideoPlayerFragment.this.videoViewModel.getVolumeMax()) {
                            volumeMax = VideoPlayerFragment.this.videoViewModel.getVolumeMax();
                        }
                        VideoPlayerFragment.this.videoViewModel.changeVolume(volumeMax);
                    }
                }
                return true;
            }
        });
        this.binding.ivTouch.setOnTouchListener(new View.OnTouchListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.26
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                PFLog.m31v(VideoPlayerFragment.TAG, "ivTouch onTouch " + motionEvent);
                boolean zOnTouchEvent = gestureDetector.onTouchEvent(motionEvent);
                if (motionEvent.getActionMasked() == 0) {
                    VideoPlayerFragment.this.volumeGesturing = false;
                    VideoPlayerFragment.this.brightnessGesturing = false;
                    VideoPlayerFragment.this.positionGesturing = false;
                } else if (motionEvent.getActionMasked() == 1) {
                    if (VideoPlayerFragment.this.positionGesturing) {
                        VideoPlayerFragment.this.videoViewModel.seekTo(VideoPlayerFragment.this.currentUsbType, VideoPlayerFragment.this.positionGesturePos);
                        VideoPlayerFragment.this.videoViewModel.play(VideoPlayerFragment.this.currentUsbType);
                    }
                    if (VideoPlayerFragment.this.volumeGesturing || VideoPlayerFragment.this.brightnessGesturing || VideoPlayerFragment.this.positionGesturing) {
                        VideoPlayerFragment.this.setFullScreenView();
                    }
                    VideoPlayerFragment.this.volumeGesturing = false;
                    VideoPlayerFragment.this.brightnessGesturing = false;
                    VideoPlayerFragment.this.positionGesturing = false;
                }
                return zOnTouchEvent;
            }
        });
        this.binding.sbVolume.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.27
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int r2, boolean z) {
                if (z) {
                    VideoPlayerFragment.this.videoViewModel.changeVolume(r2);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                VideoPlayerFragment.this.clearFullScreenTimer();
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                VideoPlayerFragment.this.resetFullScreenTimer();
            }
        });
        this.binding.sbBrightness.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.28
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int r2, boolean z) {
                if (z) {
                    VideoPlayerFragment.this.videoViewModel.changeBrightness(r2);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                VideoPlayerFragment.this.brightnessSeekBarTracking = true;
                VideoPlayerFragment.this.clearFullScreenTimer();
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                VideoPlayerFragment.this.brightnessSeekBarTracking = false;
                VideoPlayerFragment.this.resetFullScreenTimer();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSurface() {
        int height;
        int width;
        if (!this.surfaceCreated) {
            PFLog.m25d(TAG, "surface not created");
            return;
        }
        Size videoSize = this.videoViewModel.getVideoSize(this.currentUsbType);
        int r1 = 720;
        int r2 = 1920;
        if (videoSize == null || videoSize.getWidth() <= 0 || videoSize.getHeight() <= 0) {
            height = 720;
            width = 1920;
        } else {
            width = videoSize.getWidth();
            height = videoSize.getHeight();
        }
        PFLog.m25d(TAG, String.format("dest size(%s*%s)", Integer.valueOf(width), Integer.valueOf(height)));
        int r4 = width * 720;
        int r6 = height * 1920;
        if (r4 > r6) {
            r1 = r6 / width;
        } else {
            r2 = r4 / height;
        }
        PFLog.m25d(TAG, String.format("dest scale size(%s*%s)", Integer.valueOf(r2), Integer.valueOf(r1)));
        if (r2 == this.surfaceWidth && r1 == this.surfaceHeight) {
            PFLog.m25d(TAG, "dest scale size same with current surface");
            return;
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.binding.surface.getLayoutParams();
        layoutParams.width = r2;
        layoutParams.height = r1;
        this.binding.surface.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVideoName() {
        MediaDef.UsbVideoInfo currentPlaying = this.videoViewModel.getCurrentPlaying(this.currentUsbType);
        this.binding.tvVideoName.setText(currentPlaying != null ? currentPlaying.name : null);
        this.binding.inVideoCover.tvVideoName.setText(currentPlaying != null ? currentPlaying.name : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayPauseIcon() {
        this.binding.ivPlayPause.setImageResource(this.videoViewModel.getPlayingState(this.currentUsbType) == 2 ? C0632R.drawable.video_player_btn_play : C0632R.drawable.video_player_btn_pause);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDuration() {
        long playingDuration = this.videoViewModel.getPlayingDuration(this.currentUsbType);
        this.binding.tvMusicDuration.setText(Utils.getTimeString(playingDuration));
        this.binding.inVideoCover.tvMusicDuration.setText(Utils.getTimeString(playingDuration));
        this.binding.tvFastMusicDuration.setText(Utils.getTimeString(playingDuration));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePosition() {
        if (!this.playerSeekBarTracking) {
            long playingPosition = this.videoViewModel.getPlayingPosition(this.currentUsbType);
            this.binding.tvMusicTime.setText(Utils.getTimeString(playingPosition));
            this.binding.inVideoCover.tvMusicTime.setText(Utils.getTimeString(playingPosition));
            long playingDuration = this.videoViewModel.getPlayingDuration(this.currentUsbType);
            int max = (int) (playingDuration != 0 ? (this.binding.sbTimeBar.getMax() * playingPosition) / playingDuration : 0L);
            this.binding.sbTimeBar.setProgress(max);
            this.binding.inVideoCover.sbTimeBar.setProgress(max);
            return;
        }
        PFLog.m25d(TAG, "playerSeekBarTracking, ignore");
    }

    private void initList() {
        VideoPlayerListAdapter videoPlayerListAdapter = new VideoPlayerListAdapter(getContext(), ThumbnailCache.getThumbnailCache(this.currentUsbType));
        this.videoPlayerListAdapter = videoPlayerListAdapter;
        videoPlayerListAdapter.setOnItemClickListener(new VideoPlayerListAdapter.OnItemClickListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.29
            @Override // com.chery.media.view.adapter.VideoPlayerListAdapter.OnItemClickListener
            public void onItemClick(int r2, MediaDef.UsbVideoInfo usbVideoInfo) {
                VideoPlayerFragment.this.videoViewModel.changeCurrentPlaying(VideoPlayerFragment.this.currentUsbType, usbVideoInfo);
                VideoPlayerFragment.this.videoViewModel.play(VideoPlayerFragment.this.currentUsbType);
            }
        });
        this.binding.rvVideoList.setAdapter(this.videoPlayerListAdapter);
        this.binding.rvVideoList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.binding.rvVideoList.setSeekBar(this.binding.sbListBar, this.binding.llListBar);
        this.binding.rvVideoList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.30
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int r2) {
                super.onScrollStateChanged(recyclerView, r2);
                if (r2 == 1) {
                    VideoPlayerFragment.this.clearFullScreenTimer();
                } else if (r2 == 0) {
                    VideoPlayerFragment.this.resetFullScreenTimer();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateList() {
        this.videoPlayerListAdapter.setVideoList(this.videoViewModel.getPlaylist(this.currentUsbType));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateListCurrentPlaying() {
        this.videoPlayerListAdapter.setCurrentVideoInfo(this.videoViewModel.getCurrentPlaying(this.currentUsbType));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateListCurrentPlayingIconAnim() {
        this.videoPlayerListAdapter.setPlaying(this.videoViewModel.getPlayingState(this.currentUsbType) == 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetFullScreenTimer() {
        PFLog.m25d(TAG, "resetFullScreenTimer");
        if (this.fullscreenRun == null) {
            this.fullscreenRun = new Runnable() { // from class: com.chery.media.view.fragment.VideoPlayerFragment.31
                @Override // java.lang.Runnable
                public void run() {
                    VideoPlayerFragment.this.setFullScreenView();
                }
            };
        }
        this.handler.removeCallbacks(this.fullscreenRun);
        this.handler.postDelayed(this.fullscreenRun, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearFullScreenTimer() {
        PFLog.m25d(TAG, "clearFullScreenTimer");
        Runnable runnable = this.fullscreenRun;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVideoCover() {
        if (CarAdapterUse.getCarConfigInfoClient().isPartNumberBrazil()) {
            this.binding.inVideoCover.tvCoverHint.setText(String.format(getContext().getString(C0632R.string.video_player_cover_hint), 5));
        } else if (37 == CarAdapterUse.getCarConfigInfoClient().getCountry()) {
            this.binding.inVideoCover.tvCoverHint.setText(getContext().getString(C0632R.string.video_player_cover_forbidden));
        } else if (CarAdapterUse.getCarConfigInfoClient().isRudderRight()) {
            this.binding.inVideoCover.tvCoverHint.setText(String.format(getContext().getString(C0632R.string.video_player_cover_hint), 0));
        } else {
            this.binding.inVideoCover.tvCoverHint.setText(String.format(getContext().getString(C0632R.string.video_player_cover_hint), 15));
        }
        if (CarAdapterUse.getCarConfigInfoClient().isPartNumberBrazil()) {
            this.binding.inVideoCover.getRoot().setVisibility(this.videoViewModel.getSpeedLimitView().getValue().booleanValue() ? 0 : 4);
        } else {
            this.binding.inVideoCover.getRoot().setVisibility((this.videoViewModel.getSpeedLimitSetting().getValue().booleanValue() && this.videoViewModel.getSpeedLimitView().getValue().booleanValue()) ? 0 : 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setControlView(boolean z) {
        PFLog.m25d(TAG, "setControlView autoDismiss:" + z);
        this.binding.clControl.setVisibility(0);
        this.binding.clPlayControl.setVisibility(0);
        this.binding.tvVideoName.setVisibility(0);
        this.binding.sbTimeBar.setVisibility(0);
        this.binding.llTime.setVisibility(0);
        this.binding.clVideoList.setVisibility(4);
        this.binding.clBrightnessSetting.setVisibility(4);
        this.binding.clVolSetting.setVisibility(4);
        this.binding.llFastTime.setVisibility(4);
        if (z) {
            resetFullScreenTimer();
        } else {
            clearFullScreenTimer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFullScreenView() {
        PFLog.m25d(TAG, "setFullScreenView");
        this.binding.clControl.setVisibility(4);
        this.binding.sbTimeBar.setVisibility(4);
        this.binding.llTime.setVisibility(4);
        this.binding.clVideoList.setVisibility(4);
        this.binding.clBrightnessSetting.setVisibility(4);
        this.binding.clVolSetting.setVisibility(4);
        this.binding.llFastTime.setVisibility(4);
        clearFullScreenTimer();
    }
}
