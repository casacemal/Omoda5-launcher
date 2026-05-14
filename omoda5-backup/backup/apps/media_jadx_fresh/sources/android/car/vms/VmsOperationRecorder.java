package android.car.vms;

import android.annotation.SystemApi;
import android.util.Log;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SystemApi
/* loaded from: classes.dex */
public final class VmsOperationRecorder {
    private static final VmsOperationRecorder INSTANCE = new VmsOperationRecorder(new Writer());
    private static final String TAG = "VmsOperationRecorder";
    private final Writer mWriter;

    public VmsOperationRecorder(Writer writer) {
        this.mWriter = writer;
    }

    public static VmsOperationRecorder get() {
        return INSTANCE;
    }

    public void subscribe(VmsLayer vmsLayer) {
        recordOp("subscribe", vmsLayer);
    }

    public void unsubscribe(VmsLayer vmsLayer) {
        recordOp("unsubscribe", vmsLayer);
    }

    public void subscribe(VmsLayer vmsLayer, int r4) {
        recordOp("subscribe", "publisherId", r4, vmsLayer);
    }

    public void unsubscribe(VmsLayer vmsLayer, int r4) {
        recordOp("unsubscribe", "publisherId", r4, vmsLayer);
    }

    public void startMonitoring() {
        recordOp("startMonitoring");
    }

    public void stopMonitoring() {
        recordOp("stopMonitoring");
    }

    public void setLayersOffering(VmsLayersOffering vmsLayersOffering) throws JSONException {
        recordOp("setLayersOffering", vmsLayersOffering);
    }

    public void getPublisherId(int r3) {
        recordOp("getPublisherId", "publisherId", r3);
    }

    public void addSubscription(int r3, VmsLayer vmsLayer) {
        recordOp("addSubscription", "sequenceNumber", r3, vmsLayer);
    }

    public void removeSubscription(int r3, VmsLayer vmsLayer) {
        recordOp("removeSubscription", "sequenceNumber", r3, vmsLayer);
    }

    public void addPromiscuousSubscription(int r3) {
        recordOp("addPromiscuousSubscription", "sequenceNumber", r3);
    }

    public void removePromiscuousSubscription(int r3) {
        recordOp("removePromiscuousSubscription", "sequenceNumber", r3);
    }

    public void addHalSubscription(int r3, VmsLayer vmsLayer) {
        recordOp("addHalSubscription", "sequenceNumber", r3, vmsLayer);
    }

    public void removeHalSubscription(int r3, VmsLayer vmsLayer) {
        recordOp("removeHalSubscription", "sequenceNumber", r3, vmsLayer);
    }

    public void setPublisherLayersOffering(VmsLayersOffering vmsLayersOffering) throws JSONException {
        recordOp("setPublisherLayersOffering", vmsLayersOffering);
    }

    public void setHalPublisherLayersOffering(VmsLayersOffering vmsLayersOffering) throws JSONException {
        recordOp("setHalPublisherLayersOffering", vmsLayersOffering);
    }

    private void recordOp(String str) {
        if (isEnabled()) {
            try {
                write(new JSONObject().put(str, new JSONObject()));
            } catch (JSONException e) {
                Log.e(TAG, e.toString());
            }
        }
    }

    private void recordOp(String str, VmsLayer vmsLayer) {
        if (isEnabled()) {
            try {
                recordOp(str, new JSONObject().put("layer", toJson(vmsLayer)));
            } catch (JSONException e) {
                Log.e(TAG, e.toString());
            }
        }
    }

    private void recordOp(String str, VmsLayersOffering vmsLayersOffering) throws JSONException {
        if (isEnabled()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("publisherId", vmsLayersOffering.getPublisherId());
                JSONArray json = toJson(vmsLayersOffering);
                if (json.length() > 0) {
                    jSONObject.put("layerDependency", json);
                }
                recordOp(str, jSONObject);
            } catch (JSONException e) {
                Log.e(TAG, e.toString());
            }
        }
    }

    private void recordOp(String str, String str2, int r4) {
        if (isEnabled()) {
            try {
                recordOp(str, new JSONObject().put(str2, r4));
            } catch (JSONException e) {
                Log.e(TAG, e.toString());
            }
        }
    }

    private void recordOp(String str, String str2, int r4, VmsLayer vmsLayer) {
        if (isEnabled()) {
            try {
                recordOp(str, new JSONObject().put(str2, r4).put("layer", toJson(vmsLayer)));
            } catch (JSONException e) {
                Log.e(TAG, e.toString());
            }
        }
    }

    private void recordOp(String str, JSONObject jSONObject) {
        if (isEnabled()) {
            try {
                write(new JSONObject().put(str, jSONObject));
            } catch (JSONException e) {
                Log.e(TAG, e.toString());
            }
        }
    }

    private static JSONObject toJson(VmsLayer vmsLayer) throws JSONException {
        return new JSONObject().put("type", vmsLayer.getType()).put("subtype", vmsLayer.getSubtype()).put("version", vmsLayer.getVersion());
    }

    private static JSONObject toJson(VmsLayerDependency vmsLayerDependency) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("layer", toJson(vmsLayerDependency.getLayer()));
        if (!vmsLayerDependency.getDependencies().isEmpty()) {
            JSONArray jSONArray = new JSONArray();
            Iterator<VmsLayer> it = vmsLayerDependency.getDependencies().iterator();
            while (it.hasNext()) {
                jSONArray.put(toJson(it.next()));
            }
            jSONObject.put("dependency", jSONArray);
        }
        return jSONObject;
    }

    private static JSONArray toJson(VmsLayersOffering vmsLayersOffering) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<VmsLayerDependency> it = vmsLayersOffering.getDependencies().iterator();
        while (it.hasNext()) {
            jSONArray.put(toJson(it.next()));
        }
        return jSONArray;
    }

    private boolean isEnabled() {
        return this.mWriter.isEnabled();
    }

    private void write(JSONObject jSONObject) {
        this.mWriter.write(jSONObject.toString());
    }

    public static class Writer {
        private static final int LEVEL = 3;
        private static final String TAG = "VMS.RECORD.EVENT";

        public boolean isEnabled() {
            return Log.isLoggable(TAG, 3);
        }

        public void write(String str) {
            Log.println(3, TAG, str);
        }
    }
}
