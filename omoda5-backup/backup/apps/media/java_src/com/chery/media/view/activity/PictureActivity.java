package com.chery.media.view.activity;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.avn.tools.activity.ActivityUtils;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.common.PageConstants;
import com.chery.media.C0632R;
import com.chery.media.model.business.MediaBusiness;
import com.chery.media.model.business.MediaDef;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.view.fragment.PictureMainFragment;
import com.chery.media.view.fragment.PictureViewerFragment;
import com.chery.media.viewmodel.PictureViewModel;

/* loaded from: classes.dex */
public class PictureActivity extends BaseActivity {
    private static final String TAG = CarLog.concatTag("MEDIA", PictureActivity.class);
    private PictureViewModel pictureViewModel;

    @Override // com.chery.media.view.activity.BaseActivity
    protected int getContainerId() {
        return C0632R.id.picture_fragment_container;
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (CarAdapterUse.getCarConfigInfoClient().isRudderRight()) {
            setContentView(C0632R.layout.activity_picture_right);
        } else {
            setContentView(C0632R.layout.activity_picture);
        }
        PictureViewModel pictureViewModel = (PictureViewModel) new ViewModelProvider(this).get(PictureViewModel.class);
        this.pictureViewModel = pictureViewModel;
        pictureViewModel.getCurrentUsbData().observe(this, new Observer<Integer>() { // from class: com.chery.media.view.activity.PictureActivity.1
            @Override // androidx.lifecycle.Observer
            public void onChanged(Integer num) {
                if (num.intValue() == -1 && (PictureActivity.this.getCurrentFragment() instanceof PictureViewerFragment)) {
                    PictureActivity pictureActivity = PictureActivity.this;
                    pictureActivity.removeFragment(pictureActivity.getCurrentFragment());
                }
            }
        });
        if (getCurrentFragment() == null) {
            replaceAll(PictureMainFragment.newInstance(0));
        }
        handleIntent(getIntent());
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws SecurityException {
        super.onResume();
        ComponentName topActivityComponentName = ActivityUtils.getTopActivityComponentName(this);
        if (topActivityComponentName != null && (!topActivityComponentName.getPackageName().equals(getPackageName()) || !topActivityComponentName.getClassName().equals(getClass().getName()))) {
            PFLog.m25d(TAG, String.format("package(%s) not expect(%s) or activity(%s) not expect(%s)", topActivityComponentName.getPackageName(), getPackageName(), topActivityComponentName.getClassName(), getClass().getName()));
        } else if (getCurrentFragment() instanceof PictureViewerFragment) {
            MediaBusiness.getInstance().updateFullscreenState(true);
        } else {
            MediaBusiness.getInstance().updateFullscreenState(false);
        }
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        PFLog.m25d(TAG, "post page PAGE_NONE");
        Settings.System.putString(getContentResolver(), PageConstants.Media.PICTURE_PAGE_ID_KEY, "PAGE_NONE");
    }

    @Override // com.chery.media.view.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        handleIntent(intent);
    }

    private void handleIntent(Intent intent) {
        PFLog.m25d(TAG, "handleIntent");
        if (intent == null || !intent.hasExtra(PageConstants.Media.PICTURE_PAGE_ID_KEY)) {
            return;
        }
        String stringExtra = intent.getStringExtra(PageConstants.Media.PICTURE_PAGE_ID_KEY);
        String stringExtra2 = intent.hasExtra(PageConstants.Media.USB_TYPE_KEY) ? intent.getStringExtra(PageConstants.Media.USB_TYPE_KEY) : null;
        char c = 65535;
        int r2 = stringExtra.hashCode();
        if (r2 != -620035439) {
            if (r2 == -595157655 && stringExtra.equals("PAGE_MAIN")) {
                c = 0;
            }
        } else if (stringExtra.equals("PAGE_PLAYER")) {
            c = 1;
        }
        if (c == 0) {
            int pageUsbType = MediaDef.getPageUsbType(stringExtra2);
            if (getCurrentFragment() instanceof PictureMainFragment) {
                ((PictureMainFragment) getCurrentFragment()).setCurrentViewUsbType(pageUsbType);
                return;
            } else {
                replaceAll(PictureMainFragment.newInstance(pageUsbType));
                return;
            }
        }
        if (c == 1 && !(getCurrentFragment() instanceof PictureViewerFragment)) {
            gotoFragment(PictureViewerFragment.newInstance(null, null));
        }
    }

    @Override // com.chery.media.view.activity.BaseActivity
    protected void onCurrentFragmentChanged(Fragment fragment, String str, Fragment fragment2, String str2) {
        String str3;
        super.onCurrentFragmentChanged(fragment, str, fragment2, str2);
        if (fragment2 instanceof PictureMainFragment) {
            str3 = "PAGE_MAIN";
        } else {
            str3 = fragment2 instanceof PictureViewerFragment ? "PAGE_PLAYER" : "PAGE_NONE";
        }
        PFLog.m25d(TAG, "post page " + str3);
        Settings.System.putString(getContentResolver(), PageConstants.Media.PICTURE_PAGE_ID_KEY, str3);
        if (fragment2 instanceof PictureViewerFragment) {
            MediaBusiness.getInstance().updateFullscreenState(true);
        } else {
            MediaBusiness.getInstance().updateFullscreenState(false);
        }
    }
}
