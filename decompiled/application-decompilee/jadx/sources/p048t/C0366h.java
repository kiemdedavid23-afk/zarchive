package p048t;

import p046s.C0355a;

/* JADX INFO: renamed from: t.h */
/* JADX INFO: loaded from: classes.dex */
public final class C0366h extends AbstractC0360b {

    /* JADX INFO: renamed from: b */
    public int f2035b;

    /* JADX INFO: renamed from: c */
    public int f2036c;

    /* JADX INFO: renamed from: d */
    public byte f2037d;

    /* JADX INFO: renamed from: e */
    public byte f2038e;

    /* JADX INFO: renamed from: f */
    public AbstractC0360b f2039f = null;

    /* JADX INFO: renamed from: g */
    public AbstractC0360b f2040g = null;

    public C0366h() {
        mo1049e();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: a */
    public final String mo1045a() {
        int i2 = this.f2035b - this.f2036c;
        if (i2 >= 5) {
            return C0355a.f1956t;
        }
        if (i2 <= -5) {
            return C0355a.f1942f;
        }
        float fMo1046b = this.f2039f.mo1046b() - this.f2040g.mo1046b();
        if (fMo1046b > 0.01f) {
            return C0355a.f1956t;
        }
        if (fMo1046b < -0.01f) {
            return C0355a.f1942f;
        }
        return i2 < 0 ? C0355a.f1942f : C0355a.f1956t;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: b */
    public final float mo1046b() {
        return 0.0f;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: c */
    public final int mo1047c() {
        return (this.f2039f.mo1047c() == 3 && this.f2040g.mo1047c() == 3) ? 3 : 1;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: d */
    public final int mo1048d(byte[] bArr, int i2) {
        if (mo1047c() == 3) {
            return 3;
        }
        int i3 = i2 + 0;
        for (int i4 = 0; i4 < i3; i4++) {
            byte b2 = bArr[i4];
            if (b2 == 32) {
                if (this.f2038e != 32) {
                    byte b3 = this.f2037d;
                    int i5 = b3 & 255;
                    if (i5 == 234 || i5 == 237 || i5 == 239 || i5 == 243 || i5 == 245) {
                        this.f2035b++;
                    } else {
                        int i6 = b3 & 255;
                        if (i6 == 235 || i6 == 238 || i6 == 240 || i6 == 244) {
                            this.f2036c++;
                        }
                    }
                }
            } else if (this.f2038e == 32) {
                int i7 = this.f2037d & 255;
                if ((i7 == 234 || i7 == 237 || i7 == 239 || i7 == 243 || i7 == 245) && b2 != 32) {
                    this.f2036c++;
                }
            }
            this.f2038e = this.f2037d;
            this.f2037d = b2;
        }
        return 1;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: e */
    public final void mo1049e() {
        this.f2035b = 0;
        this.f2036c = 0;
        this.f2037d = (byte) 32;
        this.f2038e = (byte) 32;
    }
}
