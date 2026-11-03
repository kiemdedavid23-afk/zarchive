package p060z;

import android.os.Build;
import java.io.File;
import p033m0.C0181d;
import p047s0.C0357a;
import p051u0.C0384g;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: z.i0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0470i0 extends AbstractCallableC0395c {
    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        ZApp zApp;
        Thread threadCurrentThread = Thread.currentThread();
        int priority = threadCurrentThread.getPriority();
        threadCurrentThread.setPriority(8);
        C0357a.m1021c();
        C0357a.m1029k();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 > 25 && (zApp = ZApp.f1375c) != null) {
            C0384g.m1076a(zApp, C0357a.m1022d(true));
        }
        if (C0181d.f1138a == null) {
            C0181d.m566g();
            if (i2 < 31) {
                try {
                    new File(C0181d.f1138a, ".nomedia").createNewFile();
                } catch (Exception unused) {
                }
            }
        }
        threadCurrentThread.setPriority(priority);
        return null;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 1001;
    }
}
