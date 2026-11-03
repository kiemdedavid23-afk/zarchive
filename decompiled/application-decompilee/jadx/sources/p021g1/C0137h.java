package p021g1;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import p053v0.AbstractCallableC0395c;
import p059y0.C0441e;
import ru.zdevs.zarchiver.C0287a;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: g1.h */
/* JADX INFO: loaded from: classes.dex */
public final class C0137h {

    /* JADX INFO: renamed from: g1.h$a */
    public class a implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ Context f1034a;

        /* JADX INFO: renamed from: b */
        public final /* synthetic */ Intent f1035b;

        /* JADX INFO: renamed from: c */
        public final /* synthetic */ ServiceConnection f1036c;

        public a(Context context, Intent intent, ServiceConnection serviceConnection) {
            this.f1034a = context;
            this.f1035b = intent;
            this.f1036c = serviceConnection;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Intent intent = this.f1035b;
            Context context = this.f1034a;
            try {
                context.startService(intent);
                context.bindService(intent, this.f1036c, 72);
            } catch (IllegalStateException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static boolean m499a(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (context == null) {
            context = ZApp.f1375c;
        } else {
            ZApp zApp = ZApp.f1375c;
        }
        if (context == null) {
            return true;
        }
        if (i2 < 30 || (i2 < 33 && C0441e.m1178c(context))) {
            return (context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == -1 || context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == -1) ? false : true;
        }
        return Environment.isExternalStorageManager();
    }

    /* JADX INFO: renamed from: b */
    public static boolean m500b() {
        ZApp zApp = ZApp.f1375c;
        if (zApp == null) {
            return false;
        }
        return zApp.getPackageManager().canRequestPackageInstalls();
    }

    /* JADX INFO: renamed from: c */
    public static void m501c(Context context, C0287a.a aVar, IntentFilter intentFilter) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.registerReceiver(aVar, intentFilter, 4);
        } else {
            context.registerReceiver(aVar, intentFilter);
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m502d(Context context, Intent intent) {
        AbstractCallableC0395c.m1097h(new RunnableC0135f(context, intent));
    }

    /* JADX INFO: renamed from: e */
    public static Handler m503e(Context context, Intent intent, ServiceConnection serviceConnection) {
        try {
            context.startService(intent);
            context.bindService(intent, serviceConnection, 72);
            return null;
        } catch (IllegalStateException | SecurityException unused) {
            Handler handler = new Handler(Looper.getMainLooper());
            handler.postDelayed(new a(context, intent, serviceConnection), 700L);
            return handler;
        }
    }
}
