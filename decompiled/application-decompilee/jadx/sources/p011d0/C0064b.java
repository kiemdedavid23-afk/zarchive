package p011d0;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Build;
import android.os.PowerManager;
import android.system.Os;
import java.io.File;
import java.util.List;
import p004b.C0015d;
import p014e0.C0079a;
import p014e0.InterfaceC0082d;
import p017f0.AbstractC0099i;
import p017f0.DialogInterfaceOnCancelListenerC0101k;
import p020g0.C0129h;
import p035n0.AbstractC0194a;
import p047s0.C0358b;
import p055w0.C0415f;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.archiver.C2JBridge;

/* JADX INFO: renamed from: d0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0064b {

    /* JADX INFO: renamed from: a */
    public static a f455a;

    /* JADX INFO: renamed from: d0.b$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public String f456a;

        /* JADX INFO: renamed from: b */
        public int f457b;

        /* JADX INFO: renamed from: c */
        public long f458c;

        /* JADX INFO: renamed from: d */
        public int f459d;
    }

    /* JADX INFO: renamed from: d0.b$b */
    public static final class b extends Exception {
    }

    /* JADX INFO: renamed from: d0.b$c */
    public static class c implements Runnable {

        /* JADX INFO: renamed from: a */
        public final Context f460a;

        /* JADX INFO: renamed from: b */
        public final C0307d f461b;

        /* JADX INFO: renamed from: c */
        public final StringBuilder f462c;

        /* JADX INFO: renamed from: d */
        public final InterfaceC0082d f463d;

        /* JADX INFO: renamed from: d0.b$c$a */
        public class a implements AbstractC0099i.c {
            public a() {
            }

            @Override // p017f0.AbstractC0099i.c
            /* JADX INFO: renamed from: b */
            public final boolean mo245b(AbstractC0099i abstractC0099i) {
                String str = ((DialogInterfaceOnCancelListenerC0101k) abstractC0099i).f750i;
                c.this.f462c.append(str);
                if (c.this.f463d != null) {
                    C0070h.m253d().m259g(c.this.f463d.mo295l(), str);
                }
                synchronized (c.this.f462c) {
                    c.this.f462c.notifyAll();
                }
                return true;
            }
        }

        /* JADX INFO: renamed from: d0.b$c$b */
        public class b implements AbstractC0099i.b {
            public b() {
            }

            @Override // p017f0.AbstractC0099i.b
            /* JADX INFO: renamed from: a */
            public final void mo246a(AbstractC0099i abstractC0099i) {
                InterfaceC0082d interfaceC0082d = c.this.f463d;
                if (interfaceC0082d != null) {
                    interfaceC0082d.mo297n(13);
                }
                synchronized (c.this.f462c) {
                    c.this.f462c.notifyAll();
                }
            }
        }

        public c(C0307d c0307d, ZArchiver zArchiver, StringBuilder sb, InterfaceC0082d interfaceC0082d) {
            this.f461b = c0307d;
            this.f460a = zArchiver;
            this.f462c = sb;
            this.f463d = interfaceC0082d;
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogInterfaceOnCancelListenerC0101k dialogInterfaceOnCancelListenerC0101k = new DialogInterfaceOnCancelListenerC0101k(this.f461b, this.f460a);
            dialogInterfaceOnCancelListenerC0101k.f739c = -2;
            dialogInterfaceOnCancelListenerC0101k.f738b = new a();
            dialogInterfaceOnCancelListenerC0101k.f737a = new b();
            dialogInterfaceOnCancelListenerC0101k.f740d |= 65536;
            AlertDialog alertDialog = dialogInterfaceOnCancelListenerC0101k.f748g;
            if (alertDialog != null) {
                AbstractC0099i.m354q(alertDialog);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static int m237a(int i2, int i3) {
        if (Runtime.getRuntime().maxMemory() / 1024 >= 225280 || !(i2 == 16 || i2 == 32)) {
            return 0;
        }
        if (i3 == 5) {
            return 8;
        }
        if (i3 != 7) {
            return i3 != 9 ? 0 : 32;
        }
        return 16;
    }

    /* JADX INFO: renamed from: b */
    public static long m238b(int i2, int i3) {
        float f2;
        float f3;
        long j2;
        long j3 = 1024;
        long jM237a = ((long) m237a(i2, i3)) * 1024;
        if (jM237a != 0) {
            j3 = jM237a;
        } else if (i3 == 1) {
            j3 = 64;
        } else if (i3 != 3) {
            if (i3 != 7) {
                j3 = i3 != 9 ? 16384L : 65536L;
            } else {
                j3 = 32768;
            }
        }
        long jM1030a = C0358b.m1030a();
        if (jM1030a == 0) {
            jM1030a = Runtime.getRuntime().availableProcessors();
        }
        if (i2 != 16 && i2 != 32) {
            if (i2 == 128) {
                j2 = ((jM1030a - 1) * 25) + 60;
            } else if (i2 == 64) {
                f2 = j3;
                f3 = 6.1f;
            } else {
                j2 = 16;
            }
            return ((jM1030a - 1) * 4) + j2 + 4;
        }
        if (i3 < 5) {
            f2 = j3;
            f3 = 7.5f;
        } else {
            f2 = j3;
            f3 = i3 < 9 ? 11.5f : 10.5f;
        }
        j2 = (int) ((f2 * f3) / 1024.0f);
        return ((jM1030a - 1) * 4) + j2 + 4;
    }

    /* JADX INFO: renamed from: c */
    public static a m239c(String str) throws b {
        f455a = null;
        if (!C2JBridge.f1554c && !C2JBridge.m804e()) {
            throw new b();
        }
        C2JBridge.cSetOption(4, C0358b.m1035f(4) ? 1 : 0);
        C2JBridge.cList(5, str, "");
        a aVar = f455a;
        f455a = null;
        if (aVar != null && C0015d.m91s(str).startsWith("0")) {
            aVar.f459d |= 32;
        }
        return aVar;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0120 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:0x0118 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x0074 A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:97:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:39:0x008e  */
    /* JADX WARN: Code duplicated, block: B:41:0x0092  */
    /* JADX WARN: Code duplicated, block: B:42:0x0094  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a0 A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:97:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00b0 A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:97:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00be A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:97:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00d8 A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:97:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00e1 A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:97:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:72:0x010b A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:97:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:73:0x010f A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:97:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:84:0x012a A[Catch: all -> 0x013a, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0007, B:9:0x000e, B:10:0x0013, B:11:0x0014, B:13:0x0018, B:82:0x0126, B:84:0x012a, B:90:0x0132, B:92:0x0136, B:93:0x0139), top: B:99:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x006a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:38:0x0074, please report this as an issue */
    /* JADX INFO: renamed from: d */
    public static synchronized void m240d(C0129h c0129h) {
        PowerManager.WakeLock wakeLockNewWakeLock;
        long length;
        boolean z2;
        boolean z3;
        String str;
        boolean z4;
        InterfaceC0082d interfaceC0082dM265j;
        int i2;
        InterfaceC0082d interfaceC0082d;
        AbstractC0194a abstractC0194aM589c;
        if (!C2JBridge.f1554c && !C2JBridge.m804e()) {
            throw new b();
        }
        ZApp zApp = ZApp.f1375c;
        PowerManager powerManager = zApp != null ? (PowerManager) zApp.getSystemService("power") : null;
        try {
            String str2 = c0129h.f1015c;
            if (c0129h.m481h()) {
                length = 0;
            } else {
                File file = new File(str2);
                length = file.length();
                if ((file.exists() && file.canRead()) || str2.startsWith("/SAF") || str2.startsWith("/uri/") || !C0358b.m1038i(str2) || C0415f.m1134b(c0129h) != 2) {
                    z2 = false;
                }
                z3 = true;
                wakeLockNewWakeLock = null;
                while (z3) {
                    try {
                        if (C0070h.m253d().m257e(str2)) {
                            str = "\\-p" + C0070h.m253d().m255b(str2, true);
                        } else {
                            str = "";
                        }
                        if (z2) {
                            z4 = false;
                        } else {
                            z4 = true;
                        }
                        interfaceC0082dM265j = C0079a.m265j(z4);
                        C2JBridge.f1556e = interfaceC0082dM265j;
                        interfaceC0082dM265j.mo284a(length, str2);
                        if (powerManager != null) {
                            wakeLockNewWakeLock = powerManager.newWakeLock(1, "ZArchiver:List");
                            wakeLockNewWakeLock.acquire(1200000L);
                        }
                        if (z2) {
                            abstractC0194aM589c = AbstractC0194a.m589c(C0358b.f1991m);
                            abstractC0194aM589c.f1183a = 0;
                            if (abstractC0194aM589c.m595f()) {
                                interfaceC0082dM265j.mo297n(200);
                            } else if (!C0015d.m73f0(str2, str, abstractC0194aM589c, C0358b.m1035f(4)) && interfaceC0082dM265j.mo287d() <= 0 && interfaceC0082dM265j.mo289f() == 0) {
                                interfaceC0082dM265j.mo297n(3);
                            }
                            abstractC0194aM589c.close();
                        } else {
                            C2JBridge.cSetOption(1, C0358b.f1985g);
                            if (C0358b.m1035f(4)) {
                                i2 = 1;
                            } else {
                                i2 = 0;
                            }
                            C2JBridge.cSetOption(4, i2);
                            if (!C2JBridge.cList(0, str2, str) && interfaceC0082dM265j.mo287d() <= 0 && interfaceC0082dM265j.mo289f() == 0) {
                                interfaceC0082dM265j.mo297n(3);
                            }
                        }
                        interfaceC0082d = C2JBridge.f1556e;
                        if (interfaceC0082d != null) {
                            interfaceC0082d.mo291h();
                        } else {
                            interfaceC0082dM265j.clear();
                        }
                        if (interfaceC0082dM265j.mo289f() == 2) {
                            ZApp.m725i(R.string.ERROR_WRONG_PASSWORD);
                        } else {
                            z3 = false;
                        }
                    } catch (Throwable th) {
                        th = th;
                        C2JBridge.f1556e = null;
                        if (wakeLockNewWakeLock != null) {
                            wakeLockNewWakeLock.release();
                        }
                        throw th;
                    }
                }
                C2JBridge.f1556e = null;
                if (wakeLockNewWakeLock != null) {
                    wakeLockNewWakeLock.release();
                }
            }
            z2 = true;
            z3 = true;
            wakeLockNewWakeLock = null;
            while (z3) {
                if (C0070h.m253d().m257e(str2)) {
                    str = "\\-p" + C0070h.m253d().m255b(str2, true);
                } else {
                    str = "";
                }
                if (z2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                interfaceC0082dM265j = C0079a.m265j(z4);
                C2JBridge.f1556e = interfaceC0082dM265j;
                interfaceC0082dM265j.mo284a(length, str2);
                if (powerManager != null) {
                    wakeLockNewWakeLock = powerManager.newWakeLock(1, "ZArchiver:List");
                    wakeLockNewWakeLock.acquire(1200000L);
                }
                if (z2) {
                    abstractC0194aM589c = AbstractC0194a.m589c(C0358b.f1991m);
                    abstractC0194aM589c.f1183a = 0;
                    if (abstractC0194aM589c.m595f()) {
                        interfaceC0082dM265j.mo297n(200);
                    } else if (!C0015d.m73f0(str2, str, abstractC0194aM589c, C0358b.m1035f(4))) {
                        interfaceC0082dM265j.mo297n(3);
                    }
                    abstractC0194aM589c.close();
                } else {
                    C2JBridge.cSetOption(1, C0358b.f1985g);
                    if (C0358b.m1035f(4)) {
                        i2 = 1;
                    } else {
                        i2 = 0;
                    }
                    C2JBridge.cSetOption(4, i2);
                    if (!C2JBridge.cList(0, str2, str)) {
                        interfaceC0082dM265j.mo297n(3);
                    }
                }
                interfaceC0082d = C2JBridge.f1556e;
                if (interfaceC0082d != null) {
                    interfaceC0082d.mo291h();
                } else {
                    interfaceC0082dM265j.clear();
                }
                if (interfaceC0082dM265j.mo289f() == 2) {
                    ZApp.m725i(R.string.ERROR_WRONG_PASSWORD);
                } else {
                    z3 = false;
                }
            }
            C2JBridge.f1556e = null;
            if (wakeLockNewWakeLock != null) {
                wakeLockNewWakeLock.release();
            }
        } catch (Throwable th2) {
            th = th2;
            wakeLockNewWakeLock = null;
        }
    }

    /* JADX INFO: renamed from: e */
    public static String m241e(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            sb.append('\\');
            sb.append(str);
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: f */
    public static int m242f(boolean z2) {
        int i2 = z2 ? 32 : C0358b.f1984f & 4080;
        long jMaxMemory = (Runtime.getRuntime().maxMemory() / 1024) - 10240;
        if (jMaxMemory >= m238b(i2, 9) * 1024) {
            return 9;
        }
        return jMaxMemory >= m238b(i2, 7) * 1024 ? 7 : 5;
    }

    /* JADX INFO: renamed from: g */
    public static String m243g(InterfaceC0082d interfaceC0082d) {
        StringBuilder sb = new StringBuilder();
        try {
            ZArchiver zArchiverM730z = ZArchiver.m730z();
            if (zArchiverM730z == null) {
                return "";
            }
            if (interfaceC0082d != null) {
                C0070h.m253d().m254a();
            }
            ZApp.m723f().post(new c(zArchiverM730z.f1386h, zArchiverM730z, sb, interfaceC0082d));
            synchronized (sb) {
                try {
                    sb.wait();
                } catch (InterruptedException unused) {
                }
            }
            try {
                ZArchiver zArchiverM730z2 = ZArchiver.m730z();
                if (zArchiverM730z2 == null) {
                    return "";
                }
                AbstractC0099i abstractC0099iM841b = zArchiverM730z2.f1386h.m841b(-2, 2, -1);
                if (abstractC0099iM841b != null) {
                    abstractC0099iM841b.m356e();
                }
            } catch (Exception unused2) {
            }
            return sb.toString();
        } catch (Exception unused3) {
            return "";
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0085  */
    /* JADX INFO: renamed from: h */
    public static boolean m244h(C0129h c0129h, long j2) {
        boolean z2;
        long j3;
        long j4;
        if (Build.VERSION.SDK_INT >= 26 && C0358b.m1035f(8)) {
            int iM274h = C0079a.m266m().m274h();
            if (C0015d.m49K(iM274h, 16777216)) {
                return false;
            }
            String str = c0129h.f1015c;
            if (str == null) {
                z2 = false;
            } else {
                String strM93u = C0015d.m93u(str);
                if (strM93u.equals("zip") || strM93u.equals("apk") || strM93u.equals("mtz") || strM93u.equals("7z") || strM93u.equals("rar") || strM93u.equals("lzo") || strM93u.equals("lzh") || strM93u.equals("lha") || strM93u.equals("wim") || strM93u.equals("egg") || strM93u.equals("alz")) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            if ((z2 || j2 != 0) && j2 >= 0 && j2 <= 41943040) {
                if ((iM274h & 1) != 0) {
                    j3 = 10485760;
                } else {
                    j3 = (iM274h & 16) != 0 ? 52428800L : 0L;
                }
                if (c0129h.m482i()) {
                    if (str.startsWith("/uri/ru.zdevs.zarchiver.archive")) {
                        return false;
                    }
                    if (j3 != 0) {
                        long jM270d = C0079a.m266m().m270d();
                        return jM270d > 0 && jM270d <= j3;
                    }
                } else if (j3 != 0) {
                    try {
                        j4 = Os.lstat(str).st_size;
                    } catch (Exception unused) {
                        j4 = -1;
                    }
                    return j4 > 0 && j4 <= j3;
                }
                return true;
            }
        }
        return false;
    }
}
