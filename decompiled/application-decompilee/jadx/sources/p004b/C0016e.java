package p004b;

import java.util.Arrays;
import p007c.C0037b;

/* JADX INFO: renamed from: b.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0016e {

    /* JADX INFO: renamed from: b */
    public C0013b f127b;

    /* JADX INFO: renamed from: j */
    public final C0014c f135j;

    /* JADX INFO: renamed from: a */
    public int f126a = 0;

    /* JADX INFO: renamed from: c */
    public int f128c = 32;

    /* JADX INFO: renamed from: d */
    public int f129d = 32;

    /* JADX INFO: renamed from: f */
    public boolean[] f131f = new boolean[32];

    /* JADX INFO: renamed from: g */
    public int f132g = 1;

    /* JADX INFO: renamed from: h */
    public int f133h = 0;

    /* JADX INFO: renamed from: i */
    public int f134i = 32;

    /* JADX INFO: renamed from: k */
    public final C0018g[] f136k = new C0018g[1000];

    /* JADX INFO: renamed from: l */
    public int f137l = 0;

    /* JADX INFO: renamed from: m */
    public C0013b[] f138m = new C0013b[32];

    /* JADX INFO: renamed from: e */
    public C0013b[] f130e = new C0013b[32];

    public C0016e() {
        int i2 = 0;
        while (true) {
            C0013b[] c0013bArr = this.f130e;
            if (i2 >= c0013bArr.length) {
                this.f135j = new C0014c(0);
                return;
            }
            C0013b c0013b = c0013bArr[i2];
            if (c0013b != null) {
                C0017f c0017f = (C0017f) this.f135j.f110b;
                int i3 = c0017f.f140b;
                Object[] objArr = c0017f.f139a;
                if (i3 < objArr.length) {
                    objArr[i3] = c0013b;
                    c0017f.f140b = i3 + 1;
                }
            }
            c0013bArr[i2] = null;
            i2++;
        }
    }

    /* JADX INFO: renamed from: n */
    public static int m102n(C0037b c0037b) {
        C0018g c0018g = c0037b.f260i;
        if (c0018g != null) {
            return (int) (c0018g.f144d + 0.5f);
        }
        return 0;
    }

    /* JADX INFO: renamed from: a */
    public final C0018g m103a(int i2) {
        C0017f c0017f = (C0017f) this.f135j.f111c;
        int i3 = c0017f.f140b;
        Object obj = null;
        if (i3 > 0) {
            int i4 = i3 - 1;
            Object[] objArr = c0017f.f139a;
            Object obj2 = objArr[i4];
            objArr[i4] = null;
            c0017f.f140b = i4;
            obj = obj2;
        }
        C0018g c0018g = (C0018g) obj;
        if (c0018g == null) {
            c0018g = new C0018g(i2);
        }
        c0018g.m121b();
        c0018g.f145e = i2;
        int i5 = this.f137l;
        this.f137l = i5 + 1;
        this.f136k[i5] = c0018g;
        return c0018g;
    }

    /* JADX INFO: renamed from: b */
    public final void m104b(C0018g c0018g, C0018g c0018g2, int i2, float f2, C0018g c0018g3, C0018g c0018g4, int i3) {
        C0013b c0013bM113k = m113k();
        c0013bM113k.m29a(c0018g, c0018g2, i2, f2, c0018g3, c0018g4, i3);
        C0018g c0018gM111i = m111i();
        C0018g c0018gM111i2 = m111i();
        c0018gM111i.f143c = 2;
        c0018gM111i2.f143c = 2;
        C0012a c0012a = c0013bM113k.f107c;
        c0012a.m25c(c0018gM111i, 1.0f);
        c0012a.m25c(c0018gM111i2, -1.0f);
        m105c(c0013bM113k);
    }

    /* JADX INFO: renamed from: c */
    public final void m105c(C0013b c0013b) {
        C0013b[] c0013bArr;
        if (this.f133h + 1 >= this.f134i || this.f132g + 1 >= this.f129d) {
            m116o();
        }
        if (!c0013b.f108d) {
            int i2 = this.f133h;
            C0012a c0012a = c0013b.f107c;
            if (i2 > 0) {
                c0012a.m28f(c0013b, this.f130e);
                if (c0012a.f95a == 0) {
                    c0013b.f108d = true;
                }
            }
            float f2 = c0013b.f106b;
            if (f2 < 0.0f) {
                c0013b.f106b = f2 * (-1.0f);
                int i3 = c0012a.f102h;
                for (int i4 = 0; i3 != -1 && i4 < c0012a.f95a; i4++) {
                    float[] fArr = c0012a.f101g;
                    fArr[i3] = fArr[i3] * (-1.0f);
                    i3 = c0012a.f100f[i3];
                }
            }
            int i5 = c0012a.f102h;
            C0018g c0018g = null;
            int i6 = 0;
            C0018g c0018g2 = null;
            while (true) {
                if (i5 == -1 || i6 >= c0012a.f95a) {
                    if (c0018g != null) {
                        break;
                    }
                    c0018g = c0018g2;
                    break;
                }
                float[] fArr2 = c0012a.f101g;
                float f3 = fArr2[i5];
                if (f3 < 0.0f) {
                    if (f3 > -0.001f) {
                        fArr2[i5] = 0.0f;
                        f3 = 0.0f;
                    }
                } else if (f3 < 0.001f) {
                    fArr2[i5] = 0.0f;
                    f3 = 0.0f;
                }
                if (f3 != 0.0f) {
                    C0018g c0018g3 = ((C0018g[]) c0012a.f97c.f113e)[c0012a.f99e[i5]];
                    if (c0018g3.f145e == 1) {
                        if (f3 < 0.0f) {
                            c0018g = c0018g3;
                            break;
                        } else if (c0018g == null) {
                            c0018g = c0018g3;
                        }
                    } else if (f3 < 0.0f && (c0018g2 == null || c0018g3.f143c < c0018g2.f143c)) {
                        c0018g2 = c0018g3;
                    }
                }
                i5 = c0012a.f100f[i5];
                i6++;
            }
            if (c0018g != null) {
                c0013b.m35g(c0018g);
            }
            if (c0012a.f95a == 0) {
                c0013b.f108d = true;
            }
            C0018g c0018g4 = c0013b.f105a;
            if (!(c0018g4 != null && (c0018g4.f145e == 1 || c0013b.f106b >= 0.0f))) {
                return;
            }
        }
        C0013b c0013b2 = this.f130e[this.f133h];
        if (c0013b2 != null) {
            C0017f c0017f = (C0017f) this.f135j.f110b;
            int i7 = c0017f.f140b;
            Object[] objArr = c0017f.f139a;
            if (i7 < objArr.length) {
                objArr[i7] = c0013b2;
                c0017f.f140b = i7 + 1;
            }
        }
        if (!c0013b.f108d) {
            c0013b.m36h();
        }
        C0013b[] c0013bArr2 = this.f130e;
        int i8 = this.f133h;
        c0013bArr2[i8] = c0013b;
        C0018g c0018g5 = c0013b.f105a;
        c0018g5.f142b = i8;
        this.f133h = i8 + 1;
        int i9 = c0018g5.f147g;
        if (i9 > 0) {
            while (true) {
                c0013bArr = this.f138m;
                if (c0013bArr.length >= i9) {
                    break;
                } else {
                    this.f138m = new C0013b[c0013bArr.length * 2];
                }
            }
            System.arraycopy(c0013b.f105a.f146f, 0, c0013bArr, 0, i9);
            for (int i10 = 0; i10 < i9; i10++) {
                C0013b c0013b3 = c0013bArr[i10];
                if (c0013b3 != c0013b) {
                    c0013b3.f107c.m27e(c0013b3, c0013b);
                    c0013b3.m36h();
                }
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m106d(C0018g c0018g, int i2) {
        int i3 = c0018g.f142b;
        if (i3 != -1) {
            C0013b c0013b = this.f130e[i3];
            if (c0013b.f108d) {
                c0013b.f106b = i2;
                return;
            }
            C0013b c0013bM113k = m113k();
            c0013bM113k.m31c(c0018g, i2);
            m105c(c0013bM113k);
            return;
        }
        C0013b c0013bM113k2 = m113k();
        c0013bM113k2.f105a = c0018g;
        float f2 = i2;
        c0018g.f144d = f2;
        c0013bM113k2.f106b = f2;
        c0013bM113k2.f108d = true;
        m105c(c0013bM113k2);
    }

    /* JADX INFO: renamed from: e */
    public final void m107e(C0018g c0018g, C0018g c0018g2, int i2, int i3) {
        C0013b c0013bM113k = m113k();
        c0013bM113k.m32d(c0018g, c0018g2, i2);
        C0018g c0018gM111i = m111i();
        C0018g c0018gM111i2 = m111i();
        c0018gM111i.f143c = i3;
        c0018gM111i2.f143c = i3;
        C0012a c0012a = c0013bM113k.f107c;
        c0012a.m25c(c0018gM111i, 1.0f);
        c0012a.m25c(c0018gM111i2, -1.0f);
        m105c(c0013bM113k);
    }

    /* JADX INFO: renamed from: f */
    public final void m108f(C0018g c0018g, C0018g c0018g2, int i2, int i3) {
        C0013b c0013bM113k = m113k();
        C0018g c0018gM114l = m114l();
        c0018gM114l.f143c = i3;
        c0013bM113k.m33e(c0018g, c0018g2, c0018gM114l, i2);
        m105c(c0013bM113k);
    }

    /* JADX INFO: renamed from: g */
    public final void m109g(C0018g c0018g, C0018g c0018g2, int i2, int i3) {
        C0013b c0013bM113k = m113k();
        C0018g c0018gM114l = m114l();
        c0018gM114l.f143c = i3;
        c0013bM113k.m34f(c0018g, c0018g2, c0018gM114l, i2);
        m105c(c0013bM113k);
    }

    /* JADX INFO: renamed from: h */
    public final void m110h() {
        for (int i2 = 0; i2 < this.f133h; i2++) {
            C0013b c0013b = this.f130e[i2];
            c0013b.f105a.f144d = c0013b.f106b;
        }
    }

    /* JADX INFO: renamed from: i */
    public final C0018g m111i() {
        if (this.f132g + 1 >= this.f129d) {
            m116o();
        }
        C0018g c0018gM103a = m103a(4);
        int i2 = this.f126a + 1;
        this.f126a = i2;
        this.f132g++;
        c0018gM103a.f141a = i2;
        ((C0018g[]) this.f135j.f113e)[i2] = c0018gM103a;
        return c0018gM103a;
    }

    /* JADX INFO: renamed from: j */
    public final C0018g m112j(Object obj) {
        C0018g c0018g = null;
        if (obj == null) {
            return null;
        }
        if (this.f132g + 1 >= this.f129d) {
            m116o();
        }
        if (obj instanceof C0037b) {
            C0037b c0037b = (C0037b) obj;
            c0018g = c0037b.f260i;
            if (c0018g == null) {
                c0037b.m142d();
                c0018g = c0037b.f260i;
            }
            int i2 = c0018g.f141a;
            C0014c c0014c = this.f135j;
            if (i2 == -1 || i2 > this.f126a || ((C0018g[]) c0014c.f113e)[i2] == null) {
                if (i2 != -1) {
                    c0018g.m121b();
                }
                int i3 = this.f126a + 1;
                this.f126a = i3;
                this.f132g++;
                c0018g.f141a = i3;
                c0018g.f145e = 1;
                ((C0018g[]) c0014c.f113e)[i3] = c0018g;
            }
        }
        return c0018g;
    }

    /* JADX INFO: renamed from: k */
    public final C0013b m113k() {
        Object obj;
        C0014c c0014c = this.f135j;
        C0017f c0017f = (C0017f) c0014c.f110b;
        int i2 = c0017f.f140b;
        if (i2 > 0) {
            int i3 = i2 - 1;
            Object[] objArr = c0017f.f139a;
            obj = objArr[i3];
            objArr[i3] = null;
            c0017f.f140b = i3;
        } else {
            obj = null;
        }
        C0013b c0013b = (C0013b) obj;
        if (c0013b == null) {
            return new C0013b(c0014c);
        }
        c0013b.f105a = null;
        C0012a c0012a = c0013b.f107c;
        c0012a.f102h = -1;
        c0012a.f103i = -1;
        c0012a.f104j = false;
        c0012a.f95a = 0;
        c0013b.f106b = 0.0f;
        c0013b.f108d = false;
        return c0013b;
    }

    /* JADX INFO: renamed from: l */
    public final C0018g m114l() {
        if (this.f132g + 1 >= this.f129d) {
            m116o();
        }
        C0018g c0018gM103a = m103a(3);
        int i2 = this.f126a + 1;
        this.f126a = i2;
        this.f132g++;
        c0018gM103a.f141a = i2;
        ((C0018g[]) this.f135j.f113e)[i2] = c0018gM103a;
        return c0018gM103a;
    }

    /* JADX INFO: renamed from: m */
    public final void m115m(C0013b c0013b) {
        int i2;
        boolean z2;
        C0012a c0012a;
        C0014c c0014c;
        int i3 = 0;
        while (true) {
            i2 = 1;
            if (i3 >= this.f133h) {
                z2 = false;
                break;
            }
            C0013b c0013b2 = this.f130e[i3];
            if (c0013b2.f105a.f145e != 1 && c0013b2.f106b < 0.0f) {
                z2 = true;
                break;
            }
            i3++;
        }
        if (z2) {
            boolean z3 = false;
            while (!z3) {
                float f2 = Float.MAX_VALUE;
                int i4 = Integer.MAX_VALUE;
                int i5 = -1;
                int i6 = -1;
                int i7 = 0;
                while (true) {
                    int i8 = this.f133h;
                    c0012a = c0013b.f107c;
                    c0014c = this.f135j;
                    if (i7 >= i8) {
                        break;
                    }
                    C0013b c0013b3 = this.f130e[i7];
                    if (c0013b3.f105a.f145e != i2 && c0013b3.f106b < 0.0f) {
                        for (int i9 = i2; i9 < this.f132g; i9++) {
                            C0018g c0018g = ((C0018g[]) c0014c.f113e)[i9];
                            float fM24b = c0013b3.f107c.m24b(c0018g);
                            if (fM24b > 0.0f) {
                                float fM24b2 = c0012a.m24b(c0018g) / fM24b;
                                int i10 = c0018g.f143c;
                                if (i10 <= i4 && fM24b2 < f2) {
                                    i4 = i10;
                                    i5 = i7;
                                    i6 = i9;
                                    f2 = fM24b2;
                                }
                            }
                        }
                    }
                    i7++;
                    i2 = 1;
                }
                if (i5 != -1) {
                    C0013b c0013b4 = this.f130e[i5];
                    c0013b4.f105a.f142b = -1;
                    c0013b4.m35g(((C0018g[]) c0014c.f113e)[i6]);
                    c0013b4.f105a.f142b = i5;
                    for (int i11 = 0; i11 < this.f133h; i11++) {
                        C0013b c0013b5 = this.f130e[i11];
                        c0013b5.f107c.m27e(c0013b5, c0013b4);
                    }
                    c0012a.m27e(c0013b, c0013b4);
                } else {
                    z3 = true;
                }
                i2 = 1;
            }
        }
        for (int i12 = 0; i12 < this.f133h; i12++) {
            C0013b c0013b6 = this.f130e[i12];
            if (c0013b6.f105a.f145e != 1 && c0013b6.f106b < 0.0f) {
                return;
            }
        }
    }

    /* JADX INFO: renamed from: o */
    public final void m116o() {
        int i2 = this.f128c * 2;
        this.f128c = i2;
        this.f130e = (C0013b[]) Arrays.copyOf(this.f130e, i2);
        C0014c c0014c = this.f135j;
        c0014c.f113e = (C0018g[]) Arrays.copyOf((C0018g[]) c0014c.f113e, this.f128c);
        int i3 = this.f128c;
        this.f131f = new boolean[i3];
        this.f129d = i3;
        this.f134i = i3;
        C0013b c0013b = this.f127b;
        if (c0013b != null) {
            C0017f c0017f = (C0017f) c0014c.f110b;
            int i4 = c0017f.f140b;
            Object[] objArr = c0017f.f139a;
            if (i4 < objArr.length) {
                objArr[i4] = c0013b;
                c0017f.f140b = i4 + 1;
            }
        }
        this.f127b = null;
    }

    /* JADX INFO: renamed from: p */
    public final void m117p() throws Exception {
        C0013b c0013b = this.f127b;
        boolean z2 = false;
        if (c0013b != null) {
            c0013b.f105a = null;
            C0012a c0012a = c0013b.f107c;
            c0012a.f102h = -1;
            c0012a.f103i = -1;
            c0012a.f104j = false;
            c0012a.f95a = 0;
            c0013b.f106b = 0.0f;
            c0013b.f108d = false;
        } else {
            this.f127b = m113k();
        }
        for (int i2 = 1; i2 < this.f132g; i2++) {
            C0018g c0018g = ((C0018g[]) this.f135j.f113e)[i2];
            if (c0018g.f145e == 4) {
                this.f127b.f107c.m25c(c0018g, 1.0f);
            }
        }
        C0013b c0013b2 = this.f127b;
        c0013b2.f107c.m28f(c0013b2, this.f130e);
        C0012a c0012a2 = c0013b2.f107c;
        int i3 = c0012a2.f102h;
        for (int i4 = 0; i3 != -1 && i4 < c0012a2.f95a; i4++) {
            if (c0012a2.f101g[i3] > 0.0f) {
                z2 = true;
                break;
            }
            i3 = c0012a2.f100f[i3];
        }
        if (!z2) {
            m110h();
            return;
        }
        try {
            m115m(c0013b2);
            m118q(c0013b2);
            m110h();
        } catch (Exception e2) {
            m110h();
            throw e2;
        }
    }

    /* JADX INFO: renamed from: q */
    public final void m118q(C0013b c0013b) {
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i3 = 0;
        for (int i4 = 0; i4 < this.f132g; i4++) {
            this.f131f[i4] = false;
        }
        boolean z6 = false;
        int i5 = 0;
        while (!z6) {
            C0012a c0012a = c0013b.f107c;
            c0012a.getClass();
            int i6 = c0012a.f102h;
            C0018g c0018g = null;
            int i7 = i3;
            C0018g c0018g2 = null;
            while (true) {
                z2 = false;
                i2 = -1;
                if (i6 == -1 || i7 >= c0012a.f95a) {
                    break;
                }
                if (c0012a.f101g[i6] < 0.0f) {
                    C0018g c0018g3 = ((C0018g[]) c0012a.f97c.f113e)[c0012a.f99e[i6]];
                    if (c0018g2 == null || c0018g2.f143c > c0018g3.f143c) {
                        c0018g2 = c0018g3;
                    }
                }
                i6 = c0012a.f100f[i6];
                i7++;
            }
            int i8 = 1;
            if (c0018g2 != null) {
                boolean[] zArr = this.f131f;
                int i9 = c0018g2.f141a;
                if (!zArr[i9]) {
                    zArr[i9] = true;
                    i5++;
                    if (i5 >= this.f132g) {
                        z6 = true;
                    }
                    c0018g = c0018g2;
                }
            } else {
                c0018g = c0018g2;
            }
            if (c0018g != null) {
                float fM24b = c0012a.m24b(c0018g);
                float f2 = Float.MAX_VALUE;
                int i10 = i3;
                int i11 = i10;
                int i12 = -1;
                while (i10 < this.f133h) {
                    C0013b c0013b2 = this.f130e[i10];
                    if (c0013b2.f105a.f145e == i8) {
                        z5 = z2;
                    } else {
                        C0012a c0012a2 = c0013b2.f107c;
                        int i13 = c0012a2.f102h;
                        if (i13 == i2) {
                            z4 = false;
                            break;
                        }
                        int i14 = 0;
                        while (true) {
                            if (i13 == i2 || i14 >= c0012a2.f95a) {
                                z4 = false;
                                break;
                            } else if (c0012a2.f99e[i13] == c0018g.f141a) {
                                z4 = true;
                                break;
                            } else {
                                i13 = c0012a2.f100f[i13];
                                i14++;
                                i2 = -1;
                            }
                        }
                        if (z4) {
                            float fM24b2 = c0012a2.m24b(c0018g);
                            z5 = false;
                            if (fM24b2 > 0.0f) {
                                float f3 = fM24b / fM24b2;
                                int i15 = c0018g.f143c;
                                if (i15 >= i11 && f3 < f2) {
                                    f2 = f3;
                                    i11 = i15;
                                    i12 = i10;
                                }
                            }
                        } else {
                            z5 = false;
                        }
                    }
                    i10++;
                    z2 = z5;
                    i8 = 1;
                    i2 = -1;
                }
                int i16 = i2;
                if (i12 > i16) {
                    C0013b c0013b3 = this.f130e[i12];
                    c0013b3.f105a.f142b = i16;
                    c0013b3.m35g(c0018g);
                    c0013b3.f105a.f142b = i12;
                    for (int i17 = 0; i17 < this.f133h; i17++) {
                        C0013b c0013b4 = this.f130e[i17];
                        c0013b4.f107c.m27e(c0013b4, c0013b3);
                    }
                    c0012a.m27e(c0013b, c0013b3);
                    z3 = z6;
                } else {
                    z3 = true;
                }
                z6 = z3;
            } else {
                z6 = true;
            }
            i3 = 0;
        }
    }

    /* JADX INFO: renamed from: r */
    public final void m119r() {
        C0014c c0014c;
        int i2 = 0;
        while (true) {
            c0014c = this.f135j;
            C0018g[] c0018gArr = (C0018g[]) c0014c.f113e;
            if (i2 >= c0018gArr.length) {
                break;
            }
            C0018g c0018g = c0018gArr[i2];
            if (c0018g != null) {
                c0018g.m121b();
            }
            i2++;
        }
        C0017f c0017f = (C0017f) c0014c.f111c;
        int i3 = this.f137l;
        c0017f.getClass();
        for (int i4 = 0; i4 < i3; i4++) {
            C0018g c0018g2 = this.f136k[i4];
            int i5 = c0017f.f140b;
            Object[] objArr = c0017f.f139a;
            if (i5 < objArr.length) {
                objArr[i5] = c0018g2;
                c0017f.f140b = i5 + 1;
            }
        }
        this.f137l = 0;
        Arrays.fill((C0018g[]) c0014c.f113e, (Object) null);
        this.f126a = 0;
        C0013b c0013b = this.f127b;
        if (c0013b != null) {
            C0017f c0017f2 = (C0017f) c0014c.f110b;
            int i6 = c0017f2.f140b;
            Object[] objArr2 = c0017f2.f139a;
            if (i6 < objArr2.length) {
                objArr2[i6] = c0013b;
                c0017f2.f140b = i6 + 1;
            }
        }
        this.f127b = null;
        this.f132g = 1;
        for (int i7 = 0; i7 < this.f133h; i7++) {
            this.f130e[i7].getClass();
        }
        int i8 = 0;
        while (true) {
            C0013b[] c0013bArr = this.f130e;
            if (i8 >= c0013bArr.length) {
                this.f133h = 0;
                return;
            }
            C0013b c0013b2 = c0013bArr[i8];
            if (c0013b2 != null) {
                C0017f c0017f3 = (C0017f) c0014c.f110b;
                int i9 = c0017f3.f140b;
                Object[] objArr3 = c0017f3.f139a;
                if (i9 < objArr3.length) {
                    objArr3[i9] = c0013b2;
                    c0017f3.f140b = i9 + 1;
                }
            }
            c0013bArr[i8] = null;
            i8++;
        }
    }
}
