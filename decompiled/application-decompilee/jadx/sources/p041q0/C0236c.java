package p041q0;

import java.io.File;
import p004b.C0015d;
import p020g0.C0129h;
import p033m0.C0180c;
import p043r0.InterfaceC0239a;
import p055w0.C0412c;
import ru.zdevs.zarchiver.p044io.SAF;
import ru.zdevs.zarchiver.service.ZArchiverService;

/* JADX INFO: renamed from: q0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0236c {

    /* JADX INFO: renamed from: a */
    public final boolean f1323a;

    /* JADX INFO: renamed from: b */
    public final String f1324b;

    /* JADX INFO: renamed from: c */
    public final C0129h f1325c;

    /* JADX INFO: renamed from: d */
    public final C0129h f1326d;

    public C0236c(String str, C0129h c0129h, C0129h c0129h2, boolean z2) {
        this.f1324b = str;
        this.f1325c = c0129h;
        this.f1326d = c0129h2;
        this.f1323a = z2;
    }

    /* JADX INFO: renamed from: c */
    public static C0236c m689c(C0129h c0129h, boolean z2) {
        C0412c.a aVarM1112f;
        String strM864o = SAF.m864o(c0129h.f1015c);
        if (strM864o == null || (aVarM1112f = C0412c.m1112f(strM864o)) == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder("Android/data/ru.zdevs.zarchiver/cache/tmp");
        sb.append(System.currentTimeMillis() % 1000);
        sb.append(z2 ? "/" : "");
        sb.append(c0129h.m478e());
        String string = sb.toString();
        C0129h c0129hM863n = SAF.m863n(aVarM1112f, string);
        if (c0129hM863n == null) {
            return null;
        }
        String str = aVarM1112f.f2153b + "/" + string;
        try {
            File file = new File(z2 ? C0015d.m39A(str) : str);
            if (file.exists() || file.mkdirs()) {
                return new C0236c(str, c0129hM863n, c0129h, z2);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m690a(InterfaceC0239a interfaceC0239a) {
        int iM687j;
        int iM687j2 = !ZArchiverService.m891i(1) ? 17 : 0;
        File file = new File(this.f1324b);
        boolean z2 = this.f1323a;
        C0129h c0129h = this.f1326d;
        C0129h c0129h2 = this.f1325c;
        if (z2) {
            iM687j = C0235b.m687j(interfaceC0239a, c0129h2, c0129h.m479f(), iM687j2, 1);
            File parentFile = file.getParentFile();
            if (parentFile != null && parentFile.exists()) {
                if (parentFile.isDirectory()) {
                    C0180c.m556c(parentFile);
                }
                parentFile.delete();
            }
        } else {
            String[] list = file.list();
            if (list != null) {
                for (String str : list) {
                    iM687j2 = C0235b.m687j(interfaceC0239a, new C0129h(str, c0129h2), c0129h, iM687j2, 1);
                    if (iM687j2 < 0) {
                        break;
                    }
                }
            }
            if (file.exists()) {
                if (file.isDirectory()) {
                    C0180c.m556c(file);
                }
                file.delete();
            }
            iM687j = iM687j2;
        }
        return iM687j != -1;
    }

    /* JADX INFO: renamed from: b */
    public final boolean m691b(InterfaceC0239a interfaceC0239a) {
        if (this.f1323a) {
            return C0235b.m687j(interfaceC0239a, this.f1326d, this.f1325c.m479f(), 17, 1) != -1;
        }
        return true;
    }
}
