package com.alibaba.fastjson.asm;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class ClassReader {

    /* renamed from: b */
    public final byte[] f69b;
    public final int header;
    private final int[] items;
    private final int maxStringLength;
    private boolean readAnnotations;
    private final String[] strings;

    public ClassReader(InputStream inputStream, boolean z) throws IOException {
        int r3;
        this.readAnnotations = z;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int r1 = inputStream.read(bArr);
            r3 = 0;
            if (r1 == -1) {
                break;
            } else if (r1 > 0) {
                byteArrayOutputStream.write(bArr, 0, r1);
            }
        }
        inputStream.close();
        this.f69b = byteArrayOutputStream.toByteArray();
        int[] r9 = new int[readUnsignedShort(8)];
        this.items = r9;
        int length = r9.length;
        this.strings = new String[length];
        int r10 = 10;
        int r12 = 1;
        while (r12 < length) {
            int r4 = r10 + 1;
            this.items[r12] = r4;
            byte b = this.f69b[r10];
            int unsignedShort = 5;
            if (b == 1) {
                unsignedShort = readUnsignedShort(r4) + 3;
                if (unsignedShort > r3) {
                    r3 = unsignedShort;
                }
            } else if (b == 15) {
                unsignedShort = 4;
            } else if (b != 18 && b != 3 && b != 4) {
                if (b != 5 && b != 6) {
                    switch (b) {
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                            break;
                        default:
                            unsignedShort = 3;
                            break;
                    }
                } else {
                    unsignedShort = 9;
                    r12++;
                }
            }
            r10 += unsignedShort;
            r12++;
        }
        this.maxStringLength = r3;
        this.header = r10;
    }

    public void accept(TypeCollector typeCollector) {
        int r1;
        char[] cArr = new char[this.maxStringLength];
        if (this.readAnnotations) {
            int attributes = getAttributes();
            for (int unsignedShort = readUnsignedShort(attributes); unsignedShort > 0; unsignedShort--) {
                if ("RuntimeVisibleAnnotations".equals(readUTF8(attributes + 2, cArr))) {
                    r1 = attributes + 8;
                    break;
                }
                attributes += readInt(attributes + 4) + 6;
            }
            r1 = 0;
        } else {
            r1 = 0;
        }
        int r3 = this.header;
        int r4 = this.items[readUnsignedShort(r3 + 4)];
        int unsignedShort2 = readUnsignedShort(r3 + 6);
        int r32 = r3 + 8;
        for (int r2 = 0; r2 < unsignedShort2; r2++) {
            r32 += 2;
        }
        int r42 = r32 + 2;
        int r5 = r42;
        for (int unsignedShort3 = readUnsignedShort(r32); unsignedShort3 > 0; unsignedShort3--) {
            r5 += 8;
            for (int unsignedShort4 = readUnsignedShort(r5 + 6); unsignedShort4 > 0; unsignedShort4--) {
                r5 += readInt(r5 + 2) + 6;
            }
        }
        int r52 = r5 + 2;
        for (int unsignedShort5 = readUnsignedShort(r5); unsignedShort5 > 0; unsignedShort5--) {
            r52 += 8;
            for (int unsignedShort6 = readUnsignedShort(r52 + 6); unsignedShort6 > 0; unsignedShort6--) {
                r52 += readInt(r52 + 2) + 6;
            }
        }
        int r53 = r52 + 2;
        for (int unsignedShort7 = readUnsignedShort(r52); unsignedShort7 > 0; unsignedShort7--) {
            r53 += readInt(r53 + 2) + 6;
        }
        if (r1 != 0) {
            int r12 = r1 + 2;
            for (int unsignedShort8 = readUnsignedShort(r1); unsignedShort8 > 0; unsignedShort8--) {
                typeCollector.visitAnnotation(readUTF8(r12, cArr));
            }
        }
        for (int unsignedShort9 = readUnsignedShort(r32); unsignedShort9 > 0; unsignedShort9--) {
            r42 += 8;
            for (int unsignedShort10 = readUnsignedShort(r42 + 6); unsignedShort10 > 0; unsignedShort10--) {
                r42 += readInt(r42 + 2) + 6;
            }
        }
        int method = r42 + 2;
        for (int unsignedShort11 = readUnsignedShort(r42); unsignedShort11 > 0; unsignedShort11--) {
            method = readMethod(typeCollector, cArr, method);
        }
    }

    private int getAttributes() {
        int r0 = this.header;
        int unsignedShort = r0 + 8 + (readUnsignedShort(r0 + 6) * 2);
        for (int unsignedShort2 = readUnsignedShort(unsignedShort); unsignedShort2 > 0; unsignedShort2--) {
            for (int unsignedShort3 = readUnsignedShort(unsignedShort + 8); unsignedShort3 > 0; unsignedShort3--) {
                unsignedShort += readInt(unsignedShort + 12) + 6;
            }
            unsignedShort += 8;
        }
        int r1 = unsignedShort + 2;
        for (int unsignedShort4 = readUnsignedShort(r1); unsignedShort4 > 0; unsignedShort4--) {
            for (int unsignedShort5 = readUnsignedShort(r1 + 8); unsignedShort5 > 0; unsignedShort5--) {
                r1 += readInt(r1 + 12) + 6;
            }
            r1 += 8;
        }
        return r1 + 2;
    }

    private int readMethod(TypeCollector typeCollector, char[] cArr, int r12) {
        int unsignedShort = readUnsignedShort(r12);
        String utf8 = readUTF8(r12 + 2, cArr);
        String utf82 = readUTF8(r12 + 4, cArr);
        int r122 = r12 + 8;
        int r4 = 0;
        int r5 = 0;
        for (int unsignedShort2 = readUnsignedShort(r12 + 6); unsignedShort2 > 0; unsignedShort2--) {
            String utf83 = readUTF8(r122, cArr);
            int r7 = readInt(r122 + 2);
            int r123 = r122 + 6;
            if (utf83.equals("Code")) {
                r5 = r123;
            }
            r122 = r123 + r7;
        }
        MethodCollector methodCollectorVisitMethod = typeCollector.visitMethod(unsignedShort, utf8, utf82);
        if (methodCollectorVisitMethod != null && r5 != 0) {
            int r52 = r5 + 8 + readInt(r5 + 4);
            int r53 = r52 + 2;
            for (int unsignedShort3 = readUnsignedShort(r52); unsignedShort3 > 0; unsignedShort3--) {
                r53 += 8;
            }
            int r54 = r53 + 2;
            int r1 = 0;
            for (int unsignedShort4 = readUnsignedShort(r53); unsignedShort4 > 0; unsignedShort4--) {
                String utf84 = readUTF8(r54, cArr);
                if (utf84.equals("LocalVariableTable")) {
                    r4 = r54 + 6;
                } else if (utf84.equals("LocalVariableTypeTable")) {
                    r1 = r54 + 6;
                }
                r54 += readInt(r54 + 2) + 6;
            }
            if (r4 != 0) {
                if (r1 != 0) {
                    int unsignedShort5 = readUnsignedShort(r1) * 3;
                    int r13 = r1 + 2;
                    int[] r2 = new int[unsignedShort5];
                    while (unsignedShort5 > 0) {
                        int r0 = unsignedShort5 - 1;
                        r2[r0] = r13 + 6;
                        int r02 = r0 - 1;
                        r2[r02] = readUnsignedShort(r13 + 8);
                        unsignedShort5 = r02 - 1;
                        r2[unsignedShort5] = readUnsignedShort(r13);
                        r13 += 10;
                    }
                }
                int r42 = r4 + 2;
                for (int unsignedShort6 = readUnsignedShort(r4); unsignedShort6 > 0; unsignedShort6--) {
                    methodCollectorVisitMethod.visitLocalVariable(readUTF8(r42 + 4, cArr), readUnsignedShort(r42 + 8));
                    r42 += 10;
                }
            }
        }
        return r122;
    }

    private int readUnsignedShort(int r2) {
        byte[] bArr = this.f69b;
        return (bArr[r2 + 1] & 255) | ((bArr[r2] & 255) << 8);
    }

    private int readInt(int r3) {
        byte[] bArr = this.f69b;
        return (bArr[r3 + 3] & 255) | ((bArr[r3] & 255) << 24) | ((bArr[r3 + 1] & 255) << 16) | ((bArr[r3 + 2] & 255) << 8);
    }

    private String readUTF8(int r4, char[] cArr) {
        int unsignedShort = readUnsignedShort(r4);
        String[] strArr = this.strings;
        String str = strArr[unsignedShort];
        if (str != null) {
            return str;
        }
        int r1 = this.items[unsignedShort];
        String utf = readUTF(r1 + 2, readUnsignedShort(r1), cArr);
        strArr[unsignedShort] = utf;
        return utf;
    }

    private String readUTF(int r9, int r10, char[] cArr) {
        int r92;
        int r102 = r10 + r9;
        byte[] bArr = this.f69b;
        int r1 = 0;
        char c = 0;
        char c2 = 0;
        while (r9 < r102) {
            int r4 = r9 + 1;
            byte b = bArr[r9];
            if (c == 0) {
                int r93 = b & 255;
                if (r93 < 128) {
                    cArr[r1] = (char) r93;
                    r1++;
                } else if (r93 >= 224 || r93 <= 191) {
                    c2 = (char) (r93 & 15);
                    c = 2;
                } else {
                    r92 = r93 & 31;
                    c2 = (char) r92;
                    c = 1;
                }
            } else if (c == 1) {
                cArr[r1] = (char) ((b & 63) | (c2 << 6));
                r1++;
                c = 0;
            } else if (c == 2) {
                r92 = (b & 63) | (c2 << 6);
                c2 = (char) r92;
                c = 1;
            }
            r9 = r4;
        }
        return new String(cArr, 0, r1);
    }
}
