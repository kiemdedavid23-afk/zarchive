package p025i0;

import android.os.Build;
import java.io.File;
import java.util.Locale;
import java.util.regex.Pattern;
import p004b.C0015d;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p020g0.InterfaceC0123b;
import p021g1.C0131b;
import p033m0.C0180c;
import p047s0.C0358b;
import p051u0.C0385h;
import p051u0.InterfaceC0381d;
import p055w0.C0410a;
import p055w0.C0412c;

/* JADX INFO: renamed from: i0.a */
/* JADX INFO: loaded from: classes.dex */
public class C0148a implements InterfaceC0123b {

    /* JADX INFO: renamed from: b */
    public static C0131b f1047b;

    /* JADX INFO: renamed from: c */
    public static C0131b f1048c;

    /* JADX INFO: renamed from: a */
    public int f1049a = 0;

    /* JADX INFO: renamed from: l */
    public static byte m510l(String str, byte b2) {
        if (b2 == 0) {
            return (byte) 0;
        }
        if (b2 != 1) {
            if (b2 != 3) {
                return b2 != 6 ? (byte) 0 : (byte) 126;
            }
            if (f1047b == null) {
                m513o();
            }
            return f1047b.m494a(C0385h.m1085i(str));
        }
        if (f1048c == null) {
            synchronized (C0148a.class) {
                C0131b c0131b = new C0131b(17);
                f1048c = c0131b;
                c0131b.m495b("alarms", (byte) 2);
                f1048c.m495b("android", (byte) 1);
                f1048c.m495b("dcim", (byte) 5);
                f1048c.m495b("documents", (byte) 7);
                f1048c.m495b("download", (byte) 8);
                f1048c.m495b("movies", (byte) 20);
                f1048c.m495b("music", (byte) 10);
                f1048c.m495b("notifications", (byte) 11);
                f1048c.m495b("pictures", (byte) 13);
                f1048c.m495b("podcasts", (byte) 14);
                f1048c.m495b("ringtones", (byte) 15);
                f1048c.m495b("bluetooth", (byte) 21);
                f1048c.m495b("book", (byte) 24);
                f1048c.m495b("books", (byte) 24);
                f1048c.m495b("audio", (byte) 10);
            }
        }
        return f1048c.m494a(C0385h.m1085i(str));
    }

    /* JADX INFO: renamed from: m */
    public static byte m511m(String str) {
        try {
            if (str.equals(C0358b.f1979a)) {
                return (byte) 25;
            }
            String[] strArr = C0358b.f1980b;
            if (!str.equals(strArr[0]) && !str.equals(strArr[1])) {
                if (str.equals("/storage/emulated/999")) {
                    return (byte) 27;
                }
            }
            return (byte) 9;
        } catch (Exception unused) {
        }
        return (byte) 0;
    }

    /* JADX INFO: renamed from: n */
    public static byte m512n(String str, boolean z2) {
        try {
            if (str.startsWith("/storage/") || str.startsWith("/mnt/")) {
                if (!str.endsWith("/Android/data") && !str.endsWith("/Android/obb") && !str.endsWith("/Android/media")) {
                    String strM39A = C0015d.m39A(str);
                    if (strM39A.equals("/storage") || strM39A.equals("/storage/emulated") || strM39A.equals("/mnt")) {
                        return (byte) 1;
                    }
                }
                return (byte) 6;
            }
            if (!str.equals("/") && !str.equals("/vendor")) {
                if (str.startsWith("/system") || str.startsWith("/product")) {
                    int iIndexOf = str.indexOf(47, 6);
                    if (iIndexOf == -1) {
                        return (byte) 3;
                    }
                    String strSubstring = str.substring(iIndexOf + 1);
                    if (strSubstring.equals("vendor")) {
                        return (byte) 3;
                    }
                    if (strSubstring.equals("media")) {
                        return (byte) 1;
                    }
                    if (strSubstring.equals("app") || strSubstring.equals("priv-app")) {
                        return (byte) 6;
                    }
                } else if (str.startsWith("/data")) {
                    if (str.length() < 6) {
                        return (byte) 3;
                    }
                    String strSubstring2 = str.substring(6);
                    if (strSubstring2.equals("system")) {
                        return (byte) 3;
                    }
                    if (strSubstring2.equals("app") || strSubstring2.equals("data")) {
                        return (byte) 6;
                    }
                } else {
                    if ("/SAF".equals(str)) {
                        return (byte) 1;
                    }
                    if (!z2 && C0412c.m1113g(str) != null) {
                        return (byte) 1;
                    }
                }
            }
            return (byte) 3;
            return (byte) 0;
        } catch (Exception unused) {
            return (byte) 0;
        }
    }

    /* JADX INFO: renamed from: o */
    public static synchronized void m513o() {
        if (f1047b != null) {
            return;
        }
        C0131b c0131b = new C0131b(20);
        f1047b = c0131b;
        c0131b.m495b("cache", (byte) 1);
        f1047b.m495b("dev", (byte) 6);
        f1047b.m495b("etc", (byte) 17);
        f1047b.m495b("mnt", (byte) 18);
        f1047b.m495b("proc", (byte) 6);
        f1047b.m495b("storage", (byte) 18);
        f1047b.m495b("bin", (byte) 4);
        f1047b.m495b("sbin", (byte) 4);
        f1047b.m495b("system", (byte) 26);
        f1047b.m495b("sdcard", (byte) 12);
        f1047b.m495b("xbin", (byte) 4);
        f1047b.m495b("app", (byte) 3);
        f1047b.m495b("priv-app", (byte) 3);
        f1047b.m495b("lost+found", (byte) 19);
        f1047b.m495b("framework", (byte) 22);
        f1047b.m495b("fonts", (byte) 23);
        f1047b.m495b("data", (byte) 26);
        f1047b.m495b("vendor", (byte) 26);
        if (Build.VERSION.SDK_INT >= 30) {
            f1047b.m495b("system_ext", (byte) 26);
            f1047b.m495b("product", (byte) 26);
        } else {
            f1047b.m495b("root", (byte) 16);
        }
    }

    /* JADX INFO: renamed from: p */
    public static void m514p(File file, Pattern pattern, int[] iArr, int i2, AbstractC0126e.c cVar, InterfaceC0381d interfaceC0381d) {
        File[] fileArrListFiles;
        if (interfaceC0381d != null) {
            try {
                if (interfaceC0381d.isCancelled()) {
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        String lowerCase = file.getName().toLowerCase(Locale.getDefault());
        if (pattern.matcher(lowerCase).matches() && AbstractC0126e.m456g(lowerCase, iArr)) {
            AbstractC0126e.b bVar = new AbstractC0126e.b();
            bVar.f995a = file.isFile();
            bVar.f996b = file.lastModified();
            bVar.f997c = bVar.f995a ? file.length() : -1L;
            String parent = file.getParent();
            if (parent == null) {
                return;
            } else {
                cVar.mo461d(bVar, new C0129h(parent), file.getName(), null);
            }
        }
        if (!file.isDirectory() || C0015d.m49K(i2, 1) || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            m514p(file2, pattern, iArr, i2, cVar, interfaceC0381d);
            if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                return;
            }
        }
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: a */
    public final int mo434a(String str, C0129h c0129h) {
        String[] list = new File(c0129h.f1015c, str).list();
        if (list == null) {
            return -1;
        }
        return list.length;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: d */
    public final int mo437d() {
        return this.f1049a;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: e */
    public AbstractC0126e.b mo438e(C0129h c0129h, InterfaceC0381d interfaceC0381d) {
        if (c0129h != null && c0129h.m483j() && !c0129h.m485l()) {
            try {
                File file = c0129h.toFile();
                if (file != null && file.exists()) {
                    AbstractC0126e.b bVar = new AbstractC0126e.b();
                    bVar.f995a = file.isFile();
                    bVar.f996b = file.lastModified();
                    if (file.isDirectory()) {
                        C0180c.m557d(file, bVar, interfaceC0381d);
                    } else {
                        bVar.f997c = file.length();
                        bVar.f998d++;
                    }
                    boolean zM559f = C0180c.m559f(file);
                    bVar.f999e = zM559f;
                    if (zM559f) {
                        bVar.f1000f = file.getCanonicalFile().getAbsolutePath();
                    }
                    return bVar;
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: f */
    public final int mo439f(C0129h c0129h) {
        File file = c0129h.toFile();
        byte bM1102a = file == null ? (byte) 0 : C0410a.m1102a(file);
        int i2 = !c0129h.m485l() ? 17 : 1;
        if (bM1102a == 1 || bM1102a == 3) {
            i2 |= 8;
        }
        if (bM1102a == 2) {
            i2 |= 2;
        }
        return (bM1102a == 2 || bM1102a == 1) ? i2 | 4 : i2;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: g */
    public final AbstractC0126e.b mo440g(C0129h[] c0129hArr, String[] strArr, InterfaceC0381d interfaceC0381d) {
        if (!c0129hArr[0].m483j()) {
            return null;
        }
        AbstractC0126e.b bVar = new AbstractC0126e.b();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (c0129hArr[i2] != null && strArr[i2] != null) {
                File file = new File(c0129hArr[i2].m491r(), strArr[i2]);
                if (file.isDirectory()) {
                    C0180c.m557d(file, bVar, interfaceC0381d);
                } else {
                    bVar.f997c = file.length() + bVar.f997c;
                }
            }
        }
        return bVar;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: i */
    public final boolean mo442i(C0129h c0129h, String str, int[] iArr, int i2, AbstractC0126e.c cVar, InterfaceC0381d interfaceC0381d) {
        File file;
        if (c0129h.m485l() || (file = c0129h.toFile()) == null || !file.isDirectory()) {
            return false;
        }
        Pattern patternCompile = Pattern.compile(C0385h.m1079c(str, false)[0]);
        try {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return false;
            }
            int length = fileArrListFiles.length;
            int i3 = 0;
            for (File file2 : fileArrListFiles) {
                m514p(file2, patternCompile, iArr, i2, cVar, interfaceC0381d);
                if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                    return false;
                }
                i3++;
                cVar.mo460b((i3 * 100) / length);
            }
        } catch (Exception unused) {
        }
        return true;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: j */
    public final boolean mo443j(C0129h c0129h) {
        return c0129h.m483j();
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: k */
    public final AbstractC0126e.b mo444k(C0129h c0129h, String[] strArr, InterfaceC0381d interfaceC0381d) {
        File file;
        if (!c0129h.m483j() || c0129h.m485l() || (file = c0129h.toFile()) == null || strArr == null) {
            return null;
        }
        AbstractC0126e.b bVar = new AbstractC0126e.b();
        for (String str : strArr) {
            if (str != null) {
                File file2 = new File(file, str);
                if (file2.isDirectory()) {
                    C0180c.m557d(file2, bVar, interfaceC0381d);
                } else {
                    bVar.f997c = file2.length() + bVar.f997c;
                    bVar.f998d++;
                }
            }
        }
        return bVar;
    }
}
