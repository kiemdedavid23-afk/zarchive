package p056x;

/* JADX INFO: renamed from: x.j */
/* JADX INFO: loaded from: classes.dex */
public final class C0426j {

    /* JADX INFO: renamed from: a */
    public final int[] f2187a;

    public C0426j(int[] iArr) {
        this.f2187a = (int[]) iArr.clone();
    }

    /* JADX INFO: renamed from: a */
    public static int m1151a(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        return i2 | (i3 << 4) | (((i5 << 4) | i4) << 8) | (((((i9 << 4) | i8) << 8) | ((i7 << 4) | i6)) << 16);
    }
}
