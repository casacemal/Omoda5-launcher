package com.alibaba.fastjson.util;

import java.lang.reflect.Array;
import java.math.BigInteger;

/* loaded from: classes.dex */
public final class RyuDouble {
    private static final int[][] POW5_SPLIT = (int[][]) Array.newInstance((Class<?>) int.class, 326, 4);
    private static final int[][] POW5_INV_SPLIT = (int[][]) Array.newInstance((Class<?>) int.class, 291, 4);

    static {
        BigInteger bigIntegerSubtract = BigInteger.ONE.shiftLeft(31).subtract(BigInteger.ONE);
        BigInteger bigIntegerSubtract2 = BigInteger.ONE.shiftLeft(31).subtract(BigInteger.ONE);
        int r4 = 0;
        while (r4 < 326) {
            BigInteger bigIntegerPow = BigInteger.valueOf(5L).pow(r4);
            int r6 = bigIntegerPow.bitLength();
            int r7 = r4 == 0 ? 1 : (int) ((((r4 * 23219280) + 10000000) - 1) / 10000000);
            if (r7 != r6) {
                throw new IllegalStateException(r6 + " != " + r7);
            }
            if (r4 < POW5_SPLIT.length) {
                for (int r72 = 0; r72 < 4; r72++) {
                    POW5_SPLIT[r4][r72] = bigIntegerPow.shiftRight((r6 - 121) + ((3 - r72) * 31)).and(bigIntegerSubtract).intValue();
                }
            }
            if (r4 < POW5_INV_SPLIT.length) {
                BigInteger bigIntegerAdd = BigInteger.ONE.shiftLeft(r6 + 121).divide(bigIntegerPow).add(BigInteger.ONE);
                for (int r62 = 0; r62 < 4; r62++) {
                    if (r62 == 0) {
                        POW5_INV_SPLIT[r4][r62] = bigIntegerAdd.shiftRight((3 - r62) * 31).intValue();
                    } else {
                        POW5_INV_SPLIT[r4][r62] = bigIntegerAdd.shiftRight((3 - r62) * 31).and(bigIntegerSubtract2).intValue();
                    }
                }
            }
            r4++;
        }
    }

    public static String toString(double d) {
        char[] cArr = new char[24];
        return new String(cArr, 0, toString(d, cArr, 0));
    }

    public static int toString(double d, char[] cArr, int r44) {
        int r9;
        boolean z;
        boolean z2;
        long j;
        int r0;
        long j2;
        int r3;
        int r4;
        int r7;
        long j3;
        long j4;
        int r72;
        int r2;
        int r32;
        int r42;
        int r1;
        int r33;
        int r5;
        int r52;
        int r73;
        int r02;
        if (!Double.isNaN(d)) {
            if (d == Double.POSITIVE_INFINITY) {
                int r03 = r44 + 1;
                cArr[r44] = 'I';
                int r34 = r03 + 1;
                cArr[r03] = 'n';
                int r04 = r34 + 1;
                cArr[r34] = 'f';
                int r35 = r04 + 1;
                cArr[r04] = 'i';
                int r05 = r35 + 1;
                cArr[r35] = 'n';
                int r22 = r05 + 1;
                cArr[r05] = 'i';
                int r06 = r22 + 1;
                cArr[r22] = 't';
                r1 = r06 + 1;
                cArr[r06] = 'y';
            } else if (d == Double.NEGATIVE_INFINITY) {
                int r07 = r44 + 1;
                cArr[r44] = '-';
                int r36 = r07 + 1;
                cArr[r07] = 'I';
                int r08 = r36 + 1;
                cArr[r36] = 'n';
                int r37 = r08 + 1;
                cArr[r08] = 'f';
                int r09 = r37 + 1;
                cArr[r37] = 'i';
                int r38 = r09 + 1;
                cArr[r09] = 'n';
                int r010 = r38 + 1;
                cArr[r38] = 'i';
                int r12 = r010 + 1;
                cArr[r010] = 't';
                r02 = r12 + 1;
                cArr[r12] = 'y';
            } else {
                long jDoubleToLongBits = Double.doubleToLongBits(d);
                if (jDoubleToLongBits == 0) {
                    int r011 = r44 + 1;
                    cArr[r44] = '0';
                    int r13 = r011 + 1;
                    cArr[r011] = '.';
                    r02 = r13 + 1;
                    cArr[r13] = '0';
                } else if (jDoubleToLongBits == Long.MIN_VALUE) {
                    int r012 = r44 + 1;
                    cArr[r44] = '-';
                    int r14 = r012 + 1;
                    cArr[r012] = '0';
                    int r013 = r14 + 1;
                    cArr[r14] = '.';
                    r1 = r013 + 1;
                    cArr[r013] = '0';
                } else {
                    int r8 = (int) ((jDoubleToLongBits >>> 52) & 2047);
                    long j5 = jDoubleToLongBits & 4503599627370495L;
                    if (r8 == 0) {
                        r9 = -1074;
                    } else {
                        r9 = (r8 - 1023) - 52;
                        j5 |= 4503599627370496L;
                    }
                    boolean z3 = jDoubleToLongBits < 0;
                    boolean z4 = (j5 & 1) == 0;
                    long j6 = 4 * j5;
                    long j7 = j6 + 2;
                    int r014 = (j5 != 4503599627370496L || r8 <= 1) ? 1 : 0;
                    long j8 = (j6 - 1) - r014;
                    int r92 = r9 - 2;
                    int r23 = 3;
                    if (r92 >= 0) {
                        int r015 = Math.max(0, ((int) ((r92 * 3010299) / 10000000)) - 1);
                        int r43 = ((((-r92) + r015) + (((r015 == 0 ? 1 : (int) ((((r015 * 23219280) + 10000000) - 1) / 10000000)) + 122) - 1)) - 93) - 21;
                        if (r43 < 0) {
                            throw new IllegalArgumentException("" + r43);
                        }
                        int[] r39 = POW5_INV_SPLIT[r015];
                        long j9 = j6 >>> 31;
                        long j10 = j6 & 2147483647L;
                        long j11 = r39[0] * j10;
                        z = z3;
                        z2 = z4;
                        long j12 = ((((((((((((j10 * r39[3]) >>> 31) + (r39[2] * j10)) + (j9 * r39[3])) >>> 31) + (r39[1] * j10)) + (r39[2] * j9)) >>> 31) + j11) + (r39[1] * j9)) >>> 21) + ((r39[0] * j9) << 10)) >>> r43;
                        long j13 = j7 >>> 31;
                        long j14 = j7 & 2147483647L;
                        long j15 = r39[0] * j14;
                        long j16 = ((((((((((((j14 * r39[3]) >>> 31) + (r39[2] * j14)) + (j13 * r39[3])) >>> 31) + (r39[1] * j14)) + (r39[2] * j13)) >>> 31) + j15) + (r39[1] * j13)) >>> 21) + ((r39[0] * j13) << 10)) >>> r43;
                        long j17 = j8 >>> 31;
                        long j18 = j8 & 2147483647L;
                        long j19 = r39[0] * j18;
                        j3 = j16;
                        j2 = ((((((((((((j18 * r39[3]) >>> 31) + (r39[2] * j18)) + (j17 * r39[3])) >>> 31) + (r39[1] * j18)) + (r39[2] * j17)) >>> 31) + j19) + (r39[1] * j17)) >>> 21) + ((r39[0] * j17) << 10)) >>> r43;
                        if (r015 <= 21) {
                            long j20 = j6 % 5;
                            if (j20 == 0) {
                                if (j20 != 0) {
                                    r73 = 0;
                                } else if (j6 % 25 != 0) {
                                    r73 = 1;
                                } else if (j6 % 125 != 0) {
                                    r73 = 2;
                                } else if (j6 % 625 != 0) {
                                    r73 = 3;
                                } else {
                                    long j21 = j6 / 625;
                                    r73 = 4;
                                    for (long j22 = 0; j21 > j22 && j21 % 5 == j22; j22 = 0) {
                                        j21 /= 5;
                                        r73++;
                                    }
                                }
                                r4 = r73 >= r015 ? 1 : 0;
                                r33 = 0;
                                r7 = r33;
                                j = j12;
                                r3 = r015;
                                r0 = 0;
                            } else {
                                if (z2) {
                                    if (j8 % 5 != 0) {
                                        r52 = 0;
                                    } else if (j8 % 25 != 0) {
                                        r52 = 1;
                                    } else if (j8 % 125 != 0) {
                                        r52 = 2;
                                    } else if (j8 % 625 != 0) {
                                        r52 = 3;
                                    } else {
                                        long j23 = j8 / 625;
                                        r52 = 4;
                                        for (long j24 = 0; j23 > j24 && j23 % 5 == j24; j24 = 0) {
                                            j23 /= 5;
                                            r52++;
                                        }
                                    }
                                    r33 = r52 >= r015 ? 1 : 0;
                                    r4 = 0;
                                    r7 = r33;
                                    j = j12;
                                    r3 = r015;
                                    r0 = 0;
                                } else {
                                    if (j7 % 5 != 0) {
                                        r5 = 0;
                                    } else if (j7 % 25 != 0) {
                                        r5 = 1;
                                    } else if (j7 % 125 != 0) {
                                        r5 = 2;
                                    } else if (j7 % 625 != 0) {
                                        r5 = 3;
                                    } else {
                                        long j25 = j7 / 625;
                                        r5 = 4;
                                        for (long j26 = 0; j25 > j26 && j25 % 5 == j26; j26 = 0) {
                                            j25 /= 5;
                                            r5++;
                                        }
                                    }
                                    if (r5 >= r015) {
                                        j3--;
                                    }
                                }
                                r4 = 0;
                                r7 = r33;
                                j = j12;
                                r3 = r015;
                                r0 = 0;
                            }
                        } else {
                            r4 = 0;
                            r7 = r33;
                            j = j12;
                            r3 = r015;
                            r0 = 0;
                        }
                    } else {
                        z = z3;
                        z2 = z4;
                        int r15 = -r92;
                        int r24 = Math.max(0, ((int) ((r15 * 6989700) / 10000000)) - 1);
                        int r16 = r15 - r24;
                        int r310 = ((r24 - ((r16 == 0 ? 1 : (int) ((((r16 * 23219280) + 10000000) - 1) / 10000000)) - 121)) - 93) - 21;
                        if (r310 < 0) {
                            throw new IllegalArgumentException("" + r310);
                        }
                        int[] r17 = POW5_SPLIT[r16];
                        long j27 = j6 >>> 31;
                        long j28 = j6 & 2147483647L;
                        long j29 = r17[0] * j28;
                        int r162 = r014;
                        long j30 = ((((((((((((j28 * r17[3]) >>> 31) + (r17[2] * j28)) + (j27 * r17[3])) >>> 31) + (r17[1] * j28)) + (r17[2] * j27)) >>> 31) + j29) + (r17[1] * j27)) >>> 21) + ((r17[0] * j27) << 10)) >>> r310;
                        long j31 = j7 >>> 31;
                        long j32 = j7 & 2147483647L;
                        long j33 = r17[0] * j32;
                        j = j30;
                        long j34 = ((((((((((((j32 * r17[3]) >>> 31) + (r17[2] * j32)) + (j31 * r17[3])) >>> 31) + (r17[1] * j32)) + (r17[2] * j31)) >>> 31) + j33) + (r17[1] * j31)) >>> 21) + ((r17[0] * j31) << 10)) >>> r310;
                        long j35 = j8 >>> 31;
                        long j36 = j8 & 2147483647L;
                        r0 = 0;
                        long j37 = r17[0] * j36;
                        j2 = ((((((((((((j36 * r17[3]) >>> 31) + (r17[2] * j36)) + (j35 * r17[3])) >>> 31) + (r17[1] * j36)) + (r17[2] * j35)) >>> 31) + j37) + (r17[1] * j35)) >>> 21) + ((r17[0] * j35) << 10)) >>> r310;
                        r3 = r24 + r92;
                        r4 = 1;
                        if (r24 > 1) {
                            if (r24 < 63) {
                                r4 = (j6 & ((1 << (r24 - 1)) - 1)) == 0 ? 1 : 0;
                                r7 = 0;
                            } else {
                                r4 = 0;
                                r7 = 0;
                            }
                            j3 = j34;
                        } else if (z2) {
                            j3 = j34;
                            r7 = r162 == 1 ? 1 : 0;
                        } else {
                            j3 = j34 - 1;
                            r7 = 0;
                        }
                    }
                    if (j3 >= 1000000000000000000L) {
                        r23 = 19;
                    } else if (j3 >= 100000000000000000L) {
                        r23 = 18;
                    } else if (j3 >= 10000000000000000L) {
                        r23 = 17;
                    } else if (j3 >= 1000000000000000L) {
                        r23 = 16;
                    } else if (j3 >= 100000000000000L) {
                        r23 = 15;
                    } else if (j3 >= 10000000000000L) {
                        r23 = 14;
                    } else if (j3 >= 1000000000000L) {
                        r23 = 13;
                    } else if (j3 >= 100000000000L) {
                        r23 = 12;
                    } else if (j3 >= 10000000000L) {
                        r23 = 11;
                    } else if (j3 >= 1000000000) {
                        r23 = 10;
                    } else if (j3 >= 100000000) {
                        r23 = 9;
                    } else if (j3 >= 10000000) {
                        r23 = 8;
                    } else if (j3 >= 1000000) {
                        r23 = 7;
                    } else if (j3 >= 100000) {
                        r23 = 6;
                    } else if (j3 >= 10000) {
                        r23 = 5;
                    } else if (j3 >= 1000) {
                        r23 = 4;
                    } else if (j3 < 100) {
                        r23 = j3 >= 10 ? 2 : 1;
                    }
                    int r311 = (r3 + r23) - 1;
                    int r122 = (r311 < -3 || r311 >= 7) ? 1 : r0;
                    if (r7 == 0 && r4 == 0) {
                        int r45 = r0;
                        r72 = r45;
                        while (true) {
                            long j38 = j3 / 10;
                            long j39 = j2 / 10;
                            if (j38 <= j39 || (j3 < 100 && r122 != 0)) {
                                break;
                            }
                            r45 = (int) (j % 10);
                            j /= 10;
                            r72++;
                            j3 = j38;
                            j2 = j39;
                        }
                        j4 = j + ((j == j2 || r45 >= 5) ? 1 : r0);
                    } else {
                        int r53 = r0;
                        int r132 = r53;
                        while (true) {
                            long j40 = j3 / 10;
                            long j41 = j2 / 10;
                            if (j40 <= j41 || (j3 < 100 && r122 != 0)) {
                                break;
                            }
                            r7 &= j2 % 10 == 0 ? 1 : r0;
                            r4 &= r53 == 0 ? 1 : r0;
                            r53 = (int) (j % 10);
                            j /= 10;
                            r132++;
                            j3 = j40;
                            j2 = j41;
                        }
                        if (r7 != 0 && z2) {
                            while (j2 % 10 == 0 && (j3 >= 100 || r122 == 0)) {
                                r4 &= r53 == 0 ? 1 : r0;
                                r53 = (int) (j % 10);
                                j3 /= 10;
                                j /= 10;
                                j2 /= 10;
                                r132++;
                            }
                        }
                        if (r4 != 0 && r53 == 5 && j % 2 == 0) {
                            r53 = 4;
                        }
                        j4 = j + (((j != j2 || (r7 != 0 && z2)) && r53 < 5) ? r0 : 1);
                        r72 = r132;
                    }
                    int r18 = r23 - r72;
                    if (z) {
                        r2 = r44 + 1;
                        cArr[r44] = '-';
                    } else {
                        r2 = r44;
                    }
                    if (r122 == 0) {
                        char c = '0';
                        if (r311 < 0) {
                            int r54 = r2 + 1;
                            cArr[r2] = '0';
                            int r25 = r54 + 1;
                            cArr[r54] = '.';
                            int r55 = -1;
                            while (r55 > r311) {
                                cArr[r25] = c;
                                r55--;
                                r25++;
                                c = '0';
                            }
                            r32 = r25;
                            while (r0 < r18) {
                                cArr[((r25 + r18) - r0) - 1] = (char) ((j4 % 10) + 48);
                                j4 /= 10;
                                r32++;
                                r0++;
                            }
                        } else {
                            int r46 = r311 + 1;
                            if (r46 >= r18) {
                                while (r0 < r18) {
                                    cArr[((r2 + r18) - r0) - 1] = (char) ((j4 % 10) + 48);
                                    j4 /= 10;
                                    r0++;
                                }
                                int r26 = r2 + r18;
                                while (r18 < r46) {
                                    cArr[r26] = '0';
                                    r18++;
                                    r26++;
                                }
                                int r016 = r26 + 1;
                                cArr[r26] = '.';
                                cArr[r016] = '0';
                                r32 = r016 + 1;
                            } else {
                                int r47 = r2 + 1;
                                while (r0 < r18) {
                                    if ((r18 - r0) - 1 == r311) {
                                        cArr[((r47 + r18) - r0) - 1] = '.';
                                        r47--;
                                    }
                                    cArr[((r47 + r18) - r0) - 1] = (char) ((j4 % 10) + 48);
                                    j4 /= 10;
                                    r0++;
                                }
                                r32 = r2 + r18 + 1;
                            }
                        }
                        return r32 - r44;
                    }
                    while (r0 < r18 - 1) {
                        int r48 = (int) (j4 % 10);
                        j4 /= 10;
                        cArr[(r2 + r18) - r0] = (char) (r48 + 48);
                        r0++;
                    }
                    cArr[r2] = (char) ((j4 % 10) + 48);
                    cArr[r2 + 1] = '.';
                    int r27 = r2 + r18 + 1;
                    if (r18 == 1) {
                        cArr[r27] = '0';
                        r27++;
                    }
                    int r017 = r27 + 1;
                    cArr[r27] = 'E';
                    if (r311 < 0) {
                        cArr[r017] = '-';
                        r311 = -r311;
                        r017++;
                    }
                    if (r311 >= 100) {
                        int r19 = r017 + 1;
                        r42 = 48;
                        cArr[r017] = (char) ((r311 / 100) + 48);
                        r311 %= 100;
                        r017 = r19 + 1;
                        cArr[r19] = (char) ((r311 / 10) + 48);
                    } else {
                        r42 = 48;
                        if (r311 >= 10) {
                            cArr[r017] = (char) ((r311 / 10) + 48);
                            r017++;
                        }
                    }
                    r1 = r017 + 1;
                    cArr[r017] = (char) ((r311 % 10) + r42);
                }
            }
            return r1 - r44;
        }
        int r018 = r44 + 1;
        cArr[r44] = 'N';
        int r110 = r018 + 1;
        cArr[r018] = 'a';
        r02 = r110 + 1;
        cArr[r110] = 'N';
        return r02 - r44;
    }
}
