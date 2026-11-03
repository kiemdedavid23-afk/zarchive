package ru.zdevs.zarchiver;

import android.app.ActionBar;
import android.app.WallpaperManager;
import android.content.ClipData;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.support.constraint.ConstraintLayout;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.ArrayList;
import p001a0.AbstractActivityC0003c;
import p004b.C0015d;
import p005b0.C0022d;
import p008c0.AbstractViewOnClickListenerC0050h;
import p008c0.C0046d;
import p008c0.C0048f;
import p008c0.C0051i;
import p015e1.C0083a;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p021g1.C0137h;
import p039p0.C0229g;
import p047s0.C0358b;
import p051u0.C0379b;
import p051u0.C0382e;
import p051u0.C0385h;
import p053v0.C0393a;
import p059y0.C0438b;
import p059y0.C0439c;
import p059y0.C0441e;
import p060z.C0451a1;
import p060z.C0456c0;
import p060z.C0457c1;
import p060z.C0459d0;
import p060z.C0466g0;
import p060z.C0468h0;
import p060z.C0477m;
import p060z.C0479n;
import p060z.C0481o;
import p060z.C0488r0;
import p060z.C0491t;
import p060z.C0493u;
import p060z.C0496v0;
import p060z.C0498w0;
import p060z.C0499x;
import p060z.C0502y0;
import p060z.ViewOnClickListenerC0454b1;
import p060z.ViewOnClickListenerC0500x0;
import p060z.ViewOnClickListenerC0504z0;
import ru.zdevs.zarchiver.activity.AboutDlg;
import ru.zdevs.zarchiver.activity.SettingsDlg;
import ru.zdevs.zarchiver.p045ui.FilePanelView;
import ru.zdevs.zarchiver.p045ui.ctrl.fab.FloatingActionMenu;
import ru.zdevs.zarchiver.p045ui.text.ExSearchView;

/* JADX INFO: loaded from: classes.dex */
public class ZSelectFile extends AbstractActivityC0003c implements AdapterView.OnItemClickListener, AbstractViewOnClickListenerC0050h.a, C0229g.c, FilePanelView.InterfaceC0327g, FilePanelView.InterfaceC0326f {

    /* JADX INFO: renamed from: n */
    public static final /* synthetic */ int f1420n = 0;

    /* JADX INFO: renamed from: f */
    public C0305b f1421f;

    /* JADX INFO: renamed from: g */
    public C0229g f1422g;

    /* JADX INFO: renamed from: h */
    public boolean f1423h;

    /* JADX INFO: renamed from: i */
    public int f1424i;

    /* JADX INFO: renamed from: j */
    public FilePanelView f1425j;

    /* JADX INFO: renamed from: k */
    public View f1426k = null;

    /* JADX INFO: renamed from: l */
    public ExSearchView f1427l;

    /* JADX INFO: renamed from: m */
    public FloatingActionMenu f1428m;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZSelectFile$a */
    public class C0264a implements C0083a.e {
        public C0264a() {
        }

        @Override // p015e1.C0083a.e
        /* JADX INFO: renamed from: a */
        public final void mo309a(int i2, int i3, boolean z2) {
            ZSelectFile zSelectFile = ZSelectFile.this;
            C0305b c0305b = zSelectFile.f1421f;
            c0305b.f1598g = i2;
            c0305b.f1600i = z2;
            c0305b.f1599h = i3;
            zSelectFile.m771y(null, null, false);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZSelectFile$b */
    public final class ActionModeCallbackC0265b implements ActionMode.Callback {
        public ActionModeCallbackC0265b() {
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            ZSelectFile.this.onOptionsItemSelected(menuItem);
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            ZSelectFile zSelectFile = ZSelectFile.this;
            ActionBar actionBar = zSelectFile.getActionBar();
            if (actionBar != null) {
                actionBar.setCustomView((View) null);
            }
            actionMode.setCustomView(zSelectFile.f1426k);
            MenuInflater menuInflater = zSelectFile.getMenuInflater();
            menuInflater.inflate(R.menu.toolbar_default, menu);
            menuInflater.inflate(R.menu.menu_main, menu);
            C0441e.m1189n(menu, new int[]{R.id.bArchiveComment, R.id.bMenuTool, R.id.bMultiSelect, R.id.bSettings, R.id.bAbout}, false);
            if (C0379b.m1060g(zSelectFile)) {
                menu.findItem(R.id.bSearch).setVisible(true);
            }
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            ZSelectFile zSelectFile = ZSelectFile.this;
            zSelectFile.setResult(0, null);
            zSelectFile.m1i();
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            C0441e.m1186k(menu);
            return true;
        }
    }

    /* JADX INFO: renamed from: u */
    public static void m765u(ZSelectFile zSelectFile, String str, String[] strArr, boolean z2) {
        C0305b c0305b = zSelectFile.f1421f;
        synchronized (c0305b.f1592a) {
            c0305b.f1606o = str;
            c0305b.f1607p = strArr;
            c0305b.f1605n = 0;
            c0305b.f1609r = new C0051i(0);
            c0305b.f1597f |= 1;
        }
        zSelectFile.f1425j.m929k(zSelectFile.f1421f, zSelectFile.f1422g, 0, 0);
        if (z2) {
            return;
        }
        C0393a c0393a = zSelectFile.f4c;
        c0393a.m1095f(13, 0, 0);
        new C0488r0(zSelectFile.f1421f, str, strArr).m1098g(zSelectFile, c0393a);
    }

    /* JADX INFO: renamed from: A */
    public final void m766A(boolean z2, boolean z3) {
        this.f4c.m1095f(13, 0, 0);
        C0305b c0305b = this.f1421f;
        synchronized (c0305b.f1592a) {
            if (z2) {
                c0305b.f1597f &= -2;
            } else {
                c0305b.f1606o = null;
                c0305b.f1607p = null;
                c0305b.f1605n = 0;
                c0305b.f1609r = null;
                c0305b.f1597f &= -2;
            }
            throw th;
        }
        ExSearchView exSearchView = this.f1427l;
        if (exSearchView != null) {
            exSearchView.m1013b();
        }
        if (z3) {
            this.f1425j.m929k(this.f1421f, this.f1422g, 0, 0);
        }
    }

    /* JADX INFO: renamed from: B */
    public final void m767B(boolean z2) {
        String strM1078b;
        String str;
        long j2 = this.f1421f.f1601j;
        if (j2 == -2 || !z2) {
            strM1078b = getString(R.string.FINFO_SIZE) + " ...";
        } else if (j2 == -1) {
            strM1078b = getString(R.string.FINFO_SIZE) + " ---";
        } else {
            strM1078b = C0385h.m1078b(j2, 1, getString(R.string.FINFO_SIZE));
        }
        String str2 = strM1078b;
        C0393a c0393a = this.f4c;
        if (z2 && this.f1421f.f1603l == -1) {
            c0393a.m1095f(4, 0, 0);
            new C0459d0(this.f1421f.f1594c, 0).m1098g(this, c0393a);
        }
        if (!z2 || this.f1421f.f1603l == -1) {
            str = getString(R.string.FINFO_FREE_SPACE) + " ...";
        } else {
            str = getString(R.string.FINFO_FREE_SPACE) + " " + C0385h.m1078b(this.f1421f.f1602k, 1, null) + "/\n" + C0385h.m1078b(this.f1421f.f1603l, 1, null);
        }
        String str3 = getString(R.string.FINFO_TYPE) + ' ' + getString(R.string.FINFO_TYPE_FOLDER);
        m7o(str3, str, getString(R.string.FINFO_TYPE_FOLDER) + ": " + this.f1421f.f1594c.m478e(), str2, 0L, 0L);
        if (z2) {
            FilePanelView filePanelView = this.f1425j;
            if (filePanelView.f1697d != null) {
                C0305b c0305b = this.f1421f;
                filePanelView.setTag(c0305b.f1601j != -2 ? c0305b.f1592a : null);
            } else if (this.f1421f.f1601j == -2) {
                c0393a.m1095f(3, 0, 0);
                new C0466g0(this.f1421f.f1594c, 0).m1098g(this, c0393a);
            }
        }
    }

    @Override // p039p0.C0229g.c
    /* JADX INFO: renamed from: b */
    public final void mo663b(int i2) {
        C0229g c0229g;
        AbstractViewOnClickListenerC0050h listAdapter;
        if (i2 != 0 || (c0229g = this.f1422g) == null || !c0229g.f1295g || (listAdapter = this.f1425j.getListAdapter()) == null) {
            return;
        }
        listAdapter.mo178n(this.f1425j.getListPosition(), this.f1425j.getListMaxVisibleItemCount());
    }

    @Override // p008c0.AbstractViewOnClickListenerC0050h.a
    /* JADX INFO: renamed from: c */
    public final void mo199c(int i2, int i3, boolean z2) {
        FloatingActionMenu floatingActionMenu = this.f1428m;
        if (floatingActionMenu != null) {
            if (i3 == 1 || i3 == 0) {
                floatingActionMenu.setVisibility(i3 == 0 ? 8 : 0);
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        String strM478e;
        if (keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (this.f1421f.m828i() ? false : this.f1421f.m827h()) {
            setResult(0, null);
            m1i();
        } else {
            if (this.f1421f.m828i()) {
                strM478e = null;
            } else {
                C0129h c0129h = this.f1421f.f1594c;
                strM478e = c0129h.m478e();
                c0129h.m476c();
            }
            m771y(strM478e, null, false);
        }
        return true;
    }

    @Override // ru.zdevs.zarchiver.p045ui.FilePanelView.InterfaceC0326f
    /* JADX INFO: renamed from: f */
    public final void mo756f() {
        if (this.f1425j.getTag() != null) {
            return;
        }
        C0129h c0129h = this.f1421f.f1594c;
        this.f1425j.setTag(c0129h);
        TextView textView = (TextView) findViewById(R.id.tvFolderSize);
        if (textView == null) {
            return;
        }
        textView.setText(getString(R.string.FINFO_SIZE) + " ...");
        C0393a c0393a = this.f4c;
        c0393a.m1095f(3, 0, 0);
        new C0466g0(c0129h, 0).m1098g(this, c0393a);
    }

    @Override // p053v0.C0393a.c
    /* JADX INFO: renamed from: g */
    public final void mo341g(C0393a.b bVar) {
        String strM1078b;
        int iMo342a = bVar.mo342a();
        if (iMo342a == 4) {
            C0499x c0499x = (C0499x) bVar;
            String str = c0499x.f2385a;
            if (str != null) {
                ZApp.m726j(str);
                return;
            } else {
                ZApp.m725i(c0499x.f2386b);
                return;
            }
        }
        if (iMo342a == 13) {
            ListView listView = (ListView) findViewById(R.id.lvFavorite);
            if (listView != null) {
                listView.setAdapter((ListAdapter) new C0022d(this, true, false));
                return;
            }
            return;
        }
        try {
            if (iMo342a == 6) {
                C0477m c0477m = (C0477m) bVar;
                C0305b c0305b = this.f1421f;
                AbstractC0126e.a aVar = c0477m.f2315b;
                c0305b.f1602k = aVar.f992a;
                c0305b.f1603l = aVar.f993b;
                String str2 = getString(R.string.FINFO_FREE_SPACE) + " " + C0385h.m1078b(c0477m.f2315b.f992a, 1, null) + "/\n" + C0385h.m1078b(c0477m.f2315b.f993b, 1, null);
                AbstractC0126e.a aVar2 = c0477m.f2315b;
                long j2 = aVar2.f993b;
                m8p(str2, j2 - aVar2.f992a, j2);
                return;
            }
            if (iMo342a == 7) {
                C0481o c0481o = (C0481o) bVar;
                this.f1421f.f1601j = c0481o.f2333b;
                TextView textView = (TextView) findViewById(R.id.tvFolderSize);
                if (textView != null) {
                    long j3 = c0481o.f2333b;
                    if (j3 != -1) {
                        strM1078b = C0385h.m1078b(j3, 1, getString(R.string.FINFO_SIZE));
                    } else {
                        strM1078b = getString(R.string.FINFO_SIZE) + " ---";
                    }
                    textView.setText(strM1078b);
                    return;
                }
                return;
            }
            if (iMo342a != 8) {
                if (iMo342a == 17) {
                    int i2 = ((C0493u) bVar).f2371b;
                    if (i2 == 100) {
                        m11t();
                        return;
                    } else {
                        m10s((i2 * 10000) / 100);
                        return;
                    }
                }
                if (iMo342a != 18) {
                    return;
                }
                C0491t c0491t = (C0491t) bVar;
                AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050hM920b = this.f1425j.m920b(c0491t.f2362a);
                if (abstractViewOnClickListenerC0050hM920b == null || abstractViewOnClickListenerC0050hM920b.mo176c() != R.layout.item_file_search) {
                    return;
                }
                abstractViewOnClickListenerC0050hM920b.f373h.m168a(c0491t.f2363b);
                abstractViewOnClickListenerC0050hM920b.notifyDataSetChanged();
                return;
            }
            C0479n c0479n = (C0479n) bVar;
            View view = this.f1425j.f1698e;
            if (view != null) {
                view.setVisibility(8);
            }
            if (c0479n.f2324h == null) {
                return;
            }
            if (this.f1421f.m828i()) {
                m766A(false, false);
            }
            synchronized (this.f1421f.f1592a) {
                this.f1421f.f1608q = c0479n.f2324h;
            }
            if (C0015d.m50L(c0479n.f2319c, 768)) {
                new C0456c0(c0479n.f2318b, c0479n.f2324h, c0479n.f2319c, this.f1421f.f1593b).m1098g(this, this.f4c);
            }
            this.f1421f.m831l(c0479n.f2318b, c0479n.f2326j, c0479n.f2322f);
            this.f1425j.m929k(this.f1421f, this.f1422g, c0479n.f2320d, c0479n.f2319c);
            m767B(true);
        } catch (Exception unused) {
        }
    }

    @Override // ru.zdevs.zarchiver.p045ui.FilePanelView.InterfaceC0327g
    /* JADX INFO: renamed from: h */
    public final void mo757h(int i2) {
        C0229g c0229g = this.f1422g;
        if (c0229g != null) {
            c0229g.m656c(0);
        }
        if (this.f1421f.m828i()) {
            return;
        }
        m771y(null, null, true);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) throws Throwable {
        super.onConfigurationChanged(configuration);
        int iM3k = m3k(configuration);
        if (iM3k == this.f1424i) {
            return;
        }
        this.f1424i = iM3k;
        C0393a c0393a = this.f4c;
        c0393a.m1093d(this);
        int iM921c = this.f1425j.m921c(0);
        AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050hM920b = this.f1425j.m920b(0);
        C0441e.m1179d(this);
        m769w(this.f1424i);
        m770x();
        invalidateOptionsMenu();
        AbstractActivityC0003c.m0r(this.f1426k, this.f1421f.f1594c.f1015c);
        m767B(true);
        this.f1425j.m926h(0, abstractViewOnClickListenerC0050hM920b, false, false);
        if (iM921c > 0) {
            this.f1425j.m928j(0, iM921c);
        }
        this.f1425j.setMessage(this.f1421f.m824e());
        c0393a.m1090a(this, this);
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) throws Throwable {
        int i2;
        C0358b.m1042m(this, false, null);
        Configuration configuration = getResources().getConfiguration();
        C0441e.m1181f(this);
        C0441e.m1188m(this, configuration.orientation == 1 && !C0379b.m1055b(configuration));
        C0441e.m1184i(this, C0358b.f1983e);
        super.onCreate(bundle);
        int iM3k = m3k(getResources().getConfiguration());
        this.f1424i = iM3k;
        m769w(iM3k);
        C0305b c0305b = new C0305b(0);
        this.f1421f = c0305b;
        int i3 = C0358b.f1988j;
        int i4 = i3 & 3840;
        if (i4 != 512) {
            i2 = i4 != 768 ? R.layout.item_file_detail : R.layout.item_file_grid;
        } else {
            i2 = R.layout.item_file_compact;
        }
        c0305b.f1598g = i2;
        c0305b.f1599h = i3 & 248;
        c0305b.f1600i = C0358b.m1036g(4);
        C0385h.m1080d(this);
        C0438b.m1165f(this, C0358b.m1033d(), this.f1421f.f1598g == R.layout.item_file_grid);
        Intent intent = getIntent();
        if (intent == null || intent.getAction() == null || !(intent.getAction().equals("android.intent.action.GET_CONTENT") || intent.getAction().equals("android.intent.action.OPEN_DOCUMENT"))) {
            setResult(0, null);
            m1i();
            return;
        }
        this.f1423h = intent.getBooleanExtra("android.intent.extra.ALLOW_MULTIPLE", false);
        m770x();
        m771y(null, null, false);
        startActionMode(new ActionModeCallbackC0265b());
        C0441e.m1180e(this, C0439c.m1171f(this, R.attr.menuIconCancel), android.R.string.cancel);
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        C0129h c0129h;
        C0046d c0046d;
        synchronized (this.f1421f.f1592a) {
            if (this.f1421f.m828i()) {
                if (i2 < 0 || i2 >= this.f1421f.f1609r.size()) {
                    return;
                }
                C0048f c0048f = this.f1421f.f1609r.get(i2);
                c0129h = c0048f.f365k;
                c0046d = c0048f;
            } else {
                if (i2 < 0 || i2 >= this.f1421f.f1608q.size()) {
                    return;
                }
                C0046d c0046d2 = this.f1421f.f1608q.get(i2);
                c0129h = new C0129h(this.f1421f.f1594c);
                c0046d = c0046d2;
            }
            boolean z2 = true;
            if (!c0046d.m185f()) {
                m772z(new int[]{i2});
                return;
            }
            if (c0046d.m186g()) {
                String str = c0046d.f353b;
                if (c0129h.m476c()) {
                    c0129h.f1016d = str;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    return;
                }
            } else {
                String str2 = c0046d.f352a;
                String str3 = c0046d.f353b;
                c0129h.m474a(str2);
                c0129h.f1016d = str3;
            }
            m771y(null, c0129h, false);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 82) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        String strM478e;
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            if (this.f1421f.m828i()) {
                strM478e = null;
            } else {
                C0129h c0129h = this.f1421f.f1594c;
                strM478e = c0129h.m478e();
                c0129h.m476c();
            }
            m771y(strM478e, null, false);
            return true;
        }
        if (itemId == R.id.bMenuViewMode) {
            C0305b c0305b = this.f1421f;
            C0083a c0083a = new C0083a(this, c0305b.f1598g, c0305b.f1600i, c0305b.f1599h);
            c0083a.m310a(getWindow(), findViewById(R.id.bMenuViewMode));
            c0083a.f613g = new C0264a();
            return true;
        }
        if (itemId == R.id.bSettings) {
            C0137h.m502d(this, new Intent(this, (Class<?>) SettingsDlg.class));
            return true;
        }
        if (itemId == R.id.bAbout) {
            C0137h.m502d(this, new Intent(this, (Class<?>) AboutDlg.class));
            return true;
        }
        if (itemId != R.id.bExit) {
            return super.onOptionsItemSelected(menuItem);
        }
        setResult(0, null);
        m1i();
        return true;
    }

    @Override // p001a0.AbstractActivityC0003c, android.app.Activity
    public final void onStart() {
        super.onStart();
        new C0496v0(4, null).m1098g(this, this.f4c);
        if ((C0358b.f1988j & 4128768) != 0) {
            if (this.f1422g == null) {
                this.f1422g = new C0229g(this);
            }
            this.f1422g.m657d(this, C0358b.f1989k);
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        C0229g c0229g = this.f1422g;
        if (c0229g != null) {
            c0229g.m658e(this.f1425j.getListMaxVisibleItemCount() * 2);
        }
        this.f4c.m1095f(1000, 1, -1);
    }

    /* JADX INFO: renamed from: v */
    public final Uri m768v(int i2) {
        C0129h c0129h;
        C0046d c0046d;
        synchronized (this.f1421f.f1592a) {
            if (this.f1421f.m828i()) {
                if (i2 < 0 || i2 >= this.f1421f.f1609r.size()) {
                    return null;
                }
                C0048f c0048f = this.f1421f.f1609r.get(i2);
                c0129h = new C0129h(c0048f.f365k);
                c0046d = c0048f;
            } else {
                if (i2 < 0 || i2 >= this.f1421f.f1608q.size()) {
                    return null;
                }
                C0046d c0046d2 = this.f1421f.f1608q.get(i2);
                c0129h = new C0129h(this.f1421f.f1594c);
                c0046d = c0046d2;
            }
            String str = c0046d.f352a;
            String str2 = c0046d.f353b;
            c0129h.m474a(str);
            c0129h.f1016d = str2;
            return C0382e.m1064b(this, c0129h, 0L, null);
        }
    }

    /* JADX INFO: renamed from: w */
    public final void m769w(int i2) {
        setContentView(i2);
        FilePanelView filePanelView = (FilePanelView) findViewById(R.id.fp);
        this.f1425j = filePanelView;
        filePanelView.setOnListRefreshListener(this);
        ImageView imageView = new ImageView(this);
        imageView.setImageResource(R.drawable.ic_refresh);
        this.f1425j.setCircleView(imageView);
        boolean z2 = i2 == R.layout.dlg_main_list_tv;
        ActionBar actionBar = getActionBar();
        if (actionBar == null || z2) {
            this.f1426k = null;
            this.f1427l = null;
        } else {
            actionBar.setCustomView(R.layout.ctm_navigate);
            View customView = actionBar.getCustomView();
            this.f1426k = customView;
            ExSearchView exSearchView = (ExSearchView) customView.findViewById(R.id.svSearch);
            this.f1427l = exSearchView;
            if (exSearchView != null) {
                exSearchView.getContext().setTheme(C0358b.m1032c());
            }
        }
        if (z2) {
            this.f1426k = findViewById(R.id.rlTitle);
            m9q(actionBar);
        }
        if (findViewById(R.id.tvStorage) == null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) LayoutInflater.from(this).inflate(R.layout.extend_info, (ViewGroup) this.f1425j, false);
            constraintLayout.setBackgroundColor(C0439c.m1168c(this, android.R.attr.colorBackground));
            constraintLayout.setElevation(25.0f);
            this.f1425j.setExtendView(constraintLayout);
            this.f1425j.setOnExtendShowListener(this);
        }
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.pbFree);
        if (progressBar != null) {
            C0441e.m1187l(this, progressBar, -3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00df  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:47:0x00fd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:49:0x0108  */
    /* JADX WARN: Code duplicated, block: B:51:0x010d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0131  */
    /* JADX WARN: Code duplicated, block: B:56:0x0137  */
    /* JADX WARN: Code duplicated, block: B:59:0x0147  */
    /* JADX WARN: Code duplicated, block: B:62:0x0167  */
    /* JADX WARN: Code duplicated, block: B:68:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: x */
    public final void m770x() throws Throwable {
        int iM1168c;
        ImageView imageView;
        ListView listView;
        FloatingActionMenu floatingActionMenu;
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setDisplayShowCustomEnabled(true);
            actionBar.setDisplayShowTitleEnabled(false);
        }
        ExSearchView exSearchView = this.f1427l;
        Drawable drawable = null;
        if (exSearchView != null) {
            exSearchView.setVisibility(C0379b.m1060g(this) ? 8 : 0);
            View viewFindViewById = this.f1427l.findViewById(this.f1427l.getContext().getResources().getIdentifier("android:id/search_button", null, null));
            if (viewFindViewById instanceof ImageView) {
                ((ImageView) viewFindViewById).setImageDrawable(C0439c.m1171f(this, R.attr.menuIconSearch));
            }
            this.f1427l.setOnCloseListener(new C0498w0(this));
            this.f1427l.setOnSearchClickListener(new ViewOnClickListenerC0500x0(this));
            this.f1427l.setOnQueryListener(new C0502y0(this));
        }
        View viewFindViewById2 = this.f1426k.findViewById(R.id.rlNavigation);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new ViewOnClickListenerC0504z0(this));
        }
        int i2 = C0358b.f1982d & 983040;
        if (i2 == 65536) {
            try {
                drawable = WallpaperManager.getInstance(this).getDrawable();
            } catch (Exception e2) {
                e2.printStackTrace();
                ZApp.m726j("Error on get the wallpaper");
            }
        } else if (i2 == 131072) {
            drawable = C0439c.m1171f(this, R.attr.backgroundColorFileList);
        } else {
            if (i2 != 262144) {
                if (C0358b.m1040k(1024)) {
                    iM1168c = C0439c.m1168c(this, R.attr.backgroundColorFileList);
                }
                imageView = (ImageView) findViewById(R.id.ivParent);
                if (drawable instanceof BitmapDrawable) {
                    imageView.setImageBitmap(((BitmapDrawable) drawable).getBitmap());
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    if (i2 == 65536) {
                        imageView.setAlpha(0.7f);
                    }
                    this.f1425j.setCacheEnabled(false);
                } else {
                    imageView.setImageDrawable(drawable);
                    if (drawable != null) {
                        imageView.setVisibility(8);
                        if (iM1168c != 0) {
                            findViewById(R.id.rlRoot).setBackgroundColor(iM1168c);
                        }
                    } else if (i2 == 65536) {
                        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                        imageView.setAlpha(0.7f);
                    }
                    this.f1425j.setCacheEnabled(true);
                }
                this.f1425j.setFastScrollEnabled(C0358b.m1041l(32768));
                this.f1425j.setOnItemClickListener(this);
                if (this.f1423h) {
                    this.f1425j.setOnItemSelectChanged(this);
                } else {
                    this.f1425j.setSelectByIcon(false);
                }
                listView = (ListView) findViewById(R.id.lvFavorite);
                if (listView != null) {
                    listView.setAdapter((ListAdapter) new C0022d(this, true, false));
                    C0441e.m1185j(listView);
                    listView.setOnItemClickListener(new C0451a1(this));
                }
                floatingActionMenu = (FloatingActionMenu) findViewById(R.id.ibAction);
                this.f1428m = floatingActionMenu;
                if (floatingActionMenu != null) {
                    floatingActionMenu.setVisibility(8);
                    this.f1428m.setMenuButtonImageResource(R.drawable.l_done);
                    this.f1428m.setTransparent(C0358b.m1041l(16));
                    this.f1428m.setAnimated(C0358b.m1041l(32));
                    this.f1428m.setClosedOnTouchOutside(true);
                    this.f1428m.setOnMenuButtonClickListener(new ViewOnClickListenerC0454b1(this));
                    this.f1428m.setOnMenuToggleListener(new C0457c1(this));
                }
            }
            try {
                String string = PreferenceManager.getDefaultSharedPreferences(this).getString("iGUICustomBGPath", null);
                if (string != null) {
                    drawable = Drawable.createFromPath(string);
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                ZApp.m726j("Error on the loading the background image");
            }
        }
        iM1168c = 0;
        imageView = (ImageView) findViewById(R.id.ivParent);
        if (drawable instanceof BitmapDrawable) {
            imageView.setImageBitmap(((BitmapDrawable) drawable).getBitmap());
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            if (i2 == 65536) {
                imageView.setAlpha(0.7f);
            }
            this.f1425j.setCacheEnabled(false);
        } else {
            imageView.setImageDrawable(drawable);
            if (drawable != null) {
                imageView.setVisibility(8);
                if (iM1168c != 0) {
                    findViewById(R.id.rlRoot).setBackgroundColor(iM1168c);
                }
            } else if (i2 == 65536) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                imageView.setAlpha(0.7f);
            }
            this.f1425j.setCacheEnabled(true);
        }
        this.f1425j.setFastScrollEnabled(C0358b.m1041l(32768));
        this.f1425j.setOnItemClickListener(this);
        if (this.f1423h) {
            this.f1425j.setOnItemSelectChanged(this);
        } else {
            this.f1425j.setSelectByIcon(false);
        }
        listView = (ListView) findViewById(R.id.lvFavorite);
        if (listView != null) {
            listView.setAdapter((ListAdapter) new C0022d(this, true, false));
            C0441e.m1185j(listView);
            listView.setOnItemClickListener(new C0451a1(this));
        }
        floatingActionMenu = (FloatingActionMenu) findViewById(R.id.ibAction);
        this.f1428m = floatingActionMenu;
        if (floatingActionMenu != null) {
            floatingActionMenu.setVisibility(8);
            this.f1428m.setMenuButtonImageResource(R.drawable.l_done);
            this.f1428m.setTransparent(C0358b.m1041l(16));
            this.f1428m.setAnimated(C0358b.m1041l(32));
            this.f1428m.setClosedOnTouchOutside(true);
            this.f1428m.setOnMenuButtonClickListener(new ViewOnClickListenerC0454b1(this));
            this.f1428m.setOnMenuToggleListener(new C0457c1(this));
        }
    }

    /* JADX INFO: renamed from: y */
    public final void m771y(String str, C0129h c0129h, boolean z2) {
        C0393a c0393a = this.f4c;
        c0393a.m1095f(10, 1, 0);
        if (this.f1421f.m828i()) {
            m766A(true, false);
        }
        if (c0129h != null) {
            this.f1421f.m831l(c0129h, (byte) 0, 0);
        }
        AbstractActivityC0003c.m0r(this.f1426k, this.f1421f.f1594c.f1015c);
        if (!(this.f1425j.f1697d != null)) {
            m767B(false);
        }
        int listPosition = z2 ? this.f1425j.getListPosition() : -1;
        int i2 = this.f1421f.f1600i ? 32 : 0;
        Point listSize = str != null ? this.f1425j.getListSize() : null;
        C0305b c0305b = this.f1421f;
        new C0468h0(c0305b, c0305b.f1594c, c0129h == null, str, listPosition, i2, listSize, null).m1098g(null, c0393a);
    }

    /* JADX INFO: renamed from: z */
    public final void m772z(int[] iArr) {
        boolean z2;
        Intent intent = new Intent();
        if (iArr.length == 1) {
            Uri uriM768v = m768v(iArr[0]);
            if (uriM768v == null) {
                return;
            }
            z2 = !"file".equals(uriM768v.getScheme());
            intent.setData(uriM768v);
            intent.setClipData(ClipData.newRawUri(null, uriM768v));
        } else {
            if (iArr.length <= 1) {
                return;
            }
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(iArr.length);
            boolean z3 = false;
            for (int i2 : iArr) {
                Uri uriM768v2 = m768v(i2);
                if (uriM768v2 != null) {
                    arrayList.add(uriM768v2);
                    if (!"file".equals(uriM768v2.getScheme())) {
                        z3 = true;
                    }
                }
            }
            intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
            ClipData clipData = new ClipData(null, new String[]{"*/*"}, new ClipData.Item((Uri) arrayList.get(0)));
            int size = arrayList.size();
            for (int i3 = 1; i3 < size; i3++) {
                clipData.addItem(new ClipData.Item((Uri) arrayList.get(i3)));
            }
            intent.setClipData(clipData);
            z2 = z3;
        }
        if (z2) {
            intent.addFlags(3);
            intent.addFlags(64);
        } else if (Build.VERSION.SDK_INT >= 24) {
            C0382e.m1068f();
        }
        setResult(-1, intent);
        m1i();
    }
}
