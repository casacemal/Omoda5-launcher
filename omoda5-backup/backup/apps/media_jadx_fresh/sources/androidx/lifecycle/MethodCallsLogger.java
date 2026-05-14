package androidx.lifecycle;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class MethodCallsLogger {
    private Map<String, Integer> mCalledMethods = new HashMap();

    public boolean approveCall(String str, int r6) {
        Integer num = this.mCalledMethods.get(str);
        int r0 = num != null ? num.intValue() : 0;
        boolean z = (r0 & r6) != 0;
        this.mCalledMethods.put(str, Integer.valueOf(r6 | r0));
        return !z;
    }
}
