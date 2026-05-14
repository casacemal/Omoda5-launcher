package com.alibaba.fastjson.asm;

/* loaded from: classes.dex */
public class MethodWriter implements MethodVisitor {
    private int access;
    private ByteVector code = new ByteVector();

    /* renamed from: cw */
    final ClassWriter f70cw;
    private final int desc;
    int exceptionCount;
    int[] exceptions;
    private int maxLocals;
    private int maxStack;
    private final int name;
    MethodWriter next;

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitEnd() {
    }

    public MethodWriter(ClassWriter classWriter, int r2, String str, String str2, String str3, String[] strArr) {
        if (classWriter.firstMethod == null) {
            classWriter.firstMethod = this;
        } else {
            classWriter.lastMethod.next = this;
        }
        classWriter.lastMethod = this;
        this.f70cw = classWriter;
        this.access = r2;
        this.name = classWriter.newUTF8(str);
        this.desc = classWriter.newUTF8(str2);
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        int length = strArr.length;
        this.exceptionCount = length;
        this.exceptions = new int[length];
        for (int r22 = 0; r22 < this.exceptionCount; r22++) {
            this.exceptions[r22] = classWriter.newClassItem(strArr[r22]).index;
        }
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitInsn(int r1) {
        this.code.putByte(r1);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitIntInsn(int r1, int r2) {
        this.code.put11(r1, r2);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitVarInsn(int r2, int r3) {
        if (r3 < 4 && r2 != 169) {
            this.code.putByte((r2 < 54 ? ((r2 - 21) << 2) + 26 : ((r2 - 54) << 2) + 59) + r3);
        } else if (r3 >= 256) {
            this.code.putByte(196).put12(r2, r3);
        } else {
            this.code.put11(r2, r3);
        }
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitTypeInsn(int r2, String str) {
        this.code.put12(r2, this.f70cw.newClassItem(str).index);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitFieldInsn(int r2, String str, String str2, String str3) {
        this.code.put12(r2, this.f70cw.newFieldItem(str, str2, str3).index);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitMethodInsn(int r5, String str, String str2, String str3) {
        boolean z = r5 == 185;
        Item itemNewMethodItem = this.f70cw.newMethodItem(str, str2, str3, z);
        int argumentsAndReturnSizes = itemNewMethodItem.intVal;
        if (z) {
            if (argumentsAndReturnSizes == 0) {
                argumentsAndReturnSizes = Type.getArgumentsAndReturnSizes(str3);
                itemNewMethodItem.intVal = argumentsAndReturnSizes;
            }
            this.code.put12(Opcodes.INVOKEINTERFACE, itemNewMethodItem.index).put11(argumentsAndReturnSizes >> 2, 0);
            return;
        }
        this.code.put12(r5, itemNewMethodItem.index);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitJumpInsn(int r5, Label label) {
        if ((label.status & 2) != 0 && label.position - this.code.length < -32768) {
            throw new UnsupportedOperationException();
        }
        this.code.putByte(r5);
        ByteVector byteVector = this.code;
        label.put(this, byteVector, byteVector.length - 1, r5 == 200);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitLabel(Label label) {
        label.resolve(this, this.code.length, this.code.data);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitLdcInsn(Object obj) {
        Item itemNewConstItem = this.f70cw.newConstItem(obj);
        int r0 = itemNewConstItem.index;
        if (itemNewConstItem.type == 5 || itemNewConstItem.type == 6) {
            this.code.put12(20, r0);
        } else if (r0 >= 256) {
            this.code.put12(19, r0);
        } else {
            this.code.put11(18, r0);
        }
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitIincInsn(int r2, int r3) {
        this.code.putByte(132).put11(r2, r3);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitMaxs(int r1, int r2) {
        this.maxStack = r1;
        this.maxLocals = r2;
    }

    final int getSize() {
        int r0;
        if (this.code.length > 0) {
            this.f70cw.newUTF8("Code");
            r0 = this.code.length + 18 + 0 + 8;
        } else {
            r0 = 8;
        }
        if (this.exceptionCount <= 0) {
            return r0;
        }
        this.f70cw.newUTF8("Exceptions");
        return r0 + (this.exceptionCount * 2) + 8;
    }

    final void put(ByteVector byteVector) {
        byteVector.putShort(this.access & (-393217)).putShort(this.name).putShort(this.desc);
        int r0 = this.code.length > 0 ? 1 : 0;
        if (this.exceptionCount > 0) {
            r0++;
        }
        byteVector.putShort(r0);
        if (this.code.length > 0) {
            byteVector.putShort(this.f70cw.newUTF8("Code")).putInt(this.code.length + 12 + 0);
            byteVector.putShort(this.maxStack).putShort(this.maxLocals);
            byteVector.putInt(this.code.length).putByteArray(this.code.data, 0, this.code.length);
            byteVector.putShort(0);
            byteVector.putShort(0);
        }
        if (this.exceptionCount > 0) {
            byteVector.putShort(this.f70cw.newUTF8("Exceptions")).putInt((this.exceptionCount * 2) + 2);
            byteVector.putShort(this.exceptionCount);
            for (int r1 = 0; r1 < this.exceptionCount; r1++) {
                byteVector.putShort(this.exceptions[r1]);
            }
        }
    }
}
