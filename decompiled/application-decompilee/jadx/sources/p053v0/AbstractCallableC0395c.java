package p053v0;

import android.content.Context;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p051u0.InterfaceC0381d;

/* JADX INFO: renamed from: v0.c */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractCallableC0395c implements Callable<C0393a.b>, InterfaceC0381d {

    /* JADX INFO: renamed from: d */
    public static final ThreadPoolExecutor f2111d = new ThreadPoolExecutor(0, 5, 3, TimeUnit.SECONDS, new SynchronousQueue());

    /* JADX INFO: renamed from: a */
    public C0393a f2112a;

    /* JADX INFO: renamed from: b */
    public C0394b f2113b;

    /* JADX INFO: renamed from: c */
    public final AtomicBoolean f2114c = new AtomicBoolean();

    /* JADX INFO: renamed from: h */
    public static void m1097h(Runnable runnable) {
        try {
            f2111d.execute(runnable);
        } catch (RejectedExecutionException unused) {
            runnable.run();
        }
    }

    @Override // java.util.concurrent.Callable
    public final C0393a.b call() {
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        try {
            threadCurrentThread.setName("ZAsyncTask[" + mo344j() + "]");
            C0393a.b bVarMo343f = mo343f();
            threadCurrentThread.setName(name);
            C0393a c0393a = this.f2112a;
            if (c0393a != null) {
                c0393a.m1096g(this);
            }
            return bVarMo343f;
        } catch (Throwable th) {
            threadCurrentThread.setName(name);
            C0393a c0393a2 = this.f2112a;
            if (c0393a2 != null) {
                synchronized (c0393a2.f2107d) {
                    c0393a2.f2107d.remove(this);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: e */
    public void mo369e() {
        this.f2114c.set(true);
        C0394b c0394b = this.f2113b;
        if (c0394b != null) {
            c0394b.cancel(true);
        }
        C0393a c0393a = this.f2112a;
        if (c0393a != null) {
            synchronized (c0393a.f2107d) {
                c0393a.f2107d.remove(this);
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public abstract C0393a.b mo343f();

    /* JADX INFO: renamed from: g */
    public final void m1098g(Context context, C0393a c0393a) {
        try {
            this.f2112a = c0393a;
            this.f2113b = new C0394b(this, this);
            mo1101l(context);
            f2111d.execute(this.f2113b);
            C0393a c0393a2 = this.f2112a;
            if (c0393a2 != null) {
                c0393a2.m1094e(this);
            }
        } catch (RejectedExecutionException unused) {
            mo1100k();
        } catch (Exception unused2) {
        }
    }

    /* JADX INFO: renamed from: i */
    public int mo1099i() {
        return -1;
    }

    @Override // p051u0.InterfaceC0381d
    public final boolean isCancelled() {
        return this.f2114c.get();
    }

    /* JADX INFO: renamed from: j */
    public int mo344j() {
        return -1;
    }

    /* JADX INFO: renamed from: k */
    public void mo1100k() {
    }

    /* JADX INFO: renamed from: l */
    public void mo1101l(Context context) {
    }
}
