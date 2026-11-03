package p060z;

import java.util.concurrent.atomic.AtomicBoolean;
import p004b.C0015d;
import p008c0.C0044b;
import p008c0.C0046d;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p020g0.InterfaceC0123b;
import p039p0.C0230h;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;

/* JADX INFO: renamed from: z.c0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0456c0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final C0129h f2266e;

    /* JADX INFO: renamed from: f */
    public final C0044b f2267f;

    /* JADX INFO: renamed from: g */
    public final int f2268g;

    /* JADX INFO: renamed from: h */
    public final AtomicBoolean f2269h = new AtomicBoolean(false);

    /* JADX INFO: renamed from: i */
    public final int f2270i;

    public C0456c0(C0129h c0129h, C0044b c0044b, int i2, int i3) {
        this.f2266e = c0129h;
        this.f2267f = c0044b;
        this.f2270i = i2;
        this.f2268g = i3;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: e */
    public final void mo369e() {
        this.f2269h.set(true);
        super.mo369e();
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        InterfaceC0123b interfaceC0123b;
        StringBuilder sb = new StringBuilder();
        C0129h c0129h = this.f2266e;
        sb.append(c0129h.f1015c);
        sb.append("/");
        String string = sb.toString();
        int i2 = this.f2270i;
        boolean zM49K = C0015d.m49K(i2, 256);
        boolean zM49K2 = C0015d.m49K(i2, 512);
        if (zM49K2) {
            InterfaceC0123b[] interfaceC0123bArrM451b = AbstractC0126e.m451b();
            int length = interfaceC0123bArrM451b.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    interfaceC0123b = null;
                    break;
                }
                interfaceC0123b = interfaceC0123bArrM451b[i3];
                if (interfaceC0123b.mo443j(c0129h)) {
                    break;
                }
                i3++;
            }
            if (interfaceC0123b == null || !C0015d.m49K(interfaceC0123b.mo439f(c0129h), 16)) {
                zM49K2 = false;
            }
        } else {
            interfaceC0123b = null;
        }
        for (C0046d c0046d : this.f2267f) {
            if (this.f2269h.get()) {
                break;
            }
            if (zM49K2 && c0046d.m185f() && !c0046d.m186g()) {
                if (!(c0046d.f359h != null)) {
                    int iMo434a = interfaceC0123b.mo434a(c0046d.f352a, c0129h);
                    if (iMo434a >= 0) {
                        c0046d.f359h = new C0230h(iMo434a);
                    }
                }
            }
            if (zM49K) {
                c0046d.m180a(string);
            }
        }
        return null;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: i */
    public final int mo1099i() {
        return this.f2268g;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 0;
    }
}
