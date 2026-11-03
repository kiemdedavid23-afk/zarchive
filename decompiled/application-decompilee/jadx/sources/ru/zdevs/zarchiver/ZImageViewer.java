package ru.zdevs.zarchiver;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import p004b.C0015d;
import p008c0.C0046d;
import p011d0.C0064b;
import p014e0.C0079a;
import p014e0.InterfaceC0082d;
import p016f.AbstractC0085a;
import p017f0.AbstractC0099i;
import p017f0.DialogInterfaceOnCancelListenerC0105o;
import p017f0.DialogInterfaceOnCancelListenerC0113w;
import p019g.C0118a;
import p019g.C0121d;
import p020g0.AbstractC0126e;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p020g0.InterfaceC0124c;
import p023h0.C0145b;
import p025i0.C0152e;
import p031l0.C0175d;
import p033m0.C0181d;
import p033m0.C0185h;
import p047s0.C0358b;
import p051u0.C0382e;
import p051u0.C0383f;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p055w0.C0415f;
import p059y0.C0441e;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.archiver.NArc;
import ru.zdevs.zarchiver.p044io.SAF;
import ru.zdevs.zarchiver.p045ui.layout.C0345b;
import ru.zdevs.zarchiver.provider.ArchiveFileProvider;

/* JADX INFO: loaded from: classes.dex */
public class ZImageViewer extends Activity implements C0393a.c, View.OnClickListener, C0121d.g {

    /* JADX INFO: renamed from: a */
    public C0345b f1405a;

    /* JADX INFO: renamed from: b */
    public C0263e f1406b;

    /* JADX INFO: renamed from: c */
    public final C0393a f1407c = new C0393a();

    /* JADX INFO: renamed from: d */
    public int f1408d;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZImageViewer$a */
    public class RunnableC0259a implements Runnable {
        public RunnableC0259a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ZImageViewer zImageViewer = ZImageViewer.this;
            if (zImageViewer.getActionBar().isShowing()) {
                zImageViewer.m761a(false);
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZImageViewer$b */
    public class C0260b implements AbstractC0099i.c {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ C0129h f1410a;

        /* JADX INFO: renamed from: b */
        public final /* synthetic */ String f1411b;

        /* JADX INFO: renamed from: c */
        public final /* synthetic */ int f1412c;

        public C0260b(C0129h c0129h, String str, int i2) {
            this.f1410a = c0129h;
            this.f1411b = str;
            this.f1412c = i2;
        }

        @Override // p017f0.AbstractC0099i.c
        /* JADX INFO: renamed from: b */
        public final boolean mo245b(AbstractC0099i abstractC0099i) {
            int i2 = this.f1412c;
            ZImageViewer zImageViewer = ZImageViewer.this;
            try {
                if (!AbstractC0127f.m463u(new C0129h(this.f1411b, this.f1410a)).mo417c()) {
                    ZApp.m725i(R.string.MES_END_WITH_ERROR);
                    return true;
                }
                zImageViewer.f1406b.f1417b.remove(i2);
                zImageViewer.f1405a.setAdapter(zImageViewer.f1406b);
                C0345b c0345b = zImageViewer.f1405a;
                if (i2 != 0) {
                    i2--;
                }
                c0345b.setCurrentItem(i2);
                return true;
            } catch (Exception unused) {
                return true;
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZImageViewer$c */
    public static class C0261c extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final Intent f1414e;

        public C0261c(Intent intent) {
            this.f1414e = intent;
        }

        /* JADX WARN: Code duplicated, block: B:123:0x022e  */
        /* JADX WARN: Code duplicated, block: B:39:0x00ae  */
        /* JADX WARN: Code duplicated, block: B:40:0x00b0  */
        /* JADX WARN: Code duplicated, block: B:69:0x0129  */
        /* JADX WARN: Code duplicated, block: B:86:0x0165  */
        /* JADX WARN: Code duplicated, block: B:87:0x016b  */
        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            C0145b c0145b;
            String strM97y;
            File file;
            File parentFile;
            String[] list;
            int i2;
            C0046d c0046d;
            ArrayList<C0046d> arrayList;
            String str;
            Uri data = this.f1414e.getData();
            int i3 = 0;
            int intExtra = this.f1414e.getIntExtra("zaSortType", 0);
            InterfaceC0124c c0175d = null;
            if (data != null) {
                byte b2 = 9;
                if (!"ru.zdevs.zarchiver.archive".equals(data.getAuthority()) || Build.VERSION.SDK_INT < 26) {
                    c0145b = null;
                } else {
                    ArchiveFileProvider.C0311a c0311aM877b = ArchiveFileProvider.m877b(ZApp.f1375c, data);
                    C0129h c0129h = new C0129h(c0311aM877b.f1646a);
                    c0129h.m476c();
                    String str2 = c0311aM877b.f1647b;
                    C0079a c0079aM266m = C0079a.m266m();
                    if (c0079aM266m.m278n(c0129h.f1015c)) {
                        if (c0079aM266m.m276k() != 0) {
                            arrayList = null;
                        } else {
                            ArrayList<C0046d> arrayList2 = new ArrayList<>();
                            c0079aM266m.m272f(c0129h.f1017e, arrayList2);
                            arrayList = arrayList2;
                        }
                    } else if (C2JBridge.f1554c || C2JBridge.m804e()) {
                        synchronized (C0064b.class) {
                            if (str2 != null) {
                                str = "\\-p" + str2.replace("\\", "\\\\");
                            } else {
                                str = "";
                            }
                            InterfaceC0082d interfaceC0082dM265j = C0079a.m265j(true);
                            C2JBridge.f1556e = interfaceC0082dM265j;
                            interfaceC0082dM265j.mo284a(0L, c0129h.f1015c);
                            if (!C2JBridge.cList(0, c0129h.f1015c, str) && interfaceC0082dM265j.mo287d() <= 0 && interfaceC0082dM265j.mo289f() == 0) {
                                interfaceC0082dM265j.mo297n(3);
                            }
                            InterfaceC0082d interfaceC0082d = C2JBridge.f1556e;
                            if (interfaceC0082d != null) {
                                interfaceC0082d.mo291h();
                            } else {
                                interfaceC0082dM265j.clear();
                            }
                            C2JBridge.f1556e = null;
                        }
                        if (c0079aM266m.m276k() != 0) {
                            arrayList = null;
                        } else {
                            ArrayList<C0046d> arrayList3 = new ArrayList<>();
                            c0079aM266m.m272f(c0129h.f1017e, arrayList3);
                            arrayList = arrayList3;
                        }
                    } else {
                        arrayList = null;
                    }
                    if (arrayList == null) {
                        c0145b = null;
                    } else {
                        Iterator<C0046d> it = arrayList.iterator();
                        while (it.hasNext()) {
                            if (it.next().m183d() != 9) {
                                it.remove();
                            }
                        }
                        if (arrayList.isEmpty()) {
                            c0145b = null;
                        } else {
                            String strM478e = c0311aM877b.f1646a.m478e();
                            if (strM478e.isEmpty()) {
                                c0145b = null;
                            } else {
                                Collections.sort(arrayList, AbstractC0126e.m459j(arrayList, intExtra));
                                int size = arrayList.size();
                                int i4 = 0;
                                while (true) {
                                    if (i4 >= size) {
                                        i4 = -1;
                                        break;
                                    }
                                    if (strM478e.equals(arrayList.get(i4).f352a)) {
                                        break;
                                    }
                                    i4++;
                                }
                                if (i4 == -1) {
                                    c0145b = null;
                                } else {
                                    try {
                                        C0129h c0129h2 = c0311aM877b.f1646a;
                                        NArc nArcM806k = NArc.m806k(c0129h2.f1015c, c0129h2.f1014b, c0311aM877b.f1647b);
                                        if (nArcM806k == null) {
                                            c0145b = null;
                                        } else {
                                            c0145b = new C0145b(nArcM806k, arrayList, i4, c0129h.f1017e, c0311aM877b);
                                        }
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                        }
                    }
                }
                if (c0145b == null) {
                    String strM1075f = C0383f.m1075f(null, data);
                    if (strM1075f != null) {
                        if (Build.VERSION.SDK_INT < 30 || !C0415f.m1137e(strM1075f)) {
                            file = new File(strM1075f);
                            if (!file.exists()) {
                                c0175d = C0175d.m553f(strM1075f);
                            } else if (!strM1075f.startsWith("/mnt/appfuse") && !C0181d.m570k(strM1075f)) {
                                String name = file.getName();
                                parentFile = file.getParentFile();
                                if (parentFile != null || (list = parentFile.list()) == null) {
                                    c0175d = null;
                                } else {
                                    String strM68d = C0015d.m68d(parentFile.getAbsolutePath());
                                    ArrayList arrayList4 = new ArrayList();
                                    int length = list.length;
                                    int i5 = 0;
                                    while (i5 < length) {
                                        String str3 = list[i5];
                                        if (C0015d.m43E(str3) == b2) {
                                            try {
                                                StructStat structStatStat = Os.stat(strM68d + str3);
                                                c0046d = OsConstants.S_ISDIR(structStatStat.st_mode) ? null : new C0046d(str3, (byte) 9, (byte) 0, 1000 * structStatStat.st_mtime, structStatStat.st_size);
                                            } catch (ErrnoException unused2) {
                                            }
                                            arrayList4.add(c0046d);
                                        }
                                        i5++;
                                        b2 = 9;
                                    }
                                    Collections.sort(arrayList4, AbstractC0126e.m459j(arrayList4, intExtra));
                                    int size2 = arrayList4.size();
                                    while (true) {
                                        if (i3 >= size2) {
                                            i2 = -1;
                                            break;
                                        }
                                        if (name.equals(((C0046d) arrayList4.get(i3)).f352a)) {
                                            i2 = i3;
                                            break;
                                        }
                                        i3++;
                                    }
                                    if (i2 >= 0) {
                                        ArrayList arrayList5 = new ArrayList(arrayList4.size());
                                        Iterator it2 = arrayList4.iterator();
                                        while (it2.hasNext()) {
                                            arrayList5.add(((C0046d) it2.next()).f352a);
                                        }
                                        c0175d = new C0152e(arrayList5, parentFile.getPath(), i2);
                                    } else {
                                        c0175d = null;
                                    }
                                }
                            }
                        } else {
                            String[] strArrM1133a = C0415f.m1133a(strM1075f);
                            if (strArrM1133a == null || !C0185h.m580b(strArrM1133a)) {
                                c0175d = C0175d.m553f(strM1075f);
                            } else {
                                strM1075f = C0185h.m579a(strM1075f, strArrM1133a[2]);
                                file = new File(strM1075f);
                                if (!file.exists()) {
                                    c0175d = C0175d.m553f(strM1075f);
                                } else if (!strM1075f.startsWith("/mnt/appfuse")) {
                                    String name2 = file.getName();
                                    parentFile = file.getParentFile();
                                    if (parentFile != null) {
                                        c0175d = null;
                                    } else {
                                        c0175d = null;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    c0175d = c0145b;
                }
                if (c0175d == null) {
                    if ("file".equals(data.getScheme())) {
                        strM97y = C0015d.m97y(data.getPath());
                    } else {
                        SAF.C0309a c0309aM855f = SAF.m855f(data);
                        strM97y = c0309aM855f != null ? c0309aM855f.f1638a : "";
                    }
                    c0175d = new C0175d(data, strM97y);
                }
            } else {
                c0175d = null;
            }
            return new C0262d(c0175d);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZImageViewer$d */
    public static class C0262d implements C0393a.b {

        /* JADX INFO: renamed from: a */
        public final InterfaceC0124c f1415a;

        public C0262d(InterfaceC0124c interfaceC0124c) {
            this.f1415a = interfaceC0124c;
        }

        @Override // p053v0.C0393a.b
        /* JADX INFO: renamed from: a */
        public final int mo342a() {
            return 0;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZImageViewer$e */
    public class C0263e extends AbstractC0085a {

        /* JADX INFO: renamed from: a */
        public final Context f1416a;

        /* JADX INFO: renamed from: b */
        public final InterfaceC0124c f1417b;

        /* JADX INFO: renamed from: c */
        public int f1418c = -1;

        public C0263e(Context context, InterfaceC0124c interfaceC0124c) {
            this.f1416a = context;
            this.f1417b = interfaceC0124c;
        }

        @Override // p016f.AbstractC0085a
        /* JADX INFO: renamed from: a */
        public final void mo311a(ViewGroup viewGroup, FrameLayout frameLayout) {
            View childAt = frameLayout.getChildAt(0);
            if (childAt instanceof C0121d) {
                C0121d c0121d = (C0121d) childAt;
                c0121d.m409t(true);
                c0121d.f912i0 = null;
                c0121d.f914j0 = null;
            }
            viewGroup.removeView(frameLayout);
        }

        @Override // p016f.AbstractC0085a
        /* JADX INFO: renamed from: b */
        public final int mo312b() {
            return this.f1417b.getCount();
        }

        /* JADX INFO: renamed from: d */
        public final String m763d() {
            int i2 = this.f1418c;
            if (i2 < 0) {
                return "";
            }
            InterfaceC0124c interfaceC0124c = this.f1417b;
            return i2 >= interfaceC0124c.getCount() ? "" : interfaceC0124c.getName(this.f1418c);
        }

        /* JADX INFO: renamed from: e */
        public final C0118a m764e(int i2) {
            InterfaceC0124c interfaceC0124c = this.f1417b;
            C0118a c0118aMo448d = interfaceC0124c.mo448d(i2);
            String lowerCase = interfaceC0124c.getName(i2).toLowerCase();
            boolean z2 = true;
            boolean z3 = (lowerCase.endsWith(".gif") || lowerCase.endsWith(".ico")) ? false : true;
            if (z3) {
                long j2 = c0118aMo448d.f863e;
                if (j2 != 0 && j2 <= 20480) {
                    z2 = false;
                }
                z3 = z2;
            }
            c0118aMo448d.f864f = z3;
            return c0118aMo448d;
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m761a(boolean z2) {
        View decorView = getWindow().getDecorView();
        if (z2 || !getActionBar().isShowing()) {
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (~this.f1408d));
            getActionBar().show();
        } else {
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | this.f1408d);
            getActionBar().hide();
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m762b(C0121d c0121d, Exception exc) {
        FrameLayout frameLayout = (FrameLayout) c0121d.getTag();
        if (frameLayout == null) {
            ZApp.m726j("Failed to load image: " + exc.getMessage());
            return;
        }
        frameLayout.removeAllViews();
        TextView textView = new TextView(frameLayout.getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        textView.setLayoutParams(layoutParams);
        textView.setText(exc.getMessage());
        frameLayout.addView(textView);
    }

    @Override // android.app.Activity
    public final void finish() {
        this.f1405a.setAdapter(null);
        super.finish();
    }

    @Override // p053v0.C0393a.c
    /* JADX INFO: renamed from: g */
    public final void mo341g(C0393a.b bVar) {
        C0262d c0262d = (C0262d) bVar;
        InterfaceC0124c interfaceC0124c = c0262d.f1415a;
        if (interfaceC0124c == null) {
            ZApp.m725i(R.string.ERROR_UNSUPORTED_METOD);
            finish();
            return;
        }
        this.f1406b = new C0263e(this, interfaceC0124c);
        C0345b c0345b = this.f1405a;
        InterfaceC0124c interfaceC0124c2 = c0262d.f1415a;
        c0345b.setOffscreenPageLimit(interfaceC0124c2.mo447c() ? 2 : 1);
        this.f1405a.setAdapter(this.f1406b);
        this.f1405a.setCurrentItem(interfaceC0124c2.mo445a());
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        return super.getMenuInflater();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        m761a(false);
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        C0358b.m1042m(this, false, null);
        boolean zM1040k = C0358b.m1040k(1536);
        Window window = getWindow();
        if (!zM1040k) {
            window.requestFeature(9);
            window.getDecorView().setSystemUiVisibility(1792);
        }
        int i2 = Build.VERSION.SDK_INT;
        this.f1408d = 2054;
        window.addFlags(134217728);
        if (i2 >= 28) {
            window.getAttributes().layoutInDisplayCutoutMode = 1;
        }
        C0441e.m1181f(this);
        C0441e.m1184i(this, C0358b.f1983e);
        C0441e.m1184i(ZApp.f1375c, C0358b.f1983e);
        if (zM1040k) {
            C0441e.m1188m(this, false);
        } else {
            window.setBackgroundDrawable(new ColorDrawable(-16777216));
            window.setStatusBarColor(1073741824);
        }
        super.onCreate(bundle);
        C0345b c0345b = new C0345b(this);
        this.f1405a = c0345b;
        c0345b.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        setContentView(this.f1405a);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            if (!zM1040k) {
                actionBar.setBackgroundDrawable(new ColorDrawable(1073741824));
            }
            if (!C0441e.m1178c(this)) {
                actionBar.setDisplayHomeAsUpEnabled(true);
            }
        }
        new C0261c(getIntent()).m1098g(this, this.f1407c);
        try {
            ZApp.m723f().postDelayed(new RunnableC0259a(), 2000L);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_imageviewer, menu);
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 66 || i2 == 20 || i2 == 19) {
            m761a(true);
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onMenuOpened(int i2, Menu menu) {
        C0263e c0263e;
        if (i2 == 8) {
            C0441e.m1186k(menu);
            if (menu != null && (c0263e = this.f1406b) != null && c0263e.mo312b() > 0) {
                C0263e c0263e2 = this.f1406b;
                InterfaceC0124c interfaceC0124c = c0263e2.f1417b;
                String strM763d = c0263e2.m763d();
                C0129h c0129hMo449e = interfaceC0124c.mo449e();
                boolean z2 = false;
                menu.findItem(R.id.bInfo).setVisible((c0129hMo449e == null || strM763d.isEmpty()) ? false : true);
                MenuItem menuItemFindItem = menu.findItem(R.id.bDelete);
                if (interfaceC0124c.mo447c() && c0129hMo449e != null && !strM763d.isEmpty() && !C0181d.m570k(c0129hMo449e.f1015c)) {
                    z2 = true;
                }
                menuItemFindItem.setVisible(z2);
                menu.findItem(R.id.bShare).setVisible(true);
            }
        }
        return super.onMenuOpened(i2, menu);
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        String strM763d;
        int itemId = menuItem.getItemId();
        if (itemId == 16908332 || itemId == R.id.bExit) {
            finish();
            return true;
        }
        Uri uriMo446b = null;
        if (itemId == R.id.bShare) {
            C0263e c0263e = this.f1406b;
            if (c0263e != null) {
                strM763d = c0263e.m763d();
                C0263e c0263e2 = this.f1406b;
                int i2 = c0263e2.f1418c;
                if (i2 >= 0) {
                    InterfaceC0124c interfaceC0124c = c0263e2.f1417b;
                    if (i2 < interfaceC0124c.getCount()) {
                        uriMo446b = interfaceC0124c.mo446b(this, c0263e2.f1418c);
                    }
                }
            } else {
                strM763d = "";
            }
            C0382e.m1067e(this, uriMo446b, strM763d);
            return true;
        }
        if (itemId == R.id.bInfo) {
            C0129h c0129hMo449e = this.f1406b.f1417b.mo449e();
            String strM763d2 = this.f1406b.m763d();
            if (c0129hMo449e == null || strM763d2.isEmpty()) {
                return false;
            }
            new DialogInterfaceOnCancelListenerC0105o((C0307d) null, (Context) this, c0129hMo449e, strM763d2, false).m368u();
            return true;
        }
        if (itemId == R.id.bDelete) {
            C0263e c0263e3 = this.f1406b;
            if (c0263e3 == null) {
                return true;
            }
            int i3 = c0263e3.f1418c;
            C0129h c0129hMo449e2 = c0263e3.f1417b.mo449e();
            String strM763d3 = this.f1406b.m763d();
            if (c0129hMo449e2 != null && !strM763d3.isEmpty()) {
                DialogInterfaceOnCancelListenerC0113w dialogInterfaceOnCancelListenerC0113w = new DialogInterfaceOnCancelListenerC0113w(1, this, getString(R.string.MES_QUESTION_REMOVE).replace("%1", this.f1406b.m763d()), null);
                dialogInterfaceOnCancelListenerC0113w.f738b = new C0260b(c0129hMo449e2, strM763d3, i3);
                dialogInterfaceOnCancelListenerC0113w.m381r();
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        this.f1407c.m1093d(this);
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        this.f1407c.m1090a(this, this);
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        ZApp.m719b(this);
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        this.f1407c.m1095f(1000, 1, -1);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            return;
        }
        getActionBar().show();
    }
}
