package p051u0;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.IBinder;
import android.view.WindowManager;
import java.lang.reflect.Method;
import p004b.C0015d;
import p047s0.C0358b;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: u0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0379b {
    /* JADX INFO: renamed from: a */
    public static String m1054a(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, null);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: b */
    public static boolean m1055b(Configuration configuration) {
        String str;
        if (Build.VERSION.SDK_INT < 32 || !m1059f() || (configuration.screenLayout & 15) < 3 || (str = Build.DEVICE) == null) {
            return false;
        }
        return str.startsWith("gta") || str.startsWith("gts") || str.startsWith("q") || str.equals("f2q");
    }

    /* JADX INFO: renamed from: c */
    public static boolean m1056c(Context context) {
        Method methodM95w;
        int identifier;
        if (Build.VERSION.SDK_INT >= 29) {
            String strM1054a = m1054a("qemu.hw.mainkeys");
            if ("1".equals(strM1054a)) {
                return false;
            }
            if ("0".equals(strM1054a) || context == null || (identifier = context.getResources().getIdentifier("config_showNavigationBar", "bool", "android")) <= 0) {
                return true;
            }
            return context.getResources().getBoolean(identifier);
        }
        try {
            Class<?> cls = Class.forName("android.os.ServiceManager");
            IBinder iBinder = (IBinder) cls.getMethod("getService", String.class).invoke(cls, "window");
            Class<?> cls2 = Class.forName("android.view.IWindowManager$Stub");
            Object objInvoke = cls2.getMethod("asInterface", IBinder.class).invoke(cls2, iBinder);
            if (objInvoke == null || (methodM95w = C0015d.m95w(objInvoke.getClass(), "hasNavigationBar", new Class[0])) == null) {
                return true;
            }
            return ((Boolean) methodM95w.invoke(objInvoke, new Object[0])).booleanValue();
        } catch (Exception unused) {
            return true;
        }
    }

    /* JADX INFO: renamed from: d */
    public static boolean m1057d() {
        float refreshRate;
        try {
            refreshRate = ((WindowManager) ZApp.m722e().getSystemService("window")).getDefaultDisplay().getRefreshRate();
        } catch (Exception unused) {
            refreshRate = 60.0f;
        }
        if (refreshRate < 20.0f) {
            return true;
        }
        String str = Build.MANUFACTURER;
        if (str != null) {
            String lowerCase = str.toLowerCase();
            if (lowerCase.contentEquals("onyx") || lowerCase.contentEquals("kobo")) {
                return true;
            }
        }
        String str2 = Build.BRAND;
        if (str2 == null) {
            return false;
        }
        String lowerCase2 = str2.toLowerCase();
        return lowerCase2.contains("boyue") || lowerCase2.contains("onyx") || lowerCase2.contains("tolino");
    }

    /* JADX INFO: renamed from: e */
    public static boolean m1058e(Context context) {
        return context.getResources().getConfiguration().orientation != 2;
    }

    /* JADX INFO: renamed from: f */
    public static boolean m1059f() {
        String str = Build.MANUFACTURER;
        return str != null && C0385h.m1085i(str).contains("samsung");
    }

    /* JADX INFO: renamed from: g */
    public static boolean m1060g(Context context) {
        if (C0358b.m1041l(1)) {
            return false;
        }
        try {
            Resources resources = context.getResources();
            if (Build.VERSION.SDK_INT >= 24) {
                return resources.getConfiguration().screenWidthDp < 360;
            }
            int identifier = resources.getIdentifier("max_action_buttons", "integer", "android");
            return identifier != 0 && resources.getInteger(identifier) <= 2;
        } catch (Exception unused) {
        }
        return false;
    }
}
