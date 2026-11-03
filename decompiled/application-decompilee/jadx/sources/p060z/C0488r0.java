package p060z;

import p008c0.C0048f;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import ru.zdevs.zarchiver.C0305b;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: z.r0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0488r0 extends AbstractCallableC0395c implements AbstractC0126e.c {

    /* JADX INFO: renamed from: e */
    public final C0305b f2351e;

    /* JADX INFO: renamed from: f */
    public final String f2352f;

    /* JADX INFO: renamed from: g */
    public final String[] f2353g;

    /* JADX INFO: renamed from: h */
    public final C0493u f2354h;

    /* JADX INFO: renamed from: i */
    public int f2355i = 0;

    public C0488r0(C0305b c0305b, String str, String[] strArr) {
        this.f2351e = c0305b;
        this.f2352f = str;
        this.f2353g = strArr;
        this.f2354h = new C0493u(c0305b.f1593b);
    }

    @Override // p020g0.AbstractC0126e.c
    /* JADX INFO: renamed from: b */
    public final void mo460b(int i2) {
        C0493u c0493u = this.f2354h;
        c0493u.f2371b = i2;
        C0393a c0393a = this.f2112a;
        if (c0393a != null) {
            c0393a.m1091b(c0493u, true);
        }
    }

    @Override // p020g0.AbstractC0126e.c
    /* JADX INFO: renamed from: d */
    public final void mo461d(AbstractC0126e.b bVar, C0129h c0129h, String str, String str2) {
        C0305b c0305b = this.f2351e;
        if (c0305b.f1609r == null) {
            return;
        }
        C0491t c0491t = new C0491t(c0305b.f1593b, new C0048f(c0129h, str, str2, bVar.f995a ? (byte) -1 : (byte) 4, bVar.f997c, bVar.f996b));
        C0393a c0393a = this.f2112a;
        if (c0393a != null) {
            c0393a.m1091b(c0491t, false);
        }
        this.f2355i++;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        int i2;
        String[] strArr = this.f2353g;
        C0305b c0305b = this.f2351e;
        System.currentTimeMillis();
        try {
            C0129h c0129h = c0305b.f1594c;
            String str = this.f2352f;
            int[] iArrM450a = AbstractC0126e.m450a(strArr);
            if (strArr != null) {
                int length = strArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        i2 = 0;
                        break;
                    }
                    if ("[SF]".equals(strArr[i3])) {
                        i2 = 1;
                        break;
                    }
                    i3++;
                }
            } else {
                i2 = 0;
                break;
            }
            AbstractC0126e.m457h(c0129h, str, iArrM450a, i2, this, this);
        } catch (Exception unused) {
        }
        if (!isCancelled()) {
            if (this.f2355i <= 0) {
                c0305b.f1605n = R.string.MES_FILE_NOT_FOUND;
            } else {
                c0305b.f1605n = 0;
            }
        }
        C0493u c0493u = this.f2354h;
        c0493u.f2371b = 100;
        return c0493u;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: i */
    public final int mo1099i() {
        return this.f2351e.f1593b;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 13;
    }
}
