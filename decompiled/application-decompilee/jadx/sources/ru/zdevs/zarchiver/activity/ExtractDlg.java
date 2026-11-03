package ru.zdevs.zarchiver.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.widget.Toast;
import p004b.C0015d;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p021g1.C0137h;
import p047s0.C0358b;
import p051u0.C0383f;
import p053v0.AbstractCallableC0395c;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.service.InterfaceC0316c;
import ru.zdevs.zarchiver.service.ZArchiverService;

/* JADX INFO: loaded from: classes.dex */
public class ExtractDlg extends Activity {

    /* JADX INFO: renamed from: a */
    public Handler f1505a;

    /* JADX INFO: renamed from: b */
    public String f1506b;

    /* JADX INFO: renamed from: c */
    public final ServiceConnectionC0289b f1507c = new ServiceConnectionC0289b();

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.ExtractDlg$a */
    public class RunnableC0288a implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ Intent f1508a;

        /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.ExtractDlg$a$a */
        public class a implements Runnable {

            /* JADX INFO: renamed from: a */
            public final /* synthetic */ Intent f1510a;

            public a(Intent intent) {
                this.f1510a = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                RunnableC0288a runnableC0288a = RunnableC0288a.this;
                ExtractDlg.this.startActivity(this.f1510a);
                Toast.makeText(ExtractDlg.this, R.string.MES_DONT_SUPPORT_EDIT, 0).show();
                ExtractDlg.this.finish();
            }
        }

        public RunnableC0288a(Intent intent) {
            this.f1508a = intent;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Intent intent = this.f1508a;
            Uri data = intent.getData();
            ExtractDlg extractDlg = ExtractDlg.this;
            String strM1075f = C0383f.m1075f(extractDlg, data);
            extractDlg.f1506b = strM1075f;
            if (strM1075f != null) {
                C0358b.m1042m(extractDlg, false, null);
                extractDlg.f1505a = C0137h.m503e(extractDlg, new Intent(extractDlg, (Class<?>) ZArchiverService.class), extractDlg.f1507c);
            } else {
                Intent intent2 = new Intent(extractDlg, (Class<?>) ZArchiver.class);
                intent2.setAction("android.intent.action.VIEW");
                intent2.setData(intent.getData());
                extractDlg.runOnUiThread(new a(intent2));
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.ExtractDlg$b */
    public class ServiceConnectionC0289b implements ServiceConnection {

        /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.ExtractDlg$b$a */
        public class a implements Runnable {

            /* JADX INFO: renamed from: a */
            public final /* synthetic */ InterfaceC0316c f1513a;

            /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.ExtractDlg$b$a$a, reason: collision with other inner class name */
            public class RunnableC0518a implements Runnable {
                public RunnableC0518a() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ExtractDlg.this.finishAndRemoveTask();
                }
            }

            public a(InterfaceC0316c interfaceC0316c) {
                this.f1513a = interfaceC0316c;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ServiceConnectionC0289b serviceConnectionC0289b = ServiceConnectionC0289b.this;
                String strM97y = C0015d.m97y(ExtractDlg.this.f1506b);
                String strM39A = C0015d.m39A(ExtractDlg.this.f1506b);
                String str = (!C0015d.m53O(strM97y, false) || C0358b.m1030a() <= 0) ? "" : "\\-mmt=" + C0358b.m1030a();
                String strM62X = C0015d.m62X(strM97y);
                if (strM97y.equals(strM62X)) {
                    strM62X = C0015d.m64Z(strM97y);
                }
                C0129h c0129h = new C0129h(C0015d.m78i(strM39A, strM62X));
                if (c0129h.m488o()) {
                    for (int i2 = 1; i2 < 10; i2++) {
                        AbstractC0127f abstractC0127fM463u = AbstractC0127f.m463u(c0129h);
                        if (!abstractC0127fM463u.mo418d() || abstractC0127fM463u.mo420k()) {
                            break;
                        }
                        c0129h = new C0129h(C0015d.m78i(strM39A, strM62X + "~" + i2));
                    }
                }
                try {
                    this.f1513a.ArchiveExtract(strM97y, new C0129h(ExtractDlg.this.f1506b), str, "", c0129h, 0);
                } catch (RemoteException unused) {
                }
                ExtractDlg.this.runOnUiThread(new RunnableC0518a());
            }
        }

        public ServiceConnectionC0289b() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ExtractDlg.this.f1505a = null;
            InterfaceC0316c interfaceC0316cAsInterface = InterfaceC0316c.a.asInterface(iBinder);
            try {
                interfaceC0316cAsInterface.SetSettings(C0358b.m1031b(), C0358b.f1985g, C0358b.f1983e);
            } catch (Exception unused) {
            }
            AbstractCallableC0395c.m1097h(new a(interfaceC0316cAsInterface));
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    @Override // android.app.Activity
    public final void finishAndRemoveTask() {
        super.finishAndRemoveTask();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null) {
            finishAndRemoveTask();
        } else {
            AbstractCallableC0395c.m1097h(new RunnableC0288a(intent));
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        Handler handler = this.f1505a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f1505a = null;
        }
        try {
            unbindService(this.f1507c);
        } catch (Exception unused) {
        }
    }
}
