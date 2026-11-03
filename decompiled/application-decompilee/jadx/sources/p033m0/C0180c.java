package p033m0;

import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;
import java.nio.file.Files;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p004b.C0015d;
import p020g0.AbstractC0126e;
import p051u0.InterfaceC0381d;
import p055w0.C0410a;

/* JADX INFO: renamed from: m0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0180c {
    /* JADX INFO: renamed from: a */
    public static void m554a(File file, long j2, boolean z2) {
        File[] fileArrListFiles;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.lastModified() < j2) {
                    m554a(file2, j2, true);
                }
            }
        }
        if (z2) {
            file.delete();
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m555b(boolean z2) {
        File file = new File(C0181d.m566g());
        if (file.exists()) {
            m554a(file, z2 ? Long.MAX_VALUE : System.currentTimeMillis() - 10800000, false);
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m556c(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    m556c(file2);
                }
                file2.delete();
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m557d(File file, AbstractC0126e.b bVar, InterfaceC0381d interfaceC0381d) {
        boolean z2;
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                AtomicInteger atomicInteger = new AtomicInteger(0);
                AtomicLong atomicLong = new AtomicLong(0L);
                try {
                    Files.walkFileTree(file.toPath(), new C0179b(atomicInteger, atomicLong, interfaceC0381d));
                    bVar.f997c = atomicLong.get() + bVar.f997c;
                    bVar.f998d = atomicInteger.get() + bVar.f998d;
                    z2 = true;
                } catch (Exception unused) {
                    z2 = false;
                }
                if (z2) {
                    return;
                }
            } catch (Exception unused2) {
            }
            bVar.f997c = 0L;
            bVar.f998d = 0;
        }
        byte bM1102a = C0410a.m1102a(file);
        int i2 = (bM1102a == 1 || bM1102a == 3) ? 9 : 1;
        if (bM1102a == 2) {
            i2 |= 2;
        }
        if (bM1102a == 2 || bM1102a == 1) {
            i2 |= 4;
        }
        m558e(file, bVar, interfaceC0381d, 0, C0015d.m49K(i2, 4));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0023  */
    /* JADX WARN: Code duplicated, block: B:20:0x002b  */
    /* JADX WARN: Code duplicated, block: B:21:0x0033  */
    /* JADX INFO: renamed from: e */
    public static void m558e(File file, AbstractC0126e.b bVar, InterfaceC0381d interfaceC0381d, int i2, boolean z2) {
        File[] fileArrListFiles;
        if (i2 <= 30 && (fileArrListFiles = file.listFiles()) != null) {
            for (int i3 = 0; i3 < fileArrListFiles.length; i3++) {
                if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                    return;
                }
                if (z2) {
                    try {
                        if (!m559f(fileArrListFiles[i3])) {
                            if (fileArrListFiles[i3].isDirectory()) {
                                m558e(fileArrListFiles[i3], bVar, interfaceC0381d, i2 + 1, z2);
                            } else {
                                bVar.f997c = fileArrListFiles[i3].length() + bVar.f997c;
                                bVar.f998d++;
                            }
                        }
                    } catch (Exception unused) {
                    }
                } else if (fileArrListFiles[i3].isDirectory()) {
                    m558e(fileArrListFiles[i3], bVar, interfaceC0381d, i2 + 1, z2);
                } else {
                    bVar.f997c = fileArrListFiles[i3].length() + bVar.f997c;
                    bVar.f998d++;
                }
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public static boolean m559f(File file) {
        try {
            return OsConstants.S_ISLNK(Os.lstat(file.getAbsolutePath()).st_mode);
        } catch (Exception unused) {
            return false;
        }
    }
}
