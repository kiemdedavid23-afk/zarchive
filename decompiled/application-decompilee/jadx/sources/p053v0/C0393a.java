package p053v0;

import android.content.Context;
import android.os.Handler;
import java.io.InvalidObjectException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import p021g1.C0138i;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: v0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0393a {

    /* JADX INFO: renamed from: a */
    public volatile boolean f2104a = true;

    /* JADX INFO: renamed from: b */
    public final ConcurrentLinkedQueue<b> f2105b = new ConcurrentLinkedQueue<>();

    /* JADX INFO: renamed from: c */
    public final C0138i<c> f2106c = new C0138i<>();

    /* JADX INFO: renamed from: d */
    public final ArrayList f2107d = new ArrayList(4);

    /* JADX INFO: renamed from: v0.a$a */
    public class a implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ c f2108a;

        /* JADX INFO: renamed from: b */
        public final /* synthetic */ b f2109b;

        public a(c cVar, b bVar) {
            this.f2108a = cVar;
            this.f2109b = bVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f2108a.mo341g(this.f2109b);
        }
    }

    /* JADX INFO: renamed from: v0.a$b */
    public interface b {
        /* JADX INFO: renamed from: a */
        int mo342a();
    }

    /* JADX INFO: renamed from: v0.a$c */
    public interface c {
        /* JADX INFO: renamed from: g */
        void mo341g(b bVar);
    }

    /* JADX INFO: renamed from: a */
    public final void m1090a(c cVar, Context context) {
        if (this.f2106c.add(cVar) && this.f2104a) {
            this.f2104a = false;
            while (!this.f2105b.isEmpty()) {
                m1092c(this.f2105b.poll(), context);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1091b(b bVar, boolean z2) {
        if (!this.f2104a) {
            m1092c(bVar, null);
            this.f2104a = this.f2106c.isEmpty();
        }
        if (!this.f2104a || z2) {
            return;
        }
        this.f2105b.offer(bVar);
    }

    /* JADX INFO: renamed from: c */
    public final void m1092c(b bVar, Context context) {
        Handler handler;
        if (bVar == null) {
            return;
        }
        try {
            handler = ZApp.m723f();
        } catch (InvalidObjectException unused) {
            if (context == null) {
                return;
            } else {
                handler = new Handler(context.getMainLooper());
            }
        }
        Iterator<c> it = this.f2106c.iterator();
        while (it.hasNext()) {
            handler.post(new a(it.next(), bVar));
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m1093d(c cVar) {
        this.f2106c.remove(cVar);
        this.f2104a = this.f2106c.isEmpty();
    }

    /* JADX INFO: renamed from: e */
    public final void m1094e(AbstractCallableC0395c abstractCallableC0395c) {
        if (abstractCallableC0395c.mo344j() != -1) {
            synchronized (this.f2107d) {
                this.f2107d.add(abstractCallableC0395c);
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m1095f(int i2, int i3, int i4) {
        synchronized (this.f2107d) {
            if (this.f2107d.size() == 0) {
                return;
            }
            for (AbstractCallableC0395c abstractCallableC0395c : (AbstractCallableC0395c[]) this.f2107d.toArray(new AbstractCallableC0395c[0])) {
                if (abstractCallableC0395c != null && (((i3 == 0 && abstractCallableC0395c.mo344j() == i2) || (i3 == 1 && abstractCallableC0395c.mo344j() < i2)) && (i4 == -1 || i4 == abstractCallableC0395c.mo1099i()))) {
                    abstractCallableC0395c.mo369e();
                }
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m1096g(AbstractCallableC0395c abstractCallableC0395c) {
        synchronized (this.f2107d) {
            this.f2107d.remove(abstractCallableC0395c);
        }
    }
}
