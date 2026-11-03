package ru.zdevs.zarchiver.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.sothree.slidinguppanel.SlidingUpPanelLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import p001a0.C0006f;
import p001a0.C0007g;
import p001a0.ViewOnTouchListenerC0008h;
import p001a0.ViewTreeObserverOnPreDrawListenerC0005e;
import p004b.C0015d;
import p005b0.C0027i;
import p033m0.C0181d;
import p047s0.C0358b;
import p049t0.C0373a;
import p049t0.C0374b;
import p051u0.C0382e;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p059y0.C0439c;
import p059y0.C0441e;
import p059y0.C0443g;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: loaded from: classes.dex */
public class OpenAsDlg extends Activity implements C0393a.c {

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ int f1532f = 0;

    /* JADX INFO: renamed from: a */
    public C0027i f1533a;

    /* JADX INFO: renamed from: b */
    public int f1534b;

    /* JADX INFO: renamed from: c */
    public String f1535c;

    /* JADX INFO: renamed from: d */
    public final C0393a f1536d = new C0393a();

    /* JADX INFO: renamed from: e */
    public final ViewOnClickListenerC0296b f1537e = new ViewOnClickListenerC0296b();

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.OpenAsDlg$a */
    public class RunnableC0295a implements Runnable {
        public RunnableC0295a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            OpenAsDlg openAsDlg = OpenAsDlg.this;
            openAsDlg.setResult(0);
            openAsDlg.finishAndRemoveTask();
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.OpenAsDlg$b */
    public class ViewOnClickListenerC0296b implements View.OnClickListener {

        /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.OpenAsDlg$b$a */
        public class a implements Runnable {

            /* JADX INFO: renamed from: a */
            public final /* synthetic */ C0374b f1540a;

            public a(C0374b c0374b) {
                this.f1540a = c0374b;
            }

            @Override // java.lang.Runnable
            public final void run() {
                SQLiteDatabase readableDatabase;
                C0374b c0374b = this.f1540a;
                try {
                    readableDatabase = new C0373a(ZApp.f1375c).getReadableDatabase();
                } catch (SQLiteCantOpenDatabaseException unused) {
                    readableDatabase = null;
                }
                if (readableDatabase == null) {
                    return;
                }
                try {
                    if (c0374b.f2077e == 1000) {
                        c0374b.f2077e = 1;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("EXT", c0374b.f2073a);
                    contentValues.put("PKG", c0374b.f2074b);
                    contentValues.put("CLS", c0374b.f2075c);
                    contentValues.put("SCHEME", Integer.valueOf(c0374b.f2076d));
                    contentValues.put("TYPE", Integer.valueOf(c0374b.f2077e));
                    if (readableDatabase.update("FA", contentValues, "EXT = ? AND TYPE = ?", new String[]{c0374b.f2073a, String.valueOf(c0374b.f2077e)}) == 0) {
                        readableDatabase.insert("FA", null, contentValues);
                    }
                } finally {
                    C0181d.m563d(readableDatabase);
                }
            }
        }

        public ViewOnClickListenerC0296b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Bundle bundleExtra;
            OpenAsDlg openAsDlg = OpenAsDlg.this;
            Intent intent = openAsDlg.f1533a.f199b.get(openAsDlg.f1534b).f200a;
            if (intent != null) {
                Intent intent2 = openAsDlg.getIntent();
                if (intent2 != null && (bundleExtra = intent2.getBundleExtra("OpenAsDlg.EXTRA_EXTRA")) != null) {
                    intent.putExtras(bundleExtra);
                }
                if (C0382e.m1069g(openAsDlg, intent) == 0 && view != null && openAsDlg.f1535c != null) {
                    C0027i.a aVar = openAsDlg.f1533a.f199b.get(openAsDlg.f1534b);
                    C0374b c0374b = new C0374b(aVar.f201b);
                    Uri data = aVar.f200a.getData();
                    if (data != null) {
                        c0374b.f2076d = !"file".equals(data.getScheme()) ? 1 : 0;
                    } else {
                        c0374b.f2076d = 1;
                    }
                    c0374b.f2073a = openAsDlg.f1535c;
                    c0374b.f2077e = view.getId() == R.id.btn_always ? 0 : 1;
                    AbstractCallableC0395c.f2111d.execute(new a(c0374b));
                }
            }
            openAsDlg.setResult(-1);
            openAsDlg.finish();
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.OpenAsDlg$c */
    public static class C0297c implements C0393a.b {

        /* JADX INFO: renamed from: a */
        public final ArrayList<C0027i.a> f1541a;

        public C0297c(ArrayList<C0027i.a> arrayList) {
            this.f1541a = arrayList;
        }

        @Override // p053v0.C0393a.b
        /* JADX INFO: renamed from: a */
        public final int mo342a() {
            return 0;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.OpenAsDlg$d */
    public static class C0298d extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final ArrayList<C0027i.a> f1542e;

        public C0298d(ArrayList<C0027i.a> arrayList) {
            this.f1542e = arrayList;
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            Iterator<C0027i.a> it = this.f1542e.iterator();
            while (it.hasNext()) {
                it.next().m128b();
            }
            return null;
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: j */
        public final int mo344j() {
            return 1;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.OpenAsDlg$e */
    public static class C0299e extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final Parcelable[] f1543e;

        /* JADX INFO: renamed from: f */
        public final String f1544f;

        /* JADX INFO: renamed from: g */
        public final PackageManager f1545g;

        public C0299e(Parcelable[] parcelableArr, String str, PackageManager packageManager) {
            this.f1543e = parcelableArr;
            this.f1544f = str;
            this.f1545g = packageManager;
        }

        /* JADX WARN: Code duplicated, block: B:43:0x00af  */
        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            ActivityInfo activityInfo;
            ResolveInfo resolveInfo;
            boolean z2;
            Thread threadCurrentThread = Thread.currentThread();
            int priority = threadCurrentThread.getPriority();
            threadCurrentThread.setPriority(10);
            ArrayList arrayList = null;
            String str = this.f1544f;
            C0374b c0374bM88p = str != null ? C0015d.m88p(1000, str) : null;
            Parcelable[] parcelableArr = this.f1543e;
            if (parcelableArr != null) {
                ArrayList arrayList2 = new ArrayList(parcelableArr.length);
                for (Parcelable parcelable : parcelableArr) {
                    Intent intent = (Intent) parcelable;
                    ComponentName component = intent.getComponent();
                    PackageManager packageManager = this.f1545g;
                    if (component != null) {
                        try {
                            activityInfo = packageManager.getActivityInfo(component, 0);
                            try {
                                resolveInfo = new ResolveInfo();
                                try {
                                    resolveInfo.activityInfo = activityInfo;
                                } catch (PackageManager.NameNotFoundException unused) {
                                }
                            } catch (PackageManager.NameNotFoundException unused2) {
                                resolveInfo = null;
                            }
                        } catch (PackageManager.NameNotFoundException unused3) {
                            activityInfo = null;
                            resolveInfo = null;
                        }
                    } else {
                        activityInfo = null;
                        resolveInfo = null;
                    }
                    if (activityInfo == null) {
                        resolveInfo = packageManager.resolveActivity(intent, 65536);
                        activityInfo = resolveInfo != null ? resolveInfo.activityInfo : null;
                    }
                    if (activityInfo == null) {
                        Log.w("TaskResolve", "No activity found for " + intent);
                    } else {
                        C0027i.a aVar = new C0027i.a(intent, resolveInfo, packageManager);
                        if (c0374bM88p != null && intent.getData() != null) {
                            boolean z3 = !"file".equals(intent.getData().getScheme());
                            String str2 = c0374bM88p.f2074b;
                            if (str2 == null || c0374bM88p.f2075c == null || !str2.equals(resolveInfo.activityInfo.packageName) || !c0374bM88p.f2075c.equals(resolveInfo.activityInfo.name)) {
                                z2 = false;
                            } else if (z3 == (c0374bM88p.f2076d == 1)) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                aVar.f206g = true;
                            }
                        }
                        arrayList2.add(aVar);
                    }
                }
                Collections.sort(arrayList2);
                int size = arrayList2.size();
                for (int i2 = 0; i2 < 4 && i2 < size; i2++) {
                    ((C0027i.a) arrayList2.get(i2)).m128b();
                }
                arrayList = arrayList2;
            }
            threadCurrentThread.setPriority(priority);
            return new C0297c(arrayList);
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: j */
        public final int mo344j() {
            return 0;
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m797a(boolean z2) {
        if (!z2) {
            setResult(0);
            finishAndRemoveTask();
        } else {
            View viewFindViewById = findViewById(android.R.id.content);
            viewFindViewById.animate().translationY(((View) viewFindViewById.getParent()).getBottom() - viewFindViewById.getTop()).setInterpolator(new DecelerateInterpolator(2.0f)).setDuration(500).setListener(new C0443g(new RunnableC0295a()));
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m798b(boolean z2) {
        View viewFindViewById = findViewById(R.id.btn_always);
        viewFindViewById.setEnabled(z2);
        viewFindViewById.setAlpha(z2 ? 1.0f : 0.4f);
        View viewFindViewById2 = findViewById(R.id.btn_once);
        viewFindViewById2.setEnabled(z2);
        viewFindViewById2.setAlpha(z2 ? 1.0f : 0.4f);
    }

    @Override // p053v0.C0393a.c
    /* JADX INFO: renamed from: g */
    public final void mo341g(C0393a.b bVar) {
        if (bVar.mo342a() == 0) {
            C0297c c0297c = (C0297c) bVar;
            if (c0297c.f1541a == null) {
                m797a(false);
                return;
            }
            ArrayList<C0027i.a> arrayList = c0297c.f1541a;
            new C0298d(arrayList).m1098g(this, this.f1536d);
            this.f1533a = new C0027i(this, arrayList);
            setContentView(R.layout.dlg_open_as);
            View viewFindViewById = findViewById(android.R.id.content);
            viewFindViewById.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC0005e(viewFindViewById));
            ListView listView = (ListView) findViewById(android.R.id.list);
            listView.setAdapter((ListAdapter) this.f1533a);
            listView.setChoiceMode(1);
            listView.setOnItemClickListener(new C0006f(this));
            SlidingUpPanelLayout slidingUpPanelLayout = (SlidingUpPanelLayout) findViewById(R.id.sup_sliding);
            slidingUpPanelLayout.setPanelSlideListener(new C0007g(this));
            slidingUpPanelLayout.setScrollableView(listView);
            findViewById(R.id.outside).setOnTouchListener(new ViewOnTouchListenerC0008h(this));
            m798b(false);
            View viewFindViewById2 = findViewById(R.id.btn_always);
            ViewOnClickListenerC0296b viewOnClickListenerC0296b = this.f1537e;
            viewFindViewById2.setOnClickListener(viewOnClickListenerC0296b);
            findViewById(R.id.btn_once).setOnClickListener(viewOnClickListenerC0296b);
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        Parcelable[] parcelableArrayExtra;
        C0441e.m1188m(this, false);
        C0441e.m1184i(this, C0358b.f1983e);
        requestWindowFeature(1);
        Window window = getWindow();
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setStatusBarColor(0);
        if (C0441e.m1177b(this, true, null)) {
            window.setNavigationBarColor(getColor(C0439c.m1167b(this, R.attr.isLightActionBar) ? R.color.ab_background_material_light : R.color.ab_background_material_dark));
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.windowAnimations = 0;
        attributes.gravity = 1 | attributes.gravity;
        attributes.dimAmount = 0.75f;
        window.addFlags(2);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.bottomsheet_width);
        if (dimensionPixelSize > 0) {
            attributes.width = dimensionPixelSize;
            window.addFlags(262144);
        }
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null || (parcelableArrayExtra = intent.getParcelableArrayExtra("android.intent.extra.INITIAL_INTENTS")) == null) {
            m797a(false);
        } else {
            String stringExtra = intent.getStringExtra("OpenAsDlg.EXTRA_FILE_NAME");
            this.f1535c = stringExtra;
            if (stringExtra != null) {
                this.f1535c = C0015d.m42D(stringExtra);
            }
            new C0299e(parcelableArrayExtra, this.f1535c, getPackageManager()).m1098g(this, this.f1536d);
        }
        this.f1534b = -1;
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        this.f1536d.m1093d(this);
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        this.f1536d.m1090a(this, this);
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        this.f1536d.m1095f(1000, 1, -1);
    }

    @Override // android.app.Activity
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        m797a(true);
        return false;
    }
}
