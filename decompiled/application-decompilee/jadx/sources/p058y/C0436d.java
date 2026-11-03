package p058y;

import android.util.Log;
import java.lang.reflect.Method;
import java.util.HashMap;

/* JADX INFO: renamed from: y.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0436d {

    /* JADX INFO: renamed from: a */
    public static final HashMap f2223a = new HashMap();

    /* JADX INFO: renamed from: b */
    public static final Method f2224b;

    static {
        new HashMap();
        try {
            f2224b = Class.forName("android.os.ServiceManager").getMethod("getService", String.class);
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.w("SystemServiceHelper", Log.getStackTraceString(e2));
        }
    }
}
