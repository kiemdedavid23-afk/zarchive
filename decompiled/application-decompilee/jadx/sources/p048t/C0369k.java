package p048t;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import p054w.C0396a;
import p054w.C0397b;
import p054w.C0399d;
import p054w.C0400e;
import p054w.C0401f;
import p054w.C0402g;
import p054w.C0403h;
import p054w.C0404i;
import p054w.C0405j;
import p054w.C0407l;
import p054w.C0408m;
import p054w.C0409n;

/* JADX INFO: renamed from: t.k */
/* JADX INFO: loaded from: classes.dex */
public final class C0369k extends AbstractC0360b {

    /* JADX INFO: renamed from: b */
    public int f2050b;

    /* JADX INFO: renamed from: c */
    public final ArrayList f2051c;

    /* JADX INFO: renamed from: d */
    public AbstractC0360b f2052d;

    /* JADX INFO: renamed from: e */
    public int f2053e;

    public C0369k() {
        ArrayList arrayList = new ArrayList();
        this.f2051c = arrayList;
        arrayList.add(new C0371m(new C0408m()));
        arrayList.add(new C0371m(new C0401f()));
        arrayList.add(new C0371m(new C0403h()));
        arrayList.add(new C0371m(new C0405j()));
        arrayList.add(new C0371m(new C0400e()));
        arrayList.add(new C0371m(new C0399d()));
        arrayList.add(new C0371m(new C0404i()));
        arrayList.add(new C0371m(new C0409n()));
        arrayList.add(new C0371m(new C0402g()));
        arrayList.add(new C0371m(new C0407l()));
        arrayList.add(new C0371m(new C0397b()));
        C0396a c0396a = new C0396a();
        C0366h c0366h = new C0366h();
        C0371m c0371m = new C0371m(c0396a, false, c0366h);
        C0371m c0371m2 = new C0371m(c0396a, true, c0366h);
        c0366h.f2039f = c0371m;
        c0366h.f2040g = c0371m2;
        arrayList.add(c0366h);
        arrayList.add(c0371m);
        arrayList.add(c0371m2);
        mo1049e();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: a */
    public final String mo1045a() {
        if (this.f2052d == null) {
            mo1046b();
            if (this.f2052d == null) {
                this.f2052d = (AbstractC0360b) this.f2051c.get(0);
            }
        }
        return this.f2052d.mo1045a();
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: b */
    public final float mo1046b() {
        int i2 = this.f2050b;
        if (i2 == 2) {
            return 0.99f;
        }
        if (i2 == 3) {
            return 0.01f;
        }
        float f2 = 0.0f;
        for (AbstractC0360b abstractC0360b : this.f2051c) {
            if (abstractC0360b.f2006a) {
                float fMo1046b = abstractC0360b.mo1046b();
                if (f2 < fMo1046b) {
                    this.f2052d = abstractC0360b;
                    f2 = fMo1046b;
                }
            }
        }
        return f2;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: c */
    public final int mo1047c() {
        return this.f2050b;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: d */
    public final int mo1048d(byte[] bArr, int i2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i2);
        int i3 = i2 + 0;
        int i4 = 0;
        boolean z2 = false;
        int i5 = 0;
        while (true) {
            boolean z3 = true;
            if (i4 >= i3) {
                break;
            }
            byte b2 = bArr[i4];
            if ((b2 & 128) == 0) {
                int i6 = b2 & 255;
                if (i6 >= 65 && ((i6 <= 90 || i6 >= 97) && i6 <= 122)) {
                    z3 = false;
                }
                if (z3) {
                    if (!z2 || i4 <= i5) {
                        i5 = i4 + 1;
                    } else {
                        byteBufferAllocate.put(bArr, i5, i4 - i5);
                        byteBufferAllocate.put((byte) 32);
                        i5 = i4 + 1;
                        z2 = false;
                    }
                }
            } else {
                z2 = true;
            }
            i4++;
        }
        if (z2 && i4 > i5) {
            byteBufferAllocate.put(bArr, i5, i4 - i5);
        }
        if (byteBufferAllocate.position() != 0) {
            for (AbstractC0360b abstractC0360b : this.f2051c) {
                if (abstractC0360b.f2006a) {
                    int iMo1048d = abstractC0360b.mo1048d(byteBufferAllocate.array(), byteBufferAllocate.position());
                    if (iMo1048d == 2 || 0.99f == abstractC0360b.mo1046b()) {
                        this.f2052d = abstractC0360b;
                        this.f2050b = 2;
                        break;
                    }
                    if (iMo1048d == 3) {
                        abstractC0360b.f2006a = false;
                        int i7 = this.f2053e - 1;
                        this.f2053e = i7;
                        if (i7 <= 0) {
                            this.f2050b = 3;
                            break;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return this.f2050b;
    }

    @Override // p048t.AbstractC0360b
    /* JADX INFO: renamed from: e */
    public final void mo1049e() {
        this.f2053e = 0;
        for (AbstractC0360b abstractC0360b : this.f2051c) {
            abstractC0360b.mo1049e();
            abstractC0360b.f2006a = true;
            this.f2053e++;
        }
        this.f2052d = null;
        this.f2050b = 1;
    }
}
