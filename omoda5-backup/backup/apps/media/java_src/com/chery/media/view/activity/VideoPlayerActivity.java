package com.chery.media.view.activity;

import android.content.Intent;
import android.os.Bundle;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.avn.tools.activity.ActivityUtils;
import com.avn.tools.log.CarLog;
import com.chery.media.C0632R;
import com.chery.media.view.fragment.VideoPlayerFragment;
import com.chery.media.viewmodel.VideoViewModel;

/* loaded from: classes.dex */
public class VideoPlayerActivity extends BaseActivity {
    private static final String TAG = CarLog.concatTag("MEDIA", VideoPlayerActivity.class);
    public VideoPlayerFragment videoPlayerFragment = VideoPlayerFragment.newInstance(null, null);
    private VideoViewModel videoViewModel;

    @Override // com.chery.media.view.activity.BaseActivity
    protected int getContainerId() {
        return C0632R.id.video_player_fragment_container;
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0632R.layout.activity_video_player);
        VideoViewModel videoViewModel = (VideoViewModel) new ViewModelProvider(this).get(VideoViewModel.class);
        this.videoViewModel = videoViewModel;
        videoViewModel.getCurrentUsbData().observe(this, new Observer<Integer>() { // from class: com.chery.media.view.activity.VideoPlayerActivity.1
            @Override // androidx.lifecycle.Observer
            public void onChanged(Integer num) {
                if (num.intValue() == -1 && ActivityUtils.isOnTop(VideoPlayerActivity.this)) {
                    VideoPlayerActivity.this.startActivity(new Intent(VideoPlayerActivity.this, (Class<?>) VideoActivity.class));
                }
            }
        });
        replaceAll(this.videoPlayerFragment);
    }
}
