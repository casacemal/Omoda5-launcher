package com.chery.media.view.fragment;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
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
import com.chery.media.databinding.FragmentRadioPlayerBinding;
import com.chery.media.model.business.RadioBusiness;
import com.chery.media.model.business.RadioDef;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.view.activity.MediaActivity;
import com.chery.media.view.adapter.RadioListAdapter;
import com.chery.media.view.component.ArcScaleView;
import com.chery.media.viewmodel.DabViewModel;
import com.chery.media.viewmodel.RadioViewModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class RadioPlayerFragment extends FragmentBase {
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private static final String TAG = CarLog.concatTag(CarLog.TAG_TUNER, RadioPlayerFragment.class);
    private FragmentRadioPlayerBinding binding;
    private DabViewModel dabViewModel;
    private Handler handler;
    private Integer mCurrentChannel;
    private String mParam1;
    private String mParam2;
    private RadioListAdapter radioListAdapter;
    private RadioViewModel radioViewModel;
    private List<RadioDef> radioList = new ArrayList();
    private boolean hasDab = true;
    private Observer<RadioDef> currentChannelObserver = new Observer<RadioDef>() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.20
        @Override // androidx.lifecycle.Observer
        public void onChanged(RadioDef radioDef) {
            SpannableString spannableString;
            Integer numValueOf = Integer.valueOf(radioDef.frequencyKhz);
            RadioPlayerFragment.this.mCurrentChannel = numValueOf;
            PFLog.m25d(RadioPlayerFragment.TAG, "currentChannelObserver :" + radioDef.band + " " + numValueOf);
            if (numValueOf.intValue() > RadioBusiness.FREQ_DIVIDE_BAND.intValue()) {
                if (RadioPlayerFragment.this.radioViewModel.getArea().getValue().intValue() == 1) {
                    spannableString = new SpannableString("FM " + (numValueOf.intValue() / 1000) + "." + String.format("%1$02d", Integer.valueOf((numValueOf.intValue() % 1000) / 10)) + " " + RadioPlayerFragment.this.getContext().getString(C0632R.string.radio_mhz));
                } else {
                    spannableString = new SpannableString("FM " + (numValueOf.intValue() / 1000) + "." + ((numValueOf.intValue() % 1000) / 100) + " " + RadioPlayerFragment.this.getContext().getString(C0632R.string.radio_mhz));
                }
                spannableString.setSpan(new AbsoluteSizeSpan(60), 0, spannableString.length() - 3, 18);
                spannableString.setSpan(new AbsoluteSizeSpan(34), spannableString.length() - 3, spannableString.length(), 18);
                RadioPlayerFragment.this.binding.tvTitle.setText(spannableString);
                RadioPlayerFragment.this.binding.arcScaleview.setRadioBand(1);
                RadioPlayerFragment.this.binding.arcScaleview.setCurrentValue(numValueOf.intValue());
            } else {
                SpannableString spannableString2 = new SpannableString("AM " + numValueOf + " " + RadioPlayerFragment.this.getContext().getString(C0632R.string.radio_khz));
                spannableString2.setSpan(new AbsoluteSizeSpan(60), 0, spannableString2.length() + (-3), 18);
                spannableString2.setSpan(new AbsoluteSizeSpan(34), spannableString2.length() + (-3), spannableString2.length(), 18);
                RadioPlayerFragment.this.binding.tvTitle.setText(spannableString2);
                RadioPlayerFragment.this.binding.arcScaleview.setRadioBand(2);
                RadioPlayerFragment.this.binding.arcScaleview.setCurrentValue(numValueOf.intValue());
            }
            RadioPlayerFragment.this.binding.ivCollection.setSelected(radioDef.isCollection);
            if (RadioPlayerFragment.this.radioViewModel.getTunerState().getValue().intValue() == 0) {
                RadioPlayerFragment.this.updateCurrentPlayingItemPosition();
            }
        }
    };
    private Observer<Integer> currentBandObserver = new Observer<Integer>() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.21
        @Override // androidx.lifecycle.Observer
        public void onChanged(Integer num) {
            if (num.intValue() == 1) {
                RadioPlayerFragment.this.binding.ivDabRadioSwitch.setSelected(true);
                RadioPlayerFragment.this.binding.ivRadioSwitch.setSelected(true);
            } else {
                RadioPlayerFragment.this.binding.ivDabRadioSwitch.setSelected(false);
                RadioPlayerFragment.this.binding.ivRadioSwitch.setSelected(false);
            }
        }
    };
    private Observer<List<RadioDef>> listObserver = new Observer<List<RadioDef>>() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.22
        @Override // androidx.lifecycle.Observer
        public void onChanged(List<RadioDef> list) {
            PFLog.m25d(RadioPlayerFragment.TAG, "radioDefs size :" + list.size());
            boolean z = false;
            for (RadioDef radioDef : list) {
                if (radioDef.frequencyKhz == RadioPlayerFragment.this.mCurrentChannel.intValue()) {
                    z = true;
                    RadioPlayerFragment.this.binding.ivCollection.setSelected(radioDef.isCollection);
                }
            }
            if (!z) {
                RadioPlayerFragment.this.binding.ivCollection.setSelected(false);
            }
            RadioPlayerFragment.this.binding.tvRadioList.setText(RadioPlayerFragment.this.getContext().getString(C0632R.string.radio_list_title) + "（" + list.size() + "）");
            RadioPlayerFragment.this.radioList.clear();
            RadioPlayerFragment.this.radioList.addAll(list);
            RadioPlayerFragment.this.radioListAdapter.setData(RadioPlayerFragment.this.radioList);
            RadioPlayerFragment.this.updateCurrentPlayingItemPosition();
        }
    };
    private Observer<Integer> tunerStateObserver = new Observer<Integer>() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.23
        @Override // androidx.lifecycle.Observer
        public void onChanged(Integer num) throws Resources.NotFoundException {
            PFLog.m25d(RadioPlayerFragment.TAG, "tunerState :" + num);
            int r4 = num.intValue();
            if (r4 == 0) {
                RadioPlayerFragment.this.binding.ivRadioScan.clearAnimation();
                RadioPlayerFragment.this.binding.ivRadioScan.setVisibility(8);
                RadioPlayerFragment.this.binding.tvRadioScaning.setVisibility(8);
                RadioPlayerFragment.this.updateCurrentPlayingItemPosition();
                return;
            }
            if (r4 != 5) {
                return;
            }
            RadioPlayerFragment.this.radioList.clear();
            RadioPlayerFragment.this.radioListAdapter.setData(RadioPlayerFragment.this.radioList);
            RadioPlayerFragment.this.binding.ivRadioScan.setVisibility(0);
            RadioPlayerFragment.this.binding.tvRadioScaning.setVisibility(0);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(RadioPlayerFragment.this.getContext(), C0632R.anim.rotate);
            animationLoadAnimation.setInterpolator(new LinearInterpolator());
            RadioPlayerFragment.this.binding.ivRadioScan.startAnimation(animationLoadAnimation);
        }
    };
    private Observer<Boolean> playingStateObserver = new Observer<Boolean>() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.24
        @Override // androidx.lifecycle.Observer
        public void onChanged(Boolean bool) {
            PFLog.m25d(RadioPlayerFragment.TAG, "playingStateObserver:" + bool);
            if (!bool.booleanValue()) {
                RadioPlayerFragment.this.binding.inPlayerControl.ivPlaypause.setImageDrawable(RadioPlayerFragment.this.getContext().getDrawable(C0632R.drawable.media_player_btn_pause));
                RadioPlayerFragment.this.binding.inPlayerControl.anAlbumCover.pauseAnim();
                RadioPlayerFragment.this.radioListAdapter.setPlay(false);
            } else {
                RadioPlayerFragment.this.binding.inPlayerControl.ivPlaypause.setImageDrawable(RadioPlayerFragment.this.getContext().getDrawable(C0632R.drawable.media_player_btn_play));
                RadioPlayerFragment.this.binding.inPlayerControl.anAlbumCover.startAnim();
                RadioPlayerFragment.this.radioListAdapter.setPlay(true);
            }
        }
    };
    private Observer<Integer> tunerAreaeObserver = new Observer<Integer>() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.25
        @Override // androidx.lifecycle.Observer
        public void onChanged(Integer num) {
            RadioPlayerFragment.this.binding.arcScaleview.setRadioRegion(num.intValue());
            RadioPlayerFragment.this.radioListAdapter.setRegion(num.intValue());
        }
    };

    public static RadioPlayerFragment newInstance(String str, String str2) {
        RadioPlayerFragment radioPlayerFragment = new RadioPlayerFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        bundle.putString(ARG_PARAM2, str2);
        radioPlayerFragment.setArguments(bundle);
        return radioPlayerFragment;
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
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        initViewModel();
        initView();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (isTopWhenStarted() && ((MediaActivity) getActivity()).getCurrentFragment() == this) {
            this.radioViewModel.requestAudioFocus();
        }
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.radioViewModel.cancel();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (CarAdapterUse.getCarConfigInfoClient().isRudderRight()) {
            this.binding = FragmentRadioPlayerBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_radio_player_right, viewGroup, false));
        } else {
            this.binding = FragmentRadioPlayerBinding.bind(getLayoutInflater().inflate(C0632R.layout.fragment_radio_player, viewGroup, false));
        }
        return this.binding.getRoot();
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding.inPlayerControl.anAlbumCover.cancelAnim();
        this.binding.ivRadioScan.clearAnimation();
        this.radioListAdapter.setData(null);
        this.binding.rvRadioList.setAdapter(null);
        this.binding.rvRadioList.setLayoutManager(null);
    }

    private void initView() {
        this.hasDab = CarAdapterUse.getCarConfigInfoClient().hasDAB();
        this.binding.ivRadioSwitch.setVisibility(this.hasDab ? 8 : 0);
        this.binding.vRadioSwitchAm.setVisibility(this.hasDab ? 8 : 0);
        this.binding.vRadioSwitchFm.setVisibility(this.hasDab ? 8 : 0);
        this.binding.ivDabRadioSwitch.setVisibility(this.hasDab ? 0 : 8);
        this.binding.vDabRadioSwitchAm.setVisibility(this.hasDab ? 0 : 8);
        this.binding.vDabRadioSwitchFm.setVisibility(this.hasDab ? 0 : 8);
        this.binding.vDabRadioSwitchDab.setVisibility(this.hasDab ? 0 : 8);
        this.binding.ivRetract.setEnabled(true);
        this.binding.ivRetract.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaActivity mediaActivity = (MediaActivity) RadioPlayerFragment.this.getActivity();
                if (mediaActivity != null) {
                    mediaActivity.replaceAll(MediaMainFragment.newInstance(null, null));
                }
            }
        });
        this.binding.inPlayerControl.ivPlaypause.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PFLog.m25d(RadioPlayerFragment.TAG, "Player Playpause onClick");
                RadioPlayerFragment.this.radioViewModel.playPause();
            }
        });
        this.binding.inPlayerControl.ivPlaypause.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.3
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                PFLog.m25d(RadioPlayerFragment.TAG, "Player Playpause onLongClick");
                RadioPlayerFragment.this.radioViewModel.playPause();
                return true;
            }
        });
        this.binding.inPlayerControl.ivLast.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PFLog.m25d(RadioPlayerFragment.TAG, "Player Pre onClick.");
                RadioPlayerFragment.this.radioViewModel.seek(1, true);
            }
        });
        this.binding.inPlayerControl.ivLast.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.5
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                PFLog.m25d(RadioPlayerFragment.TAG, "Player Pre onLongClick.");
                RadioPlayerFragment.this.radioViewModel.tuneByList(1);
                return true;
            }
        });
        this.binding.inPlayerControl.ivNext.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PFLog.m25d(RadioPlayerFragment.TAG, "Player Next onClick.");
                RadioPlayerFragment.this.radioViewModel.seek(0, true);
            }
        });
        this.binding.inPlayerControl.ivNext.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.7
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                PFLog.m25d(RadioPlayerFragment.TAG, "Player Next onLongClick.");
                RadioPlayerFragment.this.radioViewModel.tuneByList(0);
                return true;
            }
        });
        SpannableString spannableString = new SpannableString("FM 108.0 " + getContext().getString(C0632R.string.radio_mhz));
        spannableString.setSpan(new AbsoluteSizeSpan(60), 0, 9, 18);
        spannableString.setSpan(new AbsoluteSizeSpan(34), 9, 12, 18);
        this.binding.tvTitle.setText(spannableString);
        this.binding.ivRadioSwitch.setEnabled(true);
        this.binding.vDabRadioSwitchDab.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaActivity mediaActivity = (MediaActivity) RadioPlayerFragment.this.getActivity();
                if (mediaActivity != null) {
                    RadioPlayerFragment.this.dabViewModel.requestAudioFocus();
                    mediaActivity.gotoFragment(new DabPlayerFragment());
                }
            }
        });
        this.binding.vDabRadioSwitchFm.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RadioPlayerFragment.this.radioViewModel.changeBand(1);
            }
        });
        this.binding.vDabRadioSwitchAm.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RadioPlayerFragment.this.radioViewModel.changeBand(0);
            }
        });
        this.binding.vRadioSwitchFm.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RadioPlayerFragment.this.radioViewModel.changeBand(1);
            }
        });
        this.binding.vRadioSwitchAm.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RadioPlayerFragment.this.radioViewModel.changeBand(0);
            }
        });
        this.binding.arcScaleview.setOnValueChangedListener(new ArcScaleView.OnValueChangedListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.13
            @Override // com.chery.media.view.component.ArcScaleView.OnValueChangedListener
            public void onValueChanged(int r12) {
                SpannableString spannableString2;
                PFLog.m25d(RadioPlayerFragment.TAG, "arcScaleview :" + r12);
                if (r12 > RadioBusiness.FREQ_DIVIDE_BAND.intValue()) {
                    if (RadioPlayerFragment.this.radioViewModel.getArea().getValue().intValue() == 1) {
                        spannableString2 = new SpannableString("FM " + (r12 / 1000) + "." + String.format("%1$02d", Integer.valueOf((r12 % 1000) / 10)) + " " + RadioPlayerFragment.this.getContext().getString(C0632R.string.radio_mhz));
                    } else {
                        spannableString2 = new SpannableString("FM " + (r12 / 1000) + "." + ((r12 % 1000) / 100) + " " + RadioPlayerFragment.this.getContext().getString(C0632R.string.radio_mhz));
                    }
                    spannableString2.setSpan(new AbsoluteSizeSpan(60), 0, spannableString2.length() - 3, 18);
                    spannableString2.setSpan(new AbsoluteSizeSpan(34), spannableString2.length() - 3, spannableString2.length(), 18);
                    RadioPlayerFragment.this.binding.tvTitle.setText(spannableString2);
                    RadioPlayerFragment.this.binding.arcScaleview.setCurrentValue(r12);
                    return;
                }
                SpannableString spannableString3 = new SpannableString("AM " + r12 + " " + RadioPlayerFragment.this.getContext().getString(C0632R.string.radio_khz));
                spannableString3.setSpan(new AbsoluteSizeSpan(60), 0, spannableString3.length() + (-3), 18);
                spannableString3.setSpan(new AbsoluteSizeSpan(34), spannableString3.length() + (-3), spannableString3.length(), 18);
                RadioPlayerFragment.this.binding.tvTitle.setText(spannableString3);
                RadioPlayerFragment.this.binding.arcScaleview.setCurrentValue(r12);
            }

            @Override // com.chery.media.view.component.ArcScaleView.OnValueChangedListener
            public void onChangeFinished(int r4) {
                PFLog.m25d(RadioPlayerFragment.TAG, "arcScaleview onChangeFinished:" + r4);
                RadioPlayerFragment.this.radioViewModel.tune(r4);
            }
        });
        this.binding.ivScan.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RadioPlayerFragment.this.radioViewModel.scan(0, true);
            }
        });
        this.binding.rvRadioList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.radioListAdapter = new RadioListAdapter(getActivity().getBaseContext(), this.radioList);
        this.binding.rvRadioList.setAdapter(this.radioListAdapter);
        this.binding.rvRadioList.setSeekBar(this.binding.sbMusicListBar, this.binding.llMusicListBar);
        this.binding.rvRadioList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.15
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int r2, int r3) {
                super.onScrolled(recyclerView, r2, r3);
                if (r3 != 0) {
                    RadioPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.15.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RadioPlayerFragment.this.updateListMask();
                        }
                    });
                }
            }
        });
        this.binding.rvRadioList.addOnChildAttachStateChangeListener(new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.16
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(View view) {
                RadioPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.16.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RadioPlayerFragment.this.updateListMask();
                    }
                });
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
                RadioPlayerFragment.this.handler.post(new Runnable() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.16.2
                    @Override // java.lang.Runnable
                    public void run() {
                        RadioPlayerFragment.this.updateListMask();
                    }
                });
            }
        });
        this.radioListAdapter.setItemClickListener(new RadioListAdapter.onItemClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.17
            @Override // com.chery.media.view.adapter.RadioListAdapter.onItemClickListener
            public void onItemClicked(int r1) {
                RadioPlayerFragment.this.radioViewModel.tune(r1);
            }

            @Override // com.chery.media.view.adapter.RadioListAdapter.onItemClickListener
            public void onCollectionClicked(int r1, boolean z) {
                RadioPlayerFragment.this.radioViewModel.addCollection(r1, z);
            }
        });
        this.binding.ivCollection.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RadioPlayerFragment.this.radioViewModel.addCollection(RadioPlayerFragment.this.mCurrentChannel.intValue(), !RadioPlayerFragment.this.binding.ivCollection.isSelected());
            }
        });
        this.binding.ivSoundEffects.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.fragment.RadioPlayerFragment.19
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new PageManager(RadioPlayerFragment.this.getContext()).openPage(PackageConstants.Settings.PACKAGE_NAME, PackageConstants.Settings.SYSTEM_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, new String[]{PageConstants.SystemSettings.PAGE_ID_KEY, PageConstants.SystemSettings.IS_FINISH_SELF}, new String[]{"8", "1"});
            }
        });
        this.binding.arcScaleview.setRadioRegion(this.radioViewModel.getArea().getValue().intValue());
        this.radioListAdapter.setRegion(this.radioViewModel.getArea().getValue().intValue());
        updateCurrentPlayingItemPosition();
        updateListMask();
    }

    private void initViewModel() {
        RadioViewModel radioViewModel = (RadioViewModel) new ViewModelProvider(this).get(RadioViewModel.class);
        this.radioViewModel = radioViewModel;
        radioViewModel.getCurrentChannel().observe(getViewLifecycleOwner(), this.currentChannelObserver);
        this.radioViewModel.getCurrentBand().observe(getViewLifecycleOwner(), this.currentBandObserver);
        this.radioViewModel.getRadioList().observe(getViewLifecycleOwner(), this.listObserver);
        this.radioViewModel.getTunerState().observe(getViewLifecycleOwner(), this.tunerStateObserver);
        this.radioViewModel.getPlayingState().observe(getViewLifecycleOwner(), this.playingStateObserver);
        this.radioViewModel.getArea().observe(getViewLifecycleOwner(), this.tunerAreaeObserver);
        this.dabViewModel = (DabViewModel) new ViewModelProvider(this).get(DabViewModel.class);
    }

    @Override // com.chery.media.view.fragment.FragmentBase, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlayingItemPosition() {
        if (this.binding.rvRadioList.getScrollState() != 0 || this.radioList == null) {
            return;
        }
        for (int r1 = 0; r1 < this.radioList.size(); r1++) {
            if (this.radioList.get(r1).frequencyKhz == this.mCurrentChannel.intValue()) {
                ((LinearLayoutManager) this.binding.rvRadioList.getLayoutManager()).scrollToPositionWithOffset(Math.max(r1 - 1, 0), 0);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateListMask() {
        if (this.binding.rvRadioList.getAdapter() == null || this.binding.rvRadioList.getLayoutManager() == null) {
            return;
        }
        if (((LinearLayoutManager) this.binding.rvRadioList.getLayoutManager()).findLastVisibleItemPosition() == this.binding.rvRadioList.getAdapter().getItemCount() - 1) {
            this.binding.ivListMask.setVisibility(4);
        } else {
            this.binding.ivListMask.setVisibility(0);
        }
    }
}
