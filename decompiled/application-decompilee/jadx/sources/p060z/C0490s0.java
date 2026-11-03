package p060z;

import p008c0.C0048f;
import p008c0.C0051i;
import p011d0.C0064b;
import p014e0.C0079a;
import p014e0.InterfaceC0082d;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p020g0.InterfaceC0123b;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import ru.zdevs.zarchiver.C0305b;
import ru.zdevs.zarchiver.archiver.C2JBridge;

/* JADX INFO: renamed from: z.s0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0490s0 extends AbstractCallableC0395c implements AbstractC0126e.c {

    /* JADX INFO: renamed from: e */
    public final C0305b f2358e;

    /* JADX INFO: renamed from: f */
    public C0051i f2359f = null;

    /* JADX INFO: renamed from: g */
    public final boolean f2360g;

    /* JADX INFO: renamed from: h */
    public final boolean f2361h;

    public C0490s0(C0305b c0305b, boolean z2, boolean z3) {
        this.f2358e = c0305b;
        this.f2361h = z3;
        this.f2360g = z2;
    }

    @Override // p020g0.AbstractC0126e.c
    /* JADX INFO: renamed from: b */
    public final void mo460b(int i2) {
    }

    @Override // p020g0.AbstractC0126e.c
    /* JADX INFO: renamed from: d */
    public final void mo461d(AbstractC0126e.b bVar, C0129h c0129h, String str, String str2) {
        this.f2359f.m200i(new C0048f(c0129h, str, str2, bVar.f995a ? (byte) -1 : (byte) 4, bVar.f997c, bVar.f996b));
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: e */
    public final void mo369e() {
        C0305b c0305b = this.f2358e;
        if (c0305b.m826g(4)) {
            String str = c0305b.f1594c.f1015c;
            InterfaceC0082d interfaceC0082d = C2JBridge.f1556e;
            if (interfaceC0082d != null && (str == null || interfaceC0082d.mo296m(str))) {
                if (C2JBridge.f1554c) {
                    C2JBridge.cSetStatus(0, 15);
                }
                C2JBridge.f1556e = null;
            }
        }
        super.mo369e();
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        C0051i c0051i;
        int i2;
        Thread threadCurrentThread = Thread.currentThread();
        int priority = threadCurrentThread.getPriority();
        threadCurrentThread.setPriority(10);
        C0305b c0305b = this.f2358e;
        boolean z2 = c0305b.f1609r.f334a > 0;
        C0051i c0051iMo436c = null;
        if (!this.f2360g) {
            if (!this.f2361h) {
                threadCurrentThread.setPriority(priority);
                return null;
            }
            synchronized (c0305b.f1592a) {
                this.f2359f = new C0051i(this.f2358e.f1609r);
            }
        } else if (c0305b.m826g(4)) {
            C0079a.m266m().m267a();
            try {
                C0064b.m240d(this.f2358e.f1594c);
            } catch (C0064b.b unused) {
            }
        } else {
            synchronized (this.f2358e.f1592a) {
                c0051i = new C0051i(this.f2358e.f1609r);
            }
            C0129h c0129h = this.f2358e.f1594c;
            for (InterfaceC0123b interfaceC0123b : AbstractC0126e.m451b()) {
                if (interfaceC0123b.mo443j(c0129h)) {
                    c0051iMo436c = interfaceC0123b.mo436c(c0051i);
                    break;
                }
                if (isCancelled()) {
                    break;
                }
            }
            this.f2359f = c0051iMo436c;
        }
        if (this.f2359f == null) {
            try {
                this.f2359f = new C0051i(0);
                C0305b c0305b2 = this.f2358e;
                C0129h c0129h2 = c0305b2.f1594c;
                String str = c0305b2.f1606o;
                int[] iArrM450a = AbstractC0126e.m450a(c0305b2.f1607p);
                String[] strArr = this.f2358e.f1607p;
                if (strArr == null) {
                    i2 = 0;
                    break;
                }
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
                AbstractC0126e.m457h(c0129h2, str, iArrM450a, i2, this, this);
            } catch (Exception unused2) {
            }
        }
        if (this.f2361h) {
            AbstractC0126e.m458i(this.f2358e.f1599h, this.f2359f);
        }
        synchronized (this.f2358e.f1592a) {
            this.f2358e.f1609r = this.f2359f;
        }
        threadCurrentThread.setPriority(priority);
        return new C0495v(this.f2358e, z2 && this.f2359f.f334a == 0);
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: i */
    public final int mo1099i() {
        return this.f2358e.f1593b;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 2;
    }
}
