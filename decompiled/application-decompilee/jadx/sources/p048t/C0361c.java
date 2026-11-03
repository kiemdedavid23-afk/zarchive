package p048t;

import java.util.Arrays;
import p046s.C0355a;
import p050u.C0375a;
import p052v.C0388c;
import p056x.C0418b;
import p056x.C0419c;

/* JADX INFO: renamed from: t.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0361c extends AbstractC0360b {

    /* JADX INFO: renamed from: g */
    public static final C0419c f2007g = new C0419c();

    /* JADX INFO: renamed from: c */
    public int f2009c;

    /* JADX INFO: renamed from: b */
    public final C0418b f2008b = new C0418b(f2007g);

    /* JADX INFO: renamed from: d */
    public final C0375a f2010d = new C0375a();

    /* JADX INFO: renamed from: e */
    public final C0388c f2011e = new C0388c(0);

    /* JADX INFO: renamed from: f */
    public final byte[] f2012f = new byte[2];

    public C0361c() {
        mo1049e();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: a */
    public final String mo1045a() {
        return C0355a.f1945i;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: b */
    public final float mo1046b() {
        C0375a c0375a = this.f2010d;
        int i2 = c0375a.f2080b;
        return Math.max(i2 > 4 ? (i2 - c0375a.f2079a[0]) / i2 : -1.0f, this.f2011e.m1087a());
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: c */
    public final int mo1047c() {
        return this.f2009c;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: d */
    public final int mo1048d(byte[] bArr, int i2) {
        C0375a c0375a;
        byte[] bArr2;
        int i3 = i2 + 0;
        int i4 = 0;
        while (true) {
            c0375a = this.f2010d;
            bArr2 = this.f2012f;
            if (i4 >= i3) {
                break;
            }
            byte b2 = bArr[i4];
            C0418b c0418b = this.f2008b;
            int iM1150a = c0418b.m1150a(b2);
            if (iM1150a == 1) {
                this.f2009c = 3;
                break;
            }
            if (iM1150a == 2) {
                this.f2009c = 2;
                break;
            }
            if (iM1150a == 0) {
                int i5 = c0418b.f2165c;
                C0388c c0388c = this.f2011e;
                if (i4 == 0) {
                    bArr2[1] = bArr[0];
                    c0375a.m1051b(bArr2, 0, i5);
                    c0388c.m1088c(bArr2, 0, i5);
                } else {
                    int i6 = i4 - 1;
                    c0375a.m1051b(bArr, i6, i5);
                    c0388c.m1088c(bArr, i6, i5);
                }
            }
            i4++;
        }
        bArr2[0] = bArr[i3 - 1];
        if (this.f2009c == 1) {
            if ((c0375a.f2080b > 100) && mo1046b() > 0.95f) {
                this.f2009c = 2;
            }
        }
        return this.f2009c;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: e */
    public final void mo1049e() {
        this.f2008b.f2164b = 0;
        this.f2009c = 1;
        this.f2010d.m1052c();
        this.f2011e.m1089d();
        Arrays.fill(this.f2012f, (byte) 0);
    }
}
