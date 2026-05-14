package com.chery.turbodog;

/* loaded from: classes.dex */
public enum TurboEnum {
    T0(0, 0, 0),
    T1(1, 20, 0),
    T2(2, 6, 0),
    T3(3, 5, 0),
    T4(4, 21, 0),
    T5(5, 25, 0),
    T6(6, 19, 0),
    T7(7, 11, 0),
    T8(8, 12, 0),
    T9(9, 9, 0),
    T10(10, 2, 0),
    T11(11, 8, 0),
    T12(12, 3, 0),
    T13(13, 7, 0),
    T14(14, 4, 0),
    T15(15, 10, 1),
    T16(16, 10, 2),
    T17(17, 10, 3),
    T18(18, 10, 4),
    T19(19, 10, 5),
    T20(20, 10, 6),
    T21(21, 10, 7),
    T22(22, 10, 8),
    T23(23, 10, 1),
    T24(24, 10, 2),
    T25(25, 10, 3),
    T26(26, 10, 4),
    T27(27, 10, 5),
    T28(28, 10, 6),
    T29(29, 10, 7),
    T30(30, 10, 8),
    T31(31, 13, 0),
    T32(32, 15, 0),
    T33(33, 17, 0);

    private int roundNum;
    private int turbo;
    private int type;

    TurboEnum(int r3, int r4, int r5) {
        this.turbo = r3;
        this.type = r4;
        this.roundNum = r5;
    }

    public static int[] getAutoRound(int r7) {
        int[] r0 = new int[2];
        for (TurboEnum turboEnum : values()) {
            if (turboEnum.getTurbo() == r7) {
                r0[0] = turboEnum.type;
                r0[1] = turboEnum.roundNum;
                return r0;
            }
        }
        return r0;
    }

    public static int getType(int r6) {
        for (TurboEnum turboEnum : values()) {
            if (turboEnum.getTurbo() == r6) {
                return turboEnum.type;
            }
        }
        return 0;
    }

    public int getTurbo() {
        return this.turbo;
    }

    public void setTurbo(int r1) {
        this.turbo = r1;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int r1) {
        this.type = r1;
    }

    public int getRoundNum() {
        return this.roundNum;
    }

    public void setRoundNum(int r1) {
        this.roundNum = r1;
    }
}
