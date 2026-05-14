package com.chery.media.view.activity;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseActivity extends FragmentActivity {
    private static final String FRAGMENT_TAGS_KEY = "fragmentTags";
    private static final String TAG = CarLog.concatTag("MEDIA", BaseActivity.class);
    protected FragmentManager fragmentManager;
    private String tos;
    private int fragmentIndex = 0;
    private boolean isStarted = false;
    private boolean hasNewIntent = false;
    private boolean fromStopped = true;
    private List<Runnable> runnableList = new ArrayList();
    private List<FragmentUnit> fragmentUnitList = new ArrayList();

    protected abstract int getContainerId();

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    private static class FragmentUnit {
        public Fragment fragment;
        public String tag;

        public FragmentUnit(Fragment fragment, String str) {
            this.fragment = fragment;
            this.tag = str;
        }

        public String toString() {
            return "FragmentUnit{fragment=" + this.fragment + ", tag='" + this.tag + "'}";
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        PFLog.m31v(TAG, String.format("[%s] onWindowFocusChanged %s", this, Boolean.valueOf(z)));
        super.onWindowFocusChanged(z);
        getWindow().getDecorView().setSystemUiVisibility(5888);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        PFLog.m31v(TAG, String.format("[%s] onCreate savedInstanceState:%s, intent:%s", this, bundle, getIntent()));
        super.onCreate(bundle);
        this.fragmentManager = getSupportFragmentManager();
        if (bundle != null && bundle.containsKey(FRAGMENT_TAGS_KEY)) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList(FRAGMENT_TAGS_KEY);
            PFLog.m31v(TAG, String.format("[%s] onCreate fragmentTags:%s", this, stringArrayList));
            if (stringArrayList != null && !stringArrayList.isEmpty()) {
                Iterator<String> it = stringArrayList.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    Iterator<Fragment> it2 = this.fragmentManager.getFragments().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            Fragment next2 = it2.next();
                            if (next.equals(next2.getTag())) {
                                PFLog.m31v(TAG, String.format("[%s] onCreate add FragmentUnit(%s)", this, next));
                                this.fragmentUnitList.add(new FragmentUnit(next2, next));
                                this.fragmentIndex++;
                                break;
                            }
                        }
                    }
                }
            }
        } else {
            PFLog.m31v(TAG, String.format("[%s] onCreate fragmentManager.getFragments() size:%s", this, Integer.valueOf(this.fragmentManager.getFragments().size())));
            for (Fragment fragment : this.fragmentManager.getFragments()) {
                if (fragment.getTag() != null) {
                    PFLog.m31v(TAG, String.format("[%s] onCreate add FragmentUnit(%s)", this, fragment.getTag()));
                    this.fragmentUnitList.add(new FragmentUnit(fragment, fragment.getTag()));
                }
            }
        }
        requestWindowFeature(1);
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        PFLog.m31v(TAG, String.format("[%s] onRestart", this));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        PFLog.m31v(TAG, String.format("[%s] onStart", this));
        super.onStart();
        this.isStarted = true;
        Iterator<Runnable> it = this.runnableList.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        this.runnableList.clear();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        PFLog.m31v(TAG, String.format("[%s] onNewIntent %s", this, intent));
        super.onNewIntent(intent);
        this.hasNewIntent = true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        PFLog.m31v(TAG, String.format("[%s] onResume", this));
        super.onResume();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        PFLog.m31v(TAG, String.format("[%s] onPause", this));
        super.onPause();
        this.fromStopped = false;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        PFLog.m31v(TAG, String.format("[%s] onStop", this));
        super.onStop();
        this.isStarted = false;
        this.hasNewIntent = false;
        this.fromStopped = true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        PFLog.m31v(TAG, String.format("[%s] onDestroy", this));
        super.onDestroy();
    }

    public String toString() {
        if (this.tos == null) {
            StringBuilder sb = new StringBuilder(128);
            sb.append(getClass().getSimpleName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            this.tos = sb.toString();
        }
        return this.tos;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        PFLog.m31v(TAG, String.format("[%s] onSaveInstanceState", this));
        super.onSaveInstanceState(bundle);
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<FragmentUnit> it = this.fragmentUnitList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().tag);
        }
        bundle.putStringArrayList(FRAGMENT_TAGS_KEY, arrayList);
    }

    protected void onCurrentFragmentChanged(Fragment fragment, String str, Fragment fragment2, String str2) {
        PFLog.m25d(TAG, String.format("[%s] onCurrentFragmentChanged from %s[%s] to %s[%s]", this, fragment, str, fragment2, str2));
        for (int r7 = 0; r7 < this.fragmentUnitList.size(); r7++) {
            PFLog.m31v(TAG, String.format("[%s] fragments[%d] %s", this, Integer.valueOf(r7), this.fragmentUnitList.get(r7).tag));
        }
    }

    public void gotoFragment(final Fragment fragment) {
        if (!this.isStarted) {
            Runnable runnable = new Runnable() { // from class: com.chery.media.view.activity.BaseActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    BaseActivity.this.gotoFragment(fragment);
                }
            };
            PFLog.m25d(TAG, String.format("[%s] Add Runnable: gotoFragment fragment:%s", this, fragment));
            this.runnableList.add(runnable);
            return;
        }
        PFLog.m25d(TAG, String.format("[%s] gotoFragment fragment:%s", this, fragment));
        FragmentUnit fragmentUnitFindFragmentUnit = findFragmentUnit(fragment);
        if (fragmentUnitFindFragmentUnit != null && this.fragmentUnitList.indexOf(fragmentUnitFindFragmentUnit) == this.fragmentUnitList.size() - 1) {
            PFLog.m33w(TAG, String.format("[%s] Fragment is already on the stack top.", this));
            return;
        }
        FragmentUnit currentFragmentUnit = getCurrentFragmentUnit();
        FragmentTransaction fragmentTransactionBeginTransaction = this.fragmentManager.beginTransaction();
        if (fragmentUnitFindFragmentUnit == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(fragment.getClass().getSimpleName());
            int r7 = this.fragmentIndex;
            this.fragmentIndex = r7 + 1;
            sb.append(String.format("_%s", Integer.valueOf(r7)));
            String string = sb.toString();
            FragmentUnit fragmentUnit = new FragmentUnit(fragment, string);
            PFLog.m31v(TAG, String.format("[%s] Add fragment %s", this, fragmentUnit));
            fragmentTransactionBeginTransaction.add(getContainerId(), fragment, string);
            this.fragmentUnitList.add(fragmentUnit);
            fragmentUnitFindFragmentUnit = fragmentUnit;
        } else {
            moveFragmentUnitToEnd(fragmentUnitFindFragmentUnit);
        }
        for (FragmentUnit fragmentUnit2 : this.fragmentUnitList) {
            if (fragmentUnit2.fragment != fragment) {
                fragmentTransactionBeginTransaction.hide(fragmentUnit2.fragment);
            }
        }
        fragmentTransactionBeginTransaction.show(fragment);
        fragmentTransactionBeginTransaction.commit();
        if (currentFragmentUnit != fragmentUnitFindFragmentUnit) {
            onCurrentFragmentChanged(currentFragmentUnit != null ? currentFragmentUnit.fragment : null, currentFragmentUnit != null ? currentFragmentUnit.tag : null, fragmentUnitFindFragmentUnit != null ? fragmentUnitFindFragmentUnit.fragment : null, fragmentUnitFindFragmentUnit != null ? fragmentUnitFindFragmentUnit.tag : null);
        }
    }

    public void replaceFragment(final Fragment fragment) {
        if (!this.isStarted) {
            Runnable runnable = new Runnable() { // from class: com.chery.media.view.activity.BaseActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    BaseActivity.this.replaceFragment(fragment);
                }
            };
            PFLog.m25d(TAG, String.format("[%s] Add Runnable: replaceFragment fragment:%s", this, fragment));
            this.runnableList.add(runnable);
            return;
        }
        PFLog.m25d(TAG, String.format("[%s] replaceFragment fragment:%s", this, fragment));
        FragmentUnit fragmentUnitFindFragmentUnit = findFragmentUnit(fragment);
        if (fragmentUnitFindFragmentUnit != null && this.fragmentUnitList.indexOf(fragmentUnitFindFragmentUnit) == this.fragmentUnitList.size() - 1) {
            PFLog.m33w(TAG, String.format("[%s] Fragment is already on the stack top.", this));
            return;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = this.fragmentManager.beginTransaction();
        FragmentUnit currentFragmentUnit = getCurrentFragmentUnit();
        if (currentFragmentUnit != null) {
            PFLog.m31v(TAG, String.format("[%s] Remove fragment %s", this, currentFragmentUnit));
            fragmentTransactionBeginTransaction.hide(currentFragmentUnit.fragment);
            fragmentTransactionBeginTransaction.remove(currentFragmentUnit.fragment);
            removeFragmentUnit(currentFragmentUnit);
        }
        if (fragmentUnitFindFragmentUnit == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(fragment.getClass().getSimpleName());
            int r7 = this.fragmentIndex;
            this.fragmentIndex = r7 + 1;
            sb.append(String.format("_%s", Integer.valueOf(r7)));
            String string = sb.toString();
            FragmentUnit fragmentUnit = new FragmentUnit(fragment, string);
            PFLog.m31v(TAG, String.format("[%s] Add fragment %s", this, fragmentUnit));
            fragmentTransactionBeginTransaction.add(getContainerId(), fragment, string);
            this.fragmentUnitList.add(fragmentUnit);
            fragmentUnitFindFragmentUnit = fragmentUnit;
        } else {
            moveFragmentUnitToEnd(fragmentUnitFindFragmentUnit);
        }
        for (FragmentUnit fragmentUnit2 : this.fragmentUnitList) {
            if (fragmentUnit2.fragment != fragment) {
                fragmentTransactionBeginTransaction.hide(fragmentUnit2.fragment);
            }
        }
        fragmentTransactionBeginTransaction.show(fragment);
        fragmentTransactionBeginTransaction.commit();
        if (currentFragmentUnit != fragmentUnitFindFragmentUnit) {
            onCurrentFragmentChanged(currentFragmentUnit != null ? currentFragmentUnit.fragment : null, currentFragmentUnit != null ? currentFragmentUnit.tag : null, fragmentUnitFindFragmentUnit != null ? fragmentUnitFindFragmentUnit.fragment : null, fragmentUnitFindFragmentUnit != null ? fragmentUnitFindFragmentUnit.tag : null);
        }
    }

    public void replaceAll(final Fragment fragment) {
        if (!this.isStarted) {
            Runnable runnable = new Runnable() { // from class: com.chery.media.view.activity.BaseActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    BaseActivity.this.replaceAll(fragment);
                }
            };
            PFLog.m25d(TAG, String.format("[%s] Add Runnable: replaceAll fragment:%s", this, fragment));
            this.runnableList.add(runnable);
            return;
        }
        PFLog.m25d(TAG, String.format("[%s] replaceAll fragment:%s", this, fragment));
        FragmentUnit currentFragmentUnit = getCurrentFragmentUnit();
        FragmentUnit fragmentUnitFindFragmentUnit = findFragmentUnit(fragment);
        FragmentTransaction fragmentTransactionBeginTransaction = this.fragmentManager.beginTransaction();
        if (fragmentUnitFindFragmentUnit == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(fragment.getClass().getSimpleName());
            int r7 = this.fragmentIndex;
            this.fragmentIndex = r7 + 1;
            sb.append(String.format("_%s", Integer.valueOf(r7)));
            String string = sb.toString();
            FragmentUnit fragmentUnit = new FragmentUnit(fragment, string);
            PFLog.m31v(TAG, String.format("[%s] Add fragment %s", this, fragmentUnit));
            fragmentTransactionBeginTransaction.replace(getContainerId(), fragment, string);
            this.fragmentUnitList.clear();
            this.fragmentUnitList.add(fragmentUnit);
            fragmentUnitFindFragmentUnit = fragmentUnit;
        } else {
            for (FragmentUnit fragmentUnit2 : this.fragmentUnitList) {
                if (fragmentUnit2.fragment != fragment) {
                    PFLog.m31v(TAG, String.format("[%s] Remove fragment %s", this, fragmentUnit2.fragment));
                    fragmentTransactionBeginTransaction.hide(fragmentUnit2.fragment);
                    fragmentTransactionBeginTransaction.remove(fragmentUnit2.fragment);
                }
            }
            fragmentTransactionBeginTransaction.show(fragment);
            this.fragmentUnitList.clear();
            this.fragmentUnitList.add(fragmentUnitFindFragmentUnit);
        }
        fragmentTransactionBeginTransaction.commit();
        if (currentFragmentUnit != fragmentUnitFindFragmentUnit) {
            onCurrentFragmentChanged(currentFragmentUnit != null ? currentFragmentUnit.fragment : null, currentFragmentUnit != null ? currentFragmentUnit.tag : null, fragmentUnitFindFragmentUnit != null ? fragmentUnitFindFragmentUnit.fragment : null, fragmentUnitFindFragmentUnit != null ? fragmentUnitFindFragmentUnit.tag : null);
        }
    }

    public void removeFragment(final Fragment fragment) {
        if (!this.isStarted) {
            Runnable runnable = new Runnable() { // from class: com.chery.media.view.activity.BaseActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    BaseActivity.this.removeFragment(fragment);
                }
            };
            PFLog.m25d(TAG, String.format("[%s] Add Runnable: removeFragment fragment:%s", this, fragment));
            this.runnableList.add(runnable);
            return;
        }
        PFLog.m25d(TAG, String.format("[%s] removeFragment fragment:%s", this, fragment));
        FragmentUnit fragmentUnitFindFragmentUnit = findFragmentUnit(fragment);
        if (fragmentUnitFindFragmentUnit == null) {
            return;
        }
        FragmentUnit currentFragmentUnit = getCurrentFragmentUnit();
        FragmentTransaction fragmentTransactionBeginTransaction = this.fragmentManager.beginTransaction();
        PFLog.m31v(TAG, String.format("[%s] Remove fragment %s", this, fragmentUnitFindFragmentUnit.fragment));
        fragmentTransactionBeginTransaction.hide(fragmentUnitFindFragmentUnit.fragment);
        fragmentTransactionBeginTransaction.remove(fragmentUnitFindFragmentUnit.fragment);
        removeFragmentUnit(fragmentUnitFindFragmentUnit);
        FragmentUnit currentFragmentUnit2 = getCurrentFragmentUnit();
        if (currentFragmentUnit2 != null) {
            fragmentTransactionBeginTransaction.show(currentFragmentUnit2.fragment);
        }
        fragmentTransactionBeginTransaction.commit();
        if (currentFragmentUnit != currentFragmentUnit2) {
            onCurrentFragmentChanged(currentFragmentUnit != null ? currentFragmentUnit.fragment : null, currentFragmentUnit != null ? currentFragmentUnit.tag : null, currentFragmentUnit2 != null ? currentFragmentUnit2.fragment : null, currentFragmentUnit2 != null ? currentFragmentUnit2.tag : null);
        }
    }

    public void removeAllFragments() {
        if (!this.isStarted) {
            Runnable runnable = new Runnable() { // from class: com.chery.media.view.activity.BaseActivity.5
                @Override // java.lang.Runnable
                public void run() {
                    BaseActivity.this.removeAllFragments();
                }
            };
            PFLog.m25d(TAG, String.format("[%s] Add Runnable: removeAllFragments", this));
            this.runnableList.add(runnable);
            return;
        }
        PFLog.m25d(TAG, String.format("[%s] removeAllFragments", this));
        if (this.fragmentUnitList.isEmpty()) {
            return;
        }
        FragmentUnit currentFragmentUnit = getCurrentFragmentUnit();
        FragmentTransaction fragmentTransactionBeginTransaction = this.fragmentManager.beginTransaction();
        for (FragmentUnit fragmentUnit : this.fragmentUnitList) {
            PFLog.m31v(TAG, String.format("[%s] Remove fragment %s", this, fragmentUnit.fragment));
            fragmentTransactionBeginTransaction.hide(fragmentUnit.fragment);
            fragmentTransactionBeginTransaction.remove(fragmentUnit.fragment);
        }
        this.fragmentUnitList.clear();
        fragmentTransactionBeginTransaction.commit();
        onCurrentFragmentChanged(currentFragmentUnit != null ? currentFragmentUnit.fragment : null, currentFragmentUnit != null ? currentFragmentUnit.tag : null, null, null);
    }

    public void backward() {
        if (!this.isStarted) {
            Runnable runnable = new Runnable() { // from class: com.chery.media.view.activity.BaseActivity.6
                @Override // java.lang.Runnable
                public void run() {
                    BaseActivity.this.backward();
                }
            };
            PFLog.m25d(TAG, String.format("[%s] Add Runnable: backward", this));
            this.runnableList.add(runnable);
            return;
        }
        PFLog.m25d(TAG, String.format("[%s] backward", this));
        FragmentUnit currentFragmentUnit = getCurrentFragmentUnit();
        if (currentFragmentUnit == null) {
            finish();
            return;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = this.fragmentManager.beginTransaction();
        PFLog.m31v(TAG, String.format("[%s] Remove fragment %s", this, currentFragmentUnit.fragment));
        fragmentTransactionBeginTransaction.hide(currentFragmentUnit.fragment);
        fragmentTransactionBeginTransaction.remove(currentFragmentUnit.fragment);
        this.fragmentUnitList.remove(currentFragmentUnit);
        FragmentUnit currentFragmentUnit2 = getCurrentFragmentUnit();
        if (currentFragmentUnit2 != null) {
            fragmentTransactionBeginTransaction.show(currentFragmentUnit2.fragment);
        }
        fragmentTransactionBeginTransaction.commit();
        onCurrentFragmentChanged(currentFragmentUnit != null ? currentFragmentUnit.fragment : null, currentFragmentUnit != null ? currentFragmentUnit.tag : null, currentFragmentUnit2 != null ? currentFragmentUnit2.fragment : null, currentFragmentUnit2 != null ? currentFragmentUnit2.tag : null);
    }

    public Fragment getCurrentFragment() {
        if (this.fragmentUnitList.isEmpty()) {
            return null;
        }
        return this.fragmentUnitList.get(r1.size() - 1).fragment;
    }

    private FragmentUnit getCurrentFragmentUnit() {
        if (this.fragmentUnitList.isEmpty()) {
            return null;
        }
        return this.fragmentUnitList.get(r1.size() - 1);
    }

    private FragmentUnit findFragmentUnit(Fragment fragment) {
        for (FragmentUnit fragmentUnit : this.fragmentUnitList) {
            if (fragmentUnit.fragment == fragment) {
                return fragmentUnit;
            }
        }
        return null;
    }

    protected Fragment findFragment(String str) {
        if (str == null) {
            return null;
        }
        for (FragmentUnit fragmentUnit : this.fragmentUnitList) {
            if (str.equals(fragmentUnit.tag)) {
                return fragmentUnit.fragment;
            }
        }
        return null;
    }

    private void removeFragmentUnit(FragmentUnit fragmentUnit) {
        this.fragmentUnitList.remove(fragmentUnit);
    }

    private void moveFragmentUnitToEnd(FragmentUnit fragmentUnit) {
        this.fragmentUnitList.remove(fragmentUnit);
        this.fragmentUnitList.add(fragmentUnit);
    }

    public boolean isStarted() {
        return this.isStarted;
    }

    public boolean hasNewIntent() {
        return this.hasNewIntent;
    }

    public boolean isFromStopped() {
        return this.fromStopped;
    }

    public void addRunnable(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (this.isStarted) {
            runnable.run();
        } else {
            this.runnableList.add(runnable);
        }
    }
}
