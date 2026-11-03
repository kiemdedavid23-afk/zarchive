package p048t;

import p046s.C0355a;
import p056x.C0418b;
import p056x.C0429m;

/* JADX INFO: renamed from: t.n */
/* JADX INFO: loaded from: classes.dex */
public final class C0372n extends AbstractC0360b {

    /* JADX INFO: renamed from: e */
    public static final C0429m f2069e = new C0429m();

    /* JADX INFO: renamed from: c */
    public int f2071c;

    /* JADX INFO: renamed from: d */
    public int f2072d = 0;

    /* JADX INFO: renamed from: b */
    public final C0418b f2070b = new C0418b(f2069e);

    public C0372n() {
        mo1049e();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: a */
    public final String mo1045a() {
        return C0355a.f1957u;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: b */
    public final float mo1046b() {
        float f2 = 0.99f;
        if (this.f2072d >= 6) {
            return 0.99f;
        }
        for (int i2 = 0; i2 < this.f2072d; i2++) {
            f2 *= 0.5f;
        }
        return 1.0f - f2;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: c */
    public final int mo1047c() {
        return this.f2071c;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: d */
    public final int mo1048d(byte[] bArr, int i2) {
        int i3 = i2 + 0;
        for (int i4 = 0; i4 < i3; i4++) {
            byte b2 = bArr[i4];
            C0418b c0418b = this.f2070b;
            int iM1150a = c0418b.m1150a(b2);
            if (iM1150a == 1) {
                this.f2071c = 3;
                break;
            }
            if (iM1150a == 2) {
                this.f2071c = 2;
                break;
            }
            if (iM1150a == 0 && c0418b.f2165c >= 2) {
                this.f2072d++;
            }
        }
        if (this.f2071c == 1 && mo1046b() > 0.95f) {
            this.f2071c = 2;
        }
        return this.f2071c;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: e */
    public final void mo1049e() {
        this.f2070b.f2164b = 0;
        this.f2072d = 0;
        this.f2071c = 1;
    }
}
