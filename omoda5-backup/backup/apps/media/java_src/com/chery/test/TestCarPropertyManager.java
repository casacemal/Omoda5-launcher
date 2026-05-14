package com.chery.test;

import android.content.Context;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.caradapter.carapi.CarAdapterClient;
import com.chery.caradapter.carapi.client.CarIntelligentKeyClient;
import com.chery.caradapter.carapi.interfaces.IIntelligentKeyListener;

/* loaded from: classes.dex */
public class TestCarPropertyManager {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_CAR, TestCarPropertyManager.class);

    public void init(Context context) {
        CarIntelligentKeyClient carIntelligentKeyClient = (CarIntelligentKeyClient) CarAdapterClient.getInstance(context).getCarClient(2);
        int welcomeLightPolling = carIntelligentKeyClient.getWelcomeLightPolling();
        PFLog.m29i(TAG, "init: light=" + welcomeLightPolling);
        carIntelligentKeyClient.setListener(new IIntelligentKeyListener() { // from class: com.chery.test.TestCarPropertyManager.1
            @Override // com.chery.caradapter.carapi.interfaces.IIntelligentKeyListener
            public void onPepsIntelligentOpen(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IIntelligentKeyListener
            public void onPespsPolling(int r1) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IIntelligentKeyListener
            public void onWelcomeLightPolling(int r1) {
            }
        });
    }
}
