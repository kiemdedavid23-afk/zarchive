package p039p0;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import java.io.InvalidObjectException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import p004b.C0015d;
import p008c0.C0046d;
import p008c0.InterfaceC0049g;
import p011d0.C0070h;
import p020g0.C0129h;
import p047s0.C0358b;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: p0.g */
/* JADX INFO: loaded from: classes.dex */
public final class C0229g {

    /* JADX INFO: renamed from: a */
    public e f1289a;

    /* JADX INFO: renamed from: b */
    public int f1290b = 10;

    /* JADX INFO: renamed from: c */
    public byte f1291c = 0;

    /* JADX INFO: renamed from: d */
    public final C0231i f1292d;

    /* JADX INFO: renamed from: e */
    public final int f1293e;

    /* JADX INFO: renamed from: f */
    public a f1294f;

    /* JADX INFO: renamed from: g */
    public final boolean f1295g;

    /* JADX INFO: renamed from: p0.g$a */
    public class a extends Thread {

        /* JADX INFO: renamed from: b */
        public final int f1297b;

        /* JADX INFO: renamed from: a */
        public final LinkedList<b> f1296a = new LinkedList<>();

        /* JADX INFO: renamed from: c */
        public int f1298c = 0;

        /* JADX INFO: renamed from: d */
        public byte[] f1299d = null;

        public a(int i2) {
            this.f1297b = i2;
        }

        /* JADX INFO: renamed from: a */
        public final void m659a(ArrayList<b> arrayList) {
            synchronized (this.f1296a) {
                if (C0015d.m49K(this.f1298c, 1)) {
                    m661c();
                }
                this.f1298c |= 1;
                this.f1296a.addAll(arrayList);
                if (C0229g.this.f1291c == 3) {
                    Collections.sort(this.f1296a);
                }
                this.f1296a.notifyAll();
            }
        }

        /* JADX INFO: renamed from: b */
        public final void m660b(b bVar) {
            C0229g c0229g;
            synchronized (this.f1296a) {
                if (C0015d.m49K(this.f1298c, 1)) {
                    m661c();
                }
                this.f1296a.add(bVar);
                while (true) {
                    int size = this.f1296a.size();
                    c0229g = C0229g.this;
                    if (size <= c0229g.f1290b) {
                        break;
                    } else {
                        this.f1296a.remove(0);
                    }
                }
                if (c0229g.f1291c == 3) {
                    Collections.sort(this.f1296a);
                }
                this.f1296a.notifyAll();
            }
        }

        /* JADX INFO: renamed from: c */
        public final void m661c() {
            synchronized (this.f1296a) {
                this.f1298c &= -2;
                if (C0229g.this.f1291c == 3) {
                    Iterator<b> it = this.f1296a.iterator();
                    while (it.hasNext()) {
                        if (it.next().f1305e == null) {
                            it.remove();
                        }
                    }
                } else {
                    this.f1296a.clear();
                }
            }
        }

        /* JADX INFO: renamed from: d */
        public final void m662d() {
            synchronized (this.f1296a) {
                this.f1298c &= -2;
                this.f1296a.clear();
                this.f1296a.notifyAll();
            }
        }

        /* JADX WARN: Code duplicated, block: B:32:0x006e  */
        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            int size;
            b bVarRemove;
            String[] strArr;
            do {
                try {
                    int i2 = 1;
                    if (this.f1296a.size() == 0) {
                        this.f1299d = null;
                        if (C0015d.m49K(this.f1298c, 1)) {
                            this.f1298c &= -2;
                        }
                        C0229g c0229g = C0229g.this;
                        if (c0229g.f1289a != null) {
                            try {
                                Handler handlerM723f = ZApp.m723f();
                                handlerM723f.removeCallbacks(c0229g.f1289a);
                                e eVar = c0229g.f1289a;
                                eVar.f1309b = 0;
                                handlerM723f.postDelayed(eVar, 300L);
                            } catch (InvalidObjectException unused) {
                            }
                        }
                        synchronized (this.f1296a) {
                            this.f1296a.wait();
                            if (isInterrupted()) {
                                return;
                            }
                            boolean z2 = e instanceof InterruptedException;
                            return;
                        }
                    }
                    if (this.f1296a.size() != 0) {
                        boolean zM49K = C0015d.m49K(this.f1298c, 1);
                        synchronized (this.f1296a) {
                            if (zM49K) {
                                size = 0;
                            } else {
                                try {
                                    if (C0229g.this.f1291c == 0) {
                                        size = this.f1296a.size() - 1;
                                    } else {
                                        size = 0;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            bVarRemove = this.f1296a.remove(size);
                        }
                        if (!zM49K || bVarRemove.f1305e != null) {
                            i2 = 5;
                        }
                        if (i2 != getPriority()) {
                            setPriority(i2);
                        }
                        if (!zM49K) {
                            C0229g c0229g2 = C0229g.this;
                            int size2 = ((c0229g2.f1290b - this.f1296a.size()) * 100) / C0229g.this.f1290b;
                            if (c0229g2.f1289a != null) {
                                try {
                                    Handler handlerM723f2 = ZApp.m723f();
                                    handlerM723f2.removeCallbacks(c0229g2.f1289a);
                                    e eVar2 = c0229g2.f1289a;
                                    eVar2.f1309b = size2;
                                    handlerM723f2.postDelayed(eVar2, 300L);
                                } catch (InvalidObjectException unused2) {
                                }
                            }
                        }
                        C0229g c0229g3 = C0229g.this;
                        if (c0229g3.f1294f == null) {
                            return;
                        }
                        C0227e.a aVarM665b = c0229g3.f1292d.m665b(Integer.valueOf(bVarRemove.f1304d));
                        if (aVarM665b == null) {
                            if (this.f1299d == null) {
                                this.f1299d = new byte[32768];
                            }
                            C0129h c0129h = bVarRemove.f1302b;
                            C0046d c0046d = bVarRemove.f1301a;
                            C0129h c0129h2 = new C0129h(c0046d.f352a, c0129h, c0046d.f353b);
                            C0046d c0046d2 = bVarRemove.f1301a;
                            aVarM665b = C0227e.m645f(c0129h2, c0046d2.f355d, c0046d2.m183d(), bVarRemove.f1303c, this.f1297b, this.f1299d);
                            if (aVarM665b != null && (strArr = aVarM665b.f1277c) != null) {
                                bVarRemove.f1301a.f359h = strArr[0];
                            }
                            C0229g.this.f1292d.m666c(Integer.valueOf(bVarRemove.f1304d), aVarM665b != null ? aVarM665b : new C0227e.a(null, null, null));
                        }
                        if (aVarM665b != null) {
                            try {
                                if (bVarRemove.f1305e != null && aVarM665b.f1275a != null) {
                                    ZApp.m723f().post(new d(bVarRemove, aVarM665b));
                                }
                            } catch (Exception unused3) {
                            }
                        }
                    }
                } catch (Exception e2) {
                    boolean z3 = e2 instanceof InterruptedException;
                    return;
                }
            } while (!isInterrupted());
        }
    }

    /* JADX INFO: renamed from: p0.g$b */
    public static class b implements Comparable<b> {

        /* JADX INFO: renamed from: a */
        public final C0046d f1301a;

        /* JADX INFO: renamed from: b */
        public final C0129h f1302b;

        /* JADX INFO: renamed from: c */
        public final int f1303c;

        /* JADX INFO: renamed from: d */
        public final int f1304d;

        /* JADX INFO: renamed from: e */
        public InterfaceC0049g f1305e;

        public b(C0046d c0046d, C0129h c0129h, int i2, InterfaceC0049g interfaceC0049g, int i3) {
            this.f1301a = c0046d;
            this.f1302b = c0129h;
            this.f1303c = i2;
            this.f1305e = interfaceC0049g;
            this.f1304d = i3;
        }

        @Override // java.lang.Comparable
        public final int compareTo(b bVar) {
            b bVar2 = bVar;
            String str = this.f1301a.f353b;
            int i2 = str == null ? Integer.MAX_VALUE : Integer.parseInt(str);
            String str2 = bVar2.f1301a.f353b;
            int i3 = str2 != null ? Integer.parseInt(str2) : Integer.MAX_VALUE;
            if (i2 == i3) {
                return 0;
            }
            return i2 < i3 ? -1 : 1;
        }
    }

    /* JADX INFO: renamed from: p0.g$c */
    public interface c {
        /* JADX INFO: renamed from: b */
        void mo663b(int i2);
    }

    /* JADX INFO: renamed from: p0.g$d */
    public static class d implements Runnable {

        /* JADX INFO: renamed from: a */
        public final b f1306a;

        /* JADX INFO: renamed from: b */
        public final C0227e.a f1307b;

        public d(b bVar, C0227e.a aVar) {
            this.f1306a = bVar;
            this.f1307b = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0227e.a aVar = this.f1307b;
            try {
                b bVar = this.f1306a;
                if (bVar.f1305e.mo179a(bVar.f1301a, aVar.f1275a, bVar.f1304d)) {
                    aVar.f1278d = 1;
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: p0.g$e */
    public static class e implements Runnable {

        /* JADX INFO: renamed from: a */
        public final WeakReference<c> f1308a;

        /* JADX INFO: renamed from: b */
        public int f1309b = 0;

        public e(c cVar) {
            this.f1308a = new WeakReference<>(cVar);
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                c cVar = this.f1308a.get();
                if (cVar != null) {
                    cVar.mo663b(this.f1309b);
                }
            } catch (Exception unused) {
            }
        }
    }

    public C0229g(Context context) {
        boolean z2 = false;
        Context contextM720c = ZApp.m720c(context);
        int memoryClass = (int) ((contextM720c != null ? (((long) ((ActivityManager) contextM720c.getSystemService("activity")).getMemoryClass()) * 1024) * 1024 : ((Runtime.getRuntime().maxMemory() / 1024) * 1024) / 3) / 8);
        this.f1292d = new C0231i(memoryClass);
        int i2 = C0358b.f1989k;
        int i3 = ((memoryClass / i2) / i2) / 4;
        this.f1293e = i3;
        if (Runtime.getRuntime().availableProcessors() >= 2 && i3 > 300) {
            z2 = true;
        }
        this.f1295g = z2;
    }

    /* JADX INFO: renamed from: a */
    public final Bitmap m654a(C0046d c0046d, C0129h c0129h, InterfaceC0049g interfaceC0049g, int i2, boolean z2, boolean z3) {
        try {
            C0227e.a aVarM665b = this.f1292d.m665b(Integer.valueOf(i2));
            if (c0046d.f357f == 28 && c0129h.m480g() && !C0070h.m253d().m257e(c0129h.f1015c)) {
                return null;
            }
            if (!z3 && aVarM665b == null) {
                m655b(i2, c0046d, interfaceC0049g, c0129h, z2);
            } else if (aVarM665b != null) {
                aVarM665b.f1278d = 1;
                String[] strArr = aVarM665b.f1277c;
                if (strArr != null) {
                    c0046d.f359h = strArr[0];
                }
                return aVarM665b.f1275a;
            }
            return null;
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0053  */
    /* JADX WARN: Code duplicated, block: B:37:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: b */
    public final void m655b(int i2, C0046d c0046d, InterfaceC0049g interfaceC0049g, C0129h c0129h, boolean z2) {
        boolean z3;
        a aVar = this.f1294f;
        if (aVar == null) {
            return;
        }
        if (aVar.getState() == Thread.State.NEW) {
            this.f1294f.start();
        }
        a aVar2 = this.f1294f;
        if (C0229g.this.f1291c == 3) {
            synchronized (aVar2.f1296a) {
                Iterator<b> it = aVar2.f1296a.iterator();
                while (true) {
                    if (it.hasNext()) {
                        b next = it.next();
                        if (next.f1304d == i2) {
                            next.f1305e = interfaceC0049g;
                            z3 = false;
                            break;
                        }
                    }
                }
            }
            if (z3) {
                this.f1294f.m660b(new b(c0046d, c0129h, (z2 ? 4 : 0) | 1, interfaceC0049g, i2));
            }
        }
        z3 = true;
        if (z3) {
            this.f1294f.m660b(new b(c0046d, c0129h, (z2 ? 4 : 0) | 1, interfaceC0049g, i2));
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m656c(int i2) {
        a aVar = this.f1294f;
        if (aVar != null) {
            aVar.m662d();
        }
        C0231i c0231i = this.f1292d;
        if (i2 == 0) {
            c0231i.m664a();
            return;
        }
        c0231i.f1311a.size();
        c0231i.m669f();
        int size = c0231i.f1311a.size();
        while (size > i2) {
            synchronized (c0231i) {
                Iterator<Integer> it = c0231i.f1311a.keySet().iterator();
                if (!it.hasNext()) {
                    return;
                }
                c0231i.m667d(it.next());
                size = c0231i.f1311a.size();
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m657d(c cVar, int i2) {
        if (i2 <= 0) {
            i2 = C0358b.f1989k;
        }
        if (this.f1294f == null) {
            a aVar = new a(i2);
            this.f1294f = aVar;
            aVar.setPriority(4);
            this.f1294f.setName("ImageLoader");
        }
        this.f1289a = cVar == null ? null : new e(cVar);
    }

    /* JADX INFO: renamed from: e */
    public final void m658e(int i2) {
        a aVar = this.f1294f;
        if (aVar != null) {
            aVar.interrupt();
            this.f1294f = null;
        }
        if (this.f1289a != null) {
            try {
                ZApp.m723f().removeCallbacks(this.f1289a);
            } catch (InvalidObjectException unused) {
            }
            this.f1289a = null;
        }
        if (i2 >= 0) {
            m656c(i2);
        }
    }
}
