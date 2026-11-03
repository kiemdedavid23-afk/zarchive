package p037o0;

import android.util.Log;
import java.io.File;
import p035n0.C0195b;
import ru.zdevs.zarchiver.archiver.C2JBridge;

/* JADX INFO: renamed from: o0.a */
/* JADX INFO: loaded from: classes.dex */
public class C0203a {

    /* JADX INFO: renamed from: a */
    public static final String[] f1217a = {"/data/data/ru.zdevs.zarchiver/lib/libcoreutils.so", "/system/lib/ru.zdevs.zarchiver/libcoreutils.so", "/system/lib/libcoreutils.so"};

    /* JADX INFO: renamed from: b */
    public static int f1218b = 0;

    /* JADX INFO: renamed from: a */
    public static String m605a() {
        int i2 = f1218b;
        if (i2 >= 2) {
            return f1217a[i2 - 2];
        }
        StringBuilder sb = new StringBuilder();
        if (C2JBridge.f1555d == null) {
            C2JBridge.m802c(null);
        }
        sb.append(C2JBridge.f1555d);
        sb.append("/libcoreutils.so");
        return sb.toString();
    }

    /* JADX INFO: renamed from: b */
    public static boolean m606b() {
        String string;
        if (f1218b == 0) {
            f1218b = -1;
            int i2 = -1;
            while (true) {
                try {
                    String[] strArr = f1217a;
                    if (i2 >= 3) {
                        break;
                    }
                    if (i2 == -1) {
                        StringBuilder sb = new StringBuilder();
                        if (C2JBridge.f1555d == null) {
                            C2JBridge.m802c(null);
                        }
                        sb.append(C2JBridge.f1555d);
                        sb.append("/libcoreutils.so");
                        string = sb.toString();
                    } else {
                        string = strArr[i2];
                    }
                    File file = new File(string);
                    if (file.exists()) {
                        if (!file.canExecute()) {
                            C0195b c0195b = new C0195b();
                            c0195b.m592b("chmod 755 '" + string + "'");
                            c0195b.close();
                            if (!new File(string).canExecute()) {
                                break;
                            }
                            f1218b = i2 + 2;
                            break;
                        }
                        f1218b = i2 + 2;
                        break;
                    }
                    i2++;
                } catch (Exception unused) {
                }
            }
            if (f1218b == -1) {
                Log.w("coreutils", "Internal operation don't supported!");
            }
        }
        return f1218b != -1;
    }
}
