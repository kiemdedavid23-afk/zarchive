package p055w0;

import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;
import java.util.ArrayList;
import p004b.C0015d;
import p020g0.C0129h;
import p047s0.C0358b;

/* JADX INFO: renamed from: w0.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0415f {
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
    
        if (r6 == null) goto L15;
     */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String[] m1133a(String str) {
        boolean z2;
        if (Build.VERSION.SDK_INT < 30) {
            return null;
        }
        int iIndexOf = str.indexOf("/Android/data");
        if (iIndexOf < 1) {
            iIndexOf = str.indexOf("/Android/obb");
            z2 = true;
        } else {
            z2 = false;
        }
        if (iIndexOf < 1) {
            return null;
        }
        String strSubstring = str.substring(0, iIndexOf);
        C0412c.a aVarM1113g = C0412c.m1113g(strSubstring);
        if (aVarM1113g == null) {
            try {
                aVarM1113g = C0412c.m1113g(new File(strSubstring).getCanonicalPath());
            } catch (Exception unused) {
            }
        }
        String strM65a0 = C0015d.m65a0(str.substring(iIndexOf));
        String[] strArr = new String[4];
        strArr[0] = aVarM1113g.m1126a();
        strArr[1] = !z2 ? "Android/data" : "Android/obb";
        strArr[2] = strM65a0;
        strArr[3] = strSubstring;
        return strArr;
        return null;
    }

    /* JADX INFO: renamed from: b */
    public static byte m1134b(C0129h c0129h) {
        if (c0129h.m485l() || c0129h.m481h()) {
            return (byte) 2;
        }
        if (c0129h.m486m() || c0129h.m484k() || c0129h.m482i()) {
            return (byte) 1;
        }
        return m1135c(c0129h.m491r());
    }

    /* JADX INFO: renamed from: c */
    public static byte m1135c(String str) {
        if (str.startsWith("/SAF")) {
            return (byte) 1;
        }
        if (!str.startsWith("/storage/") && !str.startsWith("/sdcard")) {
            return (Build.VERSION.SDK_INT < 30 || C0412c.m1111e(str) == null) ? (byte) 2 : (byte) 1;
        }
        int iM1139g = m1139g(str);
        if (iM1139g != 0 && C0358b.m1035f(67108864)) {
            return (byte) 2;
        }
        if (iM1139g != 2 || Build.VERSION.SDK_INT < 33) {
            return (byte) 1;
        }
        try {
            if (!Os.access(str, OsConstants.W_OK)) {
                return (byte) 3;
            }
            if (!str.startsWith("/storage/emu") && !str.startsWith("/sdcard")) {
                Os.mkdir(str.concat("/test\\|:<*>?rw"), 511);
            }
            return (byte) 1;
        } catch (Exception e2) {
            String message = e2.getMessage();
            return (message == null || !message.contains("EINVAL")) ? (byte) 3 : (byte) 1;
        }
    }

    /* JADX INFO: renamed from: d */
    public static byte m1136d(C0129h c0129h, boolean z2) {
        String absolutePath;
        boolean z3 = true;
        if (c0129h.m486m()) {
            return c0129h.m487n() ? (byte) 2 : (byte) 1;
        }
        boolean zM481h = c0129h.m481h();
        byte b2 = 5;
        if (!zM481h && !c0129h.m483j()) {
            return (byte) 5;
        }
        boolean z4 = false;
        if (!c0129h.m485l() && !zM481h) {
            File file = c0129h.toFile();
            try {
                absolutePath = file.getCanonicalPath();
            } catch (Exception unused) {
                absolutePath = file.getAbsolutePath();
            }
            byte bM1135c = m1135c(absolutePath);
            if (bM1135c != 2) {
                if (bM1135c == 3) {
                    b2 = 2;
                } else {
                    C0412c.a aVarM1111e = C0412c.m1111e(absolutePath);
                    if (aVarM1111e == null) {
                        aVarM1111e = C0412c.m1111e(file.getAbsolutePath());
                    }
                    if (aVarM1111e == null ? absolutePath.startsWith("/storage/emulated/") ? file.canWrite() : false : aVarM1111e.m1131f()) {
                        b2 = 1;
                    }
                }
            }
            if (b2 == 2 || b2 == 1) {
                return b2;
            }
        }
        if (!z2) {
            String strM491r = c0129h.m491r();
            String[] strArr = C0410a.f2136a;
            int i2 = C0358b.m1038i("/") ? 2 : 1;
            if (C0410a.f2142g < i2) {
                C0410a.m1104c(i2);
            }
            File file2 = new File(strM491r);
            loop0: do {
                String absolutePath2 = file2.getAbsolutePath();
                ArrayList<C0410a.a> arrayList = C0410a.f2141f;
                synchronized (arrayList) {
                    try {
                        for (C0410a.a aVar : arrayList) {
                            if (aVar.f2144b.equals(absolutePath2)) {
                                String str = aVar.f2146d;
                                if (!(str != null && str.contains("rw")) || aVar.f2147e == 2) {
                                    z3 = false;
                                }
                                z4 = z3;
                                break loop0;
                            }
                        }
                        file2 = file2.getParentFile();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } while (file2 != null);
            if (!z4) {
                return (byte) 4;
            }
        }
        return (byte) 3;
    }

    /* JADX INFO: renamed from: e */
    public static boolean m1137e(String str) {
        return m1138f(str) != null;
    }

    /* JADX INFO: renamed from: f */
    public static C0412c.a m1138f(String str) {
        if (Build.VERSION.SDK_INT < 30) {
            return null;
        }
        int iIndexOf = str.indexOf("/Android/data");
        if (iIndexOf < 1) {
            iIndexOf = str.indexOf("/Android/obb");
        }
        if (iIndexOf < 1) {
            return null;
        }
        String strSubstring = str.substring(0, iIndexOf);
        C0412c.a aVarM1113g = C0412c.m1113g(strSubstring);
        if (aVarM1113g != null) {
            return aVarM1113g;
        }
        try {
            return C0412c.m1113g(new File(strSubstring).getCanonicalPath());
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: g */
    public static int m1139g(String str) {
        if (m1138f(str) == null) {
            return 0;
        }
        if (Build.VERSION.SDK_INT < 33) {
            return 1;
        }
        String strM63Y = C0015d.m63Y(str);
        return (strM63Y.endsWith("Android/data") || strM63Y.endsWith("Android/obb")) ? 2 : 1;
    }
}
