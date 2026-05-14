package androidx.constraintlayout.solver.widgets;

/* loaded from: classes.dex */
public class Rectangle {
    public int height;
    public int width;

    /* renamed from: x */
    public int f29x;

    /* renamed from: y */
    public int f30y;

    public void setBounds(int r1, int r2, int r3, int r4) {
        this.f29x = r1;
        this.f30y = r2;
        this.width = r3;
        this.height = r4;
    }

    void grow(int r2, int r3) {
        this.f29x -= r2;
        this.f30y -= r3;
        this.width += r2 * 2;
        this.height += r3 * 2;
    }

    boolean intersects(Rectangle rectangle) {
        int r3;
        int r0;
        int r02 = this.f29x;
        int r1 = rectangle.f29x;
        return r02 >= r1 && r02 < r1 + rectangle.width && (r3 = this.f30y) >= (r0 = rectangle.f30y) && r3 < r0 + rectangle.height;
    }

    public boolean contains(int r3, int r4) {
        int r32;
        int r0 = this.f29x;
        return r3 >= r0 && r3 < r0 + this.width && r4 >= (r32 = this.f30y) && r4 < r32 + this.height;
    }

    public int getCenterX() {
        return (this.f29x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f30y + this.height) / 2;
    }
}
