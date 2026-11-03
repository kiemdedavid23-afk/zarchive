package p060z;

import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;

/* JADX INFO: renamed from: z.d0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0459d0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final int f2279e;

    /* JADX INFO: renamed from: f */
    public final C0129h f2280f;

    public C0459d0(C0129h c0129h, int i2) {
        this.f2279e = i2;
        this.f2280f = c0129h;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        AbstractC0126e.a aVarM453d = AbstractC0126e.m453d(this.f2280f);
        if (aVarM453d != null) {
            return new C0477m(this.f2279e, aVarM453d);
        }
        return null;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: i */
    public final int mo1099i() {
        return this.f2279e;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 4;
    }
}
