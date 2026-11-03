package p056x;

/* JADX INFO: renamed from: x.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0418b {

    /* JADX INFO: renamed from: a */
    public final AbstractC0428l f2163a;

    /* JADX INFO: renamed from: b */
    public int f2164b = 0;

    /* JADX INFO: renamed from: c */
    public int f2165c;

    public C0418b(AbstractC0428l abstractC0428l) {
        this.f2163a = abstractC0428l;
    }

    /* JADX INFO: renamed from: a */
    public final int m1150a(byte b2) {
        int i2 = b2 & 255;
        AbstractC0428l abstractC0428l = this.f2163a;
        int i3 = (abstractC0428l.f2191a.f2187a[i2 >> 3] >> ((i2 & 7) << 2)) & 15;
        int i4 = this.f2164b;
        if (i4 == 0) {
            this.f2165c = abstractC0428l.f2194d[i3];
        }
        int i5 = (i4 * abstractC0428l.f2192b) + i3;
        int i6 = (abstractC0428l.f2193c.f2187a[i5 >> 3] >> ((i5 & 7) << 2)) & 15;
        this.f2164b = i6;
        return i6;
    }
}
