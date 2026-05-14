package com.p003hp.hpl.sparta;

/* loaded from: classes.dex */
class CharCircBuffer {
    private final int[] buf_;
    private int next_ = 0;
    private int total_ = 0;
    private boolean enabled_ = true;

    CharCircBuffer(int r2) {
        this.buf_ = new int[r2];
    }

    private void addRaw(int r3) {
        if (this.enabled_) {
            int[] r0 = this.buf_;
            int r1 = this.next_;
            r0[r1] = r3;
            this.next_ = (r1 + 1) % r0.length;
            this.total_++;
        }
    }

    void addChar(char c) {
        addRaw(c);
    }

    void addInt(int r2) {
        addRaw(r2 + 65536);
    }

    void addString(String str) {
        for (char c : str.toCharArray()) {
            addChar(c);
        }
    }

    void disable() {
        this.enabled_ = false;
    }

    void enable() {
        this.enabled_ = true;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer((this.buf_.length * 11) / 10);
        int r1 = this.total_;
        int[] r2 = this.buf_;
        int length = r1 < r2.length ? r2.length - r1 : 0;
        while (true) {
            int[] r12 = this.buf_;
            if (length >= r12.length) {
                return stringBuffer.toString();
            }
            int r13 = r12[(this.next_ + length) % r12.length];
            if (r13 < 65536) {
                stringBuffer.append((char) r13);
            } else {
                stringBuffer.append(Integer.toString(r13 - 65536));
            }
            length++;
        }
    }
}
