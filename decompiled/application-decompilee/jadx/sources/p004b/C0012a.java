package p004b;

import java.util.Arrays;

/* JADX INFO: renamed from: b.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0012a {

    /* JADX INFO: renamed from: b */
    public final C0013b f96b;

    /* JADX INFO: renamed from: c */
    public final C0014c f97c;

    /* JADX INFO: renamed from: a */
    public int f95a = 0;

    /* JADX INFO: renamed from: d */
    public int f98d = 8;

    /* JADX INFO: renamed from: e */
    public int[] f99e = new int[8];

    /* JADX INFO: renamed from: f */
    public int[] f100f = new int[8];

    /* JADX INFO: renamed from: g */
    public float[] f101g = new float[8];

    /* JADX INFO: renamed from: h */
    public int f102h = -1;

    /* JADX INFO: renamed from: i */
    public int f103i = -1;

    /* JADX INFO: renamed from: j */
    public boolean f104j = false;

    public C0012a(C0013b c0013b, C0014c c0014c) {
        this.f96b = c0013b;
        this.f97c = c0014c;
    }

    /* JADX INFO: renamed from: a */
    public final void m23a(C0018g c0018g, float f2) {
        if (f2 == 0.0f) {
            return;
        }
        int i2 = this.f102h;
        if (i2 == -1) {
            this.f102h = 0;
            this.f101g[0] = f2;
            this.f99e[0] = c0018g.f141a;
            this.f100f[0] = -1;
            this.f95a++;
            if (this.f104j) {
                return;
            }
            this.f103i++;
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i2 != -1 && i4 < this.f95a; i4++) {
            int i5 = this.f99e[i2];
            int i6 = c0018g.f141a;
            if (i5 == i6) {
                float[] fArr = this.f101g;
                float f3 = fArr[i2] + f2;
                fArr[i2] = f3;
                if (f3 == 0.0f) {
                    if (i2 == this.f102h) {
                        this.f102h = this.f100f[i2];
                    } else {
                        int[] iArr = this.f100f;
                        iArr[i3] = iArr[i2];
                    }
                    ((C0018g[]) this.f97c.f113e)[i5].m120a(this.f96b);
                    if (this.f104j) {
                        this.f103i = i2;
                    }
                    this.f95a--;
                    return;
                }
                return;
            }
            if (i5 < i6) {
                i3 = i2;
            }
            i2 = this.f100f[i2];
        }
        int length = this.f103i;
        int i7 = length + 1;
        if (this.f104j) {
            int[] iArr2 = this.f99e;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i7;
        }
        int[] iArr3 = this.f99e;
        if (length >= iArr3.length && this.f95a < iArr3.length) {
            int i8 = 0;
            while (true) {
                int[] iArr4 = this.f99e;
                if (i8 >= iArr4.length) {
                    break;
                }
                if (iArr4[i8] == -1) {
                    length = i8;
                    break;
                }
                i8++;
            }
        }
        int[] iArr5 = this.f99e;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i9 = this.f98d * 2;
            this.f98d = i9;
            this.f104j = false;
            this.f103i = length - 1;
            this.f101g = Arrays.copyOf(this.f101g, i9);
            this.f99e = Arrays.copyOf(this.f99e, this.f98d);
            this.f100f = Arrays.copyOf(this.f100f, this.f98d);
        }
        int[] iArr6 = this.f99e;
        iArr6[length] = c0018g.f141a;
        this.f101g[length] = f2;
        if (i3 != -1) {
            int[] iArr7 = this.f100f;
            iArr7[length] = iArr7[i3];
            iArr7[i3] = length;
        } else {
            this.f100f[length] = this.f102h;
            this.f102h = length;
        }
        this.f95a++;
        if (!this.f104j) {
            this.f103i++;
        }
        if (this.f103i >= iArr6.length) {
            this.f104j = true;
            this.f103i = iArr6.length - 1;
        }
    }

    /* JADX INFO: renamed from: b */
    public final float m24b(C0018g c0018g) {
        int i2 = this.f102h;
        for (int i3 = 0; i2 != -1 && i3 < this.f95a; i3++) {
            if (this.f99e[i2] == c0018g.f141a) {
                return this.f101g[i2];
            }
            i2 = this.f100f[i2];
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: c */
    public final void m25c(C0018g c0018g, float f2) {
        if (f2 == 0.0f) {
            m26d(c0018g);
            return;
        }
        int i2 = this.f102h;
        if (i2 == -1) {
            this.f102h = 0;
            this.f101g[0] = f2;
            this.f99e[0] = c0018g.f141a;
            this.f100f[0] = -1;
            this.f95a++;
            if (this.f104j) {
                return;
            }
            this.f103i++;
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i2 != -1 && i4 < this.f95a; i4++) {
            int i5 = this.f99e[i2];
            int i6 = c0018g.f141a;
            if (i5 == i6) {
                this.f101g[i2] = f2;
                return;
            }
            if (i5 < i6) {
                i3 = i2;
            }
            i2 = this.f100f[i2];
        }
        int length = this.f103i;
        int i7 = length + 1;
        if (this.f104j) {
            int[] iArr = this.f99e;
            if (iArr[length] != -1) {
                length = iArr.length;
            }
        } else {
            length = i7;
        }
        int[] iArr2 = this.f99e;
        if (length >= iArr2.length && this.f95a < iArr2.length) {
            int i8 = 0;
            while (true) {
                int[] iArr3 = this.f99e;
                if (i8 >= iArr3.length) {
                    break;
                }
                if (iArr3[i8] == -1) {
                    length = i8;
                    break;
                }
                i8++;
            }
        }
        int[] iArr4 = this.f99e;
        if (length >= iArr4.length) {
            length = iArr4.length;
            int i9 = this.f98d * 2;
            this.f98d = i9;
            this.f104j = false;
            this.f103i = length - 1;
            this.f101g = Arrays.copyOf(this.f101g, i9);
            this.f99e = Arrays.copyOf(this.f99e, this.f98d);
            this.f100f = Arrays.copyOf(this.f100f, this.f98d);
        }
        int[] iArr5 = this.f99e;
        iArr5[length] = c0018g.f141a;
        this.f101g[length] = f2;
        if (i3 != -1) {
            int[] iArr6 = this.f100f;
            iArr6[length] = iArr6[i3];
            iArr6[i3] = length;
        } else {
            this.f100f[length] = this.f102h;
            this.f102h = length;
        }
        int i10 = this.f95a + 1;
        this.f95a = i10;
        if (!this.f104j) {
            this.f103i++;
        }
        if (i10 >= iArr5.length) {
            this.f104j = true;
        }
    }

    /* JADX INFO: renamed from: d */
    public final float m26d(C0018g c0018g) {
        int i2 = this.f102h;
        if (i2 == -1) {
            return 0.0f;
        }
        int i3 = 0;
        int i4 = -1;
        while (i2 != -1 && i3 < this.f95a) {
            int i5 = this.f99e[i2];
            if (i5 == c0018g.f141a) {
                if (i2 == this.f102h) {
                    this.f102h = this.f100f[i2];
                } else {
                    int[] iArr = this.f100f;
                    iArr[i4] = iArr[i2];
                }
                ((C0018g[]) this.f97c.f113e)[i5].m120a(this.f96b);
                this.f95a--;
                this.f99e[i2] = -1;
                if (this.f104j) {
                    this.f103i = i2;
                }
                return this.f101g[i2];
            }
            i3++;
            i4 = i2;
            i2 = this.f100f[i2];
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: e */
    public final void m27e(C0013b c0013b, C0013b c0013b2) {
        int i2 = this.f102h;
        while (true) {
            for (int i3 = 0; i2 != -1 && i3 < this.f95a; i3++) {
                int i4 = this.f99e[i2];
                C0018g c0018g = c0013b2.f105a;
                if (i4 == c0018g.f141a) {
                    float f2 = this.f101g[i2];
                    m26d(c0018g);
                    C0012a c0012a = c0013b2.f107c;
                    int i5 = c0012a.f102h;
                    for (int i6 = 0; i5 != -1 && i6 < c0012a.f95a; i6++) {
                        m23a(((C0018g[]) this.f97c.f113e)[c0012a.f99e[i5]], c0012a.f101g[i5] * f2);
                        i5 = c0012a.f100f[i5];
                    }
                    c0013b.f106b = (c0013b2.f106b * f2) + c0013b.f106b;
                    c0013b2.f105a.m120a(c0013b);
                    i2 = this.f102h;
                } else {
                    i2 = this.f100f[i2];
                }
            }
            return;
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m28f(C0013b c0013b, C0013b[] c0013bArr) {
        int i2 = this.f102h;
        while (true) {
            for (int i3 = 0; i2 != -1 && i3 < this.f95a; i3++) {
                C0014c c0014c = this.f97c;
                C0018g c0018g = ((C0018g[]) c0014c.f113e)[this.f99e[i2]];
                if (c0018g.f142b != -1) {
                    float f2 = this.f101g[i2];
                    m26d(c0018g);
                    C0013b c0013b2 = c0013bArr[c0018g.f142b];
                    if (!c0013b2.f108d) {
                        C0012a c0012a = c0013b2.f107c;
                        int i4 = c0012a.f102h;
                        for (int i5 = 0; i4 != -1 && i5 < c0012a.f95a; i5++) {
                            m23a(((C0018g[]) c0014c.f113e)[c0012a.f99e[i4]], c0012a.f101g[i4] * f2);
                            i4 = c0012a.f100f[i4];
                        }
                    }
                    c0013b.f106b = (c0013b2.f106b * f2) + c0013b.f106b;
                    c0013b2.f105a.m120a(c0013b);
                    i2 = this.f102h;
                } else {
                    i2 = this.f100f[i2];
                }
            }
            return;
        }
    }

    public final String toString() {
        int i2 = this.f102h;
        String str = "";
        for (int i3 = 0; i2 != -1 && i3 < this.f95a; i3++) {
            str = ((str + " -> ") + this.f101g[i2] + " : ") + ((C0018g[]) this.f97c.f113e)[this.f99e[i2]];
            i2 = this.f100f[i2];
        }
        return str;
    }
}
