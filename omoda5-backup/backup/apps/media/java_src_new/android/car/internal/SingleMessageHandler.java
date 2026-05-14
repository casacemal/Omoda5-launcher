package com.android.car.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public abstract class SingleMessageHandler<EventType> implements Handler.Callback {
    private final int mHandledMessageWhat;
    private final Handler mHandler;

    protected abstract void handleEvent(EventType eventtype);

    public SingleMessageHandler(Looper looper, int r2) {
        this.mHandledMessageWhat = r2;
        this.mHandler = new Handler(looper, this);
    }

    public SingleMessageHandler(Handler handler, int r2) {
        this(handler.getLooper(), r2);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != this.mHandledMessageWhat) {
            return true;
        }
        ((List) message.obj).forEach(new Consumer<EventType>() { // from class: com.android.car.internal.SingleMessageHandler.1
            @Override // java.util.function.Consumer
            public void accept(EventType eventtype) {
                SingleMessageHandler.this.handleEvent(eventtype);
            }
        });
        return true;
    }

    public void sendEvents(List<EventType> list) {
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(this.mHandledMessageWhat, list));
    }
}
