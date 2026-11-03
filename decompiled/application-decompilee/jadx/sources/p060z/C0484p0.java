package p060z;

import p035n0.AbstractC0194a;
import p037o0.C0207e;
import p047s0.C0358b;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p055w0.C0410a;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: z.p0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0484p0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final String f2337e;

    /* JADX INFO: renamed from: f */
    public final boolean f2338f;

    public C0484p0(String str, boolean z2) {
        this.f2337e = str;
        this.f2338f = z2;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        AbstractC0194a abstractC0194aM589c = AbstractC0194a.m589c(C0358b.f1991m);
        if (!abstractC0194aM589c.m595f()) {
            return new C0499x(R.string.OPT_ROOT_NOT_FOUND);
        }
        String str = this.f2337e;
        C0410a.a aVarM1103b = C0410a.m1103b(str, true);
        if (aVarM1103b != null) {
            str = aVarM1103b.f2144b;
        }
        boolean z2 = this.f2338f;
        int iM613a = C0207e.m613a(abstractC0194aM589c, str, aVarM1103b, z2);
        if (iM613a == 0 && aVarM1103b != null && C0410a.m1105d(abstractC0194aM589c) && (aVarM1103b = C0410a.m1103b(str, true)) != null) {
            String str2 = aVarM1103b.f2146d;
            if ((str2 != null && str2.contains("rw")) != z2) {
                iM613a = -1;
            }
        }
        int i2 = iM613a;
        abstractC0194aM589c.close();
        return new C0487r(this.f2337e, aVarM1103b == null ? null : aVarM1103b.f2143a, this.f2338f, i2, abstractC0194aM589c.f1185c);
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 100;
    }
}
