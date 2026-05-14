package com.alibaba.fastjson.asm;

/* loaded from: classes.dex */
public interface MethodVisitor {
    void visitEnd();

    void visitFieldInsn(int r1, String str, String str2, String str3);

    void visitIincInsn(int r1, int r2);

    void visitInsn(int r1);

    void visitIntInsn(int r1, int r2);

    void visitJumpInsn(int r1, Label label);

    void visitLabel(Label label);

    void visitLdcInsn(Object obj);

    void visitMaxs(int r1, int r2);

    void visitMethodInsn(int r1, String str, String str2, String str3);

    void visitTypeInsn(int r1, String str);

    void visitVarInsn(int r1, int r2);
}
