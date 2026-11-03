package p060z;

import p004b.C0015d;
import p017f0.DialogInterfaceOnClickListenerC0114x;
import p020g0.C0129h;
import p035n0.AbstractC0194a;
import p047s0.C0358b;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: z.u0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0494u0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final C0129h[] f2372e;

    /* JADX INFO: renamed from: f */
    public final String[] f2373f;

    /* JADX INFO: renamed from: g */
    public final DialogInterfaceOnClickListenerC0114x.c f2374g;

    public C0494u0(C0129h[] c0129hArr, String[] strArr, DialogInterfaceOnClickListenerC0114x.c cVar) {
        this.f2372e = c0129hArr;
        this.f2373f = strArr;
        this.f2374g = cVar;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0079  */
    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        C0129h c0129h;
        boolean z2;
        AbstractC0194a abstractC0194aM589c = AbstractC0194a.m589c(C0358b.f1991m);
        if (!abstractC0194aM589c.m595f()) {
            return new C0499x(R.string.OPT_ROOT_NOT_FOUND);
        }
        boolean z3 = true;
        int i2 = 0;
        while (true) {
            String[] strArr = this.f2373f;
            if (i2 >= strArr.length) {
                break;
            }
            C0129h[] c0129hArr = this.f2372e;
            if (c0129hArr.length > 1) {
                c0129h = new C0129h(strArr[i2], c0129hArr[i2]);
            } else {
                c0129h = new C0129h(strArr[i2], c0129hArr[0]);
            }
            DialogInterfaceOnClickListenerC0114x.c cVar = this.f2374g;
            if (C0015d.m49K(cVar.f846a, 1)) {
                String strM491r = c0129h.m491r();
                if (abstractC0194aM589c.m592b("chmod " + cVar.f847b + " '" + strM491r.replace("'", "'\\''") + '\'')) {
                    abstractC0194aM589c.m599k(false);
                    if (abstractC0194aM589c.f1190h == 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                } else {
                    z2 = false;
                }
                if (!z2) {
                    z3 = false;
                }
            }
            if (C0015d.m49K(cVar.f846a, 2)) {
                if (!C0015d.m71e0(abstractC0194aM589c, c0129h.m491r(), "" + cVar.f848c, "" + cVar.f849d, false)) {
                    z3 = false;
                }
            }
            i2++;
        }
        abstractC0194aM589c.close();
        if (z3) {
            return null;
        }
        return new C0499x(R.string.MES_END_WITH_ERROR);
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 109;
    }
}
