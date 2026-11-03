package p048t;

import java.util.Arrays;
import p046s.C0355a;
import p052v.C0389d;
import p056x.C0418b;
import p056x.C0420d;

/* JADX INFO: renamed from: t.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0362d extends AbstractC0360b {

    /* JADX INFO: renamed from: f */
    public static final C0420d f2013f = new C0420d();

    /* JADX INFO: renamed from: c */
    public int f2015c;

    /* JADX INFO: renamed from: b */
    public final C0418b f2014b = new C0418b(f2013f);

    /* JADX INFO: renamed from: d */
    public final C0389d f2016d = new C0389d();

    /* JADX INFO: renamed from: e */
    public final byte[] f2017e = new byte[2];

    public C0362d() {
        mo1049e();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: a */
    public final String mo1045a() {
        return C0355a.f1946j;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: b */
    public final float mo1046b() {
        return this.f2016d.m1087a();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: c */
    public final int mo1047c() {
        return this.f2015c;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: d */
    public final int mo1048d(byte[] bArr, int i2) {
        byte[] bArr2;
        C0389d c0389d;
        int i3 = i2 + 0;
        int i4 = 0;
        while (true) {
            bArr2 = this.f2017e;
            c0389d = this.f2016d;
            if (i4 >= i3) {
                break;
            }
            byte b2 = bArr[i4];
            C0418b c0418b = this.f2014b;
            int iM1150a = c0418b.m1150a(b2);
            if (iM1150a == 1) {
                this.f2015c = 3;
                break;
            }
            if (iM1150a == 2) {
                this.f2015c = 2;
                break;
            }
            if (iM1150a == 0) {
                int i5 = c0418b.f2165c;
                if (i4 == 0) {
                    bArr2[1] = bArr[0];
                    c0389d.m1088c(bArr2, 0, i5);
                } else {
                    c0389d.m1088c(bArr, i4 - 1, i5);
                }
            }
            i4++;
        }
        bArr2[0] = bArr[i3 - 1];
        if (this.f2015c == 1) {
            if ((c0389d.f2096b > 1024) && mo1046b() > 0.95f) {
                this.f2015c = 2;
            }
        }
        return this.f2015c;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: e */
    public final void mo1049e() {
        this.f2014b.f2164b = 0;
        this.f2015c = 1;
        this.f2016d.m1089d();
        Arrays.fill(this.f2017e, (byte) 0);
    }
}
