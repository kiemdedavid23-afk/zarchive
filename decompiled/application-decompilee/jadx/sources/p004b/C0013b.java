package p004b;

import java.util.Arrays;

/* JADX INFO: renamed from: b.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0013b {

    /* JADX INFO: renamed from: c */
    public final C0012a f107c;

    /* JADX INFO: renamed from: a */
    public C0018g f105a = null;

    /* JADX INFO: renamed from: b */
    public float f106b = 0.0f;

    /* JADX INFO: renamed from: d */
    public boolean f108d = false;

    public C0013b(C0014c c0014c) {
        this.f107c = new C0012a(this, c0014c);
    }

    /* JADX INFO: renamed from: a */
    public final void m29a(C0018g c0018g, C0018g c0018g2, int i2, float f2, C0018g c0018g3, C0018g c0018g4, int i3) {
        C0012a c0012a = this.f107c;
        if (c0018g2 == c0018g3) {
            c0012a.m25c(c0018g, 1.0f);
            c0012a.m25c(c0018g4, 1.0f);
            c0012a.m25c(c0018g2, -2.0f);
            return;
        }
        if (f2 == 0.5f) {
            c0012a.m25c(c0018g, 1.0f);
            c0012a.m25c(c0018g2, -1.0f);
            c0012a.m25c(c0018g3, -1.0f);
            c0012a.m25c(c0018g4, 1.0f);
            if (i2 > 0 || i3 > 0) {
                this.f106b = (-i2) + i3;
                return;
            }
            return;
        }
        float f3 = 1.0f - f2;
        c0012a.m25c(c0018g, f3 * 1.0f);
        c0012a.m25c(c0018g2, f3 * (-1.0f));
        c0012a.m25c(c0018g3, (-1.0f) * f2);
        c0012a.m25c(c0018g4, 1.0f * f2);
        if (i2 > 0 || i3 > 0) {
            this.f106b = (i3 * f2) + ((-i2) * f3);
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m30b(float f2, float f3, float f4, C0018g c0018g, int i2, C0018g c0018g2, int i3, C0018g c0018g3, int i4, C0018g c0018g4, int i5) {
        C0012a c0012a = this.f107c;
        if (f3 == 0.0f || f2 == f4) {
            this.f106b = ((-i2) - i3) + i4 + i5;
            c0012a.m25c(c0018g, 1.0f);
            c0012a.m25c(c0018g2, -1.0f);
            c0012a.m25c(c0018g4, 1.0f);
            c0012a.m25c(c0018g3, -1.0f);
            return;
        }
        float f5 = (f2 / f3) / (f4 / f3);
        this.f106b = (i5 * f5) + (i4 * f5) + ((-i2) - i3);
        c0012a.m25c(c0018g, 1.0f);
        c0012a.m25c(c0018g2, -1.0f);
        c0012a.m25c(c0018g4, f5);
        c0012a.m25c(c0018g3, -f5);
    }

    /* JADX INFO: renamed from: c */
    public final void m31c(C0018g c0018g, int i2) {
        C0012a c0012a = this.f107c;
        if (i2 < 0) {
            this.f106b = i2 * (-1);
            c0012a.m25c(c0018g, 1.0f);
        } else {
            this.f106b = i2;
            c0012a.m25c(c0018g, -1.0f);
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m32d(C0018g c0018g, C0018g c0018g2, int i2) {
        boolean z2 = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z2 = true;
            }
            this.f106b = i2;
        }
        C0012a c0012a = this.f107c;
        if (z2) {
            c0012a.m25c(c0018g, 1.0f);
            c0012a.m25c(c0018g2, -1.0f);
        } else {
            c0012a.m25c(c0018g, -1.0f);
            c0012a.m25c(c0018g2, 1.0f);
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m33e(C0018g c0018g, C0018g c0018g2, C0018g c0018g3, int i2) {
        boolean z2 = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z2 = true;
            }
            this.f106b = i2;
        }
        C0012a c0012a = this.f107c;
        if (z2) {
            c0012a.m25c(c0018g, 1.0f);
            c0012a.m25c(c0018g2, -1.0f);
            c0012a.m25c(c0018g3, -1.0f);
        } else {
            c0012a.m25c(c0018g, -1.0f);
            c0012a.m25c(c0018g2, 1.0f);
            c0012a.m25c(c0018g3, 1.0f);
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m34f(C0018g c0018g, C0018g c0018g2, C0018g c0018g3, int i2) {
        boolean z2 = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z2 = true;
            }
            this.f106b = i2;
        }
        C0012a c0012a = this.f107c;
        if (z2) {
            c0012a.m25c(c0018g, 1.0f);
            c0012a.m25c(c0018g2, -1.0f);
            c0012a.m25c(c0018g3, 1.0f);
        } else {
            c0012a.m25c(c0018g, -1.0f);
            c0012a.m25c(c0018g2, 1.0f);
            c0012a.m25c(c0018g3, -1.0f);
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m35g(C0018g c0018g) {
        C0018g c0018g2 = this.f105a;
        C0012a c0012a = this.f107c;
        if (c0018g2 != null) {
            c0012a.m25c(c0018g2, -1.0f);
            this.f105a = null;
        }
        float fM26d = c0012a.m26d(c0018g) * (-1.0f);
        this.f105a = c0018g;
        if (fM26d == 1.0f) {
            return;
        }
        this.f106b /= fM26d;
        int i2 = c0012a.f102h;
        for (int i3 = 0; i2 != -1 && i3 < c0012a.f95a; i3++) {
            float[] fArr = c0012a.f101g;
            fArr[i2] = fArr[i2] / fM26d;
            i2 = c0012a.f100f[i2];
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m36h() {
        C0012a c0012a = this.f107c;
        int i2 = c0012a.f102h;
        for (int i3 = 0; i2 != -1 && i3 < c0012a.f95a; i3++) {
            C0018g c0018g = ((C0018g[]) c0012a.f97c.f113e)[c0012a.f99e[i2]];
            int i4 = 0;
            while (true) {
                int i5 = c0018g.f147g;
                if (i4 >= i5) {
                    C0013b[] c0013bArr = c0018g.f146f;
                    if (i5 >= c0013bArr.length) {
                        c0018g.f146f = (C0013b[]) Arrays.copyOf(c0013bArr, c0013bArr.length * 2);
                    }
                    C0013b[] c0013bArr2 = c0018g.f146f;
                    int i6 = c0018g.f147g;
                    c0013bArr2[i6] = this;
                    c0018g.f147g = i6 + 1;
                    break;
                }
                if (c0018g.f146f[i4] == this) {
                    break;
                } else {
                    i4++;
                }
            }
            i2 = c0012a.f100f[i2];
        }
    }

    public final String toString() {
        boolean z2;
        C0018g c0018g;
        float f2;
        String str = (this.f105a == null ? "0" : "" + this.f105a) + " = ";
        if (this.f106b != 0.0f) {
            str = str + this.f106b;
            z2 = true;
        } else {
            z2 = false;
        }
        C0012a c0012a = this.f107c;
        int i2 = c0012a.f95a;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = c0012a.f102h;
            int i5 = 0;
            while (true) {
                if (i4 == -1 || i5 >= c0012a.f95a) {
                    c0018g = null;
                    break;
                }
                if (i5 == i3) {
                    c0018g = ((C0018g[]) c0012a.f97c.f113e)[c0012a.f99e[i4]];
                    break;
                }
                i4 = c0012a.f100f[i4];
                i5++;
            }
            if (c0018g != null) {
                int i6 = c0012a.f102h;
                int i7 = 0;
                while (true) {
                    if (i6 == -1 || i7 >= c0012a.f95a) {
                        f2 = 0.0f;
                        break;
                    }
                    if (i7 == i3) {
                        f2 = c0012a.f101g[i6];
                        break;
                    }
                    i6 = c0012a.f100f[i6];
                    i7++;
                }
                if (z2) {
                    if (f2 > 0.0f) {
                        str = str + " + ";
                    } else {
                        str = str + " - ";
                        f2 *= -1.0f;
                    }
                } else if (f2 < 0.0f) {
                    str = str + "- ";
                    f2 *= -1.0f;
                }
                str = f2 == 1.0f ? str + "null" : str + f2 + " null";
                z2 = true;
            }
        }
        if (z2) {
            return str;
        }
        return str + "0.0";
    }
}
