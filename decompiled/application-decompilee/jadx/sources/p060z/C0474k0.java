package p060z;

import java.io.OutputStream;
import p004b.C0015d;
import p020g0.AbstractC0126e;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p033m0.C0181d;
import p035n0.AbstractC0194a;
import p037o0.C0208f;
import p047s0.C0358b;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p055w0.C0415f;

/* JADX INFO: renamed from: z.k0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0474k0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final C0129h f2303e;

    /* JADX INFO: renamed from: f */
    public final String f2304f;

    /* JADX INFO: renamed from: g */
    public final boolean f2305g;

    public C0474k0(String str, C0129h c0129h, boolean z2) {
        this.f2303e = c0129h;
        this.f2304f = str;
        this.f2305g = z2;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0079  */
    /* JADX WARN: Code duplicated, block: B:38:0x008b  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:44:0x00af  */
    /* JADX WARN: Code duplicated, block: B:47:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:50:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:53:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:60:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:68:0x0106 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x0108  */
    /* JADX WARN: Code duplicated, block: B:71:0x010f  */
    /* JADX WARN: Code duplicated, block: B:73:0x011a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x011c  */
    /* JADX WARN: Code duplicated, block: B:76:0x0122 A[RETURN] */
    /* JADX WARN: Instruction removed from duplicated block: B:38:0x008b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:44:0x00af, please report this as an issue */
    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        boolean zMo426q;
        String message;
        AbstractC0194a abstractC0194aM589c;
        String strM78i;
        String str;
        C0129h c0129h = this.f2303e;
        AbstractC0127f abstractC0127fM463u = AbstractC0127f.m463u(c0129h);
        boolean z2 = this.f2305g;
        String str2 = this.f2304f;
        boolean z3 = true;
        boolean z4 = false;
        try {
            if (z2) {
                zMo426q = abstractC0127fM463u.mo416b(str2) != null;
                if (!zMo426q) {
                    try {
                        if (C0015d.m49K(AbstractC0126e.m452c(abstractC0127fM463u.f1004a), 32)) {
                            OutputStream outputStreamMo431x = AbstractC0127f.m463u(new C0129h(str2, c0129h)).mo431x(0L);
                            C0181d.m563d(outputStreamMo431x);
                            zMo426q = outputStreamMo431x != null;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        message = e.getMessage();
                    }
                }
                if (!zMo426q && c0129h.m483j() && C0358b.m1038i(c0129h.m491r())) {
                    abstractC0194aM589c = AbstractC0194a.m589c(C0358b.f1991m);
                    if (!abstractC0194aM589c.m595f()) {
                        abstractC0194aM589c = AbstractC0194a.m589c(0);
                    }
                    strM78i = C0015d.m78i(c0129h.m491r(), str2);
                    if (z2) {
                        if (abstractC0194aM589c.m592b("touch '" + strM78i.replace("'", "'\\''") + "'")) {
                            abstractC0194aM589c.m599k(false);
                            if (abstractC0194aM589c.f1190h != 0) {
                                z3 = false;
                            }
                            z4 = z3;
                        }
                    } else {
                        if (abstractC0194aM589c.m592b("mkdir -p -m 755 '" + strM78i.replace("'", "'\\''") + "'")) {
                            abstractC0194aM589c.m599k(false);
                            if (abstractC0194aM589c.f1190h != 0) {
                                z3 = false;
                            }
                            z4 = z3;
                        }
                    }
                    if (z4) {
                        if (!C0358b.m1035f(33554432) && C0208f.m614a(c0129h)) {
                            C0015d.m69d0(abstractC0194aM589c, c0129h, str2);
                        } else if (C0415f.m1137e(c0129h.f1015c)) {
                            C0015d.m67c0(abstractC0194aM589c, c0129h, str2);
                        }
                    } else if (abstractC0194aM589c.mo593d() != 0 && (str = abstractC0194aM589c.f1185c) != null) {
                        message = str;
                    }
                    abstractC0194aM589c.close();
                    zMo426q = z4;
                }
                if (zMo426q) {
                    return z2 ? new C0503z(-1) : new C0483p(new C0129h(str2, c0129h));
                }
                if (message != null) {
                    return new C0499x(message);
                }
                return null;
            }
            try {
                zMo426q = abstractC0127fM463u.mo427s(str2);
            } catch (UnsupportedOperationException unused) {
                zMo426q = abstractC0127fM463u.mo426q(str2);
            }
            message = !zMo426q ? abstractC0127fM463u.mo466h() : null;
        } catch (Exception e3) {
            e = e3;
            zMo426q = false;
        }
        if (!zMo426q) {
            abstractC0194aM589c = AbstractC0194a.m589c(C0358b.f1991m);
            if (!abstractC0194aM589c.m595f()) {
                abstractC0194aM589c = AbstractC0194a.m589c(0);
            }
            strM78i = C0015d.m78i(c0129h.m491r(), str2);
            if (z2) {
                if (abstractC0194aM589c.m592b("touch '" + strM78i.replace("'", "'\\''") + "'")) {
                    abstractC0194aM589c.m599k(false);
                    if (abstractC0194aM589c.f1190h != 0) {
                        z3 = false;
                    }
                    z4 = z3;
                }
            } else {
                if (abstractC0194aM589c.m592b("mkdir -p -m 755 '" + strM78i.replace("'", "'\\''") + "'")) {
                    abstractC0194aM589c.m599k(false);
                    if (abstractC0194aM589c.f1190h != 0) {
                        z3 = false;
                    }
                    z4 = z3;
                }
            }
            if (z4) {
                if (!C0358b.m1035f(33554432)) {
                    if (C0415f.m1137e(c0129h.f1015c)) {
                        C0015d.m67c0(abstractC0194aM589c, c0129h, str2);
                    }
                } else if (C0415f.m1137e(c0129h.f1015c)) {
                    C0015d.m67c0(abstractC0194aM589c, c0129h, str2);
                }
            } else if (abstractC0194aM589c.mo593d() != 0) {
                message = str;
            }
            abstractC0194aM589c.close();
            zMo426q = z4;
        }
        if (zMo426q) {
            if (z2) {
            }
        }
        if (message != null) {
            return new C0499x(message);
        }
        return null;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 102;
    }
}
