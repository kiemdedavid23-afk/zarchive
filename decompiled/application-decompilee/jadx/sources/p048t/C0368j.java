package p048t;

import java.util.ArrayList;

/* JADX INFO: renamed from: t.j */
/* JADX INFO: loaded from: classes.dex */
public final class C0368j extends AbstractC0360b {

    /* JADX INFO: renamed from: b */
    public int f2046b;

    /* JADX INFO: renamed from: c */
    public final ArrayList f2047c;

    /* JADX INFO: renamed from: d */
    public AbstractC0360b f2048d;

    /* JADX INFO: renamed from: e */
    public int f2049e;

    public C0368j() {
        ArrayList arrayList = new ArrayList();
        this.f2047c = arrayList;
        arrayList.add(new C0365g());
        arrayList.add(new C0372n());
        arrayList.add(new C0359a());
        arrayList.add(new C0370l());
        arrayList.add(new C0361c());
        arrayList.add(new C0362d());
        arrayList.add(new C0363e());
        mo1049e();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: a */
    public final String mo1045a() {
        if (this.f2048d == null) {
            mo1046b();
            if (this.f2048d == null) {
                this.f2048d = (AbstractC0360b) this.f2047c.get(0);
            }
        }
        return this.f2048d.mo1045a();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: b */
    public final float mo1046b() {
        int i2 = this.f2046b;
        if (i2 == 2) {
            return 0.99f;
        }
        if (i2 == 3) {
            return 0.01f;
        }
        float f2 = 0.0f;
        for (AbstractC0360b abstractC0360b : this.f2047c) {
            if (abstractC0360b.f2006a) {
                float fMo1046b = abstractC0360b.mo1046b();
                if (f2 < fMo1046b) {
                    this.f2048d = abstractC0360b;
                    f2 = fMo1046b;
                }
            }
        }
        return f2;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: c */
    public final int mo1047c() {
        return this.f2046b;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: d */
    public final int mo1048d(byte[] bArr, int i2) {
        byte[] bArr2 = new byte[i2];
        int i3 = i2 + 0;
        int i4 = 0;
        boolean z2 = true;
        for (int i5 = 0; i5 < i3; i5++) {
            byte b2 = bArr[i5];
            if ((b2 & 128) != 0) {
                bArr2[i4] = b2;
                i4++;
                z2 = true;
            } else if (z2) {
                bArr2[i4] = b2;
                i4++;
                z2 = false;
            }
        }
        for (AbstractC0360b abstractC0360b : this.f2047c) {
            if (abstractC0360b.f2006a) {
                int iMo1048d = abstractC0360b.mo1048d(bArr2, i4);
                if (iMo1048d == 2 || 0.99f == abstractC0360b.mo1046b()) {
                    this.f2048d = abstractC0360b;
                    this.f2046b = 2;
                    break;
                }
                if (iMo1048d == 3) {
                    abstractC0360b.f2006a = false;
                    int i6 = this.f2049e - 1;
                    this.f2049e = i6;
                    if (i6 <= 0) {
                        this.f2046b = 3;
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return this.f2046b;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: e */
    public final void mo1049e() {
        this.f2049e = 0;
        for (AbstractC0360b abstractC0360b : this.f2047c) {
            abstractC0360b.mo1049e();
            abstractC0360b.f2006a = true;
            this.f2049e++;
        }
        this.f2048d = null;
        this.f2046b = 1;
    }
}
