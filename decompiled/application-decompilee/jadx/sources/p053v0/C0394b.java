package p053v0;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.FutureTask;

/* JADX INFO: renamed from: v0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0394b extends FutureTask<C0393a.b> {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AbstractCallableC0395c f2110a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0394b(AbstractCallableC0395c abstractCallableC0395c, Callable callable) {
        super(callable);
        this.f2110a = abstractCallableC0395c;
    }

    @Override // java.util.concurrent.FutureTask
    public final void done() {
        try {
            AbstractCallableC0395c abstractCallableC0395c = this.f2110a;
            C0393a.b bVar = get();
            C0393a c0393a = abstractCallableC0395c.f2112a;
            if (c0393a == null || bVar == null) {
                return;
            }
            c0393a.m1091b(bVar, false);
        } catch (CancellationException | Exception unused) {
        }
    }
}
