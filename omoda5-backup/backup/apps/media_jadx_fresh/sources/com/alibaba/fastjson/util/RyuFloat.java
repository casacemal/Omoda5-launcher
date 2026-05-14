package com.alibaba.fastjson.util;

/* loaded from: classes.dex */
public final class RyuFloat {
    private static final int[][] POW5_SPLIT = {new int[]{536870912, 0}, new int[]{671088640, 0}, new int[]{838860800, 0}, new int[]{1048576000, 0}, new int[]{655360000, 0}, new int[]{819200000, 0}, new int[]{1024000000, 0}, new int[]{640000000, 0}, new int[]{800000000, 0}, new int[]{1000000000, 0}, new int[]{625000000, 0}, new int[]{781250000, 0}, new int[]{976562500, 0}, new int[]{610351562, 1073741824}, new int[]{762939453, 268435456}, new int[]{953674316, 872415232}, new int[]{596046447, 1619001344}, new int[]{745058059, 1486880768}, new int[]{931322574, 1321730048}, new int[]{582076609, 289210368}, new int[]{727595761, 898383872}, new int[]{909494701, 1659850752}, new int[]{568434188, 1305842176}, new int[]{710542735, 1632302720}, new int[]{888178419, 1503507488}, new int[]{555111512, 671256724}, new int[]{693889390, 839070905}, new int[]{867361737, 2122580455}, new int[]{542101086, 521306416}, new int[]{677626357, 1725374844}, new int[]{847032947, 546105819}, new int[]{1058791184, 145761362}, new int[]{661744490, 91100851}, new int[]{827180612, 1187617888}, new int[]{1033975765, 1484522360}, new int[]{646234853, 1196261931}, new int[]{807793566, 2032198326}, new int[]{1009741958, 1466506084}, new int[]{631088724, 379695390}, new int[]{788860905, 474619238}, new int[]{986076131, 1130144959}, new int[]{616297582, 437905143}, new int[]{770371977, 1621123253}, new int[]{962964972, 415791331}, new int[]{601853107, 1333611405}, new int[]{752316384, 1130143345}, new int[]{940395480, 1412679181}};
    private static final int[][] POW5_INV_SPLIT = {new int[]{268435456, 1}, new int[]{214748364, 1717986919}, new int[]{171798691, 1803886265}, new int[]{137438953, 1013612282}, new int[]{219902325, 1192282922}, new int[]{175921860, 953826338}, new int[]{140737488, 763061070}, new int[]{225179981, 791400982}, new int[]{180143985, 203624056}, new int[]{144115188, 162899245}, new int[]{230584300, 1978625710}, new int[]{184467440, 1582900568}, new int[]{147573952, 1266320455}, new int[]{236118324, 308125809}, new int[]{188894659, 675997377}, new int[]{151115727, 970294631}, new int[]{241785163, 1981968139}, new int[]{193428131, 297084323}, new int[]{154742504, 1955654377}, new int[]{247588007, 1840556814}, new int[]{198070406, 613451992}, new int[]{158456325, 61264864}, new int[]{253530120, 98023782}, new int[]{202824096, 78419026}, new int[]{162259276, 1780722139}, new int[]{259614842, 1990161963}, new int[]{207691874, 733136111}, new int[]{166153499, 1016005619}, new int[]{265845599, 337118801}, new int[]{212676479, 699191770}, new int[]{170141183, 988850146}};

    public static String toString(float f) {
        char[] cArr = new char[15];
        return new String(cArr, 0, toString(f, cArr, 0));
    }

    public static int toString(float f, char[] cArr, int r30) {
        int r6;
        boolean z;
        int r3;
        int r4;
        int r11;
        int r10;
        int r1;
        int r5;
        int r62;
        int r24;
        int r7;
        int r2;
        int r0;
        int r02;
        int r42;
        int r03;
        if (Float.isNaN(f)) {
            int r04 = r30 + 1;
            cArr[r30] = 'N';
            int r22 = r04 + 1;
            cArr[r04] = 'a';
            r03 = r22 + 1;
            cArr[r22] = 'N';
        } else {
            if (f == Float.POSITIVE_INFINITY) {
                int r05 = r30 + 1;
                cArr[r30] = 'I';
                int r43 = r05 + 1;
                cArr[r05] = 'n';
                int r06 = r43 + 1;
                cArr[r43] = 'f';
                int r32 = r06 + 1;
                cArr[r06] = 'i';
                int r07 = r32 + 1;
                cArr[r32] = 'n';
                int r33 = r07 + 1;
                cArr[r07] = 'i';
                int r08 = r33 + 1;
                cArr[r33] = 't';
                cArr[r08] = 'y';
                return (r08 + 1) - r30;
            }
            if (f == Float.NEGATIVE_INFINITY) {
                int r09 = r30 + 1;
                cArr[r30] = '-';
                int r72 = r09 + 1;
                cArr[r09] = 'I';
                int r010 = r72 + 1;
                cArr[r72] = 'n';
                int r44 = r010 + 1;
                cArr[r010] = 'f';
                int r011 = r44 + 1;
                cArr[r44] = 'i';
                int r34 = r011 + 1;
                cArr[r011] = 'n';
                int r012 = r34 + 1;
                cArr[r34] = 'i';
                int r35 = r012 + 1;
                cArr[r012] = 't';
                r03 = r35 + 1;
                cArr[r35] = 'y';
            } else {
                int r013 = Float.floatToIntBits(f);
                if (r013 != 0) {
                    if (r013 == Integer.MIN_VALUE) {
                        int r014 = r30 + 1;
                        cArr[r30] = '-';
                        int r36 = r014 + 1;
                        cArr[r014] = '0';
                        int r015 = r36 + 1;
                        cArr[r36] = '.';
                        cArr[r015] = '0';
                        return (r015 + 1) - r30;
                    }
                    int r37 = (r013 >> 23) & 255;
                    int r45 = 8388607 & r013;
                    if (r37 == 0) {
                        r6 = -149;
                    } else {
                        r6 = (r37 - 127) - 23;
                        r45 |= 8388608;
                    }
                    boolean z2 = r013 < 0;
                    boolean z3 = (r45 & 1) == 0;
                    int r112 = r45 * 4;
                    int r12 = r112 + 2;
                    int r38 = r112 - ((((long) r45) != 8388608 || r37 <= 1) ? 2 : 1);
                    int r63 = r6 - 2;
                    if (r63 >= 0) {
                        r1 = (int) ((r63 * 3010299) / 10000000);
                        int r46 = r1 == 0 ? 1 : (int) ((((r1 * 23219280) + 10000000) - 1) / 10000000);
                        int r52 = (-r63) + r1;
                        int[][] r64 = POW5_INV_SPLIT;
                        long j = r64[r1][0];
                        z = z3;
                        long j2 = r64[r1][1];
                        long j3 = r112;
                        int r47 = (((r46 + 59) - 1) + r52) - 31;
                        long j4 = r12;
                        r3 = (int) (((j4 * j) + ((j4 * j2) >> 31)) >> r47);
                        int r23 = r12;
                        r24 = (int) (((j3 * j) + ((j3 * j2) >> 31)) >> r47);
                        long j5 = r38;
                        long j6 = j * j5;
                        long j7 = (j5 * j2) >> 31;
                        int r122 = r38;
                        r4 = (int) ((j6 + j7) >> r47);
                        if (r1 == 0 || (r3 - 1) / 10 > r4 / 10) {
                            r2 = 0;
                        } else {
                            int r65 = r1 - 1;
                            int r53 = (r52 - 1) + (((r65 == 0 ? 1 : (int) ((((r65 * 23219280) + 10000000) - 1) / 10000000)) + 59) - 1);
                            int[][] r73 = POW5_INV_SPLIT;
                            r2 = (int) ((((r73[r65][0] * j3) + ((j3 * r73[r65][1]) >> 31)) >> (r53 - 31)) % 10);
                        }
                        int r54 = 0;
                        while (r23 > 0 && r23 % 5 == 0) {
                            r23 /= 5;
                            r54++;
                        }
                        int r66 = 0;
                        while (r112 > 0 && r112 % 5 == 0) {
                            r112 /= 5;
                            r66++;
                        }
                        int r74 = 0;
                        while (r122 > 0 && r122 % 5 == 0) {
                            r122 /= 5;
                            r74++;
                        }
                        r5 = r54 >= r1 ? 1 : 0;
                        r62 = r66 >= r1 ? 1 : 0;
                        r7 = r74 >= r1 ? 1 : 0;
                        r11 = 0;
                    } else {
                        z = z3;
                        int r13 = -r63;
                        int r39 = (int) ((r13 * 6989700) / 10000000);
                        int r14 = r13 - r39;
                        int r48 = r14 == 0 ? 1 : (int) ((((r14 * 23219280) + 10000000) - 1) / 10000000);
                        int[][] r75 = POW5_SPLIT;
                        long j8 = r75[r14][0];
                        long j9 = r75[r14][1];
                        int r49 = (r39 - (r48 - 61)) - 31;
                        long j10 = r112;
                        int r310 = (int) (((j10 * j8) + ((j10 * j9) >> 31)) >> r49);
                        long j11 = r12;
                        r3 = (int) (((j11 * j8) + ((j11 * j9) >> 31)) >> r49);
                        long j12 = r38;
                        r4 = (int) (((j8 * j12) + ((j12 * j9) >> 31)) >> r49);
                        if (r39 == 0 || (r3 - 1) / 10 > r4 / 10) {
                            r11 = 0;
                            r10 = 0;
                        } else {
                            int[][] r9 = POW5_SPLIT;
                            r11 = 0;
                            r10 = (int) ((((r9[r1][0] * j10) + ((j10 * r9[r1][1]) >> 31)) >> (((r39 - 1) - ((r14 + 1 == 0 ? 1 : (int) ((((r1 * 23219280) + 10000000) - 1) / 10000000)) - 61)) - 31)) % 10);
                        }
                        r1 = r39 + r63;
                        r5 = 1 >= r39 ? 1 : r11;
                        r62 = (r39 >= 23 || (r112 & ((1 << (r39 + (-1))) - 1)) != 0) ? r11 : 1;
                        r24 = r310;
                        r7 = (r38 % 2 == 1 ? r11 : 1) >= r39 ? 1 : r11;
                        r2 = r10;
                    }
                    int r8 = 1000000000;
                    int r92 = 10;
                    while (r92 > 0 && r3 < r8) {
                        r8 /= 10;
                        r92--;
                    }
                    int r15 = (r1 + r92) - 1;
                    int r82 = (r15 < -3 || r15 >= 7) ? 1 : r11;
                    if (r5 != 0 && !z) {
                        r3--;
                    }
                    int r102 = r11;
                    while (true) {
                        int r55 = r3 / 10;
                        int r123 = r4 / 10;
                        if (r55 <= r123 || (r3 < 100 && r82 != 0)) {
                            break;
                        }
                        r7 &= r4 % 10 == 0 ? 1 : r11;
                        r2 = r24 % 10;
                        r24 /= 10;
                        r102++;
                        r3 = r55;
                        r4 = r123;
                    }
                    if (r7 != 0 && z) {
                        while (r4 % 10 == 0 && (r3 >= 100 || r82 == 0)) {
                            r3 /= 10;
                            r2 = r24 % 10;
                            r24 /= 10;
                            r4 /= 10;
                            r102++;
                        }
                    }
                    int r311 = r24;
                    if (r62 != 0 && r2 == 5 && r311 % 2 == 0) {
                        r2 = 4;
                    }
                    int r312 = r311 + (((r311 != r4 || (r7 != 0 && z)) && r2 < 5) ? r11 : 1);
                    int r93 = r92 - r102;
                    if (z2) {
                        r0 = r30 + 1;
                        cArr[r30] = '-';
                    } else {
                        r0 = r30;
                    }
                    if (r82 != 0) {
                        for (int r83 = r11; r83 < r93 - 1; r83++) {
                            int r25 = r312 % 10;
                            r312 /= 10;
                            cArr[(r0 + r93) - r83] = (char) (r25 + 48);
                        }
                        cArr[r0] = (char) ((r312 % 10) + 48);
                        cArr[r0 + 1] = '.';
                        int r016 = r0 + r93 + 1;
                        if (r93 == 1) {
                            cArr[r016] = '0';
                            r016++;
                        }
                        int r26 = r016 + 1;
                        cArr[r016] = 'E';
                        if (r15 < 0) {
                            cArr[r26] = '-';
                            r15 = -r15;
                            r26++;
                        }
                        if (r15 >= 10) {
                            r42 = 48;
                            cArr[r26] = (char) ((r15 / 10) + 48);
                            r26++;
                        } else {
                            r42 = 48;
                        }
                        r02 = r26 + 1;
                        cArr[r26] = (char) ((r15 % 10) + r42);
                    } else {
                        int r410 = 48;
                        if (r15 < 0) {
                            int r27 = r0 + 1;
                            cArr[r0] = '0';
                            int r017 = r27 + 1;
                            cArr[r27] = '.';
                            int r28 = -1;
                            while (r28 > r15) {
                                cArr[r017] = '0';
                                r28--;
                                r017++;
                            }
                            int r16 = r017;
                            int r84 = r11;
                            while (r84 < r93) {
                                cArr[((r017 + r93) - r84) - 1] = (char) ((r312 % 10) + r410);
                                r312 /= 10;
                                r16++;
                                r84++;
                                r410 = 48;
                            }
                            r02 = r16;
                        } else {
                            int r29 = r15 + 1;
                            if (r29 >= r93) {
                                for (int r85 = r11; r85 < r93; r85++) {
                                    cArr[((r0 + r93) - r85) - 1] = (char) ((r312 % 10) + 48);
                                    r312 /= 10;
                                }
                                int r018 = r0 + r93;
                                while (r93 < r29) {
                                    cArr[r018] = '0';
                                    r93++;
                                    r018++;
                                }
                                int r17 = r018 + 1;
                                cArr[r018] = '.';
                                r02 = r17 + 1;
                                cArr[r17] = '0';
                            } else {
                                int r210 = r0 + 1;
                                for (int r86 = r11; r86 < r93; r86++) {
                                    if ((r93 - r86) - 1 == r15) {
                                        cArr[((r210 + r93) - r86) - 1] = '.';
                                        r210--;
                                    }
                                    cArr[((r210 + r93) - r86) - 1] = (char) ((r312 % 10) + 48);
                                    r312 /= 10;
                                }
                                r02 = r0 + r93 + 1;
                            }
                        }
                    }
                    return r02 - r30;
                }
                int r019 = r30 + 1;
                cArr[r30] = '0';
                int r313 = r019 + 1;
                cArr[r019] = '.';
                r03 = r313 + 1;
                cArr[r313] = '0';
            }
        }
        return r03 - r30;
    }
}
