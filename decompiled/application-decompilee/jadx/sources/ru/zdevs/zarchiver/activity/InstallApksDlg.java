package ru.zdevs.zarchiver.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.widget.Toast;
import java.lang.ref.WeakReference;
import p001a0.RunnableC0004d;
import p004b.C0015d;
import p017f0.DialogInterfaceOnCancelListenerC0115y;
import p020g0.C0129h;
import p021g1.RunnableC0136g;
import p039p0.C0223a;
import p047s0.C0358b;
import p051u0.C0383f;
import p053v0.AbstractCallableC0395c;
import ru.zdevs.zarchiver.C0306c;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.service.InterfaceC0316c;

/* JADX INFO: loaded from: classes.dex */
public class InstallApksDlg extends Activity {

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ int f1516f = 0;

    /* JADX INFO: renamed from: a */
    public Handler f1517a;

    /* JADX INFO: renamed from: b */
    public DialogInterfaceOnCancelListenerC0115y f1518b;

    /* JADX INFO: renamed from: c */
    public boolean f1519c;

    /* JADX INFO: renamed from: d */
    public C0129h f1520d;

    /* JADX INFO: renamed from: e */
    public final ServiceConnectionC0294e f1521e = new ServiceConnectionC0294e();

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.InstallApksDlg$a */
    public class RunnableC0290a implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ Intent f1522a;

        public RunnableC0290a(Intent intent) {
            this.f1522a = intent;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Uri data = this.f1522a.getData();
            InstallApksDlg installApksDlg = InstallApksDlg.this;
            String strM1075f = C0383f.m1075f(installApksDlg, data);
            if (strM1075f == null) {
                int i2 = InstallApksDlg.f1516f;
                installApksDlg.m796a("Failed to get path to the APKS/XAPK file", false);
                return;
            }
            C0358b.m1042m(installApksDlg, false, null);
            try {
                if (C0223a.m628j(new C0129h(strM1075f), InstallApksDlg.class)) {
                    return;
                }
                int i3 = InstallApksDlg.f1516f;
                installApksDlg.m796a(null, false);
            } catch (C0223a.b e2) {
                installApksDlg.startActivityForResult(e2.f1269a, 1203);
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.InstallApksDlg$b */
    public class RunnableC0291b implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ String f1524a;

        public RunnableC0291b(String str) {
            this.f1524a = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            InstallApksDlg installApksDlg = InstallApksDlg.this;
            C0223a.m619a(installApksDlg);
            int i2 = InstallApksDlg.f1516f;
            installApksDlg.m796a(this.f1524a, false);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.InstallApksDlg$c */
    public class RunnableC0292c implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ C0129h f1526a;

        public RunnableC0292c(C0129h c0129h) {
            this.f1526a = c0129h;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                C0223a.m628j(this.f1526a, InstallApksDlg.class);
            } catch (C0223a.b unused) {
                int i2 = InstallApksDlg.f1516f;
                InstallApksDlg.this.m796a(null, false);
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.InstallApksDlg$d */
    public class RunnableC0293d implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ String f1528a;

        /* JADX INFO: renamed from: b */
        public final /* synthetic */ boolean f1529b;

        public RunnableC0293d(String str, boolean z2) {
            this.f1528a = str;
            this.f1529b = z2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            InstallApksDlg installApksDlg = InstallApksDlg.this;
            String string = this.f1528a;
            if (string == null) {
                string = installApksDlg.getString(this.f1529b ? R.string.MES_INSTALL_APP_DONE : R.string.MES_INSTALL_APP_FAILED);
            }
            if (string != null) {
                Toast.makeText(installApksDlg, string, 1).show();
            }
            installApksDlg.finishAndRemoveTask();
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.InstallApksDlg$e */
    public class ServiceConnectionC0294e implements ServiceConnection {
        public ServiceConnectionC0294e() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            InstallApksDlg installApksDlg = InstallApksDlg.this;
            installApksDlg.f1519c = true;
            installApksDlg.f1517a = null;
            InterfaceC0316c interfaceC0316cAsInterface = InterfaceC0316c.a.asInterface(iBinder);
            try {
                interfaceC0316cAsInterface.SetSettings(C0358b.m1031b(), C0358b.f1985g, C0358b.f1983e);
            } catch (Exception unused) {
            }
            C0306c c0306c = new C0306c();
            c0306c.f1616a = new WeakReference<>(interfaceC0316cAsInterface);
            AbstractCallableC0395c.f2111d.execute(new RunnableC0004d(installApksDlg, c0306c, installApksDlg.f1520d));
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m796a(String str, boolean z2) {
        runOnUiThread(new RunnableC0293d(str, z2));
    }

    @Override // android.app.Activity
    public final void finishAndRemoveTask() {
        DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y = this.f1518b;
        if (dialogInterfaceOnCancelListenerC0115y != null) {
            dialogInterfaceOnCancelListenerC0115y.mo337d();
        }
        super.finishAndRemoveTask();
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        C0129h c0129h;
        if (i2 == 1203) {
            if (i3 != -1 || intent == null || (c0129h = (C0129h) intent.getParcelableExtra("apk_path")) == null) {
                m796a(null, false);
            } else {
                AbstractCallableC0395c.f2111d.execute(new RunnableC0292c(c0129h));
            }
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null) {
            finishAndRemoveTask();
            return;
        }
        DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y = new DialogInterfaceOnCancelListenerC0115y((C0307d) null, this, R.string.MENU_INSTALL, 0);
        this.f1518b = dialogInterfaceOnCancelListenerC0115y;
        dialogInterfaceOnCancelListenerC0115y.m387r();
        AbstractCallableC0395c.f2111d.execute(new RunnableC0290a(intent));
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        Bundle extras;
        DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y;
        super.onNewIntent(intent);
        if (intent == null || !"ru.zdevs.zarchiver.APP_INSTALL_RESULT".equals(intent.getAction()) || (extras = intent.getExtras()) == null) {
            return;
        }
        int i2 = extras.getInt("android.content.pm.extra.STATUS", -1);
        String string = extras.getString("android.content.pm.extra.STATUS_MESSAGE");
        Uri data = intent.getData();
        C0129h c0129h = data == null ? null : new C0129h(data);
        if ((c0129h != null && c0129h.f1015c.toLowerCase().endsWith(".xapk")) && i2 == 0) {
            AbstractCallableC0395c.f2111d.execute(new RunnableC0004d(this, null, c0129h));
            return;
        }
        if (i2 != -1 && (dialogInterfaceOnCancelListenerC0115y = this.f1518b) != null) {
            dialogInterfaceOnCancelListenerC0115y.mo337d();
        }
        if (i2 != -1) {
            if (i2 == 0) {
                m796a(null, true);
                return;
            } else if (i2 != 3) {
                AbstractCallableC0395c.m1097h(new RunnableC0291b(string));
                return;
            } else {
                m796a(null, false);
                return;
            }
        }
        Intent intent2 = (Intent) extras.get("android.intent.extra.INTENT");
        if (intent2 == null) {
            return;
        }
        ComponentName componentNameResolveActivity = intent2.resolveActivity(getPackageManager());
        if (componentNameResolveActivity != null && (componentNameResolveActivity.getPackageName().startsWith("ru.zdevs") || componentNameResolveActivity.getClassName().startsWith("ru.zdevs"))) {
            m796a("Incorrect confirm pending", false);
        } else if (C0015d.m50L(intent2.getFlags(), 3)) {
            m796a("Incorrect confirm pending", false);
        } else {
            AbstractCallableC0395c.m1097h(new RunnableC0136g(this, intent2, 112, null));
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        Handler handler = this.f1517a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f1517a = null;
        }
        try {
            if (this.f1519c) {
                unbindService(this.f1521e);
            }
        } catch (Exception unused) {
        }
    }
}
