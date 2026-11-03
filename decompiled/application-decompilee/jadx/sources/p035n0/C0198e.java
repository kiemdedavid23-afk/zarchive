package p035n0;

import android.os.RemoteException;
import p026j.InterfaceC0157c;
import p058y.C0433a;
import p058y.C0435c;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: n0.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0198e extends AbstractC0194a {

    /* JADX INFO: renamed from: k */
    public static byte f1202k;

    /* JADX INFO: renamed from: l */
    public static a f1203l;

    /* JADX INFO: renamed from: n0.e$a */
    public class a implements C0433a.g {
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0016  */
    public C0198e() {
        byte b2;
        try {
            byte b3 = 0;
            if (C0433a.f2208c) {
                b2 = 0;
            } else {
                try {
                    InterfaceC0157c interfaceC0157c = C0433a.f2207b;
                    if (interfaceC0157c == null) {
                        throw new IllegalStateException("binder haven't been received");
                    }
                    boolean zMo526e = interfaceC0157c.mo526e();
                    C0433a.f2208c = zMo526e;
                    if (zMo526e) {
                        b2 = 0;
                    } else {
                        b2 = -1;
                    }
                } catch (RemoteException e2) {
                    throw new RuntimeException(e2);
                }
            }
            if (b2 != 0) {
                if (ZArchiver.m730z() != null) {
                    if (f1203l == null) {
                        f1203l = new a();
                    }
                    try {
                        InterfaceC0157c interfaceC0157c2 = C0433a.f2207b;
                        if (interfaceC0157c2 == null) {
                            throw new IllegalStateException("binder haven't been received");
                        }
                        interfaceC0157c2.mo525d();
                        C0433a.m1153a(f1203l);
                        try {
                            synchronized (f1203l) {
                                try {
                                    f1203l.wait(600000L);
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        } catch (Exception unused) {
                        }
                    } catch (RemoteException e3) {
                        throw new RuntimeException(e3);
                    }
                }
                if (!C0433a.f2208c) {
                    try {
                        InterfaceC0157c interfaceC0157c3 = C0433a.f2207b;
                        if (interfaceC0157c3 == null) {
                            throw new IllegalStateException("binder haven't been received");
                        }
                        boolean zMo526e2 = interfaceC0157c3.mo526e();
                        C0433a.f2208c = zMo526e2;
                        b3 = zMo526e2 ? (byte) 0 : (byte) -1;
                    } catch (RemoteException e4) {
                        throw new RuntimeException(e4);
                    }
                }
                if (b3 != 0) {
                    this.f1192j = 1;
                    return;
                }
            }
            try {
                String[] strArr = {"sh"};
                try {
                    InterfaceC0157c interfaceC0157c4 = C0433a.f2207b;
                    if (interfaceC0157c4 == null) {
                        throw new IllegalStateException("binder haven't been received");
                    }
                    m594e(new C0435c(interfaceC0157c4.mo527h(strArr)));
                } catch (RemoteException e5) {
                    throw new RuntimeException(e5);
                }
            } catch (Exception unused2) {
            }
        } catch (Exception unused3) {
            this.f1192j = 2;
        }
    }

    @Override // p035n0.AbstractC0194a
    /* JADX INFO: renamed from: d */
    public final int mo593d() {
        return ZApp.f1379g ? 3 : 2;
    }
}
