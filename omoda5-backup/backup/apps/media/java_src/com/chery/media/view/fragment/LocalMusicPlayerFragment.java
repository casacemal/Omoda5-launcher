package com.chery.media.view.fragment;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
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
import com.chery.media.databinding.FragmentLocalMusicPlayerBinding;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.ThumbnailClient;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.util.Utils;
import com.chery.media.view.activity.MediaActivity;
import com.chery.media.view.adapter.LocalMusicPlayerListAdapter;
import com.chery.media.viewmodel.LocalMusicViewModel;
import java.util.List;

/* loaded from: classes.dex */
public class LocalMusicPlayerFragment extends FragmentBase {
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private static final String TAG = CarLog.concatTag("MEDIA", LocalMusicPlayerFragment.class);
    private FragmentLocalMusicPlayerBinding binding;
    private Handler handler;
    private LocalMusicPlayerListAdapter localMusicPlayerListAdapter;
    private LocalMusicViewModel localMusicViewModel;
    private String mParam1;
    private String mParam2;
    private boolean playerSeekBarTracking = false;

    public static LocalMusicPlayerFragment newInstance(String str, String str2) {
        LocalMusicPlayerFragment localMusicPlayerFragment = new LocalMusicPlayerFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        bundle.putString(ARG_PARAM2, str2);
        localMusicPlayerFragment.setArguments(bundle);
        return localMusicPlayerFragment;
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
            this.binding = FragmentLocalMusicPlayerBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_local_music_player_right, viewGroup, false));
        } else {
            this.binding = FragmentLocalMusicPlayerBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_local_music_player, viewGroup, false));
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
            this.localMusicViewModel.requestAudioFocus();
        }
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding.inPlayerControl.anAlbumCover.cancelAnim();
        this.binding.tvMusicTitle.setText((CharSequence) null);
        this.localMusicPlayerListAdapter.setMusicList(null);
        this.binding.rvMusicList.setAdapter(null);
        this.binding.rvMusicList.setLayoutManager(null);
    }

    private void initViewModel() {
        PFLog.m25d(TAG, "initViewModel");
        LocalMusicViewModel localMusicViewModel = (LocalMusicViewModel) new ViewModelProvider(getActivity()).get(LocalMusicViewModel.class);
        this.localMusicViewModel = localMusicViewModel;
        localMusicViewModel.getPlaylist().observe(getViewLifecycleOwner(), new Observer<List<MediaDef.LocalMusicInfo>>() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.1
            @Override // androidx.lifecycle.Observer
            public void onChanged(List<MediaDef.LocalMusicInfo> list) {
                LocalMusicPlayerFragment.this.updatePlaylist();
                LocalMusicPlayerFragment.this.updateCurrentPlayingItemPosition();
            }
        });
        this.localMusicViewModel.getCurrentPlaying().observe(getViewLifecycleOwner(), new Observer<MediaDef.LocalMusicInfo>() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.2
            @Override // androidx.lifecycle.Observer
            public void onChanged(MediaDef.LocalMusicInfo localMusicInfo) {
                LocalMusicPlayerFragment.this.updateTitleAndArtist();
                LocalMusicPlayerFragment.this.updateCover();
                LocalMusicPlayerFragment.this.updateCurrentPlaying();
                LocalMusicPlayerFragment.this.updateCurrentPlayingItemPosition();
            }
        });
        this.localMusicViewModel.isPlaying().observe(getViewLifecycleOwner(), new Observer<Boolean>() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.3
            @Override // androidx.lifecycle.Observer
            public void onChanged(Boolean bool) {
                LocalMusicPlayerFragment.this.updatePlayPauseIcon();
                LocalMusicPlayerFragment.this.updateAlbumCoverAnim();
                LocalMusicPlayerFragment.this.updateCurrentPlayingIconAnim();
            }
        });
        this.localMusicViewModel.getDuration().observe(getViewLifecycleOwner(), new Observer<Long>() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.4
            @Override // androidx.lifecycle.Observer
            public void onChanged(Long l) {
                LocalMusicPlayerFragment.this.updateDuration();
            }
        });
        this.localMusicViewModel.getPosition().observe(getViewLifecycleOwner(), new Observer<Long>() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.5
            @Override // androidx.lifecycle.Observer
            public void onChanged(Long l) {
                LocalMusicPlayerFragment.this.updatePosition();
            }
        });
        this.localMusicViewModel.getPlayMode().observe(getViewLifecycleOwner(), new Observer<Integer>() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.6
            @Override // androidx.lifecycle.Observer
            public void onChanged(Integer num) {
                LocalMusicPlayerFragment.this.updatePlayMode();
            }
        });
    }

    private void initView() {
        PFLog.m25d(TAG, "initView");
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
        this.binding.ivRetract.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaActivity mediaActivity = (MediaActivity) LocalMusicPlayerFragment.this.getActivity();
                if (mediaActivity != null) {
                    mediaActivity.replaceAll(MediaMainFragment.newInstance(null, null));
                }
            }
        });
        this.binding.inPlayerControl.ivPlaypause.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LocalMusicPlayerFragment.this.localMusicViewModel.playPause();
            }
        });
        this.binding.inPlayerControl.ivLast.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Log.d(LocalMusicPlayerFragment.TAG, "ivLast onClick");
                LocalMusicPlayerFragment.this.localMusicViewModel.playPrior();
            }
        });
        this.binding.inPlayerControl.ivLast.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.10
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Log.d(LocalMusicPlayerFragment.TAG, "ivLast onLongClick");
                LocalMusicPlayerFragment.this.localMusicViewModel.fastBackward();
                return true;
            }
        });
        this.binding.inPlayerControl.ivLast.setOnTouchListener(new View.OnTouchListener() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.11
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 1 && actionMasked != 3 && 0.0f <= motionEvent.getX() && motionEvent.getX() <= view.getWidth() && 0.0f <= motionEvent.getY() && motionEvent.getY() <= view.getHeight()) {
                    return false;
                }
                Log.d(LocalMusicPlayerFragment.TAG, "ivLast UP or CANCEL");
                LocalMusicPlayerFragment.this.localMusicViewModel.stopFastPlay();
                return false;
            }
        });
        this.binding.inPlayerControl.ivNext.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Log.d(LocalMusicPlayerFragment.TAG, "ivNext onClick");
                LocalMusicPlayerFragment.this.localMusicViewModel.playNext();
            }
        });
        this.binding.inPlayerControl.ivNext.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.13
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Log.d(LocalMusicPlayerFragment.TAG, "ivNext onLongClick");
                LocalMusicPlayerFragment.this.localMusicViewModel.fastForward();
                return true;
            }
        });
        this.binding.inPlayerControl.ivNext.setOnTouchListener(new View.OnTouchListener() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.14
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 1 && actionMasked != 3 && 0.0f <= motionEvent.getX() && motionEvent.getX() <= view.getWidth() && 0.0f <= motionEvent.getY() && motionEvent.getY() <= view.getHeight()) {
                    return false;
                }
                Log.d(LocalMusicPlayerFragment.TAG, "ivNext UP or CANCEL");
                LocalMusicPlayerFragment.this.localMusicViewModel.stopFastPlay();
                return false;
            }
        });
        this.binding.inPlayerTimeBar.sbTimeBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.15
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int r4, boolean z) {
                if (z) {
                    LocalMusicPlayerFragment.this.binding.inPlayerTimeBar.tvMusicTime.setText(Utils.getTimeString((LocalMusicPlayerFragment.this.localMusicViewModel.getDuration().getValue().longValue() * r4) / 1000));
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                PFLog.m25d(LocalMusicPlayerFragment.TAG, "onStartTrackingTouch");
                LocalMusicPlayerFragment.this.playerSeekBarTracking = true;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                PFLog.m25d(LocalMusicPlayerFragment.TAG, "onStopTrackingTouch");
                LocalMusicPlayerFragment.this.playerSeekBarTracking = false;
                LocalMusicPlayerFragment.this.localMusicViewModel.seekTo((LocalMusicPlayerFragment.this.localMusicViewModel.getDuration().getValue().longValue() * seekBar.getProgress()) / 1000);
                LocalMusicPlayerFragment.this.localMusicViewModel.play();
            }
        });
        this.binding.ivMusicMode.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int r3 = LocalMusicPlayerFragment.this.localMusicViewModel.getPlayMode().getValue().intValue();
                if (r3 == 0) {
                    LocalMusicPlayerFragment.this.localMusicViewModel.changePlayMode(1);
                } else if (r3 == 1) {
                    LocalMusicPlayerFragment.this.localMusicViewModel.changePlayMode(2);
                } else {
                    if (r3 != 2) {
                        return;
                    }
                    LocalMusicPlayerFragment.this.localMusicViewModel.changePlayMode(0);
                }
            }
        });
        this.binding.ivSoundEffects.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new PageManager(LocalMusicPlayerFragment.this.getContext()).openPage(PackageConstants.Settings.PACKAGE_NAME, PackageConstants.Settings.SYSTEM_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, new String[]{PageConstants.SystemSettings.PAGE_ID_KEY, PageConstants.SystemSettings.IS_FINISH_SELF}, new String[]{"8", "1"});
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTitleAndArtist() {
        MediaDef.LocalMusicInfo value = this.localMusicViewModel.getCurrentPlaying().getValue();
        if (value != null) {
            this.binding.tvMusicTitle.setVisibility(0);
            this.binding.tvMusicArtist.setVisibility(0);
            this.binding.tvMusicTitle.setText(value.originalMusicInfo.title);
            if (value.originalMusicInfo.artist.isEmpty() || "<unknown>".equals(value.originalMusicInfo.artist)) {
                this.binding.tvMusicArtist.setText("");
                return;
            } else {
                this.binding.tvMusicArtist.setText(value.originalMusicInfo.artist);
                return;
            }
        }
        this.binding.tvMusicTitle.setVisibility(8);
        this.binding.tvMusicArtist.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.chery.media.view.fragment.LocalMusicPlayerFragment$18] */
    public void updateCover() {
        this.binding.inPlayerControl.anAlbumCover.setAlbumCover(getActivity().getDrawable(C0632R.drawable.media_player_album_cover_default));
        final MediaDef.LocalMusicInfo value = this.localMusicViewModel.getCurrentPlaying().getValue();
        if (value != null) {
            new Thread() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.18
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    Bitmap bitmapCreateAudioThumbnail = ThumbnailClient.getInstance().createAudioThumbnail(value.path);
                    if (bitmapCreateAudioThumbnail != null) {
                        final Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateAudioThumbnail, 210, 210, true);
                        LocalMusicPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.18.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (LocalMusicPlayerFragment.this.getContext() != null) {
                                    RoundedBitmapDrawable roundedBitmapDrawableCreate = RoundedBitmapDrawableFactory.create(LocalMusicPlayerFragment.this.getResources(), bitmapCreateScaledBitmap);
                                    roundedBitmapDrawableCreate.setCircular(true);
                                    roundedBitmapDrawableCreate.setAntiAlias(true);
                                    LocalMusicPlayerFragment.this.binding.inPlayerControl.anAlbumCover.setAlbumCover(roundedBitmapDrawableCreate);
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
        if (this.localMusicViewModel.isPlaying().getValue().booleanValue()) {
            this.binding.inPlayerControl.ivPlaypause.setImageDrawable(getContext().getDrawable(C0632R.drawable.media_player_btn_play));
        } else {
            this.binding.inPlayerControl.ivPlaypause.setImageDrawable(getContext().getDrawable(C0632R.drawable.media_player_btn_pause));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDuration() {
        this.binding.inPlayerTimeBar.tvMusicDuration.setText(Utils.getTimeString(this.localMusicViewModel.getDuration().getValue().longValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePosition() {
        if (!this.playerSeekBarTracking) {
            long jLongValue = this.localMusicViewModel.getPosition().getValue().longValue();
            this.binding.inPlayerTimeBar.tvMusicTime.setText(Utils.getTimeString(jLongValue));
            long jLongValue2 = this.localMusicViewModel.getDuration().getValue().longValue();
            this.binding.inPlayerTimeBar.sbTimeBar.setProgress((int) (jLongValue2 != 0 ? (jLongValue * 1000) / jLongValue2 : 0L));
            return;
        }
        PFLog.m25d(TAG, "playerSeekBarTracking, ignore");
    }

    private void initPlaylist() {
        LocalMusicPlayerListAdapter localMusicPlayerListAdapter = new LocalMusicPlayerListAdapter(getContext(), this.localMusicViewModel);
        this.localMusicPlayerListAdapter = localMusicPlayerListAdapter;
        localMusicPlayerListAdapter.setOnItemClickListener(new LocalMusicPlayerListAdapter.OnItemClickListener() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.19
            @Override // com.chery.media.view.adapter.LocalMusicPlayerListAdapter.OnItemClickListener
            public void onItemClick(int r1, MediaDef.LocalMusicInfo localMusicInfo) {
                LocalMusicPlayerFragment.this.localMusicViewModel.changeCurrentPlaying(localMusicInfo);
                LocalMusicPlayerFragment.this.localMusicViewModel.play();
            }
        });
        this.binding.rvMusicList.setAdapter(this.localMusicPlayerListAdapter);
        this.binding.rvMusicList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.binding.rvMusicList.setSeekBar(this.binding.sbMusicListBar, this.binding.llMusicListBar);
        this.binding.rvMusicList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.20
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                if (r3 != 0) {
                    LocalMusicPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.20.1
                        @Override // java.lang.Runnable
                        public void run() {
                            LocalMusicPlayerFragment.this.updateListMask();
                        }
                    });
                }
            }
        });
        this.binding.rvMusicList.addOnChildAttachStateChangeListener(new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.21
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(View view) {
                LocalMusicPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.21.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LocalMusicPlayerFragment.this.updateListMask();
                    }
                });
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
                LocalMusicPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.LocalMusicPlayerFragment.21.2
                    @Override // java.lang.Runnable
                    public void run() {
                        LocalMusicPlayerFragment.this.updateListMask();
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlaylist() {
        this.localMusicPlayerListAdapter.setMusicList(this.localMusicViewModel.getPlaylist().getValue());
        this.binding.tvMusicListTitle.setText(String.format("%s (%s)", getString(C0632R.string.media_player_list_title), Integer.valueOf(this.localMusicViewModel.getPlaylist().getValue().size())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlaying() {
        this.localMusicPlayerListAdapter.setCurrentPlaying(this.localMusicViewModel.getCurrentPlaying().getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlayingIconAnim() {
        this.localMusicPlayerListAdapter.setPlaying(this.localMusicViewModel.isPlaying().getValue().booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlayingItemPosition() {
        List<MediaDef.LocalMusicInfo> musicList;
        int r0;
        if (this.binding.rvMusicList.getScrollState() != 0 || (musicList = this.localMusicPlayerListAdapter.getMusicList()) == null || (r0 = musicList.indexOf(this.localMusicViewModel.getCurrentPlaying().getValue())) < 0) {
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
        int r0 = this.localMusicViewModel.getPlayMode().getValue().intValue();
        if (r0 == 0) {
            this.binding.ivMusicMode.setImageResource(C0632R.drawable.media_mode_btn_single);
        } else if (r0 == 1) {
            this.binding.ivMusicMode.setImageResource(C0632R.drawable.media_mode_btn_shuffle);
        } else {
            if (r0 != 2) {
                return;
            }
            this.binding.ivMusicMode.setImageResource(C0632R.drawable.media_mode_btn_circle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAlbumCoverAnim() {
        if (this.localMusicViewModel.isPlaying().getValue().booleanValue()) {
            this.binding.inPlayerControl.anAlbumCover.startAnim();
        } else {
            this.binding.inPlayerControl.anAlbumCover.pauseAnim();
        }
    }
}
