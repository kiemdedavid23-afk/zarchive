package p048t;

import p056x.C0418b;
import p056x.C0423g;
import p056x.C0424h;
import p056x.C0425i;

/* JADX INFO: renamed from: t.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0364f extends AbstractC0360b {

    /* JADX INFO: renamed from: f */
    public static final C0423g f2023f = new C0423g();

    /* JADX INFO: renamed from: g */
    public static final C0424h f2024g = new C0424h();

    /* JADX INFO: renamed from: h */
    public static final C0425i f2025h = new C0425i();

    /* JADX INFO: renamed from: b */
    public final C0418b[] f2026b = {new C0418b(f2023f), new C0418b(f2024g), new C0418b(f2025h)};

    /* JADX INFO: renamed from: c */
    public int f2027c;

    /* JADX INFO: renamed from: d */
    public int f2028d;

    /* JADX INFO: renamed from: e */
    public String f2029e;

    public C0364f() {
        mo1049e();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: a */
    public final String mo1045a() {
        return this.f2029e;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: b */
    public final float mo1046b() {
        return 0.99f;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: c */
    public final int mo1047c() {
        return this.f2028d;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: d */
    public final int mo1048d(byte[] bArr, int i2) {
        int i3 = i2 + 0;
        for (int i4 = 0; i4 < i3 && this.f2028d == 1; i4++) {
            for (int i5 = this.f2027c - 1; i5 >= 0; i5--) {
                C0418b[] c0418bArr = this.f2026b;
                int iM1150a = c0418bArr[i5].m1150a(bArr[i4]);
                if (iM1150a == 1) {
                    int i6 = this.f2027c - 1;
                    this.f2027c = i6;
                    if (i6 <= 0) {
                        this.f2028d = 3;
                        return 3;
                    }
                    if (i5 != i6) {
                        C0418b c0418b = c0418bArr[i6];
                        c0418bArr[i6] = c0418bArr[i5];
                        c0418bArr[i5] = c0418b;
                    }
                } else if (iM1150a == 2) {
                    this.f2028d = 2;
                    this.f2029e = c0418bArr[i5].f2163a.f2195e;
                    return 2;
                }
            }
        }
        return this.f2028d;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: e */
    public final void mo1049e() {
        this.f2028d = 1;
        C0418b[] c0418bArr = this.f2026b;
        for (C0418b c0418b : c0418bArr) {
            c0418b.f2164b = 0;
        }
        this.f2027c = c0418bArr.length;
        this.f2029e = null;
    }
}
