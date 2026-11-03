package p052v;

/* JADX INFO: renamed from: v.b */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0387b {

    /* JADX INFO: renamed from: a */
    public int f2095a;

    /* JADX INFO: renamed from: b */
    public int f2096b;

    /* JADX INFO: renamed from: c */
    public int[] f2097c;

    /* JADX INFO: renamed from: d */
    public float f2098d;

    public AbstractC0387b() {
        m1089d();
    }

    /* JADX INFO: renamed from: a */
    public final float m1087a() {
        int i2;
        int i3 = this.f2096b;
        if (i3 <= 0 || (i2 = this.f2095a) <= 4) {
            return 0.01f;
        }
        if (i3 != i2) {
            float f2 = i2 / ((i3 - i2) * this.f2098d);
            if (f2 < 0.99f) {
                return f2;
            }
        }
        return 0.99f;
    }

    /* JADX INFO: renamed from: b */
    public abstract int mo1086b(byte[] bArr, int i2);

    /* JADX INFO: renamed from: c */
    public final void m1088c(byte[] bArr, int i2, int i3) {
        int iMo1086b = i3 == 2 ? mo1086b(bArr, i2) : -1;
        if (iMo1086b >= 0) {
            this.f2096b++;
            int[] iArr = this.f2097c;
            if (iMo1086b >= iArr.length || 512 <= iArr[iMo1086b]) {
                return;
            }
            this.f2095a++;
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m1089d() {
        this.f2096b = 0;
        this.f2095a = 0;
    }
}
