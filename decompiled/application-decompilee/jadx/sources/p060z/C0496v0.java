package p060z;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p004b.C0015d;
import p020g0.C0129h;
import p029k0.C0166c;
import p047s0.C0357a;
import p047s0.C0358b;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p055w0.C0412c;
import ru.zdevs.zarchiver.C0305b;

/* JADX INFO: renamed from: z.v0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0496v0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public int f2377e;

    /* JADX INFO: renamed from: f */
    public final C0305b[] f2378f;

    public C0496v0(int i2, C0305b[] c0305bArr) {
        this.f2377e = i2;
        this.f2378f = c0305bArr;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        C0475l c0475l = null;
        if (C0015d.m49K(this.f2377e, 1)) {
            C0305b[] c0305bArr = this.f2378f;
            ArrayList arrayList = c0305bArr != null ? new ArrayList(1) : null;
            if (C0412c.m1122p(arrayList)) {
                this.f2377e |= 2;
            }
            if (C0166c.m549i()) {
                this.f2377e |= 2;
            }
            if (arrayList != null && arrayList.size() > 0) {
                for (int i2 = 0; i2 < c0305bArr.length; i2++) {
                    C0305b c0305b = c0305bArr[i2];
                    if (c0305b != null) {
                        String strM491r = c0305b.f1594c.m491r();
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            if (strM491r.startsWith(((C0412c.a) it.next()).f2153b)) {
                                C0497w c0497w = new C0497w(i2, true);
                                c0497w.f2380b = new C0129h(C0358b.f1980b[i2]);
                                C0393a c0393a = this.f2112a;
                                if (c0393a == null) {
                                    break;
                                }
                                c0393a.m1091b(c0497w, false);
                                break;
                            }
                        }
                    }
                }
            }
        } else if (C0015d.m49K(this.f2377e, 8) && C0166c.m549i()) {
            this.f2377e |= 2;
        }
        if (C0015d.m49K(this.f2377e, 2)) {
            ReentrantReadWriteLock reentrantReadWriteLock = C0357a.f1973b;
            try {
                reentrantReadWriteLock.writeLock().lock();
                C0357a.f1972a.clear();
                C0357a.m1020b();
                reentrantReadWriteLock.writeLock().unlock();
                c0475l = new C0475l(13);
            } catch (Throwable th) {
                reentrantReadWriteLock.writeLock().unlock();
                throw th;
            }
        }
        if (C0015d.m50L(this.f2377e, 6)) {
            C0357a.m1029k();
        }
        return c0475l;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 11;
    }
}
