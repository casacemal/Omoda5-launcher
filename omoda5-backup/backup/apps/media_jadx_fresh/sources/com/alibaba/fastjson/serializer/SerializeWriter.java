package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.fastjson.util.RyuDouble;
import com.alibaba.fastjson.util.RyuFloat;
import com.chery.libvr.bean.params.ParamsResValue;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.nio.charset.Charset;
import java.util.List;

/* loaded from: classes.dex */
public final class SerializeWriter extends Writer {
    private static int BUFFER_THRESHOLD;
    static final int nonDirectFeatures;
    protected boolean beanToArray;
    protected boolean browserSecure;
    protected char[] buf;
    protected int count;
    protected boolean disableCircularReferenceDetect;
    protected int features;
    protected char keySeperator;
    protected int maxBufSize;
    protected boolean notWriteDefaultValue;
    protected boolean quoteFieldNames;
    protected long sepcialBits;
    protected boolean sortField;
    protected boolean useSingleQuotes;
    protected boolean writeDirect;
    protected boolean writeEnumUsingName;
    protected boolean writeEnumUsingToString;
    protected boolean writeNonStringValueAsString;
    private final Writer writer;
    private static final ThreadLocal<char[]> bufLocal = new ThreadLocal<>();
    private static final ThreadLocal<byte[]> bytesBufLocal = new ThreadLocal<>();
    private static final char[] VALUE_TRUE = ":true".toCharArray();
    private static final char[] VALUE_FALSE = ":false".toCharArray();

    static {
        int r0;
        BUFFER_THRESHOLD = 131072;
        try {
            String stringProperty = IOUtils.getStringProperty("fastjson.serializer_buffer_threshold");
            if (stringProperty != null && stringProperty.length() > 0 && (r0 = Integer.parseInt(stringProperty)) >= 64 && r0 <= 65536) {
                BUFFER_THRESHOLD = r0 * 1024;
            }
        } catch (Throwable unused) {
        }
        nonDirectFeatures = SerializerFeature.UseSingleQuotes.mask | 0 | SerializerFeature.BrowserCompatible.mask | SerializerFeature.PrettyFormat.mask | SerializerFeature.WriteEnumUsingToString.mask | SerializerFeature.WriteNonStringValueAsString.mask | SerializerFeature.WriteSlashAsSpecial.mask | SerializerFeature.IgnoreErrorGetter.mask | SerializerFeature.WriteClassName.mask | SerializerFeature.NotWriteDefaultValue.mask;
    }

    public SerializeWriter() {
        this((Writer) null);
    }

    public SerializeWriter(Writer writer) {
        this(writer, JSON.DEFAULT_GENERATE_FEATURE, SerializerFeature.EMPTY);
    }

    public SerializeWriter(SerializerFeature... serializerFeatureArr) {
        this((Writer) null, serializerFeatureArr);
    }

    public SerializeWriter(Writer writer, SerializerFeature... serializerFeatureArr) {
        this(writer, 0, serializerFeatureArr);
    }

    public SerializeWriter(Writer writer, int r4, SerializerFeature... serializerFeatureArr) {
        this.maxBufSize = -1;
        this.writer = writer;
        char[] cArr = bufLocal.get();
        this.buf = cArr;
        if (cArr != null) {
            bufLocal.set(null);
        } else {
            this.buf = new char[2048];
        }
        for (SerializerFeature serializerFeature : serializerFeatureArr) {
            r4 |= serializerFeature.getMask();
        }
        this.features = r4;
        computeFeatures();
    }

    public int getMaxBufSize() {
        return this.maxBufSize;
    }

    public void setMaxBufSize(int r3) {
        if (r3 < this.buf.length) {
            throw new JSONException("must > " + this.buf.length);
        }
        this.maxBufSize = r3;
    }

    public int getBufferLength() {
        return this.buf.length;
    }

    public SerializeWriter(int r2) {
        this((Writer) null, r2);
    }

    public SerializeWriter(Writer writer, int r3) {
        this.maxBufSize = -1;
        this.writer = writer;
        if (r3 <= 0) {
            throw new IllegalArgumentException("Negative initial size: " + r3);
        }
        this.buf = new char[r3];
        computeFeatures();
    }

    public void config(SerializerFeature serializerFeature, boolean z) {
        if (z) {
            this.features |= serializerFeature.getMask();
            if (serializerFeature == SerializerFeature.WriteEnumUsingToString) {
                this.features &= ~SerializerFeature.WriteEnumUsingName.getMask();
            } else if (serializerFeature == SerializerFeature.WriteEnumUsingName) {
                this.features &= ~SerializerFeature.WriteEnumUsingToString.getMask();
            }
        } else {
            this.features = (~serializerFeature.getMask()) & this.features;
        }
        computeFeatures();
    }

    protected void computeFeatures() {
        long j;
        this.quoteFieldNames = (this.features & SerializerFeature.QuoteFieldNames.mask) != 0;
        this.useSingleQuotes = (this.features & SerializerFeature.UseSingleQuotes.mask) != 0;
        this.sortField = (this.features & SerializerFeature.SortField.mask) != 0;
        this.disableCircularReferenceDetect = (this.features & SerializerFeature.DisableCircularReferenceDetect.mask) != 0;
        this.beanToArray = (this.features & SerializerFeature.BeanToArray.mask) != 0;
        this.writeNonStringValueAsString = (this.features & SerializerFeature.WriteNonStringValueAsString.mask) != 0;
        this.notWriteDefaultValue = (this.features & SerializerFeature.NotWriteDefaultValue.mask) != 0;
        this.writeEnumUsingName = (this.features & SerializerFeature.WriteEnumUsingName.mask) != 0;
        this.writeEnumUsingToString = (this.features & SerializerFeature.WriteEnumUsingToString.mask) != 0;
        this.writeDirect = this.quoteFieldNames && (this.features & nonDirectFeatures) == 0 && (this.beanToArray || this.writeEnumUsingName);
        this.keySeperator = this.useSingleQuotes ? '\'' : '\"';
        boolean z = (this.features & SerializerFeature.BrowserSecure.mask) != 0;
        this.browserSecure = z;
        if (z) {
            j = 5764610843043954687L;
        } else {
            j = (this.features & SerializerFeature.WriteSlashAsSpecial.mask) != 0 ? 140758963191807L : 21474836479L;
        }
        this.sepcialBits = j;
    }

    public boolean isSortField() {
        return this.sortField;
    }

    public boolean isNotWriteDefaultValue() {
        return this.notWriteDefaultValue;
    }

    public boolean isEnabled(SerializerFeature serializerFeature) {
        return (this.features & serializerFeature.mask) != 0;
    }

    public boolean isEnabled(int r1) {
        return (this.features & r1) != 0;
    }

    @Override // java.io.Writer
    public void write(int r4) {
        int r1 = 1;
        int r0 = this.count + 1;
        if (r0 <= this.buf.length) {
            r1 = r0;
        } else if (this.writer == null) {
            expandCapacity(r0);
            r1 = r0;
        } else {
            flush();
        }
        this.buf[this.count] = (char) r4;
        this.count = r1;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int r5, int r6) throws IOException {
        int r0;
        if (r5 < 0 || r5 > cArr.length || r6 < 0 || (r0 = r5 + r6) > cArr.length || r0 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (r6 == 0) {
            return;
        }
        int r02 = this.count + r6;
        if (r02 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(r02);
            } else {
                do {
                    char[] cArr2 = this.buf;
                    int length = cArr2.length;
                    int r2 = this.count;
                    int r1 = length - r2;
                    System.arraycopy(cArr, r5, cArr2, r2, r1);
                    this.count = this.buf.length;
                    flush();
                    r6 -= r1;
                    r5 += r1;
                } while (r6 > this.buf.length);
                r02 = r6;
            }
        }
        System.arraycopy(cArr, r5, this.buf, this.count, r6);
        this.count = r02;
    }

    public void expandCapacity(int r4) {
        char[] cArr;
        int r0 = this.maxBufSize;
        if (r0 != -1 && r4 >= r0) {
            throw new JSONException("serialize exceeded MAX_OUTPUT_LENGTH=" + this.maxBufSize + ", minimumCapacity=" + r4);
        }
        char[] cArr2 = this.buf;
        int length = cArr2.length + (cArr2.length >> 1) + 1;
        if (length >= r4) {
            r4 = length;
        }
        char[] cArr3 = new char[r4];
        System.arraycopy(this.buf, 0, cArr3, 0, this.count);
        if (this.buf.length < BUFFER_THRESHOLD && ((cArr = bufLocal.get()) == null || cArr.length < this.buf.length)) {
            bufLocal.set(this.buf);
        }
        this.buf = cArr3;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public SerializeWriter append(CharSequence charSequence) throws IOException {
        String string = charSequence == null ? "null" : charSequence.toString();
        write(string, 0, string.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public SerializeWriter append(CharSequence charSequence, int r2, int r3) throws IOException {
        if (charSequence == null) {
            charSequence = "null";
        }
        String string = charSequence.subSequence(r2, r3).toString();
        write(string, 0, string.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public SerializeWriter append(char c) {
        write(c);
        return this;
    }

    @Override // java.io.Writer
    public void write(String str, int r6, int r7) throws IOException {
        int r3;
        int r0 = this.count + r7;
        if (r0 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(r0);
            } else {
                while (true) {
                    char[] cArr = this.buf;
                    int length = cArr.length;
                    int r2 = this.count;
                    int r1 = length - r2;
                    r3 = r6 + r1;
                    str.getChars(r6, r3, cArr, r2);
                    this.count = this.buf.length;
                    flush();
                    r7 -= r1;
                    if (r7 <= this.buf.length) {
                        break;
                    } else {
                        r6 = r3;
                    }
                }
                r0 = r7;
                r6 = r3;
            }
        }
        str.getChars(r6, r7 + r6, this.buf, this.count);
        this.count = r0;
    }

    public void writeTo(Writer writer) throws IOException {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        writer.write(this.buf, 0, this.count);
    }

    public void writeTo(OutputStream outputStream, String str) throws IOException {
        writeTo(outputStream, Charset.forName(str));
    }

    public void writeTo(OutputStream outputStream, Charset charset) throws IOException {
        writeToEx(outputStream, charset);
    }

    public int writeToEx(OutputStream outputStream, Charset charset) throws IOException {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        if (charset == IOUtils.UTF8) {
            return encodeToUTF8(outputStream);
        }
        byte[] bytes = new String(this.buf, 0, this.count).getBytes(charset);
        outputStream.write(bytes);
        return bytes.length;
    }

    public char[] toCharArray() {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        int r0 = this.count;
        char[] cArr = new char[r0];
        System.arraycopy(this.buf, 0, cArr, 0, r0);
        return cArr;
    }

    public char[] toCharArrayForSpringWebSocket() {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        int r0 = this.count;
        char[] cArr = new char[r0 - 2];
        System.arraycopy(this.buf, 1, cArr, 0, r0 - 2);
        return cArr;
    }

    public byte[] toBytes(String str) {
        Charset charsetForName;
        if (str == null || "UTF-8".equals(str)) {
            charsetForName = IOUtils.UTF8;
        } else {
            charsetForName = Charset.forName(str);
        }
        return toBytes(charsetForName);
    }

    public byte[] toBytes(Charset charset) {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        if (charset == IOUtils.UTF8) {
            return encodeToUTF8Bytes();
        }
        return new String(this.buf, 0, this.count).getBytes(charset);
    }

    private int encodeToUTF8(OutputStream outputStream) throws IOException {
        int r0 = (int) (this.count * 3.0d);
        byte[] bArr = bytesBufLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            bytesBufLocal.set(bArr);
        }
        byte[] bArr2 = bArr.length < r0 ? new byte[r0] : bArr;
        int r4 = IOUtils.encodeUTF8(this.buf, 0, this.count, bArr2);
        outputStream.write(bArr2, 0, r4);
        if (bArr2 != bArr && bArr2.length <= BUFFER_THRESHOLD) {
            bytesBufLocal.set(bArr2);
        }
        return r4;
    }

    private byte[] encodeToUTF8Bytes() {
        int r0 = (int) (this.count * 3.0d);
        byte[] bArr = bytesBufLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            bytesBufLocal.set(bArr);
        }
        byte[] bArr2 = bArr.length < r0 ? new byte[r0] : bArr;
        int r4 = IOUtils.encodeUTF8(this.buf, 0, this.count, bArr2);
        byte[] bArr3 = new byte[r4];
        System.arraycopy(bArr2, 0, bArr3, 0, r4);
        if (bArr2 != bArr && bArr2.length <= BUFFER_THRESHOLD) {
            bytesBufLocal.set(bArr2);
        }
        return bArr3;
    }

    public int size() {
        return this.count;
    }

    public String toString() {
        return new String(this.buf, 0, this.count);
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.writer != null && this.count > 0) {
            flush();
        }
        char[] cArr = this.buf;
        if (cArr.length <= BUFFER_THRESHOLD) {
            bufLocal.set(cArr);
        }
        this.buf = null;
    }

    @Override // java.io.Writer
    public void write(String str) {
        if (str == null) {
            writeNull();
        } else {
            write(str, 0, str.length());
        }
    }

    public void writeInt(int r4) {
        if (r4 == Integer.MIN_VALUE) {
            write("-2147483648");
            return;
        }
        int r0 = r4 < 0 ? IOUtils.stringSize(-r4) + 1 : IOUtils.stringSize(r4);
        int r1 = this.count + r0;
        if (r1 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(r1);
            } else {
                char[] cArr = new char[r0];
                IOUtils.getChars(r4, r0, cArr);
                write(cArr, 0, r0);
                return;
            }
        }
        IOUtils.getChars(r4, r1, this.buf);
        this.count = r1;
    }

    public void writeByteArray(byte[] bArr) {
        if (isEnabled(SerializerFeature.WriteClassName.mask)) {
            writeHex(bArr);
            return;
        }
        int length = bArr.length;
        char c = this.useSingleQuotes ? '\'' : '\"';
        if (length == 0) {
            write(this.useSingleQuotes ? "''" : "\"\"");
            return;
        }
        char[] cArr = IOUtils.f78CA;
        int r5 = (length / 3) * 3;
        int r6 = length - 1;
        int r9 = this.count;
        int r7 = (((r6 / 3) + 1) << 2) + r9 + 2;
        if (r7 > this.buf.length) {
            if (this.writer != null) {
                write(c);
                int r72 = 0;
                while (r72 < r5) {
                    int r92 = r72 + 1;
                    int r10 = r92 + 1;
                    int r73 = ((bArr[r72] & 255) << 16) | ((bArr[r92] & 255) << 8) | (bArr[r10] & 255);
                    write(cArr[(r73 >>> 18) & 63]);
                    write(cArr[(r73 >>> 12) & 63]);
                    write(cArr[(r73 >>> 6) & 63]);
                    write(cArr[r73 & 63]);
                    r72 = r10 + 1;
                }
                int r2 = length - r5;
                if (r2 > 0) {
                    int r1 = ((bArr[r5] & 255) << 10) | (r2 == 2 ? (bArr[r6] & 255) << 2 : 0);
                    write(cArr[r1 >> 12]);
                    write(cArr[(r1 >>> 6) & 63]);
                    write(r2 == 2 ? cArr[r1 & 63] : '=');
                    write(61);
                }
                write(c);
                return;
            }
            expandCapacity(r7);
        }
        this.count = r7;
        int r13 = r9 + 1;
        this.buf[r9] = c;
        int r93 = 0;
        while (r93 < r5) {
            int r102 = r93 + 1;
            int r14 = r102 + 1;
            int r94 = ((bArr[r93] & 255) << 16) | ((bArr[r102] & 255) << 8);
            int r103 = r14 + 1;
            int r95 = r94 | (bArr[r14] & 255);
            char[] cArr2 = this.buf;
            int r15 = r13 + 1;
            cArr2[r13] = cArr[(r95 >>> 18) & 63];
            int r132 = r15 + 1;
            cArr2[r15] = cArr[(r95 >>> 12) & 63];
            int r152 = r132 + 1;
            cArr2[r132] = cArr[(r95 >>> 6) & 63];
            r13 = r152 + 1;
            cArr2[r152] = cArr[r95 & 63];
            r93 = r103;
        }
        int r22 = length - r5;
        if (r22 > 0) {
            int r12 = ((bArr[r5] & 255) << 10) | (r22 == 2 ? (bArr[r6] & 255) << 2 : 0);
            char[] cArr3 = this.buf;
            cArr3[r7 - 5] = cArr[r12 >> 12];
            cArr3[r7 - 4] = cArr[(r12 >>> 6) & 63];
            cArr3[r7 - 3] = r22 == 2 ? cArr[r12 & 63] : '=';
            this.buf[r7 - 2] = '=';
        }
        this.buf[r7 - 1] = c;
    }

    public void writeHex(byte[] bArr) {
        int length = this.count + (bArr.length * 2) + 3;
        if (length > this.buf.length) {
            expandCapacity(length);
        }
        char[] cArr = this.buf;
        int r1 = this.count;
        int r2 = r1 + 1;
        this.count = r2;
        cArr[r1] = 'x';
        this.count = r2 + 1;
        cArr[r2] = '\'';
        for (byte b : bArr) {
            int r22 = b & 255;
            int r3 = r22 >> 4;
            int r23 = r22 & 15;
            char[] cArr2 = this.buf;
            int r5 = this.count;
            this.count = r5 + 1;
            int r6 = 48;
            cArr2[r5] = (char) (r3 + (r3 < 10 ? 48 : 55));
            char[] cArr3 = this.buf;
            int r4 = this.count;
            this.count = r4 + 1;
            if (r23 >= 10) {
                r6 = 55;
            }
            cArr3[r4] = (char) (r23 + r6);
        }
        char[] cArr4 = this.buf;
        int r0 = this.count;
        this.count = r0 + 1;
        cArr4[r0] = '\'';
    }

    public void writeFloat(float f, boolean z) throws IOException {
        if (f != f || f == Float.POSITIVE_INFINITY || f == Float.NEGATIVE_INFINITY) {
            writeNull();
            return;
        }
        int r0 = this.count + 15;
        if (r0 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(r0);
            } else {
                String string = RyuFloat.toString(f);
                write(string, 0, string.length());
                if (z && isEnabled(SerializerFeature.WriteClassName)) {
                    write(70);
                    return;
                }
                return;
            }
        }
        this.count += RyuFloat.toString(f, this.buf, this.count);
        if (z && isEnabled(SerializerFeature.WriteClassName)) {
            write(70);
        }
    }

    public void writeDouble(double d, boolean z) throws IOException {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            writeNull();
            return;
        }
        int r0 = this.count + 24;
        if (r0 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(r0);
            } else {
                String string = RyuDouble.toString(d);
                write(string, 0, string.length());
                if (z && isEnabled(SerializerFeature.WriteClassName)) {
                    write(68);
                    return;
                }
                return;
            }
        }
        this.count += RyuDouble.toString(d, this.buf, this.count);
        if (z && isEnabled(SerializerFeature.WriteClassName)) {
            write(68);
        }
    }

    public void writeEnum(Enum<?> r3) {
        if (r3 == null) {
            writeNull();
            return;
        }
        String string = null;
        if (this.writeEnumUsingName && !this.writeEnumUsingToString) {
            string = r3.name();
        } else if (this.writeEnumUsingToString) {
            string = r3.toString();
        }
        if (string != null) {
            int r32 = isEnabled(SerializerFeature.UseSingleQuotes) ? 39 : 34;
            write(r32);
            write(string);
            write(r32);
            return;
        }
        writeInt(r3.ordinal());
    }

    public void writeLongAndChar(long j, char c) throws IOException {
        writeLong(j);
        write(c);
    }

    public void writeLong(long j) {
        boolean z = isEnabled(SerializerFeature.BrowserCompatible) && !isEnabled(SerializerFeature.WriteClassName) && (j > 9007199254740991L || j < -9007199254740991L);
        if (j == Long.MIN_VALUE) {
            if (z) {
                write("\"-9223372036854775808\"");
                return;
            } else {
                write("-9223372036854775808");
                return;
            }
        }
        int r3 = j < 0 ? IOUtils.stringSize(-j) + 1 : IOUtils.stringSize(j);
        int r1 = this.count + r3;
        if (z) {
            r1 += 2;
        }
        if (r1 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(r1);
            } else {
                char[] cArr = new char[r3];
                IOUtils.getChars(j, r3, cArr);
                if (z) {
                    write(34);
                    write(cArr, 0, r3);
                    write(34);
                    return;
                }
                write(cArr, 0, r3);
                return;
            }
        }
        if (z) {
            char[] cArr2 = this.buf;
            cArr2[this.count] = '\"';
            int r2 = r1 - 1;
            IOUtils.getChars(j, r2, cArr2);
            this.buf[r2] = '\"';
        } else {
            IOUtils.getChars(j, r1, this.buf);
        }
        this.count = r1;
    }

    public void writeNull() {
        write("null");
    }

    public void writeNull(SerializerFeature serializerFeature) {
        writeNull(0, serializerFeature.mask);
    }

    public void writeNull(int r2, int r3) {
        if ((r2 & r3) == 0 && (this.features & r3) == 0) {
            writeNull();
            return;
        }
        if ((SerializerFeature.WriteMapNullValue.mask & r2) != 0 && (r2 & (~SerializerFeature.WriteMapNullValue.mask) & SerializerFeature.WRITE_MAP_NULL_FEATURES) == 0) {
            writeNull();
            return;
        }
        if (r3 == SerializerFeature.WriteNullListAsEmpty.mask) {
            write("[]");
            return;
        }
        if (r3 == SerializerFeature.WriteNullStringAsEmpty.mask) {
            writeString("");
            return;
        }
        if (r3 == SerializerFeature.WriteNullBooleanAsFalse.mask) {
            write(ParamsResValue.RainState.NO_RAIN);
        } else if (r3 == SerializerFeature.WriteNullNumberAsZero.mask) {
            write(48);
        } else {
            writeNull();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0167  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeStringWithDoubleQuote(java.lang.String r23, char r24) {
        /*
            Method dump skipped, instructions count: 1457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.SerializeWriter.writeStringWithDoubleQuote(java.lang.String, char):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x015f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeStringWithDoubleQuote(char[] r25, char r26) {
        /*
            Method dump skipped, instructions count: 1456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.SerializeWriter.writeStringWithDoubleQuote(char[], char):void");
    }

    public void writeFieldNameDirect(String str) {
        int length = str.length();
        int r1 = this.count + length + 3;
        if (r1 > this.buf.length) {
            expandCapacity(r1);
        }
        int r2 = this.count;
        char[] cArr = this.buf;
        cArr[r2] = '\"';
        str.getChars(0, length, cArr, r2 + 1);
        this.count = r1;
        char[] cArr2 = this.buf;
        cArr2[r1 - 2] = '\"';
        cArr2[r1 - 1] = ':';
    }

    public void write(List<String> list) {
        boolean z;
        int r8;
        if (list.isEmpty()) {
            write("[]");
            return;
        }
        int r0 = this.count;
        int size = list.size();
        int r4 = r0;
        int r3 = 0;
        while (r3 < size) {
            String str = list.get(r3);
            if (str == null) {
                z = true;
            } else {
                int length = str.length();
                z = false;
                for (int r10 = 0; r10 < length; r10++) {
                    char cCharAt = str.charAt(r10);
                    z = cCharAt < ' ' || cCharAt > '~' || cCharAt == '\"' || cCharAt == '\\';
                    if (z) {
                        break;
                    }
                }
            }
            if (z) {
                this.count = r0;
                write(91);
                for (int r02 = 0; r02 < list.size(); r02++) {
                    String str2 = list.get(r02);
                    if (r02 != 0) {
                        write(44);
                    }
                    if (str2 == null) {
                        write("null");
                    } else {
                        writeStringWithDoubleQuote(str2, (char) 0);
                    }
                }
                write(93);
                return;
            }
            int length2 = str.length() + r4 + 3;
            if (r3 == list.size() - 1) {
                length2++;
            }
            if (length2 > this.buf.length) {
                this.count = r4;
                expandCapacity(length2);
            }
            if (r3 == 0) {
                r8 = r4 + 1;
                this.buf[r4] = '[';
            } else {
                r8 = r4 + 1;
                this.buf[r4] = ',';
            }
            int r5 = r8 + 1;
            this.buf[r8] = '\"';
            str.getChars(0, str.length(), this.buf, r5);
            int length3 = r5 + str.length();
            this.buf[length3] = '\"';
            r3++;
            r4 = length3 + 1;
        }
        this.buf[r4] = ']';
        this.count = r4 + 1;
    }

    public void writeFieldValue(char c, String str, char c2) {
        write(c);
        writeFieldName(str);
        if (c2 == 0) {
            writeString("\u0000");
        } else {
            writeString(Character.toString(c2));
        }
    }

    public void writeFieldValue(char c, String str, boolean z) {
        if (!this.quoteFieldNames) {
            write(c);
            writeFieldName(str);
            write(z);
            return;
        }
        int r2 = z ? 4 : 5;
        int length = str.length();
        int r4 = this.count + length + 4 + r2;
        if (r4 > this.buf.length) {
            if (this.writer != null) {
                write(c);
                writeString(str);
                write(58);
                write(z);
                return;
            }
            expandCapacity(r4);
        }
        int r0 = this.count;
        this.count = r4;
        char[] cArr = this.buf;
        cArr[r0] = c;
        int r7 = r0 + length + 1;
        cArr[r0 + 1] = this.keySeperator;
        str.getChars(0, length, cArr, r0 + 2);
        char[] cArr2 = this.buf;
        cArr2[r7 + 1] = this.keySeperator;
        if (z) {
            System.arraycopy(VALUE_TRUE, 0, cArr2, r7 + 2, 5);
        } else {
            System.arraycopy(VALUE_FALSE, 0, cArr2, r7 + 2, 6);
        }
    }

    public void write(boolean z) {
        if (z) {
            write(ParamsResValue.RainState.RAIN);
        } else {
            write(ParamsResValue.RainState.NO_RAIN);
        }
    }

    public void writeFieldValue(char c, String str, int r8) {
        if (r8 == Integer.MIN_VALUE || !this.quoteFieldNames) {
            write(c);
            writeFieldName(str);
            writeInt(r8);
            return;
        }
        int r0 = r8 < 0 ? IOUtils.stringSize(-r8) + 1 : IOUtils.stringSize(r8);
        int length = str.length();
        int r2 = this.count + length + 4 + r0;
        if (r2 > this.buf.length) {
            if (this.writer != null) {
                write(c);
                writeFieldName(str);
                writeInt(r8);
                return;
            }
            expandCapacity(r2);
        }
        int r02 = this.count;
        this.count = r2;
        char[] cArr = this.buf;
        cArr[r02] = c;
        int r6 = r02 + length + 1;
        cArr[r02 + 1] = this.keySeperator;
        str.getChars(0, length, cArr, r02 + 2);
        char[] cArr2 = this.buf;
        cArr2[r6 + 1] = this.keySeperator;
        cArr2[r6 + 2] = ':';
        IOUtils.getChars(r8, this.count, cArr2);
    }

    public void writeFieldValue(char c, String str, long j) {
        if (j == Long.MIN_VALUE || !this.quoteFieldNames || isEnabled(SerializerFeature.BrowserCompatible.mask)) {
            write(c);
            writeFieldName(str);
            writeLong(j);
            return;
        }
        int r0 = j < 0 ? IOUtils.stringSize(-j) + 1 : IOUtils.stringSize(j);
        int length = str.length();
        int r2 = this.count + length + 4 + r0;
        if (r2 > this.buf.length) {
            if (this.writer != null) {
                write(c);
                writeFieldName(str);
                writeLong(j);
                return;
            }
            expandCapacity(r2);
        }
        int r02 = this.count;
        this.count = r2;
        char[] cArr = this.buf;
        cArr[r02] = c;
        int r6 = r02 + length + 1;
        cArr[r02 + 1] = this.keySeperator;
        str.getChars(0, length, cArr, r02 + 2);
        char[] cArr2 = this.buf;
        cArr2[r6 + 1] = this.keySeperator;
        cArr2[r6 + 2] = ':';
        IOUtils.getChars(j, this.count, cArr2);
    }

    public void writeFieldValue(char c, String str, float f) throws IOException {
        write(c);
        writeFieldName(str);
        writeFloat(f, false);
    }

    public void writeFieldValue(char c, String str, double d) throws IOException {
        write(c);
        writeFieldName(str);
        writeDouble(d, false);
    }

    public void writeFieldValue(char c, String str, String str2) {
        if (this.quoteFieldNames) {
            if (this.useSingleQuotes) {
                write(c);
                writeFieldName(str);
                if (str2 == null) {
                    writeNull();
                    return;
                } else {
                    writeString(str2);
                    return;
                }
            }
            if (isEnabled(SerializerFeature.BrowserCompatible)) {
                write(c);
                writeStringWithDoubleQuote(str, ':');
                writeStringWithDoubleQuote(str2, (char) 0);
                return;
            }
            writeFieldValueStringWithDoubleQuoteCheck(c, str, str2);
            return;
        }
        write(c);
        writeFieldName(str);
        if (str2 == null) {
            writeNull();
        } else {
            writeString(str2);
        }
    }

    public void writeFieldValueStringWithDoubleQuoteCheck(char c, String str, String str2) {
        int length;
        int r4;
        int length2 = str.length();
        int r42 = this.count;
        if (str2 == null) {
            r4 = r42 + length2 + 8;
            length = 4;
        } else {
            length = str2.length();
            r4 = r42 + length2 + length + 6;
        }
        if (r4 > this.buf.length) {
            if (this.writer != null) {
                write(c);
                writeStringWithDoubleQuote(str, ':');
                writeStringWithDoubleQuote(str2, (char) 0);
                return;
            }
            expandCapacity(r4);
        }
        char[] cArr = this.buf;
        int r10 = this.count;
        cArr[r10] = c;
        int r11 = r10 + 2;
        int r12 = r11 + length2;
        cArr[r10 + 1] = '\"';
        str.getChars(0, length2, cArr, r11);
        this.count = r4;
        char[] cArr2 = this.buf;
        cArr2[r12] = '\"';
        int r122 = r12 + 1;
        int r3 = r122 + 1;
        cArr2[r122] = ':';
        if (str2 == null) {
            int r0 = r3 + 1;
            cArr2[r3] = 'n';
            int r2 = r0 + 1;
            cArr2[r0] = 'u';
            cArr2[r2] = 'l';
            cArr2[r2 + 1] = 'l';
            return;
        }
        int r8 = r3 + 1;
        cArr2[r3] = '\"';
        int r32 = r8 + length;
        str2.getChars(0, length, cArr2, r8);
        int r1 = -1;
        int r123 = -1;
        int r15 = -1;
        int r102 = 0;
        char c2 = 0;
        for (int r6 = r8; r6 < r32; r6++) {
            char c3 = this.buf[r6];
            if (c3 < ']') {
                if ((c3 < '@' && (this.sepcialBits & (1 << c3)) != 0) || c3 == '\\') {
                    r102++;
                    if (c3 == '(' || c3 == ')' || c3 == '<' || c3 == '>' || (c3 < IOUtils.specicalFlags_doubleQuotes.length && IOUtils.specicalFlags_doubleQuotes[c3] == 4)) {
                        r4 += 4;
                    }
                    r1 = -1;
                    if (r123 == -1) {
                        r123 = r6;
                        r15 = r123;
                    } else {
                        r15 = r6;
                    }
                } else {
                    r1 = -1;
                }
            } else if (c3 >= 127 && (c3 == 8232 || c3 == 8233 || c3 < 160)) {
                if (r123 == r1) {
                    r123 = r6;
                }
                r102++;
                r4 += 4;
                r15 = r6;
            }
            c2 = c3;
        }
        if (r102 > 0) {
            int r43 = r4 + r102;
            if (r43 > this.buf.length) {
                expandCapacity(r43);
            }
            this.count = r43;
            if (r102 == 1) {
                if (c2 == 8232) {
                    int r5 = r15 + 1;
                    char[] cArr3 = this.buf;
                    System.arraycopy(cArr3, r5, cArr3, r15 + 6, (r32 - r15) - 1);
                    char[] cArr4 = this.buf;
                    cArr4[r15] = '\\';
                    cArr4[r5] = 'u';
                    int r52 = r5 + 1;
                    cArr4[r52] = '2';
                    int r53 = r52 + 1;
                    cArr4[r53] = '0';
                    int r54 = r53 + 1;
                    cArr4[r54] = '2';
                    cArr4[r54 + 1] = '8';
                } else if (c2 == 8233) {
                    int r55 = r15 + 1;
                    char[] cArr5 = this.buf;
                    System.arraycopy(cArr5, r55, cArr5, r15 + 6, (r32 - r15) - 1);
                    char[] cArr6 = this.buf;
                    cArr6[r15] = '\\';
                    cArr6[r55] = 'u';
                    int r56 = r55 + 1;
                    cArr6[r56] = '2';
                    int r57 = r56 + 1;
                    cArr6[r57] = '0';
                    int r58 = r57 + 1;
                    cArr6[r58] = '2';
                    cArr6[r58 + 1] = '9';
                } else if (c2 == '(' || c2 == ')' || c2 == '<' || c2 == '>') {
                    int r13 = r15 + 1;
                    char[] cArr7 = this.buf;
                    System.arraycopy(cArr7, r13, cArr7, r15 + 6, (r32 - r15) - 1);
                    char[] cArr8 = this.buf;
                    cArr8[r15] = '\\';
                    int r33 = r13 + 1;
                    cArr8[r13] = 'u';
                    int r14 = r33 + 1;
                    cArr8[r33] = IOUtils.DIGITS[(c2 >>> '\f') & 15];
                    int r34 = r14 + 1;
                    this.buf[r14] = IOUtils.DIGITS[(c2 >>> '\b') & 15];
                    this.buf[r34] = IOUtils.DIGITS[(c2 >>> 4) & 15];
                    this.buf[r34 + 1] = IOUtils.DIGITS[c2 & 15];
                } else if (c2 < IOUtils.specicalFlags_doubleQuotes.length && IOUtils.specicalFlags_doubleQuotes[c2] == 4) {
                    int r16 = r15 + 1;
                    char[] cArr9 = this.buf;
                    System.arraycopy(cArr9, r16, cArr9, r15 + 6, (r32 - r15) - 1);
                    char[] cArr10 = this.buf;
                    cArr10[r15] = '\\';
                    int r35 = r16 + 1;
                    cArr10[r16] = 'u';
                    int r17 = r35 + 1;
                    cArr10[r35] = IOUtils.DIGITS[(c2 >>> '\f') & 15];
                    int r36 = r17 + 1;
                    this.buf[r17] = IOUtils.DIGITS[(c2 >>> '\b') & 15];
                    this.buf[r36] = IOUtils.DIGITS[(c2 >>> 4) & 15];
                    this.buf[r36 + 1] = IOUtils.DIGITS[c2 & 15];
                } else {
                    int r18 = r15 + 1;
                    char[] cArr11 = this.buf;
                    System.arraycopy(cArr11, r18, cArr11, r15 + 2, (r32 - r15) - 1);
                    char[] cArr12 = this.buf;
                    cArr12[r15] = '\\';
                    cArr12[r18] = IOUtils.replaceChars[c2];
                }
            } else if (r102 > 1) {
                for (int r19 = r123 - r8; r19 < str2.length(); r19++) {
                    char cCharAt = str2.charAt(r19);
                    if (this.browserSecure) {
                        if (cCharAt != '(' && cCharAt != ')') {
                            if (cCharAt == '<' || cCharAt == '>') {
                            }
                        }
                        char[] cArr13 = this.buf;
                        int r112 = r123 + 1;
                        cArr13[r123] = '\\';
                        int r124 = r112 + 1;
                        cArr13[r112] = 'u';
                        int r113 = r124 + 1;
                        cArr13[r124] = IOUtils.DIGITS[(cCharAt >>> '\f') & 15];
                        int r125 = r113 + 1;
                        this.buf[r113] = IOUtils.DIGITS[(cCharAt >>> '\b') & 15];
                        int r114 = r125 + 1;
                        this.buf[r125] = IOUtils.DIGITS[(cCharAt >>> 4) & 15];
                        r123 = r114 + 1;
                        this.buf[r114] = IOUtils.DIGITS[cCharAt & 15];
                    }
                    if ((cCharAt < IOUtils.specicalFlags_doubleQuotes.length && IOUtils.specicalFlags_doubleQuotes[cCharAt] != 0) || (cCharAt == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                        int r115 = r123 + 1;
                        this.buf[r123] = '\\';
                        if (IOUtils.specicalFlags_doubleQuotes[cCharAt] == 4) {
                            char[] cArr14 = this.buf;
                            int r126 = r115 + 1;
                            cArr14[r115] = 'u';
                            int r116 = r126 + 1;
                            cArr14[r126] = IOUtils.DIGITS[(cCharAt >>> '\f') & 15];
                            int r127 = r116 + 1;
                            this.buf[r116] = IOUtils.DIGITS[(cCharAt >>> '\b') & 15];
                            int r117 = r127 + 1;
                            this.buf[r127] = IOUtils.DIGITS[(cCharAt >>> 4) & 15];
                            r123 = r117 + 1;
                            this.buf[r117] = IOUtils.DIGITS[cCharAt & 15];
                        } else {
                            r123 = r115 + 1;
                            this.buf[r115] = IOUtils.replaceChars[cCharAt];
                        }
                    } else if (cCharAt == 8232 || cCharAt == 8233) {
                        char[] cArr15 = this.buf;
                        int r118 = r123 + 1;
                        cArr15[r123] = '\\';
                        int r128 = r118 + 1;
                        cArr15[r118] = 'u';
                        int r119 = r128 + 1;
                        cArr15[r128] = IOUtils.DIGITS[(cCharAt >>> '\f') & 15];
                        int r129 = r119 + 1;
                        this.buf[r119] = IOUtils.DIGITS[(cCharAt >>> '\b') & 15];
                        int r1110 = r129 + 1;
                        this.buf[r129] = IOUtils.DIGITS[(cCharAt >>> 4) & 15];
                        r123 = r1110 + 1;
                        this.buf[r1110] = IOUtils.DIGITS[cCharAt & 15];
                    } else {
                        this.buf[r123] = cCharAt;
                        r123++;
                    }
                }
            }
        }
        this.buf[this.count - 1] = '\"';
    }

    public void writeFieldValueStringWithDoubleQuote(char c, String str, String str2) {
        int length = str.length();
        int r1 = this.count;
        int length2 = str2.length();
        int r12 = r1 + length + length2 + 6;
        if (r12 > this.buf.length) {
            if (this.writer != null) {
                write(c);
                writeStringWithDoubleQuote(str, ':');
                writeStringWithDoubleQuote(str2, (char) 0);
                return;
            }
            expandCapacity(r12);
        }
        char[] cArr = this.buf;
        int r6 = this.count;
        cArr[r6] = c;
        int r10 = r6 + 2;
        int r7 = r10 + length;
        cArr[r6 + 1] = '\"';
        str.getChars(0, length, cArr, r10);
        this.count = r12;
        char[] cArr2 = this.buf;
        cArr2[r7] = '\"';
        int r72 = r7 + 1;
        int r11 = r72 + 1;
        cArr2[r72] = ':';
        cArr2[r11] = '\"';
        str2.getChars(0, length2, cArr2, r11 + 1);
        this.buf[this.count - 1] = '\"';
    }

    public void writeFieldValue(char c, String str, Enum<?> r4) {
        if (r4 == null) {
            write(c);
            writeFieldName(str);
            writeNull();
        } else if (this.writeEnumUsingName && !this.writeEnumUsingToString) {
            writeEnumFieldValue(c, str, r4.name());
        } else if (this.writeEnumUsingToString) {
            writeEnumFieldValue(c, str, r4.toString());
        } else {
            writeFieldValue(c, str, r4.ordinal());
        }
    }

    private void writeEnumFieldValue(char c, String str, String str2) {
        if (this.useSingleQuotes) {
            writeFieldValue(c, str, str2);
        } else {
            writeFieldValueStringWithDoubleQuote(c, str, str2);
        }
    }

    public void writeFieldValue(char c, String str, BigDecimal bigDecimal) {
        String string;
        write(c);
        writeFieldName(str);
        if (bigDecimal == null) {
            writeNull();
            return;
        }
        int r1 = bigDecimal.scale();
        if (isEnabled(SerializerFeature.WriteBigDecimalAsPlain) && r1 >= -100 && r1 < 100) {
            string = bigDecimal.toPlainString();
        } else {
            string = bigDecimal.toString();
        }
        write(string);
    }

    public void writeString(String str, char c) {
        if (this.useSingleQuotes) {
            writeStringWithSingleQuote(str);
            write(c);
        } else {
            writeStringWithDoubleQuote(str, c);
        }
    }

    public void writeString(String str) {
        if (this.useSingleQuotes) {
            writeStringWithSingleQuote(str);
        } else {
            writeStringWithDoubleQuote(str, (char) 0);
        }
    }

    public void writeString(char[] cArr) {
        if (this.useSingleQuotes) {
            writeStringWithSingleQuote(cArr);
        } else {
            writeStringWithDoubleQuote(new String(cArr), (char) 0);
        }
    }

    protected void writeStringWithSingleQuote(String str) {
        int r0 = 0;
        if (str == null) {
            int r13 = this.count + 4;
            if (r13 > this.buf.length) {
                expandCapacity(r13);
            }
            "null".getChars(0, 4, this.buf, this.count);
            this.count = r13;
            return;
        }
        int length = str.length();
        int r2 = this.count + length + 2;
        if (r2 > this.buf.length) {
            if (this.writer != null) {
                write(39);
                while (r0 < str.length()) {
                    char cCharAt = str.charAt(r0);
                    if (cCharAt <= '\r' || cCharAt == '\\' || cCharAt == '\'' || (cCharAt == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                        write(92);
                        write(IOUtils.replaceChars[cCharAt]);
                    } else {
                        write(cCharAt);
                    }
                    r0++;
                }
                write(39);
                return;
            }
            expandCapacity(r2);
        }
        int r3 = this.count;
        int r8 = r3 + 1;
        int r9 = r8 + length;
        char[] cArr = this.buf;
        cArr[r3] = '\'';
        str.getChars(0, length, cArr, r8);
        this.count = r2;
        int r132 = -1;
        char c = 0;
        for (int r32 = r8; r32 < r9; r32++) {
            char c2 = this.buf[r32];
            if (c2 <= '\r' || c2 == '\\' || c2 == '\'' || (c2 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                r0++;
                r132 = r32;
                c = c2;
            }
        }
        int r22 = r2 + r0;
        if (r22 > this.buf.length) {
            expandCapacity(r22);
        }
        this.count = r22;
        if (r0 == 1) {
            char[] cArr2 = this.buf;
            int r33 = r132 + 1;
            System.arraycopy(cArr2, r33, cArr2, r132 + 2, (r9 - r132) - 1);
            char[] cArr3 = this.buf;
            cArr3[r132] = '\\';
            cArr3[r33] = IOUtils.replaceChars[c];
        } else if (r0 > 1) {
            char[] cArr4 = this.buf;
            int r34 = r132 + 1;
            System.arraycopy(cArr4, r34, cArr4, r132 + 2, (r9 - r132) - 1);
            char[] cArr5 = this.buf;
            cArr5[r132] = '\\';
            cArr5[r34] = IOUtils.replaceChars[c];
            int r92 = r9 + 1;
            for (int r35 = r34 - 2; r35 >= r8; r35--) {
                char c3 = this.buf[r35];
                if (c3 <= '\r' || c3 == '\\' || c3 == '\'' || (c3 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr6 = this.buf;
                    int r1 = r35 + 1;
                    System.arraycopy(cArr6, r1, cArr6, r35 + 2, (r92 - r35) - 1);
                    char[] cArr7 = this.buf;
                    cArr7[r35] = '\\';
                    cArr7[r1] = IOUtils.replaceChars[c3];
                    r92++;
                }
            }
        }
        this.buf[this.count - 1] = '\'';
    }

    protected void writeStringWithSingleQuote(char[] cArr) {
        int r0 = 0;
        if (cArr == null) {
            int r13 = this.count + 4;
            if (r13 > this.buf.length) {
                expandCapacity(r13);
            }
            "null".getChars(0, 4, this.buf, this.count);
            this.count = r13;
            return;
        }
        int length = cArr.length;
        int r2 = this.count + length + 2;
        if (r2 > this.buf.length) {
            if (this.writer != null) {
                write(39);
                while (r0 < cArr.length) {
                    char c = cArr[r0];
                    if (c <= '\r' || c == '\\' || c == '\'' || (c == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                        write(92);
                        write(IOUtils.replaceChars[c]);
                    } else {
                        write(c);
                    }
                    r0++;
                }
                write(39);
                return;
            }
            expandCapacity(r2);
        }
        int r3 = this.count;
        int r8 = r3 + 1;
        int r1 = length + r8;
        char[] cArr2 = this.buf;
        cArr2[r3] = '\'';
        System.arraycopy(cArr, 0, cArr2, r8, cArr.length);
        this.count = r2;
        int r132 = -1;
        char c2 = 0;
        for (int r9 = r8; r9 < r1; r9++) {
            char c3 = this.buf[r9];
            if (c3 <= '\r' || c3 == '\\' || c3 == '\'' || (c3 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                r0++;
                r132 = r9;
                c2 = c3;
            }
        }
        int r22 = r2 + r0;
        if (r22 > this.buf.length) {
            expandCapacity(r22);
        }
        this.count = r22;
        if (r0 == 1) {
            char[] cArr3 = this.buf;
            int r4 = r132 + 1;
            System.arraycopy(cArr3, r4, cArr3, r132 + 2, (r1 - r132) - 1);
            char[] cArr4 = this.buf;
            cArr4[r132] = '\\';
            cArr4[r4] = IOUtils.replaceChars[c2];
        } else if (r0 > 1) {
            char[] cArr5 = this.buf;
            int r92 = r132 + 1;
            System.arraycopy(cArr5, r92, cArr5, r132 + 2, (r1 - r132) - 1);
            char[] cArr6 = this.buf;
            cArr6[r132] = '\\';
            cArr6[r92] = IOUtils.replaceChars[c2];
            int r12 = r1 + 1;
            for (int r93 = r92 - 2; r93 >= r8; r93--) {
                char c4 = this.buf[r93];
                if (c4 <= '\r' || c4 == '\\' || c4 == '\'' || (c4 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr7 = this.buf;
                    int r32 = r93 + 1;
                    System.arraycopy(cArr7, r32, cArr7, r93 + 2, (r12 - r93) - 1);
                    char[] cArr8 = this.buf;
                    cArr8[r93] = '\\';
                    cArr8[r32] = IOUtils.replaceChars[c4];
                    r12++;
                }
            }
        }
        this.buf[this.count - 1] = '\'';
    }

    public void writeFieldName(String str) {
        writeFieldName(str, false);
    }

    public void writeFieldName(String str, boolean z) {
        if (str == null) {
            write("null:");
            return;
        }
        if (this.useSingleQuotes) {
            if (this.quoteFieldNames) {
                writeStringWithSingleQuote(str);
                write(58);
                return;
            } else {
                writeKeyWithSingleQuoteIfHasSpecial(str);
                return;
            }
        }
        if (this.quoteFieldNames) {
            writeStringWithDoubleQuote(str, ':');
            return;
        }
        boolean z2 = true;
        boolean z3 = str.length() == 0;
        int r3 = 0;
        while (true) {
            if (r3 >= str.length()) {
                z2 = z3;
                break;
            }
            char cCharAt = str.charAt(r3);
            if ((cCharAt < '@' && (this.sepcialBits & (1 << cCharAt)) != 0) || cCharAt == '\\') {
                break;
            } else {
                r3++;
            }
        }
        if (z2) {
            writeStringWithDoubleQuote(str, ':');
        } else {
            write(str);
            write(58);
        }
    }

    private void writeKeyWithSingleQuoteIfHasSpecial(String str) {
        byte[] bArr = IOUtils.specicalFlags_singleQuotes;
        int length = str.length();
        boolean z = true;
        int r4 = this.count + length + 1;
        int r9 = 0;
        if (r4 > this.buf.length) {
            if (this.writer != null) {
                if (length == 0) {
                    write(39);
                    write(39);
                    write(58);
                    return;
                }
                int r42 = 0;
                while (true) {
                    if (r42 < length) {
                        char cCharAt = str.charAt(r42);
                        if (cCharAt < bArr.length && bArr[cCharAt] != 0) {
                            break;
                        } else {
                            r42++;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    write(39);
                }
                while (r9 < length) {
                    char cCharAt2 = str.charAt(r9);
                    if (cCharAt2 < bArr.length && bArr[cCharAt2] != 0) {
                        write(92);
                        write(IOUtils.replaceChars[cCharAt2]);
                    } else {
                        write(cCharAt2);
                    }
                    r9++;
                }
                if (z) {
                    write(39);
                }
                write(58);
                return;
            }
            expandCapacity(r4);
        }
        if (length == 0) {
            int r1 = this.count;
            if (r1 + 3 > this.buf.length) {
                expandCapacity(r1 + 3);
            }
            char[] cArr = this.buf;
            int r2 = this.count;
            int r3 = r2 + 1;
            this.count = r3;
            cArr[r2] = '\'';
            int r22 = r3 + 1;
            this.count = r22;
            cArr[r3] = '\'';
            this.count = r22 + 1;
            cArr[r22] = ':';
            return;
        }
        int r6 = this.count;
        int r11 = r6 + length;
        str.getChars(0, length, this.buf, r6);
        this.count = r4;
        int r12 = r6;
        boolean z2 = false;
        while (r12 < r11) {
            char[] cArr2 = this.buf;
            char c = cArr2[r12];
            if (c < bArr.length && bArr[c] != 0) {
                if (!z2) {
                    r4 += 3;
                    if (r4 > cArr2.length) {
                        expandCapacity(r4);
                    }
                    this.count = r4;
                    char[] cArr3 = this.buf;
                    int r122 = r12 + 1;
                    System.arraycopy(cArr3, r122, cArr3, r12 + 3, (r11 - r12) - 1);
                    char[] cArr4 = this.buf;
                    System.arraycopy(cArr4, r9, cArr4, 1, r12);
                    char[] cArr5 = this.buf;
                    cArr5[r6] = '\'';
                    cArr5[r122] = '\\';
                    int r32 = r122 + 1;
                    cArr5[r32] = IOUtils.replaceChars[c];
                    r11 += 2;
                    this.buf[this.count - 2] = '\'';
                    r12 = r32;
                    z2 = true;
                } else {
                    r4++;
                    if (r4 > cArr2.length) {
                        expandCapacity(r4);
                    }
                    this.count = r4;
                    char[] cArr6 = this.buf;
                    int r14 = r12 + 1;
                    System.arraycopy(cArr6, r14, cArr6, r12 + 2, r11 - r12);
                    char[] cArr7 = this.buf;
                    cArr7[r12] = '\\';
                    cArr7[r14] = IOUtils.replaceChars[c];
                    r11++;
                    r12 = r14;
                }
            }
            r12++;
            r9 = 0;
        }
        this.buf[r4 - 1] = ':';
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        Writer writer = this.writer;
        if (writer == null) {
            return;
        }
        try {
            writer.write(this.buf, 0, this.count);
            this.writer.flush();
            this.count = 0;
        } catch (IOException e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    public void reset() {
        this.count = 0;
    }
}
