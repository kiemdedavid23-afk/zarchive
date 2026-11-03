package ru.zdevs.zarchiver;

import android.app.AlarmManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import java.io.InvalidObjectException;
import p004b.C0015d;
import p011d0.C0070h;
import p014e0.C0079a;
import p047s0.C0358b;
import p051u0.C0385h;
import p057x0.C0431b;
import p057x0.C0432c;
import p057x0.InterfaceC0430a;
import rikka.shizuku.ShizukuProvider;
import ru.zdevs.zarchiver.service.ZArchiverClearTemp;

/* JADX INFO: loaded from: classes.dex */
public class ZApp extends Application {

    /* JADX INFO: renamed from: c */
    public static volatile ZApp f1375c;

    /* JADX INFO: renamed from: d */
    public static final Object f1376d = new Object();

    /* JADX INFO: renamed from: e */
    public static Toast f1377e;

    /* JADX INFO: renamed from: f */
    public static ContentResolver f1378f;

    /* JADX INFO: renamed from: g */
    public static final boolean f1379g;

    /* JADX INFO: renamed from: a */
    public Handler f1380a;

    /* JADX INFO: renamed from: b */
    public PendingIntent f1381b;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZApp$a */
    public class RunnableC0249a implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ String f1382a;

        /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZApp$a$a */
        public class a implements InterfaceC0430a {
        }

        public RunnableC0249a(String str) {
            this.f1382a = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Toast toastMakeText;
            if (Build.VERSION.SDK_INT == 25) {
                ZApp zApp = ZApp.f1375c;
                String str = this.f1382a;
                int i2 = C0432c.f2204b;
                Toast toastMakeText2 = Toast.makeText(zApp, str, 0);
                C0432c.m1152a(toastMakeText2.getView(), new C0431b(zApp, toastMakeText2));
                toastMakeText = new C0432c(zApp, toastMakeText2);
                a aVar = new a();
                Context context = toastMakeText.getView().getContext();
                if (context instanceof C0431b) {
                    ((C0431b) context).f2200b = aVar;
                }
            } else {
                toastMakeText = Toast.makeText(ZApp.f1375c, this.f1382a, 0);
            }
            synchronized (ZApp.f1376d) {
                Toast toast = ZApp.f1377e;
                if (toast != null) {
                    toast.cancel();
                }
                ZApp.f1377e = toastMakeText;
                toastMakeText.show();
            }
        }
    }

    static {
        boolean zM44F = C0015d.m44F("ru.zdevs.zarchiver");
        f1379g = zM44F;
        if (zM44F) {
            return;
        }
        String processName = getProcessName();
        boolean z2 = processName == null || processName.indexOf(58) == -1;
        boolean z3 = ShizukuProvider.f1371a;
        StringBuilder sb = new StringBuilder("Enable built-in multi-process support (from ");
        sb.append(z2 ? "provider process" : "non-provider process");
        sb.append(")");
        Log.d("ShizukuProvider", sb.toString());
        ShizukuProvider.f1372b = z2;
        ShizukuProvider.f1371a = true;
    }

    /* JADX INFO: renamed from: a */
    public static ContentResolver m718a() {
        ContentResolver contentResolver = f1378f;
        if (contentResolver != null) {
            return contentResolver;
        }
        throw new RuntimeException("ContentResolver is NULL");
    }

    /* JADX INFO: renamed from: b */
    public static ContentResolver m719b(Context context) {
        if (f1378f == null) {
            f1378f = context.getApplicationContext().getContentResolver();
        }
        return f1378f;
    }

    /* JADX INFO: renamed from: c */
    public static Context m720c(Context context) {
        return f1375c == null ? context : f1375c;
    }

    /* JADX INFO: renamed from: d */
    public static ZApp m721d() {
        return f1375c;
    }

    /* JADX INFO: renamed from: e */
    public static ZApp m722e() throws InvalidObjectException {
        if (f1375c != null) {
            return f1375c;
        }
        throw new InvalidObjectException("App context is NULL");
    }

    /* JADX INFO: renamed from: f */
    public static Handler m723f() throws InvalidObjectException {
        if (f1375c != null) {
            return f1375c.f1380a;
        }
        throw new InvalidObjectException("App context is NULL");
    }

    /* JADX INFO: renamed from: g */
    public static void m724g() {
        synchronized (f1376d) {
            Toast toast = f1377e;
            if (toast != null) {
                toast.cancel();
                f1377e = null;
            }
        }
    }

    public static String getProcessName() {
        if (Build.VERSION.SDK_INT >= 28) {
            return Application.getProcessName();
        }
        try {
            return (String) Class.forName("android.app.ActivityThread").getDeclaredMethod("currentProcessName", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: i */
    public static void m725i(int i2) {
        if (f1375c == null) {
            return;
        }
        try {
            m726j(f1375c.getResources().getString(i2));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: j */
    public static void m726j(String str) {
        try {
            if (C0385h.m1081e(str)) {
                return;
            }
            m723f().post(new RunnableC0249a(str));
        } catch (Exception unused) {
        }
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        f1375c = this;
        super.attachBaseContext(context);
    }

    /* JADX INFO: renamed from: h */
    public final void m727h() {
        AlarmManager alarmManager = (AlarmManager) getSystemService("alarm");
        if (alarmManager == null) {
            return;
        }
        PendingIntent pendingIntent = this.f1381b;
        if (pendingIntent == null) {
            this.f1381b = PendingIntent.getService(this, 0, new Intent(this, (Class<?>) ZArchiverClearTemp.class), 301989888);
        } else {
            alarmManager.cancel(pendingIntent);
        }
        alarmManager.set(1, System.currentTimeMillis() + 10800000, this.f1381b);
    }

    @Override // android.app.Application
    public final void onCreate() {
        f1375c = this;
        this.f1380a = new Handler(Looper.getMainLooper());
        f1378f = getContentResolver();
        String processName = getProcessName();
        if (processName == null || processName.indexOf(58) == -1) {
            boolean z2 = Build.VERSION.SDK_INT >= 26;
            C0015d.m76h(this, ".activity.InstallApksDlg", z2);
            C0015d.m76h(this, ".provider.PluginFileProvider", z2);
            C0358b.m1042m(this, true, null);
        }
        if (!f1379g) {
            ShizukuProvider.m717a(this);
        }
        super.onCreate();
    }

    @Override // android.app.Application
    public final void onTerminate() {
        super.onTerminate();
        m724g();
        C0070h c0070h = C0070h.f492d;
        if (c0070h != null) {
            c0070h.m254a();
        }
        C0070h.f492d = null;
        C0079a c0079a = C0079a.f581e;
        if (c0079a != null) {
            c0079a.m267a();
        }
        C0079a.f581e = null;
        f1375c = this;
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i2) {
        if (i2 >= 40) {
            C0079a.m266m().m267a();
        }
        super.onTrimMemory(i2);
    }
}
