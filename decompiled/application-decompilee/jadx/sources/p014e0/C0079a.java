package p014e0;

import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p008c0.C0046d;
import p011d0.C0070h;
import p020g0.AbstractC0126e;
import p051u0.C0385h;
import p051u0.InterfaceC0381d;
import ru.zdevs.zarchiver.archiver.NArc;
import ru.zdevs.zarchiver.archiver.content.ContentNative;

/* JADX INFO: renamed from: e0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0079a {

    /* JADX INFO: renamed from: e */
    public static C0079a f581e;

    /* JADX INFO: renamed from: a */
    public final ReentrantReadWriteLock f582a = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: b */
    public InterfaceC0082d f583b = null;

    /* JADX INFO: renamed from: c */
    public NArc f584c = null;

    /* JADX INFO: renamed from: d */
    public final Object f585d = new Object();

    /* JADX INFO: renamed from: j */
    public static InterfaceC0082d m265j(boolean z2) {
        C0079a c0079aM266m = m266m();
        ReentrantReadWriteLock reentrantReadWriteLock = c0079aM266m.f582a;
        try {
            reentrantReadWriteLock.writeLock().lock();
            InterfaceC0082d interfaceC0082d = c0079aM266m.f583b;
            if (interfaceC0082d != null && z2 == (interfaceC0082d instanceof ContentNative)) {
                interfaceC0082d.clear();
            } else if (z2) {
                c0079aM266m.f583b = new ContentNative();
            } else {
                c0079aM266m.f583b = new C0081c();
            }
            reentrantReadWriteLock.writeLock().unlock();
            c0079aM266m.m279o();
            return c0079aM266m.f583b;
        } catch (Throwable th) {
            reentrantReadWriteLock.writeLock().unlock();
            throw th;
        }
    }

    /* JADX INFO: renamed from: m */
    public static C0079a m266m() {
        if (f581e == null) {
            f581e = new C0079a();
        }
        return f581e;
    }

    /* JADX INFO: renamed from: a */
    public final void m267a() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f582a;
        try {
            reentrantReadWriteLock.writeLock().lock();
            InterfaceC0082d interfaceC0082d = this.f583b;
            if (interfaceC0082d != null) {
                interfaceC0082d.clear();
            }
            reentrantReadWriteLock.writeLock().unlock();
            m279o();
        } catch (Throwable th) {
            reentrantReadWriteLock.writeLock().unlock();
            throw th;
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m268b(String str) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f582a;
        try {
            reentrantReadWriteLock.writeLock().lock();
            InterfaceC0082d interfaceC0082d = this.f583b;
            if (interfaceC0082d != null && interfaceC0082d.mo296m(str) && this.f583b.mo289f() == 2) {
                this.f583b.clear();
            }
        } finally {
            reentrantReadWriteLock.writeLock().unlock();
        }
    }

    /* JADX INFO: renamed from: c */
    public final NArc m269c() {
        try {
            this.f582a.readLock().lock();
            if (this.f583b == null) {
                this.f582a.readLock().unlock();
                return null;
            }
            this.f582a.readLock().unlock();
            synchronized (this.f585d) {
                NArc nArc = this.f584c;
                if (nArc != null) {
                    return nArc;
                }
                try {
                    String strM277l = m277l();
                    if (strM277l == null) {
                        return null;
                    }
                    this.f584c = NArc.m806k(strM277l, m275i(), C0070h.m253d().m257e(strM277l) ? C0070h.m253d().m256c(false) : null);
                } catch (NArc.NArcException unused) {
                }
                return this.f584c;
            }
        } catch (Throwable th) {
            this.f582a.readLock().unlock();
            throw th;
        }
    }

    /* JADX INFO: renamed from: d */
    public final long m270d() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f582a;
        try {
            reentrantReadWriteLock.readLock().lock();
            InterfaceC0082d interfaceC0082d = this.f583b;
            return interfaceC0082d == null ? -1L : interfaceC0082d.mo288e();
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX INFO: renamed from: e */
    public final AbstractC0126e.b m271e(String str, InterfaceC0381d interfaceC0381d) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f582a;
        try {
            reentrantReadWriteLock.readLock().lock();
            InterfaceC0082d interfaceC0082d = this.f583b;
            return interfaceC0082d == null ? null : interfaceC0082d.mo293j(str, interfaceC0381d);
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m272f(String str, ArrayList<C0046d> arrayList) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f582a;
        try {
            reentrantReadWriteLock.readLock().lock();
            InterfaceC0082d interfaceC0082d = this.f583b;
            if (interfaceC0082d != null) {
                interfaceC0082d.mo300q(str, arrayList);
            }
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX INFO: renamed from: g */
    public final AbstractC0126e.b m273g(ArrayList arrayList, InterfaceC0381d interfaceC0381d) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f582a;
        try {
            reentrantReadWriteLock.readLock().lock();
            InterfaceC0082d interfaceC0082d = this.f583b;
            return interfaceC0082d == null ? null : interfaceC0082d.mo294k(arrayList, interfaceC0381d);
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX INFO: renamed from: h */
    public final int m274h() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f582a;
        try {
            reentrantReadWriteLock.readLock().lock();
            InterfaceC0082d interfaceC0082d = this.f583b;
            return interfaceC0082d == null ? 0 : interfaceC0082d.mo290g();
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX INFO: renamed from: i */
    public final String m275i() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f582a;
        try {
            reentrantReadWriteLock.readLock().lock();
            InterfaceC0082d interfaceC0082d = this.f583b;
            if (interfaceC0082d == null) {
                reentrantReadWriteLock.readLock().unlock();
                return null;
            }
            String strMo298o = interfaceC0082d.mo298o();
            reentrantReadWriteLock.readLock().unlock();
            if (strMo298o == null) {
                return strMo298o;
            }
            int iIndexOf = strMo298o.indexOf(47);
            String strM1085i = iIndexOf > 0 ? C0385h.m1085i(strMo298o.substring(0, iIndexOf - 1).trim()) : C0385h.m1085i(strMo298o);
            int iIndexOf2 = strM1085i.indexOf(32);
            if (iIndexOf2 <= 0) {
                return strM1085i;
            }
            if (strM1085i.startsWith("rar")) {
                return strM1085i.endsWith(" 5") ? "rar5" : "rar";
            }
            return strM1085i.substring(0, iIndexOf2 - 1).trim();
        } catch (Throwable th) {
            reentrantReadWriteLock.readLock().unlock();
            throw th;
        }
    }

    /* JADX INFO: renamed from: k */
    public final int m276k() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f582a;
        try {
            reentrantReadWriteLock.readLock().lock();
            InterfaceC0082d interfaceC0082d = this.f583b;
            return interfaceC0082d == null ? 0 : interfaceC0082d.mo289f();
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX INFO: renamed from: l */
    public final String m277l() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f582a;
        try {
            reentrantReadWriteLock.readLock().lock();
            InterfaceC0082d interfaceC0082d = this.f583b;
            return interfaceC0082d == null ? null : interfaceC0082d.mo295l();
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX INFO: renamed from: n */
    public final boolean m278n(String str) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f582a;
        try {
            reentrantReadWriteLock.readLock().lock();
            InterfaceC0082d interfaceC0082d = this.f583b;
            return interfaceC0082d != null && interfaceC0082d.mo296m(str);
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX INFO: renamed from: o */
    public final void m279o() {
        NArc nArc = this.f584c;
        if (nArc != null) {
            nArc.m808a();
            synchronized (this.f585d) {
                NArc nArc2 = this.f584c;
                if (nArc2 == null) {
                    return;
                }
                nArc2.m808a();
                this.f584c.close();
                this.f584c = null;
            }
        }
    }
}
