package p060z;

import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p020g0.InterfaceC0123b;
import p025i0.C0150c;
import p035n0.AbstractC0194a;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;

/* JADX INFO: renamed from: z.g0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0466g0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final int f2287e;

    /* JADX INFO: renamed from: f */
    public final C0129h f2288f;

    public C0466g0(C0129h c0129h, int i2) {
        this.f2287e = i2;
        this.f2288f = c0129h;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: e */
    public final void mo369e() {
        AbstractC0194a abstractC0194a;
        String str;
        if (this.f2288f.m485l()) {
            InterfaceC0123b[] interfaceC0123bArr = AbstractC0126e.f991a;
            InterfaceC0123b interfaceC0123b = interfaceC0123bArr[interfaceC0123bArr.length - 1];
            if ((interfaceC0123b instanceof C0150c) && (abstractC0194a = ((C0150c) interfaceC0123b).f1051b) != null && (str = abstractC0194a.f1184b) != null) {
                abstractC0194a.m601m(str);
            }
        }
        super.mo369e();
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        AbstractC0126e.b bVarM454e = AbstractC0126e.m454e(this.f2288f, this);
        int i2 = this.f2287e;
        return bVarM454e != null ? new C0481o(i2, bVarM454e.f997c) : new C0481o(i2, -1L);
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: i */
    public final int mo1099i() {
        return this.f2287e;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 3;
    }
}
