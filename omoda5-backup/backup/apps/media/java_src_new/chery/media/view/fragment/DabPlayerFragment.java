package com.chery.media.view.fragment;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
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
import com.chery.media.databinding.FragmentDabPlayerBinding;
import com.chery.media.model.business.DabBusiness;
import com.chery.media.model.business.DabInfo;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.view.activity.DabAnnounceActivity;
import com.chery.media.view.activity.DabEpgActivity;
import com.chery.media.view.activity.DabListActivity;
import com.chery.media.view.activity.MediaActivity;
import com.chery.media.view.adapter.DABPlayListAdapter;
import com.chery.media.view.dialog.Dialog_DABOption;
import com.chery.media.viewmodel.DabViewModel;
import com.chery.media.viewmodel.RadioViewModel;
import java.util.ArrayList;
import java.util.List;
import p004sw.com.dabdrmradio.DabImage;

/* loaded from: classes.dex */
public class DabPlayerFragment extends FragmentBase {
    private static final int MSG_ALL_LIST_CHANGED = 0;
    private static final String TAG = CarLog.concatTag("DAB", DabPlayerFragment.class);
    private FragmentDabPlayerBinding binding;
    private DABPlayListAdapter dabPlayListAdapter;
    private DabViewModel dabViewModel;
    private Handler handler;
    private RadioViewModel radioViewModel;
    private List<DabInfo> dabList = new ArrayList();
    private DabInfo curDabInfo = new DabInfo();
    private boolean isShowShortLabel = true;
    Dialog_DABOption dialogDabOption = null;
    private Observer<Boolean> playingStateObserver = new Observer<Boolean>() { // from class: com.chery.media.view.fragment.DabPlayerFragment.18
        @Override // androidx.lifecycle.Observer
        public void onChanged(Boolean bool) {
            PFLog.m25d(DabPlayerFragment.TAG, "playingStateObserver:" + bool);
            if (!bool.booleanValue()) {
                DabPlayerFragment.this.binding.inPlayerControl.ivPlaypause.setImageDrawable(DabPlayerFragment.this.getContext().getDrawable(C0632R.drawable.media_player_btn_pause));
                DabPlayerFragment.this.binding.inPlayerControl.anAlbumCover.pauseAnim();
                DabPlayerFragment.this.dabPlayListAdapter.setPlayingState(false);
            } else {
                DabPlayerFragment.this.binding.inPlayerControl.ivPlaypause.setImageDrawable(DabPlayerFragment.this.getContext().getDrawable(C0632R.drawable.media_player_btn_play));
                DabPlayerFragment.this.binding.inPlayerControl.anAlbumCover.startAnim();
                DabPlayerFragment.this.dabPlayListAdapter.setPlayingState(true);
            }
        }
    };
    private Observer<List<DabInfo>> curPlayListObserver = new Observer<List<DabInfo>>() { // from class: com.chery.media.view.fragment.DabPlayerFragment.19
        @Override // androidx.lifecycle.Observer
        public void onChanged(List<DabInfo> list) {
            DabPlayerFragment.this.dabList.clear();
            DabPlayerFragment.this.dabList.addAll(list);
            DabPlayerFragment.this.binding.tvDabEmptyList.setVisibility(DabPlayerFragment.this.dabList.size() > 0 ? 8 : 0);
            DabPlayerFragment.this.binding.tvDabList.setText(DabPlayerFragment.this.getContext().getString(C0632R.string.media_player_list_title) + "（" + DabPlayerFragment.this.dabList.size() + "）");
            DabPlayerFragment.this.dabPlayListAdapter.setData(DabPlayerFragment.this.dabList);
            DabPlayerFragment.this.updateCurrentPlayingItemPosition();
        }
    };
    private Observer<DabInfo> curPlayInfoObserver = new Observer<DabInfo>() { // from class: com.chery.media.view.fragment.DabPlayerFragment.20
        @Override // androidx.lifecycle.Observer
        public void onChanged(DabInfo dabInfo) {
            DabPlayerFragment.this.curDabInfo = dabInfo;
            DabPlayerFragment.this.binding.ivCollection.setSelected(DabPlayerFragment.this.dabViewModel.isFavor(dabInfo));
            DabPlayerFragment.this.binding.tvProgramName.setText(dabInfo.serviceName);
            DabPlayerFragment.this.binding.tvChannelName.setText(DabPlayerFragment.this.dabViewModel.getPtyName(dabInfo.servicePty) + "/" + dabInfo.ensembleName);
            DabPlayerFragment.this.dabPlayListAdapter.setCurPlayInfo(dabInfo);
            DabPlayerFragment.this.updateCurrentPlayingItemPosition();
        }
    };
    private Observer<String> playLabelObserver = new Observer<String>() { // from class: com.chery.media.view.fragment.DabPlayerFragment.21
        @Override // androidx.lifecycle.Observer
        public void onChanged(String str) {
            DabPlayerFragment.this.binding.tvLabelShort.setText(str);
            DabPlayerFragment.this.binding.tvLabelLong.setText(str);
            DabPlayerFragment.this.updateLabelBtn();
            DabPlayerFragment.this.resetShortLabelWidth();
            DabPlayerFragment.this.resetLongLabelWidth();
        }
    };
    private Observer<DabImage> playImageObserver = new Observer<DabImage>() { // from class: com.chery.media.view.fragment.DabPlayerFragment.22
        @Override // androidx.lifecycle.Observer
        public void onChanged(DabImage dabImage) {
            Bitmap bitmapDecodeByteArray;
            byte[] imagearray = dabImage.getImagearray();
            if (imagearray.length <= 0 || (bitmapDecodeByteArray = BitmapFactory.decodeByteArray(imagearray, 0, imagearray.length)) == null) {
                return;
            }
            final Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, 210, 210, true);
            DabPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.DabPlayerFragment.22.1
                @Override // java.lang.Runnable
                public void run() {
                    if (DabPlayerFragment.this.getContext() != null) {
                        RoundedBitmapDrawable roundedBitmapDrawableCreate = RoundedBitmapDrawableFactory.create(DabPlayerFragment.this.getResources(), bitmapCreateScaledBitmap);
                        roundedBitmapDrawableCreate.setCircular(true);
                        roundedBitmapDrawableCreate.setAntiAlias(true);
                        DabPlayerFragment.this.binding.inPlayerControl.anAlbumCover.setAlbumCover(roundedBitmapDrawableCreate);
                    }
                }
            });
        }
    };
    private Observer<Boolean> scanStateObserver = new Observer<Boolean>() { // from class: com.chery.media.view.fragment.DabPlayerFragment.23
        @Override // androidx.lifecycle.Observer
        public void onChanged(Boolean bool) throws Resources.NotFoundException {
            DabPlayerFragment.this.updateScanState(bool.booleanValue());
        }
    };
    private Observer<Boolean> dabOptionObserver = new Observer<Boolean>() { // from class: com.chery.media.view.fragment.DabPlayerFragment.24
        @Override // androidx.lifecycle.Observer
        public void onChanged(Boolean bool) {
            if (DabPlayerFragment.this.dialogDabOption != null) {
                DabPlayerFragment.this.dialogDabOption.setSelect(bool.booleanValue());
            }
        }
    };
    private DabBusiness.DabBusinessCallback callback = new DabBusiness.DabBusinessCallback() { // from class: com.chery.media.view.fragment.DabPlayerFragment.25
        @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
        public void favorInfoChanged() {
            DabPlayerFragment.this.binding.ivCollection.setSelected(DabPlayerFragment.this.dabViewModel.isFavor(DabPlayerFragment.this.curDabInfo));
        }

        @Override // com.chery.media.model.business.DabBusiness.DabBusinessCallback
        public void allListChanged() {
            DabPlayerFragment.this.mHandler.sendEmptyMessage(0);
        }
    };
    private Handler mHandler = new Handler() { // from class: com.chery.media.view.fragment.DabPlayerFragment.26
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 0) {
                return;
            }
            DabPlayerFragment.this.updateIconStatus();
        }
    };

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.handler = new Handler();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        initViewModel();
        initView();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (isTopWhenStarted() && ((MediaActivity) getActivity()).getCurrentFragment() == this) {
            this.dabViewModel.requestAudioFocus();
        }
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (CarAdapterUse.getCarConfigInfoClient().isRudderRight()) {
            this.binding = FragmentDabPlayerBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_dab_player_right, viewGroup, false));
        } else {
            this.binding = FragmentDabPlayerBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_dab_player, viewGroup, false));
        }
        return this.binding.getRoot();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding.inPlayerControl.anAlbumCover.cancelAnim();
        this.binding.ivDabScan.clearAnimation();
        this.dabViewModel.removeCallback(this.callback);
        this.dabPlayListAdapter.setData(null);
        this.binding.rvDabList.setAdapter(null);
        this.binding.rvDabList.setLayoutManager(null);
    }

    private void initView() {
        updateIconStatus();
        this.binding.ivRetract.setEnabled(true);
        this.binding.ivRetract.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.-$$Lambda$DabPlayerFragment$pKBXVbojYMQndwfzJTY7ENmvCGk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initView$0$DabPlayerFragment(view);
            }
        });
        this.binding.inPlayerControl.ivPlaypause.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.-$$Lambda$DabPlayerFragment$G_Rxi5Jf6ZAtzGQWvFzJ9ha4d4I
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initView$1$DabPlayerFragment(view);
            }
        });
        this.binding.inPlayerControl.ivPlaypause.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chery.media.view.fragment.-$$Lambda$DabPlayerFragment$_RIpRFC8mByZNbKSoZYy4rvjaIU
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return DabPlayerFragment.lambda$initView$2(view);
            }
        });
        this.binding.inPlayerControl.ivLast.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PFLog.m25d(DabPlayerFragment.TAG, "Player Pre onClick.");
                DabPlayerFragment.this.dabViewModel.playPrevious();
            }
        });
        this.binding.inPlayerControl.ivLast.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                PFLog.m25d(DabPlayerFragment.TAG, "Player Pre onLongClick.");
                return true;
            }
        });
        this.binding.inPlayerControl.ivNext.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PFLog.m25d(DabPlayerFragment.TAG, "Player Next onClick.");
                DabPlayerFragment.this.dabViewModel.playNext();
            }
        });
        this.binding.inPlayerControl.ivNext.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.4
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                PFLog.m25d(DabPlayerFragment.TAG, "Player Next onLongClick.");
                return true;
            }
        });
        this.binding.ivRadioSwitch.setEnabled(true);
        this.binding.vDabSwitchFm.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaActivity mediaActivity = (MediaActivity) DabPlayerFragment.this.getActivity();
                if (mediaActivity != null) {
                    DabPlayerFragment.this.radioViewModel.changeBand(1);
                    mediaActivity.gotoFragment(RadioPlayerFragment.newInstance(null, null));
                }
            }
        });
        this.binding.vDabSwitchAm.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaActivity mediaActivity = (MediaActivity) DabPlayerFragment.this.getActivity();
                if (mediaActivity != null) {
                    DabPlayerFragment.this.radioViewModel.changeBand(0);
                    mediaActivity.gotoFragment(RadioPlayerFragment.newInstance(null, null));
                }
            }
        });
        this.binding.ivListBtn.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DabPlayerFragment.this.startActivity(new Intent(DabPlayerFragment.this.getActivity(), (Class<?>) DabListActivity.class));
            }
        });
        this.binding.ivEpg.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DabPlayerFragment.this.startActivity(new Intent(DabPlayerFragment.this.getActivity(), (Class<?>) DabEpgActivity.class));
            }
        });
        this.binding.ivTa.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DabPlayerFragment.this.startActivity(new Intent(DabPlayerFragment.this.getActivity(), (Class<?>) DabAnnounceActivity.class));
            }
        });
        this.binding.ivSetting.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DabPlayerFragment.this.dialogDabOption = new Dialog_DABOption(DabPlayerFragment.this.getContext(), false);
                DabPlayerFragment.this.dialogDabOption.setConfirmClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.10.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (DabPlayerFragment.this.dabViewModel.getDabOption().getValue() != null) {
                            DabPlayerFragment.this.dabViewModel.setDabOption(!DabPlayerFragment.this.dabViewModel.getDabOption().getValue().booleanValue());
                        }
                    }
                });
                if (DabPlayerFragment.this.dabViewModel.getDabOption().getValue() != null) {
                    DabPlayerFragment.this.dialogDabOption.setSelect(DabPlayerFragment.this.dabViewModel.getDabOption().getValue().booleanValue());
                }
                DabPlayerFragment.this.dialogDabOption.show();
            }
        });
        this.binding.ivLabelOpen.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DabPlayerFragment.this.isShowShortLabel = false;
                DabPlayerFragment.this.binding.ivLabelOpen.setVisibility(8);
                DabPlayerFragment.this.binding.tvLabelShort.setVisibility(8);
                DabPlayerFragment.this.binding.ivLabelLongBg.setVisibility(0);
                DabPlayerFragment.this.binding.tvLabelLong.setVisibility(0);
                DabPlayerFragment.this.binding.ivLabelClose.setVisibility(0);
            }
        });
        this.binding.ivLabelClose.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DabPlayerFragment.this.isShowShortLabel = true;
                DabPlayerFragment.this.binding.ivLabelOpen.setVisibility(0);
                DabPlayerFragment.this.binding.tvLabelShort.setVisibility(0);
                DabPlayerFragment.this.binding.ivLabelLongBg.setVisibility(8);
                DabPlayerFragment.this.binding.tvLabelLong.setVisibility(8);
                DabPlayerFragment.this.binding.ivLabelClose.setVisibility(8);
            }
        });
        this.binding.tvLabelShort.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.13
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DabPlayerFragment.this.binding.tvLabelShort.setText(DabPlayerFragment.this.dabViewModel.getPlayLabel().getValue());
                DabPlayerFragment.this.updateLabelBtn();
                DabPlayerFragment.this.binding.tvLabelShort.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                DabPlayerFragment.this.resetShortLabelWidth();
            }
        });
        this.binding.tvLabelLong.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.14
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DabPlayerFragment.this.resetLongLabelWidth();
            }
        });
        this.binding.rvDabList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.dabPlayListAdapter = new DABPlayListAdapter(getActivity().getBaseContext(), this.dabList);
        this.binding.rvDabList.setAdapter(this.dabPlayListAdapter);
        this.binding.rvDabList.setSeekBar(this.binding.sbDabListBar, this.binding.llDabListBar);
        this.binding.rvDabList.addOnScrollListener(new C095215());
        this.binding.rvDabList.addOnChildAttachStateChangeListener(new C095316());
        this.dabPlayListAdapter.setItemClickListener(new DABPlayListAdapter.onItemClickListener() { // from class: com.chery.media.view.fragment.DabPlayerFragment.17
            @Override // com.chery.media.view.adapter.DABPlayListAdapter.onItemClickListener
            public void onItemClicked(DabInfo dabInfo) {
                DabPlayerFragment.this.dabViewModel.playChannel(dabInfo);
            }

            @Override // com.chery.media.view.adapter.DABPlayListAdapter.onItemClickListener
            public void onCollectionClicked(DabInfo dabInfo, boolean z) {
                if (!z) {
                    DabPlayerFragment.this.dabViewModel.cancelFavor(dabInfo);
                } else if (dabInfo.serviceName != null) {
                    DabPlayerFragment.this.dabViewModel.addFavor(dabInfo);
                }
            }
        });
        this.binding.ivCollection.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.-$$Lambda$DabPlayerFragment$PTYmCn_dJabNnnCyLgq_9M3M6mQ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initView$3$DabPlayerFragment(view);
            }
        });
        this.binding.ivSoundEffects.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.-$$Lambda$DabPlayerFragment$AmoSdNGf8oEKuVBKIGRPNwK2F5A
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initView$4$DabPlayerFragment(view);
            }
        });
        updateCurrentPlayingItemPosition();
        updateListMask();
        if (this.dabViewModel.isFirstTimeUsed()) {
            this.dabViewModel.startScan();
            this.dabViewModel.setFirstTimeUsedFalse();
        }
    }

    public /* synthetic */ void lambda$initView$0$DabPlayerFragment(View view) {
        MediaActivity mediaActivity = (MediaActivity) getActivity();
        if (mediaActivity != null) {
            mediaActivity.replaceAll(MediaMainFragment.newInstance(null, null));
        }
    }

    public /* synthetic */ void lambda$initView$1$DabPlayerFragment(View view) {
        this.dabViewModel.playPause();
    }

    static /* synthetic */ boolean lambda$initView$2(View view) {
        PFLog.m25d(TAG, "Player Playpause onLongClick");
        return true;
    }

    /* renamed from: com.chery.media.view.fragment.DabPlayerFragment$15 */
    class C095215 extends RecyclerView.OnScrollListener {
        C095215() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
            super.onScrolled(recyclerView, r2, r3);
            if (r3 != 0) {
                DabPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.-$$Lambda$DabPlayerFragment$15$9seOvLlmYAFNUPUwjwSUgWfJ2PE
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onScrolled$0$DabPlayerFragment$15();
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onScrolled$0$DabPlayerFragment$15() {
            DabPlayerFragment.this.updateListMask();
        }
    }

    /* renamed from: com.chery.media.view.fragment.DabPlayerFragment$16 */
    class C095316 implements RecyclerView.OnChildAttachStateChangeListener {
        C095316() {
        }

        public /* synthetic */ void lambda$onChildViewAttachedToWindow$0$DabPlayerFragment$16() {
            DabPlayerFragment.this.updateListMask();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewAttachedToWindow(View view) {
            DabPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.-$$Lambda$DabPlayerFragment$16$CrDelMsuZaACewipap5myTXN9h4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onChildViewAttachedToWindow$0$DabPlayerFragment$16();
                }
            });
        }

        public /* synthetic */ void lambda$onChildViewDetachedFromWindow$1$DabPlayerFragment$16() {
            DabPlayerFragment.this.updateListMask();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewDetachedFromWindow(View view) {
            DabPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.-$$Lambda$DabPlayerFragment$16$r1KZCV5rgRKpbnqyj8YmnKDFPcI
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onChildViewDetachedFromWindow$1$DabPlayerFragment$16();
                }
            });
        }
    }

    public /* synthetic */ void lambda$initView$3$DabPlayerFragment(View view) {
        if (this.binding.ivCollection.isSelected()) {
            this.dabViewModel.cancelFavor(this.curDabInfo);
        } else if (this.curDabInfo.serviceName != null) {
            this.dabViewModel.addFavor(this.curDabInfo);
        }
    }

    public /* synthetic */ void lambda$initView$4$DabPlayerFragment(View view) {
        new PageManager(getContext()).openPage(PackageConstants.Settings.PACKAGE_NAME, PackageConstants.Settings.SYSTEM_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, new String[]{PageConstants.SystemSettings.PAGE_ID_KEY, PageConstants.SystemSettings.IS_FINISH_SELF}, new String[]{"8", "1"});
    }

    private void initViewModel() {
        DabViewModel dabViewModel = (DabViewModel) new ViewModelProvider(this).get(DabViewModel.class);
        this.dabViewModel = dabViewModel;
        dabViewModel.getPlayingState().observe(getViewLifecycleOwner(), this.playingStateObserver);
        this.dabViewModel.getCurPlayList().observe(getViewLifecycleOwner(), this.curPlayListObserver);
        this.dabViewModel.getCurPlayInfo().observe(getViewLifecycleOwner(), this.curPlayInfoObserver);
        this.dabViewModel.getPlayLabel().observe(getViewLifecycleOwner(), this.playLabelObserver);
        this.dabViewModel.getPlayImage().observe(getViewLifecycleOwner(), this.playImageObserver);
        this.dabViewModel.getScanState().observe(getViewLifecycleOwner(), this.scanStateObserver);
        this.dabViewModel.getDabOption().observe(getViewLifecycleOwner(), this.dabOptionObserver);
        this.dabViewModel.addCallback(this.callback);
        this.radioViewModel = (RadioViewModel) new ViewModelProvider(this).get(RadioViewModel.class);
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlayingItemPosition() {
        if (this.binding.rvDabList.getScrollState() == 0) {
            PFLog.m29i(TAG, "dabList.size(): " + this.dabList.size() + ", " + this.dabViewModel.getCurPlayList().getValue().size());
            if (this.dabList != null) {
                for (int r1 = 0; r1 < this.dabList.size(); r1++) {
                    if (this.dabList.get(r1).freq == this.curDabInfo.freq && this.dabList.get(r1).ensembleId == this.curDabInfo.ensembleId && this.dabList.get(r1).serviceId == this.curDabInfo.serviceId && this.dabList.get(r1).componentId == this.curDabInfo.componentId) {
                        ((LinearLayoutManager) this.binding.rvDabList.getLayoutManager()).scrollToPositionWithOffset(Math.max(r1 - 1, 0), 0);
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateListMask() {
        if (this.binding.rvDabList.getAdapter() == null || this.binding.rvDabList.getLayoutManager() == null) {
            return;
        }
        if (((LinearLayoutManager) this.binding.rvDabList.getLayoutManager()).findLastVisibleItemPosition() == this.binding.rvDabList.getAdapter().getItemCount() - 1) {
            this.binding.ivListMask.setVisibility(4);
        } else {
            this.binding.ivListMask.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLabelBtn() {
        Layout layout;
        if (!this.isShowShortLabel || (layout = this.binding.tvLabelShort.getLayout()) == null) {
            return;
        }
        int lineCount = layout.getLineCount();
        if (lineCount > 0 && layout.getEllipsisCount(lineCount - 1) > 0) {
            this.binding.ivLabelOpen.setVisibility(0);
        } else {
            this.binding.ivLabelOpen.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetShortLabelWidth() {
        TextPaint paint = this.binding.tvLabelShort.getPaint();
        float width = (this.binding.tvLabelShort.getWidth() * 2) - (this.binding.tvLabelShort.getTextSize() * 3.0f);
        if (this.dabViewModel.getPlayLabel().getValue() != null) {
            this.binding.tvLabelShort.setText(TextUtils.ellipsize(this.dabViewModel.getPlayLabel().getValue(), paint, width, TextUtils.TruncateAt.END));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetLongLabelWidth() {
        TextPaint paint = this.binding.tvLabelLong.getPaint();
        float width = (this.binding.tvLabelLong.getWidth() * 5) - (this.binding.tvLabelLong.getTextSize() * 3.0f);
        if (this.dabViewModel.getPlayLabel().getValue() != null) {
            this.binding.tvLabelLong.setText(TextUtils.ellipsize(this.dabViewModel.getPlayLabel().getValue(), paint, width, TextUtils.TruncateAt.END));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateScanState(boolean z) throws Resources.NotFoundException {
        if (z) {
            this.binding.tvDabEmptyList.setVisibility(8);
            this.binding.ivDabScan.setVisibility(0);
            this.binding.tvDabScaning.setVisibility(0);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), C0632R.anim.rotate);
            animationLoadAnimation.setInterpolator(new LinearInterpolator());
            this.binding.ivDabScan.startAnimation(animationLoadAnimation);
            this.binding.rvDabList.setVisibility(8);
            return;
        }
        this.binding.ivDabScan.clearAnimation();
        this.binding.ivDabScan.setVisibility(8);
        this.binding.tvDabScaning.setVisibility(8);
        this.binding.rvDabList.setVisibility(0);
        this.binding.tvDabEmptyList.setVisibility(this.dabList.size() > 0 ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateIconStatus() {
        if (this.dabViewModel.getALLList().size() > 0) {
            this.binding.ivCollection.setEnabled(true);
            this.binding.ivSoundEffects.setEnabled(true);
            this.binding.ivEpg.setEnabled(true);
            this.binding.ivListBtn.setEnabled(true);
            return;
        }
        this.binding.ivCollection.setEnabled(false);
        this.binding.ivSoundEffects.setEnabled(false);
        this.binding.ivEpg.setEnabled(false);
        this.binding.ivListBtn.setEnabled(false);
    }
}
