package com.chery.media.view.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.avn.tools.activity.ActivityUtils;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FragmentBase extends Fragment {
    private static final String TAG = CarLog.concatTag("MEDIA", FragmentBase.class);
    private boolean isTopWhenStarted = false;
    private boolean fromStopped = true;
    private List<Runnable> runnableList = new ArrayList();

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        PFLog.m25d(TAG, String.format("[%s] onAttach", this));
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        PFLog.m25d(TAG, String.format("[%s] onCreate", this));
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        PFLog.m25d(TAG, String.format("[%s] onCreateView", this));
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        PFLog.m25d(TAG, String.format("[%s] onCreateView", this));
        super.onViewCreated(view, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        PFLog.m25d(TAG, String.format("[%s] onActivityCreated", this));
        super.onActivityCreated(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        PFLog.m25d(TAG, String.format("[%s] onStart", this));
        super.onStart();
        this.isTopWhenStarted = ActivityUtils.isOnTop(getActivity());
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        PFLog.m25d(TAG, String.format("[%s] onResume", this));
        super.onResume();
        Iterator<Runnable> it = this.runnableList.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        this.runnableList.clear();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        PFLog.m25d(TAG, String.format("[%s] onPause", this));
        super.onPause();
        this.fromStopped = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        PFLog.m25d(TAG, String.format("[%s] onStop", this));
        super.onStop();
        this.fromStopped = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        PFLog.m25d(TAG, String.format("[%s] onDestroyView", this));
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        PFLog.m25d(TAG, String.format("[%s] onDestroy", this));
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        PFLog.m25d(TAG, String.format("[%s] onDetach", this));
        super.onDetach();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        PFLog.m25d(TAG, String.format("[%s] onHiddenChanged %s", this, Boolean.valueOf(z)));
        super.onHiddenChanged(z);
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        return sb.toString();
    }

    public boolean isTopWhenStarted() {
        return this.isTopWhenStarted;
    }

    public void addResumeRunnable(Runnable runnable) {
        if (isResumed()) {
            runnable.run();
        } else {
            this.runnableList.add(runnable);
        }
    }

    public boolean isFromStopped() {
        return this.fromStopped;
    }
}
