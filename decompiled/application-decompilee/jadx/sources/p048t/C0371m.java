package p048t;

import p054w.AbstractC0406k;
import p054w.C0396a;

/* JADX INFO: renamed from: t.m */
/* JADX INFO: loaded from: classes.dex */
public final class C0371m extends AbstractC0360b {

    /* JADX INFO: renamed from: b */
    public int f2060b;

    /* JADX INFO: renamed from: c */
    public final AbstractC0406k f2061c;

    /* JADX INFO: renamed from: d */
    public final boolean f2062d;

    /* JADX INFO: renamed from: e */
    public short f2063e;

    /* JADX INFO: renamed from: f */
    public int f2064f;

    /* JADX INFO: renamed from: g */
    public final int[] f2065g;

    /* JADX INFO: renamed from: h */
    public int f2066h;

    /* JADX INFO: renamed from: i */
    public int f2067i;

    /* JADX INFO: renamed from: j */
    public final AbstractC0360b f2068j;

    public C0371m(AbstractC0406k abstractC0406k) {
        this.f2061c = abstractC0406k;
        this.f2062d = false;
        this.f2068j = null;
        this.f2065g = new int[4];
        mo1049e();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: a */
    public final String mo1045a() {
        AbstractC0360b abstractC0360b = this.f2068j;
        return abstractC0360b == null ? this.f2061c.f2132d : abstractC0360b.mo1045a();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: b */
    public final float mo1046b() {
        int i2 = this.f2064f;
        if (i2 <= 0) {
            return 0.01f;
        }
        float f2 = ((((this.f2065g[3] * 1.0f) / i2) / this.f2061c.f2131c) * this.f2067i) / this.f2066h;
        if (f2 >= 1.0f) {
            return 0.99f;
        }
        return f2;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: c */
    public final int mo1047c() {
        return this.f2060b;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: d */
    public final int mo1048d(byte[] bArr, int i2) {
        int i3 = i2 + 0;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = bArr[i4] & 255;
            AbstractC0406k abstractC0406k = this.f2061c;
            short s2 = abstractC0406k.f2129a[i5];
            if (s2 < 250) {
                this.f2066h++;
            }
            if (s2 < 64) {
                this.f2067i++;
                short s3 = this.f2063e;
                if (s3 < 64) {
                    this.f2064f++;
                    byte[] bArr2 = abstractC0406k.f2130b;
                    boolean z2 = this.f2062d;
                    int[] iArr = this.f2065g;
                    if (z2) {
                        byte b2 = bArr2[(s2 * 64) + s3];
                        iArr[b2] = iArr[b2] + 1;
                    } else {
                        byte b3 = bArr2[(s3 * 64) + s2];
                        iArr[b3] = iArr[b3] + 1;
                    }
                }
            }
            this.f2063e = s2;
        }
        if (this.f2060b == 1 && this.f2064f > 1024) {
            float fMo1046b = mo1046b();
            if (fMo1046b > 0.95f) {
                this.f2060b = 2;
            } else if (fMo1046b < 0.05f) {
                this.f2060b = 3;
            }
        }
        return this.f2060b;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: e */
    public final void mo1049e() {
        this.f2060b = 1;
        this.f2063e = (short) 255;
        for (int i2 = 0; i2 < 4; i2++) {
            this.f2065g[i2] = 0;
        }
        this.f2064f = 0;
        this.f2066h = 0;
        this.f2067i = 0;
    }

    public C0371m(C0396a c0396a, boolean z2, C0366h c0366h) {
        this.f2061c = c0396a;
        this.f2062d = z2;
        this.f2068j = c0366h;
        this.f2065g = new int[4];
        mo1049e();
    }
}
