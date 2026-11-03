package p060z;

import p020g0.C0129h;
import p039p0.C0223a;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import ru.zdevs.zarchiver.C0306c;

/* JADX INFO: renamed from: z.o0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0482o0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final C0129h f2334e;

    /* JADX INFO: renamed from: f */
    public final C0306c f2335f;

    public C0482o0(C0306c c0306c, C0129h c0129h) {
        this.f2335f = c0306c;
        this.f2334e = c0129h;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() throws Throwable {
        String message;
        int iM630l;
        C0129h c0129h = this.f2334e;
        try {
            iM630l = C0223a.m630l(this.f2335f, c0129h);
            message = null;
        } catch (C0223a.a e2) {
            message = e2.getMessage();
            iM630l = 0;
        }
        return new C0450a0(iM630l, message, c0129h);
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 110;
    }
}
