package com.chery.btphone.livedata;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import androidx.lifecycle.LiveData;
import com.yfve.t19c.projection.androidauto.proxy.AAProxyListener;
import com.yfve.t19c.projection.androidauto.proxy.AAUserManager;
import com.yfve.t19c.projection.androidauto.proxy.AndroidAutoClient;

/* loaded from: classes.dex */
public class AaCallStateLiveData extends LiveData<Boolean> {
    private static final String TAG = "CD.AaCallStateLiveData";
    private final Context mContext;
    private final Handler mHandler;
    private AndroidAutoClient.AABindServiceStatusListener mAABindListener = new AndroidAutoClient.AABindServiceStatusListener() { // from class: com.chery.btphone.livedata.AaCallStateLiveData.1
        @Override // com.yfve.t19c.projection.androidauto.proxy.AndroidAutoClient.AABindServiceStatusListener
        public void onBindServiceConnected() {
            int sessionState = AaCallStateLiveData.this.mAAClient.getSessionState();
            Log.i(AaCallStateLiveData.TAG, "onBindServiceConnected: aa session state is " + sessionState);
            AaCallStateLiveData.this.updateState(sessionState);
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AndroidAutoClient.AABindServiceStatusListener
        public void onBindServiceDisConnected() {
            Log.i(AaCallStateLiveData.TAG, "onBindServiceDisConnected: ");
        }
    };
    private AAProxyListener mAAProxyListener = new C05912();
    private final AndroidAutoClient mAAClient = new AndroidAutoClient(AAUserManager.CLIENT_LAUNCH_UI);

    /* renamed from: com.chery.btphone.livedata.AaCallStateLiveData$2 */
    class C05912 extends AAProxyListener {
        C05912() {
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AAProxyListener
        public void onSessionStatusUpdate(int r2, String str, String str2) {
            Log.i(AaCallStateLiveData.TAG, "sessionSts:" + r2 + ",btMac:" + str + ",deviceName:" + str2);
        }

        @Override // com.yfve.t19c.projection.androidauto.proxy.AAProxyListener
        public void onTakeOverDilarPage(boolean z) {
            Log.i(AaCallStateLiveData.TAG, "onTakeOverDilarPage:" + z);
            AaCallStateLiveData.this.mHandler.post(new Runnable() { // from class: com.chery.btphone.livedata.-$$Lambda$AaCallStateLiveData$2$1mMmYrf8Rxa7MwPVs37JwC2X28I
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onTakeOverDilarPage$0$AaCallStateLiveData$2();
                }
            });
        }

        public /* synthetic */ void lambda$onTakeOverDilarPage$0$AaCallStateLiveData$2() {
            AaCallStateLiveData.this.updateState(0);
        }
    }

    public AaCallStateLiveData(Context context) {
        this.mContext = context;
        this.mHandler = new Handler(context.getMainLooper());
    }

    @Override // androidx.lifecycle.LiveData
    protected void onActive() {
        this.mAAClient.initialise(this.mContext, this.mAABindListener);
        this.mAAClient.registerListener(this.mAAProxyListener);
    }

    @Override // androidx.lifecycle.LiveData
    protected void onInactive() {
        this.mAAClient.unregisterListener(this.mAAProxyListener);
        this.mAAClient.uninitialise(this.mContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateState(int r3) {
        boolean whetherTakeOverPage = this.mAAClient.getWhetherTakeOverPage();
        if (getValue() == null || whetherTakeOverPage != getValue().booleanValue()) {
            Log.i(TAG, "updateState to " + whetherTakeOverPage);
            setValue(Boolean.valueOf(whetherTakeOverPage));
        }
    }
}
