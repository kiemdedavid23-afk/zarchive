package p051u0;

import android.os.Process;
import java.io.File;
import p055w0.C0412c;

/* JADX INFO: renamed from: u0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0380c {

    /* JADX INFO: renamed from: a */
    public static final String f2083a = System.getenv("EMULATED_STORAGE_SOURCE");

    /* JADX INFO: renamed from: b */
    public static final String f2084b = System.getenv("EMULATED_STORAGE_TARGET");

    /* JADX INFO: renamed from: c */
    public static final String f2085c = System.getenv("EXTERNAL_STORAGE");

    /* JADX INFO: renamed from: d */
    public static String f2086d = null;

    /* JADX INFO: renamed from: a */
    public static String m1061a(String str) {
        String str2 = f2083a;
        if (C0385h.m1081e(str2)) {
            return str;
        }
        String str3 = f2084b;
        if (C0385h.m1081e(str3)) {
            return str;
        }
        String str4 = f2085c;
        if (C0385h.m1081e(str4)) {
            return str;
        }
        if (str.startsWith(str2)) {
            str = str.replace(str2, str3);
        }
        return str.startsWith(str4) ? str.replace(str4, new File(str3, String.valueOf(Process.myUid() / 100000)).getAbsolutePath()) : str;
    }

    /* JADX INFO: renamed from: b */
    public static String m1062b(String str) {
        if (str.startsWith("/SAF")) {
            String strM1116j = C0412c.m1116j(str);
            return strM1116j != null ? strM1116j : str;
        }
        String str2 = f2083a;
        if (C0385h.m1081e(str2)) {
            return str;
        }
        String str3 = f2084b;
        if (C0385h.m1081e(str3)) {
            return str;
        }
        String str4 = f2085c;
        if (C0385h.m1081e(str4)) {
            return str;
        }
        if (str.startsWith(str2)) {
            str = str.replace(str2, str3);
        }
        if (f2086d == null) {
            f2086d = new File(str3, String.valueOf(Process.myUid() / 100000)).getAbsolutePath();
        }
        return str.startsWith(f2086d) ? str.replace(f2086d, str4) : str;
    }
}
