package ru.zdevs.zarchiver.archiver;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import dalvik.annotation.optimization.FastNative;
import p004b.C0015d;
import p011d0.C0063a;
import p011d0.C0064b;
import p011d0.C0065c;
import p011d0.C0070h;
import p011d0.C0071i;
import p014e0.InterfaceC0082d;
import p051u0.C0385h;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.service.ZArchiverService;

/* JADX INFO: loaded from: classes.dex */
public class C2JBridge {

    /* JADX INFO: renamed from: a */
    public static ZArchiverService f1552a = null;

    /* JADX INFO: renamed from: b */
    public static ContextWrapper f1553b = null;

    /* JADX INFO: renamed from: c */
    public static boolean f1554c = false;

    /* JADX INFO: renamed from: d */
    public static String f1555d;

    /* JADX INFO: renamed from: e */
    public static InterfaceC0082d f1556e;

    /* JADX INFO: renamed from: f */
    public static final String[] f1557f = new String[5];

    /* JADX INFO: renamed from: g */
    public static final String[] f1558g = new String[5];

    /* JADX INFO: renamed from: h */
    public static final int[] f1559h = new int[5];

    /* JADX INFO: renamed from: i */
    public static final int[] f1560i = new int[5];

    /* JADX INFO: renamed from: j */
    public static final C0065c[] f1561j = new C0065c[5];

    /* JADX INFO: renamed from: k */
    public static final String[] f1562k = new String[5];

    /* JADX INFO: renamed from: l */
    public static final C0071i[] f1563l = new C0071i[5];

    /* JADX INFO: renamed from: m */
    public static final Object[] f1564m = new Object[5];

    /* JADX INFO: renamed from: n */
    public static final Object[] f1565n = new Object[5];

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.archiver.C2JBridge$a */
    public interface InterfaceC0303a {
        /* JADX INFO: renamed from: a */
        void mo753a(int i2, String str);

        /* JADX INFO: renamed from: d */
        void mo754d(int i2, int i3);

        /* JADX INFO: renamed from: e */
        void mo755e(int i2, int i3, String str);
    }

    /* JADX INFO: renamed from: a */
    public static void m800a(int i2, int i3) {
        Object[] objArr = f1564m;
        Object obj = objArr[i2];
        if (obj == null) {
            return;
        }
        try {
            f1560i[i2] = i3;
            synchronized (obj) {
                try {
                    objArr[i2].notifyAll();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception unused) {
            Log.e("C2JBridge", "Error on set overwrite");
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m801b(int i2, String str) {
        Object[] objArr = f1565n;
        if (objArr[i2] == null) {
            return;
        }
        if (str != null) {
            try {
                f1557f[i2] = str;
            } catch (Exception unused) {
                Log.e("SetPassword", "Error on set pass");
                return;
            }
        }
        synchronized (objArr[i2]) {
            objArr[i2].notifyAll();
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m802c(Context context) {
        try {
            f1555d = ZApp.m720c(context).getApplicationInfo().nativeLibraryDir;
        } catch (Exception unused) {
            f1555d = null;
        }
    }

    public static native boolean cAddFiles(int i2, String str, String str2, String str3, String str4);

    public static native boolean cCompress(int i2, String str, String str2, String str3, String str4);

    public static native boolean cDelFiles(int i2, String str, String str2, String str3, String str4);

    public static native boolean cExtract(int i2, String str, String str2, String str3, String str4, int i3);

    @FastNative
    public static native int cIsExist(String str);

    public static native boolean cList(int i2, String str, String str2);

    public static native boolean cRename(int i2, String str, String str2, String str3, String str4);

    @FastNative
    public static native int cSetMTime(int i2, int i3);

    @FastNative
    public static native void cSetOption(int i2, int i3);

    @FastNative
    public static native void cSetStatus(int i2, int i3);

    public static native boolean cTest(int i2, String str, String str2);

    /* JADX INFO: renamed from: d */
    public static void m803d(int i2) {
        f1557f[i2] = "";
        f1558g[i2] = "";
        f1559h[i2] = 0;
        f1560i[i2] = 0;
        f1562k[i2] = "";
        f1564m[i2] = null;
        f1565n[i2] = null;
    }

    /* JADX INFO: renamed from: e */
    public static boolean m804e() {
        try {
            System.loadLibrary("handler");
            System.loadLibrary("mime");
            System.loadLibrary("control");
            System.loadLibrary("iconv");
            f1554c = true;
        } catch (UnsatisfiedLinkError unused) {
            f1554c = false;
        }
        return f1554c;
    }

    public static int jAddFileToList(int i2, String str, int i3, long j2, int i4, int i5) {
        InterfaceC0082d interfaceC0082d;
        if (i2 >= 5 || (interfaceC0082d = f1556e) == null) {
            return -1;
        }
        interfaceC0082d.mo286c(str, j2, i4, i5);
        return 0;
    }

    public static void jArchiveInfo(int i2, String str, String str2, int i3, long j2, int i4) {
        if (i2 >= 5) {
            C0064b.a aVar = new C0064b.a();
            C0064b.f455a = aVar;
            aVar.f456a = str;
            aVar.f457b = i3;
            aVar.f458c = j2;
            aVar.f459d = i4;
            return;
        }
        if (((byte) (C0015d.f118e[i2] & 127)) != 11) {
            InterfaceC0082d interfaceC0082d = f1556e;
            if (interfaceC0082d != null) {
                interfaceC0082d.mo302s(str, str2, i3, j2, i4);
                return;
            }
            return;
        }
        C0071i[] c0071iArr = f1563l;
        if (c0071iArr[i2] == null) {
            return;
        }
        if (!C0385h.m1081e(str)) {
            c0071iArr[i2].f497b = str;
        }
        if (!C0385h.m1081e(str2)) {
            c0071iArr[i2].f498c = str2;
        }
        if (i3 >= 0) {
            c0071iArr[i2].f499d = i3;
        }
        if (j2 >= 0) {
            c0071iArr[i2].f500e = j2;
        }
        if (i4 >= 0) {
            c0071iArr[i2].f501f = i4;
        }
    }

    public static int jAskOverwrite(int i2, String str, long j2, int i3, String str2, long j3, int i4) {
        if (i2 >= 5) {
            return 18;
        }
        if (!ZArchiverService.m891i(1)) {
            f1560i[i2] = 17;
            return 17;
        }
        if (f1552a == null) {
            return 18;
        }
        if (C0015d.f118e[i2] == 5) {
            f1560i[i2] = 1;
            return 1;
        }
        Object[] objArr = f1564m;
        if (objArr[i2] != null) {
            int[] iArr = f1560i;
            if (C0015d.m49K(iArr[i2], 16)) {
                return iArr[i2];
            }
        }
        C0065c[] c0065cArr = f1561j;
        C0065c c0065c = new C0065c();
        c0065cArr[i2] = c0065c;
        c0065c.f466a = str;
        c0065c.f467b = j2;
        c0065c.f468c = i3;
        c0065c.f469d = str2;
        c0065c.f470e = j3;
        c0065c.f471f = i4;
        if (objArr[i2] == null) {
            objArr[i2] = new Object();
        }
        f1552a.m897n(i2, 2);
        synchronized (objArr[i2]) {
            try {
                objArr[i2].wait();
            } catch (Exception unused) {
            }
        }
        f1552a.m892g(i2, 2);
        return f1560i[i2];
    }

    public static void jFileExtracted(int i2, String str) {
        if (i2 < 5 && f1552a != null && C0015d.f118e[i2] == 5 && !C0385h.m1081e(str)) {
            C0015d.f119f[i2] = C0015d.m97y(str);
        }
    }

    public static String jGetNativePath() {
        return f1555d;
    }

    public static String jGetPassword(int i2) {
        if (i2 >= 5) {
            return C0070h.m253d().m256c(false);
        }
        if (f1556e != null) {
            if (C0070h.m253d().m257e(f1556e.mo295l())) {
                return C0070h.m253d().m256c(false);
            }
            String strM243g = C0064b.m243g(f1556e);
            if (C0385h.m1081e(strM243g) && f1554c) {
                cSetStatus(0, 15);
            }
            return strM243g;
        }
        Object[] objArr = f1565n;
        if (objArr[i2] == null) {
            objArr[i2] = new Object();
        }
        ZArchiverService zArchiverService = f1552a;
        if (zArchiverService != null) {
            zArchiverService.m897n(i2, 1);
        }
        synchronized (objArr[i2]) {
            try {
                objArr[i2].wait();
            } catch (Exception unused) {
            }
        }
        ZArchiverService zArchiverService2 = f1552a;
        if (zArchiverService2 != null) {
            zArchiverService2.m892g(i2, 1);
        }
        return f1557f[i2];
    }

    public static void jSetComment(int i2, String str) {
        InterfaceC0082d interfaceC0082d;
        if (i2 < 5 && (interfaceC0082d = f1556e) != null) {
            interfaceC0082d.mo306w(str);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.content.ContextWrapper, ru.zdevs.zarchiver.archiver.C2JBridge$a] */
    public static void jSetProcessPercent(int i2, int i3) {
        if (i2 >= 5) {
            return;
        }
        f1559h[i2] = i3;
        ?? r1 = f1553b;
        if (r1 != 0) {
            r1.mo754d(i2, i3);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.content.ContextWrapper, ru.zdevs.zarchiver.archiver.C2JBridge$a] */
    public static void jSetProcessText(int i2, String str) {
        if (i2 >= 5) {
            return;
        }
        f1558g[i2] = str;
        ?? r1 = f1553b;
        if (r1 != 0) {
            r1.mo753a(i2, str);
        }
    }

    public static void jSetTaskCompleted(int i2, boolean z2) {
        if (i2 >= 5) {
            return;
        }
        boolean zM49K = C0015d.m49K(f1560i[i2], 8);
        boolean z3 = (C0015d.f118e[i2] & (-128)) == -128;
        if (!z3) {
            if (zM49K) {
                C0015d.m77h0(f1552a, i2, 15);
            }
            C0015d.m77h0(f1552a, i2, z2 ? 1179648 : 1114112);
        }
        if (!z2 && !C0015d.m49K(C0015d.f117d[i2], 15)) {
            C0063a.m233c(i2, zM49K);
        }
        Object[] objArr = f1564m;
        if (objArr[i2] != null && !z3) {
            objArr[i2] = null;
        }
        Object[] objArr2 = f1565n;
        if (objArr2[i2] != null) {
            objArr2[i2] = null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.content.ContextWrapper, ru.zdevs.zarchiver.archiver.C2JBridge$a] */
    public static void jShowMessage(int i2, int i3, String str) {
        ?? r1;
        if (i2 >= 5) {
            return;
        }
        if (i3 == 2) {
            C0070h.m253d().m254a();
            InterfaceC0082d interfaceC0082d = f1556e;
            if (interfaceC0082d != null) {
                interfaceC0082d.mo297n(2);
            }
        }
        if (C0063a.m234d(i2, i3, str) || (r1 = f1553b) == 0) {
            return;
        }
        r1.mo755e(i2, i3, str);
    }
}
