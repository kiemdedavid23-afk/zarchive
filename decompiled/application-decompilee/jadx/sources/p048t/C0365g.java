package p048t;

import java.util.Arrays;
import p046s.C0355a;
import p052v.C0391f;
import p056x.C0418b;
import p056x.C0422f;

/* JADX INFO: renamed from: t.g */
/* JADX INFO: loaded from: classes.dex */
public final class C0365g extends AbstractC0360b {

    /* JADX INFO: renamed from: f */
    public static final C0422f f2030f = new C0422f();

    /* JADX INFO: renamed from: c */
    public int f2032c;

    /* JADX INFO: renamed from: b */
    public final C0418b f2031b = new C0418b(f2030f);

    /* JADX INFO: renamed from: d */
    public final C0391f f2033d = new C0391f();

    /* JADX INFO: renamed from: e */
    public final byte[] f2034e = new byte[2];

    public C0365g() {
        mo1049e();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: a */
    public final String mo1045a() {
        return C0355a.f1944h;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: b */
    public final float mo1046b() {
        return this.f2033d.m1087a();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: c */
    public final int mo1047c() {
        return this.f2032c;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: d */
    public final int mo1048d(byte[] bArr, int i2) {
        byte[] bArr2;
        C0391f c0391f;
        int i3 = i2 + 0;
        int i4 = 0;
        while (true) {
            bArr2 = this.f2034e;
            c0391f = this.f2033d;
            if (i4 >= i3) {
                break;
            }
            byte b2 = bArr[i4];
            C0418b c0418b = this.f2031b;
            int iM1150a = c0418b.m1150a(b2);
            if (iM1150a == 1) {
                this.f2032c = 3;
                break;
            }
            if (iM1150a == 2) {
                this.f2032c = 2;
                break;
            }
            if (iM1150a == 0) {
                int i5 = c0418b.f2165c;
                if (i4 == 0) {
                    bArr2[1] = bArr[0];
                    c0391f.m1088c(bArr2, 0, i5);
                } else {
                    c0391f.m1088c(bArr, i4 - 1, i5);
                }
            }
            i4++;
        }
        bArr2[0] = bArr[i3 - 1];
        if (this.f2032c == 1) {
            if ((c0391f.f2096b > 1024) && mo1046b() > 0.95f) {
                this.f2032c = 2;
            }
        }
        return this.f2032c;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: e */
    public final void mo1049e() {
        this.f2031b.f2164b = 0;
        this.f2032c = 1;
        this.f2033d.m1089d();
        Arrays.fill(this.f2034e, (byte) 0);
    }
}
