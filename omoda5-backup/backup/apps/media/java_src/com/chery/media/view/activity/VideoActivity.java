package com.chery.media.view.activity;

import android.content.Intent;
import android.os.Bundle;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.common.PageConstants;
import com.chery.media.C0632R;
import com.chery.media.model.business.MediaDef;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.view.fragment.VideoMainFragment;

/* loaded from: classes.dex */
public class VideoActivity extends BaseActivity {
    private static final String TAG = CarLog.concatTag("MEDIA", VideoActivity.class);

    @Override // com.chery.media.view.activity.BaseActivity
    protected int getContainerId() {
        return C0632R.id.video_fragment_container;
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (CarAdapterUse.getCarConfigInfoClient().isRudderRight()) {
            setContentView(C0632R.layout.activity_video_right);
        } else {
            setContentView(C0632R.layout.activity_video);
        }
        if (getCurrentFragment() == null) {
            replaceAll(VideoMainFragment.newInstance(0));
        }
        handleIntent(getIntent());
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        handleIntent(intent);
    }

    private void handleIntent(Intent intent) {
        PFLog.m25d(TAG, "handleIntent");
        if (intent == null || !intent.hasExtra(PageConstants.Media.VIDEO_PAGE_ID_KEY)) {
            return;
        }
        String stringExtra = intent.getStringExtra(PageConstants.Media.VIDEO_PAGE_ID_KEY);
        String stringExtra2 = intent.hasExtra(PageConstants.Media.USB_TYPE_KEY) ? intent.getStringExtra(PageConstants.Media.USB_TYPE_KEY) : null;
        char c = 65535;
        if (stringExtra.hashCode() == -595157655 && stringExtra.equals("PAGE_MAIN")) {
            c = 0;
        }
        if (c != 0) {
            return;
        }
        int pageUsbType = MediaDef.getPageUsbType(stringExtra2);
        if (getCurrentFragment() instanceof VideoMainFragment) {
            ((VideoMainFragment) getCurrentFragment()).setCurrentViewUsbType(pageUsbType);
        } else {
            replaceAll(VideoMainFragment.newInstance(pageUsbType));
        }
    }
}
