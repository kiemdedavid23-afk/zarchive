package p048t;

import java.util.Arrays;
import p046s.C0355a;
import p050u.C0377c;
import p052v.C0388c;
import p056x.C0418b;
import p056x.C0427k;

/* JADX INFO: renamed from: t.l */
/* JADX INFO: loaded from: classes.dex */
public final class C0370l extends AbstractC0360b {

    /* JADX INFO: renamed from: g */
    public static final C0427k f2054g = new C0427k();

    /* JADX INFO: renamed from: c */
    public int f2056c;

    /* JADX INFO: renamed from: b */
    public final C0418b f2055b = new C0418b(f2054g);

    /* JADX INFO: renamed from: d */
    public final C0377c f2057d = new C0377c();

    /* JADX INFO: renamed from: e */
    public final C0388c f2058e = new C0388c(1);

    /* JADX INFO: renamed from: f */
    public final byte[] f2059f = new byte[2];

    public C0370l() {
        mo1049e();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: a */
    public final String mo1045a() {
        return C0355a.f1948l;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: b */
    public final float mo1046b() {
        C0377c c0377c = this.f2057d;
        int i2 = c0377c.f2080b;
        return Math.max(i2 > 4 ? (i2 - c0377c.f2079a[0]) / i2 : -1.0f, this.f2058e.m1087a());
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: c */
    public final int mo1047c() {
        return this.f2056c;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: d */
    public final int mo1048d(byte[] bArr, int i2) {
        C0377c c0377c;
        byte[] bArr2;
        int i3 = i2 + 0;
        int i4 = 0;
        while (true) {
            c0377c = this.f2057d;
            bArr2 = this.f2059f;
            if (i4 >= i3) {
                break;
            }
            byte b2 = bArr[i4];
            C0418b c0418b = this.f2055b;
            int iM1150a = c0418b.m1150a(b2);
            if (iM1150a == 1) {
                this.f2056c = 3;
                break;
            }
            if (iM1150a == 2) {
                this.f2056c = 2;
                break;
            }
            if (iM1150a == 0) {
                int i5 = c0418b.f2165c;
                C0388c c0388c = this.f2058e;
                if (i4 == 0) {
                    bArr2[1] = bArr[0];
                    c0377c.m1051b(bArr2, 2 - i5, i5);
                    c0388c.m1088c(bArr2, 0, i5);
                } else {
                    c0377c.m1051b(bArr, (i4 + 1) - i5, i5);
                    c0388c.m1088c(bArr, i4 - 1, i5);
                }
            }
            i4++;
        }
        bArr2[0] = bArr[i3 - 1];
        if (this.f2056c == 1) {
            if ((c0377c.f2080b > 100) && mo1046b() > 0.95f) {
                this.f2056c = 2;
            }
        }
        return this.f2056c;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: e */
    public final void mo1049e() {
        this.f2055b.f2164b = 0;
        this.f2056c = 1;
        this.f2057d.m1052c();
        this.f2058e.m1089d();
        Arrays.fill(this.f2059f, (byte) 0);
    }
}
