package ru.zdevs.zarchiver;

import android.app.ActionBar;
import android.app.AlertDialog;
import android.app.WallpaperManager;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import android.provider.DocumentsContract;
import android.support.constraint.ConstraintLayout;
import android.util.Log;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p001a0.AbstractActivityC0003c;
import p002a1.C0009a;
import p002a1.RunnableC0010b;
import p004b.C0015d;
import p005b0.C0022d;
import p005b0.C0023e;
import p008c0.AbstractViewOnClickListenerC0050h;
import p008c0.C0043a;
import p008c0.C0044b;
import p008c0.C0046d;
import p008c0.C0048f;
import p008c0.C0051i;
import p011d0.C0063a;
import p011d0.C0064b;
import p011d0.C0070h;
import p014e0.C0079a;
import p014e0.InterfaceC0082d;
import p015e1.C0083a;
import p017f0.AbstractC0099i;
import p017f0.DialogInterfaceOnCancelListenerC0090b;
import p017f0.DialogInterfaceOnCancelListenerC0098h;
import p017f0.DialogInterfaceOnCancelListenerC0103m;
import p017f0.DialogInterfaceOnCancelListenerC0105o;
import p017f0.DialogInterfaceOnCancelListenerC0113w;
import p017f0.DialogInterfaceOnCancelListenerC0115y;
import p017f0.DialogInterfaceOnClickListenerC0104n;
import p017f0.DialogInterfaceOnClickListenerC0109s;
import p020g0.AbstractC0126e;
import p020g0.AbstractC0127f;
import p020g0.C0128g;
import p020g0.C0129h;
import p021g1.C0134e;
import p021g1.C0137h;
import p021g1.InterfaceC0139j;
import p021g1.RunnableC0136g;
import p033m0.C0181d;
import p035n0.C0198e;
import p039p0.C0223a;
import p039p0.C0229g;
import p047s0.C0357a;
import p047s0.C0358b;
import p051u0.C0379b;
import p051u0.C0383f;
import p051u0.C0385h;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p055w0.C0411b;
import p055w0.C0412c;
import p055w0.C0414e;
import p055w0.C0415f;
import p055w0.C0416g;
import p059y0.C0438b;
import p059y0.C0439c;
import p059y0.C0441e;
import p060z.C0449a;
import p060z.C0450a0;
import p060z.C0453b0;
import p060z.C0455c;
import p060z.C0456c0;
import p060z.C0459d0;
import p060z.C0461e;
import p060z.C0463f;
import p060z.C0464f0;
import p060z.C0466g0;
import p060z.C0468h0;
import p060z.C0469i;
import p060z.C0470i0;
import p060z.C0473k;
import p060z.C0477m;
import p060z.C0478m0;
import p060z.C0479n;
import p060z.C0480n0;
import p060z.C0481o;
import p060z.C0482o0;
import p060z.C0483p;
import p060z.C0484p0;
import p060z.C0485q;
import p060z.C0487r;
import p060z.C0488r0;
import p060z.C0489s;
import p060z.C0490s0;
import p060z.C0491t;
import p060z.C0493u;
import p060z.C0495v;
import p060z.C0496v0;
import p060z.C0497w;
import p060z.C0499x;
import p060z.C0501y;
import p060z.C0503z;
import p060z.RunnableC0471j;
import p060z.ViewOnClickListenerC0452b;
import p060z.ViewOnClickListenerC0458d;
import p060z.ViewOnClickListenerC0465g;
import p060z.ViewOnClickListenerC0467h;
import ru.zdevs.zarchiver.activity.AboutDlg;
import ru.zdevs.zarchiver.activity.SettingsDlg;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.p045ui.FilePanelView;
import ru.zdevs.zarchiver.p045ui.ctrl.fab.FloatingActionMenu;
import ru.zdevs.zarchiver.p045ui.text.ExSearchView;
import ru.zdevs.zarchiver.service.InterfaceC0316c;
import ru.zdevs.zarchiver.service.ZArchiverService;

/* JADX INFO: loaded from: classes.dex */
public class ZArchiver extends AbstractActivityC0003c implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, AbstractViewOnClickListenerC0050h.a, C0229g.c, FilePanelView.InterfaceC0327g, FilePanelView.InterfaceC0326f, FilePanelView.InterfaceC0328h, C2JBridge.InterfaceC0303a, View.OnDragListener {

    /* JADX INFO: renamed from: r */
    public static WeakReference<ZArchiver> f1383r;

    /* JADX INFO: renamed from: f */
    public InterfaceC0316c f1384f;

    /* JADX INFO: renamed from: g */
    public Handler f1385g;

    /* JADX INFO: renamed from: i */
    public int f1387i;

    /* JADX INFO: renamed from: j */
    public View f1388j;

    /* JADX INFO: renamed from: k */
    public FilePanelView f1389k;

    /* JADX INFO: renamed from: l */
    public ExSearchView f1390l;

    /* JADX INFO: renamed from: m */
    public FloatingActionMenu f1391m;

    /* JADX INFO: renamed from: h */
    public final C0307d f1386h = new C0307d();

    /* JADX INFO: renamed from: n */
    public boolean f1392n = false;

    /* JADX INFO: renamed from: o */
    public boolean f1393o = false;

    /* JADX INFO: renamed from: p */
    public long f1394p = 0;

    /* JADX INFO: renamed from: q */
    public final ServiceConnectionC0250a f1395q = new ServiceConnectionC0250a();

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZArchiver$a */
    public class ServiceConnectionC0250a implements ServiceConnection {
        public ServiceConnectionC0250a() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ZArchiver zArchiver = ZArchiver.this;
            zArchiver.f1385g = null;
            zArchiver.f1384f = InterfaceC0316c.a.asInterface(iBinder);
            try {
                zArchiver.f1384f.GUIStatus(true);
            } catch (Exception unused) {
            }
            try {
                zArchiver.f1386h.f1624c.m794o(zArchiver, zArchiver.f1384f);
                zArchiver.f1386h.f1624c.m789i();
            } catch (Exception unused2) {
            }
            try {
                zArchiver.f1384f.SetSettings(C0358b.m1031b(), C0358b.f1985g, C0358b.f1983e);
            } catch (Exception unused3) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            ZArchiver zArchiver = ZArchiver.this;
            zArchiver.f1384f = null;
            zArchiver.f1386h.f1624c.m794o(zArchiver, null);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZArchiver$b */
    public class RunnableC0251b implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ DialogInterfaceOnCancelListenerC0115y f1397a;

        /* JADX INFO: renamed from: b */
        public final /* synthetic */ int f1398b;

        public RunnableC0251b(DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y, int i2) {
            this.f1397a = dialogInterfaceOnCancelListenerC0115y;
            this.f1398b = i2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i2;
            DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y = this.f1397a;
            ProgressBar progressBar = dialogInterfaceOnCancelListenerC0115y.f851h;
            if (progressBar == null || (i2 = this.f1398b) <= 0) {
                return;
            }
            progressBar.setIndeterminate(false);
            dialogInterfaceOnCancelListenerC0115y.f851h.setProgress(i2);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZArchiver$c */
    public class RunnableC0252c implements Runnable {
        public RunnableC0252c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0223a.m619a(ZArchiver.this);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZArchiver$d */
    public class C0253d implements AbstractC0099i.b {
        @Override // p017f0.AbstractC0099i.b
        /* JADX INFO: renamed from: a */
        public final void mo246a(AbstractC0099i abstractC0099i) {
            if (C2JBridge.f1554c) {
                C2JBridge.cSetStatus(0, 15);
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZArchiver$e */
    public class C0254e implements AbstractC0099i.b {
        @Override // p017f0.AbstractC0099i.b
        /* JADX INFO: renamed from: a */
        public final void mo246a(AbstractC0099i abstractC0099i) {
            if (C2JBridge.f1554c) {
                C2JBridge.cSetStatus(0, 15);
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZArchiver$f */
    public class C0255f implements C0083a.e {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ C0305b f1400a;

        public C0255f(C0305b c0305b) {
            this.f1400a = c0305b;
        }

        @Override // p015e1.C0083a.e
        /* JADX INFO: renamed from: a */
        public final void mo309a(int i2, int i3, boolean z2) {
            C0305b c0305b = this.f1400a;
            c0305b.f1598g = i2;
            c0305b.f1600i = z2;
            c0305b.f1599h = i3;
            ZArchiver.this.m750T(c0305b.f1593b, false, false, true);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZArchiver$g */
    public class RunnableC0256g implements Runnable {
        public RunnableC0256g() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ZArchiver zArchiver = ZArchiver.this;
            if (zArchiver.f1387i != 0) {
                zArchiver.m740J();
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZArchiver$h */
    public final class ActionModeCallbackC0257h implements ActionMode.Callback {
        public ActionModeCallbackC0257h() {
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            int itemId = menuItem.getItemId();
            ZArchiver zArchiver = ZArchiver.this;
            if (itemId == R.id.bCreateArchive) {
                zArchiver.f1386h.f1624c.m792m(zArchiver, true);
                actionMode.finish();
                return true;
            }
            if (menuItem.getItemId() != R.id.bMenuViewMode) {
                return zArchiver.m734D(menuItem.getItemId());
            }
            zArchiver.onOptionsItemSelected(menuItem);
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            ZArchiver zArchiver = ZArchiver.this;
            char c2 = zArchiver.f1386h.f1622a;
            MenuInflater menuInflater = zArchiver.getMenuInflater();
            menuInflater.inflate(R.menu.toolbar_action_select, menu);
            menuInflater.inflate(c2 == '\"' ? R.menu.menu_tool : R.menu.toolbar_default, menu);
            menuInflater.inflate(R.menu.menu_main, menu);
            C0441e.m1189n(menu, new int[]{R.id.bOk}, false);
            if (c2 == '\"') {
                int[] iArr = new int[5];
                iArr[0] = R.id.bOk;
                iArr[1] = R.id.bMenuAdd;
                iArr[2] = R.id.bMenuNew;
                iArr[3] = R.id.bArchiveCommentAdd;
                iArr[4] = zArchiver.f1391m == null ? 0 : R.id.bCreateArchive;
                C0441e.m1189n(menu, iArr, false);
            } else {
                C0441e.m1189n(menu, new int[]{R.id.bMultiSelect, R.id.bCreateArchive}, false);
                menu.findItem(R.id.bMenuSelect).setShowAsActionFlags(2);
            }
            C0441e.m1189n(menu, new int[]{R.id.bMenuViewMode}, true);
            if (C0379b.m1058e(zArchiver)) {
                zArchiver.m4l(-1, menu);
            }
            zArchiver.m749S(actionMode);
            zArchiver.f1389k.setPageChangeEnable(false);
            if (c2 == 2 && !zArchiver.f1386h.f1623b) {
                ZApp.m725i(R.string.MES_SELECT_HELP);
            }
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            ZArchiver zArchiver = ZArchiver.this;
            zArchiver.f1386h.f1624c.m792m(zArchiver, false);
            zArchiver.f3b = null;
            zArchiver.f1389k.setPageChangeEnable(true);
            zArchiver.m740J();
            zArchiver.invalidateOptionsMenu();
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            C0441e.m1186k(menu);
            return true;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZArchiver$i */
    public final class ActionModeCallbackC0258i implements ActionMode.Callback {
        public ActionModeCallbackC0258i() {
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            int itemId = menuItem.getItemId();
            ZArchiver zArchiver = ZArchiver.this;
            if (itemId == R.id.bSelectPath || menuItem.getItemId() == R.id.bPast) {
                if (zArchiver.f1386h.f1624c.m792m(zArchiver, true)) {
                    actionMode.finish();
                }
                return true;
            }
            if (menuItem.getItemId() != R.id.bMenuViewMode) {
                return zArchiver.m734D(menuItem.getItemId());
            }
            zArchiver.onOptionsItemSelected(menuItem);
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            ZArchiver zArchiver = ZArchiver.this;
            ActionBar actionBar = zArchiver.getActionBar();
            if (actionBar != null) {
                actionBar.setCustomView((View) null);
            }
            actionMode.setCustomView(zArchiver.f1388j);
            if (zArchiver.f1390l != null && !C0379b.m1060g(zArchiver)) {
                zArchiver.f1390l.setVisibility(8);
            }
            MenuInflater menuInflater = zArchiver.getMenuInflater();
            menuInflater.inflate(R.menu.toolbar_action, menu);
            menuInflater.inflate(R.menu.menu_tool, menu);
            menuInflater.inflate(R.menu.menu_main, menu);
            char c2 = zArchiver.f1386h.f1622a;
            int i2 = R.id.bSelectPath;
            int i3 = R.id.bPast;
            if (c2 == '\t' || c2 == 17) {
                int[] iArr = new int[5];
                iArr[0] = R.id.bNewArchive;
                iArr[1] = R.id.bMenuAdd;
                iArr[2] = R.id.bPast;
                iArr[3] = R.id.bArchiveCommentAdd;
                if (zArchiver.f1391m == null) {
                    i2 = 0;
                }
                iArr[4] = i2;
                C0441e.m1189n(menu, iArr, false);
            } else if (c2 == 'A') {
                int[] iArr2 = new int[5];
                iArr2[0] = R.id.bNewArchive;
                iArr2[1] = R.id.bMenuAdd;
                iArr2[2] = R.id.bSelectPath;
                iArr2[3] = R.id.bArchiveCommentAdd;
                if (zArchiver.f1391m == null) {
                    i3 = 0;
                }
                iArr2[4] = i3;
                C0441e.m1189n(menu, iArr2, false);
            } else {
                MenuItem menuItemFindItem = menu.findItem(R.id.bNewArchive);
                if (menuItemFindItem != null) {
                    menuItemFindItem.setEnabled(false);
                }
            }
            C0441e.m1189n(menu, new int[]{R.id.bMenuViewMode}, true);
            C0305b c0305bM842c = zArchiver.f1386h.m842c();
            if (!C0358b.m1041l(128)) {
                boolean zM826g = c0305bM842c.m826g(7);
                int i4 = c0305bM842c.f1593b;
                if (zM826g && (C0181d.m570k(c0305bM842c.f1594c.f1015c) || c0305bM842c.m826g(32))) {
                    zArchiver.m742L(i4, 128, new C0129h(C0358b.f1980b[i4]));
                } else if (!c0305bM842c.m826g(67) && c0305bM842c.m826g(4)) {
                    zArchiver.m742L(i4, 128, new C0129h(C0015d.m39A(zArchiver.f1386h.m843d().f1015c)));
                }
            }
            AbstractViewOnClickListenerC0050h listAdapter = zArchiver.f1389k.getListAdapter();
            if (listAdapter != null) {
                listAdapter.m194h();
                listAdapter.mo188m(false);
            }
            if (c0305bM842c.m828i()) {
                zArchiver.m742L(c0305bM842c.f1593b, 0, c0305bM842c.f1594c);
            }
            ZApp.m725i(R.string.MES_SELECT_DESTINATION);
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            ZApp.m724g();
            ZArchiver zArchiver = ZArchiver.this;
            ActionBar actionBar = zArchiver.getActionBar();
            actionMode.setCustomView(null);
            if (actionBar != null) {
                actionBar.setCustomView(zArchiver.f1388j);
            }
            if (zArchiver.f1390l != null && !C0379b.m1060g(zArchiver)) {
                zArchiver.f1390l.setVisibility(0);
            }
            for (int i2 = 0; i2 < 2; i2++) {
                AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050hM920b = zArchiver.f1389k.m920b(i2);
                if (abstractViewOnClickListenerC0050hM920b != null) {
                    abstractViewOnClickListenerC0050hM920b.mo188m(true);
                }
            }
            zArchiver.f1386h.f1624c.m792m(zArchiver, false);
            zArchiver.f3b = null;
            zArchiver.m740J();
            zArchiver.invalidateOptionsMenu();
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            if (C0358b.m1038i(null)) {
                ZArchiver zArchiver = ZArchiver.this;
                C0307d c0307d = zArchiver.f1386h;
                if (C0415f.m1135c(c0307d.f1627f[c0307d.f1626e].f1594c.m491r()) == 2) {
                    byte bM844e = zArchiver.f1386h.m844e();
                    menu.findItem(R.id.bRemountRO).setVisible(bM844e == 3);
                    menu.findItem(R.id.bRemountRW).setVisible(bM844e == 4);
                }
            }
            C0441e.m1186k(menu);
            return true;
        }
    }

    /* JADX INFO: renamed from: u */
    public static void m728u(ZArchiver zArchiver, AdapterView adapterView, int i2) {
        zArchiver.getClass();
        if (adapterView == null) {
            return;
        }
        zArchiver.m742L(zArchiver.f1386h.f1626e, 128, new C0129h(((C0023e) adapterView.getItemAtPosition(i2)).f186c));
    }

    /* JADX INFO: renamed from: v */
    public static boolean m729v(ZArchiver zArchiver, AdapterView adapterView, int i2) {
        zArchiver.getClass();
        if (adapterView == null || !C0357a.m1027i(i2)) {
            return false;
        }
        C0128g c0128g = new C0128g(zArchiver);
        if (C0357a.m1026h(i2)) {
            c0128g.m471a(71);
        }
        c0128g.m471a(72);
        if (C0357a.m1025g(i2)) {
            c0128g.m471a(73);
        }
        c0128g.f1010d = ((C0022d) adapterView.getAdapter()).f178d.get(i2).f185b;
        String string = Integer.toString(i2);
        c0128g.f1011e = 0;
        c0128g.f1012f = string;
        c0128g.m473d(zArchiver.f1386h, 0, new Point(1, adapterView.getHeight() / 2));
        return true;
    }

    /* JADX INFO: renamed from: z */
    public static ZArchiver m730z() {
        WeakReference<ZArchiver> weakReference = f1383r;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* JADX INFO: renamed from: A */
    public final void m731A(boolean z2) {
        String str;
        String strM97y;
        C0129h c0129h;
        if (z2 && this.f1392n) {
            m1i();
            return;
        }
        C0307d c0307d = this.f1386h;
        C0305b c0305bM842c = c0307d.m842c();
        boolean zM828i = c0305bM842c.m828i();
        int i2 = c0305bM842c.f1593b;
        if (zM828i) {
            m747Q(i2, false, true);
            return;
        }
        boolean zM845f = c0307d.m845f(32);
        String[] strArr = C0358b.f1980b;
        if (zM845f && !C0358b.m1041l(8192) && c0305bM842c.m827h()) {
            C0129h c0129h2 = new C0129h(strArr[i2]);
            c0305bM842c.m831l(c0129h2, (byte) 0, 0);
            m742L(i2, 0, c0129h2);
            return;
        }
        if (z2 && c0305bM842c.m827h()) {
            if (c0307d.f1622a == 0 || C0358b.m1041l(8192)) {
                this.f1392n = true;
                ZApp.m725i(R.string.MES_PRESS_BACK_FOR_EXIT);
                return;
            } else {
                m2j();
                c0307d.m846g((char) 0);
                return;
            }
        }
        C0305b.a aVarM823d = c0305bM842c.m823d();
        boolean z3 = false;
        while (aVarM823d != null) {
            C0129h c0129h3 = aVarM823d.f1612a;
            if (!c0129h3.m480g() || c0129h3.m482i() || C0181d.m569j(c0129h3.f1015c)) {
                break;
            }
            aVarM823d = c0305bM842c.m823d();
            z3 = true;
        }
        if (z3) {
            while (aVarM823d != null && aVarM823d.f1612a.compareTo(c0307d.m843d()) == 0 && aVarM823d.f1615d == c0305bM842c.m828i()) {
                aVarM823d = c0305bM842c.m823d();
            }
        }
        if (aVarM823d != null) {
            aVarM823d.toString();
        }
        boolean z4 = c0305bM842c.m826g(4) && c0307d.f1622a == 0;
        if (aVarM823d != null) {
            if (aVarM823d.f1613b == 0 && c0307d.f1622a != 0) {
                if (this.f3b != null) {
                    m2j();
                }
                c0307d.m846g((char) 0);
            }
            if (c0305bM842c.m828i()) {
                m747Q(i2, false, false);
            }
            c0305bM842c.m831l(aVarM823d.f1612a, (byte) 0, 0);
            int i3 = aVarM823d.f1614c;
            boolean z5 = aVarM823d.f1615d;
            if (!z5 || (str = c0305bM842c.f1606o) == null) {
                int i4 = c0305bM842c.f1593b;
                C0129h c0129h4 = aVarM823d.f1612a;
                if (z5) {
                    i3 = -1;
                }
                m743M(i4, c0129h4, null, i3, 0);
            } else {
                int i5 = c0305bM842c.f1597f | 2;
                c0305bM842c.f1597f = i5;
                if (c0305bM842c.f1609r != null) {
                    c0305bM842c.f1597f = 1 | i5;
                    this.f1389k.m929k(c0305bM842c, c0307d.f1628g, i3, 0);
                    m752V(c0305bM842c, true);
                } else {
                    m746P(i2, str, c0305bM842c.f1607p, false);
                }
            }
        } else if (z2 && strArr[i2].equals(c0305bM842c.f1594c.f1015c)) {
            this.f1392n = true;
            ZApp.m725i(R.string.MES_PRESS_BACK_FOR_EXIT);
        } else {
            if ((C0358b.m1041l(8192) || C0358b.m1041l(16384)) && (!c0305bM842c.m826g(32) || c0305bM842c.m826g(4))) {
                C0129h c0129h5 = c0305bM842c.f1594c;
                String strM478e = c0129h5.m478e();
                strM97y = ("/".equals(strM478e) && c0129h5.m480g()) ? C0015d.m97y(c0129h5.f1015c) : strM478e;
            } else {
                strM97y = null;
            }
            C0129h c0129h6 = c0305bM842c.f1594c;
            boolean zM476c = c0129h6.m476c();
            if (zM476c || !c0305bM842c.m826g(32)) {
                c0129h = c0129h6;
            } else {
                c0129h = new C0129h(strArr[i2]);
                zM476c = true;
            }
            if (zM476c) {
                boolean zM826g = c0305bM842c.m826g(4);
                c0305bM842c.m831l(c0129h, (byte) 0, 0);
                m743M(c0305bM842c.f1593b, c0129h, strM97y, -1, 0);
                if (zM826g != c0305bM842c.m826g(4)) {
                    boolean z6 = !zM826g;
                    if (this.f3b == null) {
                        invalidateOptionsMenu();
                    }
                    if (!z6) {
                        AbstractCallableC0395c.m1097h(new RunnableC0471j());
                        if (this.f3b == null) {
                            C0070h.m253d().m254a();
                        }
                    }
                }
            }
        }
        if (z4 && !c0305bM842c.m826g(4) && c0307d.f1622a == 0) {
            try {
                C0070h c0070hM253d = C0070h.m253d();
                C0079a c0079aM266m = C0079a.m266m();
                if (c0070hM253d.m257e(c0079aM266m.m277l())) {
                    c0079aM266m.m267a();
                }
                c0070hM253d.m254a();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: B */
    public final void m732B(boolean z2) {
        if (z2 && this.f1393o) {
            finishAndRemoveTask();
        }
        this.f1393o = false;
    }

    /* JADX INFO: renamed from: C */
    public final void m733C(int i2) {
        C0307d c0307d = this.f1386h;
        C0305b c0305bM842c = c0307d.m842c();
        C0305b[] c0305bArr = c0307d.f1627f;
        if (i2 < c0305bArr.length && c0305bArr[i2] != null) {
            c0307d.f1626e = i2;
        }
        C0305b c0305bM842c2 = c0307d.m842c();
        byte bM825f = c0305bM842c.m825f();
        byte bM825f2 = c0305bM842c2.m825f();
        boolean z2 = true;
        int i3 = c0305bM842c2.f1593b;
        if (bM825f == bM825f2 && c0305bM842c.m822c() == c0305bM842c2.m822c()) {
            AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050hM920b = this.f1389k.m920b(c0305bM842c.f1593b);
            boolean z3 = abstractViewOnClickListenerC0050hM920b != null && abstractViewOnClickListenerC0050hM920b.f373h.f334a > 0;
            AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050hM920b2 = this.f1389k.m920b(i3);
            if (z3 == (abstractViewOnClickListenerC0050hM920b2 != null && abstractViewOnClickListenerC0050hM920b2.f373h.f334a > 0)) {
                z2 = false;
            }
        }
        m752V(c0305bM842c2, z2);
        ListView listView = (ListView) findViewById(R.id.lvFavorite);
        if (listView != null) {
            ((C0022d) listView.getAdapter()).m123a(i3);
        }
        this.f1392n = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r1v68 */
    /* JADX WARN: Type inference failed for: r1v75 */
    /* JADX WARN: Type inference failed for: r1v76 */
    /* JADX INFO: renamed from: D */
    public final boolean m734D(int i2) {
        ExSearchView exSearchView;
        C0449a c0449a;
        C0449a c0449a2;
        ArrayList arrayList;
        C0393a c0393a = this.f4c;
        if (i2 == R.id.bExit) {
            new C0453b0().m1098g(this, c0393a);
            return true;
        }
        if (i2 == R.id.bOk) {
            m2j();
            return true;
        }
        if (i2 == R.id.bSettings) {
            C0137h.m502d(this, new Intent(this, (Class<?>) SettingsDlg.class));
            return true;
        }
        if (i2 == R.id.bAbout) {
            C0137h.m502d(this, new Intent(this, (Class<?>) AboutDlg.class));
            return true;
        }
        AbstractViewOnClickListenerC0050h listAdapter = this.f1389k.getListAdapter();
        boolean z2 = false;
        char c2 = 0;
        int i3 = 0;
        if (listAdapter == null) {
            return false;
        }
        C0307d c0307d = this.f1386h;
        String strMo303t = null;
        if (i2 == R.id.bCopy || i2 == R.id.bCut) {
            m760y(true);
            C0287a c0287a = c0307d.f1624c;
            z2 = i2 == R.id.bCut;
            C0449a c0449a3 = c0287a.f1492d;
            if (c0449a3 != null) {
                c0287a.f1493e = c0449a3;
                c0449a3.f2258c = z2;
                c0287a.f1492d = null;
            }
            if (C0358b.m1041l(64)) {
                m736F('A');
            } else {
                invalidateOptionsMenu();
                ZApp.m725i(R.string.MES_COPIED);
            }
        } else if (i2 == R.id.bPast) {
            if (c0307d.f1624c.f1493e != null) {
                boolean zM845f = c0307d.m845f(4);
                C0287a c0287a2 = c0307d.f1624c;
                if (zM845f) {
                    if (!C0015d.m52N(1, c0307d.m843d().f1015c)) {
                        ZApp.m725i(R.string.MES_DONT_SUPPORT_EDIT);
                        return false;
                    }
                } else if (c0287a2.m791l(this, 1)) {
                    return false;
                }
                if (c0307d.m845f(4)) {
                    C0449a c0449a4 = c0287a2.f1493e;
                    if (c0449a4 != null) {
                        c0287a2.f1492d = c0449a4;
                        c0287a2.f1493e = null;
                    }
                    C0449a c0449a5 = c0287a2.f1492d;
                    if (c0449a5 != null) {
                        C0129h c0129hM843d = c0287a2.f1490b.m843d();
                        InterfaceC0316c interfaceC0316c = c0287a2.f1495g.f1616a.get();
                        if (interfaceC0316c != null && c0129hM843d.m480g() && !C0306c.m834c(c0129hM843d) && c0449a5.m1202g().m488o()) {
                            C0129h c0129hM89q = C0015d.m89q(c0129hM843d);
                            String strM478e = c0129hM89q.m478e();
                            String strM65a0 = C0015d.m65a0(c0129hM843d.f1017e);
                            StringBuilder sb = new StringBuilder();
                            if (!C0385h.m1081e(strM65a0)) {
                                sb.append("\\-spp");
                                sb.append(strM65a0);
                                sb.append('/');
                            }
                            C0015d.m70e(sb, strM478e, c0129hM89q, true);
                            boolean zM835f = C0306c.m835f(c0129hM843d, true);
                            ?? r1 = zM835f;
                            if (c0449a5.f2258c) {
                                r1 = (zM835f ? 1 : 0) | 4;
                            }
                            ?? r15 = r1;
                            try {
                                C0129h c0129h = c0449a5.f2257b;
                                if (c0129h != null) {
                                    ArrayList arrayList2 = new ArrayList(1);
                                    arrayList2.add(c0129h);
                                    arrayList = arrayList2;
                                } else {
                                    ArrayList<C0046d> arrayList3 = c0449a5.f2256a;
                                    int size = arrayList3.size();
                                    ArrayList arrayList4 = new ArrayList(size);
                                    for (int i4 = 0; i4 < size; i4++) {
                                        C0129h c0129h2 = ((C0048f) arrayList3.get(i4)).f365k;
                                        if (!arrayList4.contains(c0129h2)) {
                                            arrayList4.add(c0129h2);
                                        }
                                    }
                                    arrayList = arrayList4;
                                }
                                if (arrayList.size() == 1) {
                                    interfaceC0316c.ArchiveAddFiles(strM478e, c0129hM89q, sb.toString(), C0064b.m241e(c0449a5.m1205j()), (C0129h) arrayList.get(0), r15 == true ? 1 : 0);
                                } else {
                                    int size2 = arrayList.size();
                                    ArrayList arrayList5 = new ArrayList(size2);
                                    for (int i5 = 0; i5 < size2; i5++) {
                                        arrayList5.add(C0064b.m241e(c0449a5.m1206k((C0129h) arrayList.get(i5))));
                                    }
                                    interfaceC0316c.ArchiveAddFilesMulti(strM478e, c0129hM89q, sb.toString(), arrayList5, arrayList, r15 == true ? 1 : 0);
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                } else {
                    if (!c0307d.m845f(83)) {
                        return false;
                    }
                    if (c0287a2.f1493e.m1202g().m480g()) {
                        C0449a c0449a6 = c0287a2.f1493e;
                        if (c0449a6 != null) {
                            c0287a2.f1492d = c0449a6;
                            c0287a2.f1493e = null;
                        }
                        c0287a2.m785e(c0307d.m843d(), c0307d.m845f(2));
                    } else {
                        C0449a c0449a7 = c0287a2.f1493e;
                        boolean z3 = c0449a7.f2258c;
                        if (c0449a7 != null) {
                            c0287a2.f1492d = c0449a7;
                            c0287a2.f1493e = null;
                        }
                        C0129h c0129hM843d2 = c0307d.m843d();
                        boolean zM845f2 = c0307d.m845f(2);
                        C0449a c0449a8 = c0287a2.f1492d;
                        if (c0449a8 != null) {
                            InterfaceC0316c interfaceC0316c2 = c0287a2.f1495g.f1616a.get();
                            if (interfaceC0316c2 == null) {
                                c2 = 1;
                            } else {
                                C0129h c0129hM1202g = c0449a8.m1202g();
                                if (c0129hM1202g.m488o() || c0129hM1202g.m484k() || c0129hM1202g.m482i()) {
                                    boolean zM1039j = C0358b.m1039j();
                                    if (zM1039j && !zM845f2 && C0306c.m835f(c0129hM843d2, true)) {
                                        zM845f2 = true;
                                    }
                                    int iM1203h = c0449a8.m1203h();
                                    try {
                                        if (iM1203h == 1) {
                                            if (zM1039j && !zM845f2 && C0306c.m835f(c0129hM1202g, false)) {
                                                zM845f2 = true;
                                            }
                                            interfaceC0316c2.Copy(c0129hM1202g, c0129hM843d2, c0449a8.m1205j(), z3, zM845f2 ? 1 : 0);
                                        } else {
                                            if (z3) {
                                                ArrayList<C0046d> arrayList6 = c0449a8.f2256a;
                                                if (!arrayList6.isEmpty() && (arrayList6.get(0) instanceof C0048f)) {
                                                    Collections.sort(arrayList6, new C0134e(z2 ? 1 : 0));
                                                }
                                            }
                                            ArrayList arrayList7 = new ArrayList();
                                            for (int i6 = 0; i6 < iM1203h; i6++) {
                                                C0129h c0129hM1196a = c0449a8.m1196a(i6);
                                                arrayList7.add(c0129hM1196a);
                                                if (zM1039j && !zM845f2 && C0306c.m835f(c0129hM1196a, false)) {
                                                    zM845f2 = true;
                                                }
                                            }
                                            interfaceC0316c2.CopyList(arrayList7, c0129hM843d2, z3, zM845f2 ? 1 : 0);
                                        }
                                    } catch (Exception unused2) {
                                        c2 = 2;
                                    }
                                } else {
                                    c2 = 3;
                                }
                            }
                            if (c2 == 0 && z3) {
                                if (c0287a2.f1492d.m1199d(C0079a.m266m().m277l())) {
                                    C0079a.m266m().m267a();
                                }
                                if (c0287a2.f1492d.m1199d(C0070h.m253d().f493a)) {
                                    C0070h.m253d().m254a();
                                }
                            }
                        }
                    }
                }
                if (!C0358b.m1041l(64)) {
                    invalidateOptionsMenu();
                }
            }
        } else if (i2 == R.id.bDelete) {
            m760y(false);
            boolean zM845f3 = c0307d.m845f(4);
            C0287a c0287a3 = c0307d.f1624c;
            if (zM845f3) {
                c0287a3.m793n(this, null, 56);
            } else {
                c0287a3.m793n(this, null, 23);
            }
        } else if (i2 == R.id.bCompress) {
            m760y(true);
            c0307d.f1624c.m793n(this, null, 8);
        } else if (i2 == R.id.bExtract) {
            if (listAdapter.f373h.f334a <= 0) {
                listAdapter.m193g();
            }
            m760y(true);
            c0307d.f1624c.m793n(this, null, 5);
        } else {
            String str = "";
            if (i2 == R.id.bTest) {
                if (listAdapter.f373h.f334a <= 0) {
                    C0129h c0129h3 = new C0129h(c0307d.m843d().f1015c);
                    InterfaceC0316c interfaceC0316c3 = c0307d.f1624c.f1495g.f1616a.get();
                    if (interfaceC0316c3 != null) {
                        String strM478e2 = c0129h3.m478e();
                        if (C0015d.m53O(strM478e2, false) && C0358b.m1030a() > 0) {
                            str = "\\-mmt=" + C0358b.m1030a();
                        }
                        if (C0070h.m253d().m257e(strM478e2)) {
                            str = str + "\\-p" + C0070h.m253d().m256c(true);
                        }
                        try {
                            interfaceC0316c3.ArchiveTest(strM478e2, c0129h3, str);
                        } catch (Exception unused3) {
                        }
                    }
                } else {
                    m760y(true);
                    c0307d.f1624c.m793n(this, null, 11);
                }
            } else if (i2 == R.id.bNewFolder) {
                boolean zM845f4 = c0307d.m845f(4);
                C0287a c0287a4 = c0307d.f1624c;
                if (!zM845f4) {
                    if (c0307d.m844e() == 2) {
                        if (!m759x(c0307d.f1626e, c0307d.m843d().f1015c)) {
                            return false;
                        }
                        DialogInterfaceOnCancelListenerC0090b dialogInterfaceOnCancelListenerC0090b = new DialogInterfaceOnCancelListenerC0090b(c0307d, this, c0307d.m843d().f1015c);
                        dialogInterfaceOnCancelListenerC0090b.m361p(1);
                        dialogInterfaceOnCancelListenerC0090b.f738b = c0287a4;
                        AlertDialog alertDialog = dialogInterfaceOnCancelListenerC0090b.f694g;
                        if (alertDialog != null && AbstractC0099i.m354q(alertDialog)) {
                            dialogInterfaceOnCancelListenerC0090b.f699l.m1090a(dialogInterfaceOnCancelListenerC0090b, null);
                        }
                        return true;
                    }
                    if (c0287a4.m791l(this, 7)) {
                        return false;
                    }
                } else if (!C0015d.m52N(1, c0307d.m843d().f1015c)) {
                    ZApp.m725i(R.string.MES_DONT_SUPPORT_EDIT);
                    return false;
                }
                DialogInterfaceOnCancelListenerC0103m dialogInterfaceOnCancelListenerC0103m = new DialogInterfaceOnCancelListenerC0103m(c0307d, this, R.string.NF_TTL_NEW_FOLDER, R.string.NF_ENTER_FOLDER_NAME);
                dialogInterfaceOnCancelListenerC0103m.m361p(1);
                dialogInterfaceOnCancelListenerC0103m.f738b = c0287a4;
                AlertDialog alertDialog2 = dialogInterfaceOnCancelListenerC0103m.f752g;
                if (alertDialog2 != null) {
                    AbstractC0099i.m354q(alertDialog2);
                }
                String strM64Z = (c0307d.f1622a == '\t' && (c0449a2 = c0287a4.f1492d) != null && c0449a2.m1203h() == 1) ? C0015d.m64Z(c0287a4.f1492d.m1197b(0)) : (c0307d.f1622a != 17 || (c0449a = c0287a4.f1492d) == null) ? "New Folder" : C0015d.m64Z(C0015d.m97y(c0449a.m1202g().f1015c));
                if (!c0307d.m845f(68)) {
                    AbstractC0127f abstractC0127fM463u = AbstractC0127f.m463u(c0307d.m843d());
                    if (abstractC0127fM463u.mo419f(strM64Z)) {
                        String str2 = strM64Z;
                        for (int i7 = 1; i7 < 1000; i7++) {
                            str2 = strM64Z + " " + i7;
                            if (!abstractC0127fM463u.mo419f(str2)) {
                                break;
                            }
                        }
                        strM64Z = str2;
                    }
                }
                dialogInterfaceOnCancelListenerC0103m.m363s(strM64Z);
            } else if (i2 == R.id.bNewArchive) {
                if (c0307d.m845f(19)) {
                    if ((c0307d.m845f(1) && c0307d.m844e() != 1) || c0307d.m845f(2)) {
                        if (!C0358b.m1038i(null)) {
                            ZApp.m725i(R.string.MES_PATH_READ_ONLY);
                            return false;
                        }
                        i3 = (C0415f.m1137e(c0307d.m843d().f1015c) ? 0 : 16) | 4;
                    }
                    DialogInterfaceOnCancelListenerC0098h dialogInterfaceOnCancelListenerC0098h = new DialogInterfaceOnCancelListenerC0098h(i3, this, "archiveNew", c0307d);
                    dialogInterfaceOnCancelListenerC0098h.m361p(11);
                    dialogInterfaceOnCancelListenerC0098h.f738b = c0307d.f1624c;
                    AlertDialog alertDialog3 = dialogInterfaceOnCancelListenerC0098h.f720g;
                    if (alertDialog3 != null) {
                        AbstractC0099i.m354q(alertDialog3);
                    }
                }
            } else if (i2 == R.id.bNewFile) {
                boolean zM845f5 = c0307d.m845f(4);
                C0287a c0287a5 = c0307d.f1624c;
                if (zM845f5) {
                    if (!C0015d.m52N(1, c0307d.m843d().f1015c)) {
                        ZApp.m725i(R.string.MES_DONT_SUPPORT_EDIT);
                        return false;
                    }
                } else if (c0287a5.m791l(this, 9)) {
                    return false;
                }
                DialogInterfaceOnCancelListenerC0103m dialogInterfaceOnCancelListenerC0103m2 = new DialogInterfaceOnCancelListenerC0103m(c0307d, this, R.string.NF_TTL_NEW_FILE, R.string.NF_ENTER_FILE_NAME);
                dialogInterfaceOnCancelListenerC0103m2.m361p(24);
                dialogInterfaceOnCancelListenerC0103m2.f738b = c0287a5;
                AlertDialog alertDialog4 = dialogInterfaceOnCancelListenerC0103m2.f752g;
                if (alertDialog4 != null) {
                    AbstractC0099i.m354q(alertDialog4);
                }
                String str3 = "text.txt";
                if (!c0307d.m845f(68)) {
                    AbstractC0127f abstractC0127fM463u2 = AbstractC0127f.m463u(c0307d.m843d());
                    if (abstractC0127fM463u2.mo419f("text.txt")) {
                        for (int i8 = 1; i8 < 1000; i8++) {
                            str3 = "text " + i8 + ".txt";
                            if (!abstractC0127fM463u2.mo419f(str3)) {
                                break;
                            }
                        }
                    }
                }
                dialogInterfaceOnCancelListenerC0103m2.m363s(str3);
            } else if (i2 == R.id.bAddFile) {
                c0307d.f1624c.m793n(this, null, 81);
            } else if (i2 == R.id.bAddFolder) {
                c0307d.f1624c.m793n(this, null, 82);
            } else if (i2 == R.id.bSelectAll) {
                char c3 = c0307d.f1622a;
                if (c3 != 0 && ((char) (c3 & 3)) != 2) {
                    return false;
                }
                listAdapter.m193g();
                m749S(this.f3b);
            } else if (i2 == R.id.bSelectClear) {
                char c4 = c0307d.f1622a;
                if (c4 != 0 && ((char) (c4 & 3)) != 2) {
                    return false;
                }
                listAdapter.m194h();
                m749S(this.f3b);
            } else if (i2 == R.id.bSelectInvert) {
                char c5 = c0307d.f1622a;
                if (c5 != 0 && ((char) (c5 & 3)) != 2) {
                    return false;
                }
                listAdapter.m195i();
                m749S(this.f3b);
            } else if (i2 == R.id.bMultiSelect) {
                if (c0307d.f1622a != 0 || this.f3b != null) {
                    return false;
                }
                m736F((char) 2);
            } else if (i2 == R.id.bArchiveCommentAdd || i2 == R.id.bArchiveComment) {
                String strM277l = C0079a.m266m().m277l();
                if (strM277l == null) {
                    return false;
                }
                boolean zM52N = C0015d.m52N(2, strM277l);
                C0079a c0079aM266m = C0079a.m266m();
                ReentrantReadWriteLock reentrantReadWriteLock = c0079aM266m.f582a;
                try {
                    reentrantReadWriteLock.readLock().lock();
                    InterfaceC0082d interfaceC0082d = c0079aM266m.f583b;
                    if (interfaceC0082d != null) {
                        strMo303t = interfaceC0082d.mo303t();
                    }
                    String str4 = strMo303t;
                    reentrantReadWriteLock.readLock().unlock();
                    if (str4 == null && !zM52N) {
                        return false;
                    }
                    DialogInterfaceOnCancelListenerC0103m dialogInterfaceOnCancelListenerC0103m3 = new DialogInterfaceOnCancelListenerC0103m(this.f1386h, this, C0015d.m97y(strM277l), R.string.CMT_ARCHIVE_COOMENT, zM52N ? 2 : 1);
                    dialogInterfaceOnCancelListenerC0103m3.m361p(16);
                    AlertDialog alertDialog5 = dialogInterfaceOnCancelListenerC0103m3.f752g;
                    if (alertDialog5 != null) {
                        AbstractC0099i.m354q(alertDialog5);
                    }
                    dialogInterfaceOnCancelListenerC0103m3.m363s(str4 != null ? str4 : "");
                    if (zM52N) {
                        dialogInterfaceOnCancelListenerC0103m3.f738b = c0307d.f1624c;
                    }
                } catch (Throwable th) {
                    reentrantReadWriteLock.readLock().unlock();
                    throw th;
                }
            } else if (i2 == R.id.bSearch) {
                if (c0307d.f1622a == 0 && !c0307d.m842c().m828i() && (exSearchView = this.f1390l) != null && exSearchView.isIconified()) {
                    this.f1390l.setVisibility(0);
                    this.f1390l.setIconified(false);
                }
            } else if (i2 == R.id.bRemountRW || i2 == R.id.bRemountRO) {
                if (!c0307d.m845f(3)) {
                    return false;
                }
                c0393a.m1095f(100, 0, -1);
                new C0484p0(c0307d.m843d().f1015c, i2 == R.id.bRemountRW).m1098g(this, c0393a);
            } else {
                if (i2 != R.id.bInfo) {
                    return false;
                }
                new DialogInterfaceOnCancelListenerC0105o(c0307d, (Context) this, c0307d.m843d(), (String) null, true).m368u();
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: E */
    public final boolean m735E() {
        boolean z2 = false;
        if (this.f3b != null) {
            return false;
        }
        FilePanelView filePanelView = this.f1389k;
        AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050hM920b = filePanelView.m920b(filePanelView.f1694a);
        if (abstractViewOnClickListenerC0050hM920b != null && abstractViewOnClickListenerC0050hM920b.f373h.f334a > 0) {
            z2 = true;
        }
        if (z2) {
            return true;
        }
        return this.f1389k.m925g(1);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003f  */
    /* JADX INFO: renamed from: F */
    public final void m736F(char c2) {
        int i2 = c2 & 1;
        C0307d c0307d = this.f1386h;
        if (i2 == 1) {
            c0307d.m842c().m832m(c2, this.f1389k.getListPosition());
        }
        m2j();
        c0307d.m846g(c2);
        char c3 = c0307d.f1622a;
        if (c3 == 2) {
            startActionMode(new ActionModeCallbackC0257h());
            m5m(false);
        } else if (c3 == '\t' || c3 == 17) {
            startActionMode(new ActionModeCallbackC0258i());
            m5m(true);
        } else if (c3 == '\"') {
            startActionMode(new ActionModeCallbackC0257h());
            m5m(true);
        } else if (c3 != 'A') {
            this.f3b = null;
        } else {
            startActionMode(new ActionModeCallbackC0258i());
            m5m(true);
        }
        m740J();
    }

    /* JADX INFO: renamed from: G */
    public final void m737G(int i2) {
        setContentView(i2);
        FilePanelView filePanelView = (FilePanelView) findViewById(R.id.fp);
        this.f1389k = filePanelView;
        filePanelView.setOnListRefreshListener(this);
        this.f1389k.setOnPageChangedListener(this);
        ImageView imageView = new ImageView(this);
        imageView.setImageDrawable(C0439c.m1173h(this, R.drawable.ic_refresh));
        this.f1389k.setCircleView(imageView);
        boolean z2 = i2 == R.layout.dlg_main_list_tv;
        ActionBar actionBar = getActionBar();
        if (actionBar == null || z2) {
            this.f1388j = null;
            this.f1390l = null;
        } else {
            actionBar.setDisplayShowCustomEnabled(true);
            actionBar.setCustomView(R.layout.ctm_navigate);
            View customView = actionBar.getCustomView();
            this.f1388j = customView;
            ExSearchView exSearchView = (ExSearchView) customView.findViewById(R.id.svSearch);
            this.f1390l = exSearchView;
            if (exSearchView != null) {
                exSearchView.getContext().setTheme(C0358b.m1032c());
            }
        }
        if (z2) {
            this.f1388j = findViewById(R.id.rlTitle);
            m9q(actionBar);
        }
        if (findViewById(R.id.tvStorage) == null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) LayoutInflater.from(this).inflate(R.layout.extend_info, (ViewGroup) this.f1389k, false);
            constraintLayout.setBackgroundColor(C0439c.m1168c(this, android.R.attr.colorBackground));
            constraintLayout.setElevation(25.0f);
            this.f1389k.setExtendView(constraintLayout);
            this.f1389k.setOnExtendShowListener(this);
            ProgressBar progressBar = (ProgressBar) findViewById(R.id.pbFree);
            if (progressBar != null) {
                C0441e.m1187l(this, progressBar, -3);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:50:0x00fe A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x0100  */
    /* JADX WARN: Code duplicated, block: B:52:0x0109  */
    /* JADX WARN: Code duplicated, block: B:54:0x010e  */
    /* JADX WARN: Code duplicated, block: B:58:0x013e  */
    /* JADX WARN: Code duplicated, block: B:61:0x014e  */
    /* JADX WARN: Code duplicated, block: B:64:0x016f  */
    /* JADX WARN: Code duplicated, block: B:67:0x017e  */
    /* JADX WARN: Code duplicated, block: B:73:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: H */
    public final void m738H() {
        int iM1168c;
        ImageView imageView;
        ListView listView;
        FloatingActionMenu floatingActionMenu;
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setDisplayShowTitleEnabled(false);
        }
        ExSearchView exSearchView = this.f1390l;
        Drawable drawable = null;
        if (exSearchView != null) {
            exSearchView.setVisibility(C0379b.m1060g(this) ? 8 : 0);
            View viewFindViewById = this.f1390l.findViewById(this.f1390l.getContext().getResources().getIdentifier("android:id/search_button", null, null));
            if (viewFindViewById instanceof ImageView) {
                ((ImageView) viewFindViewById).setImageDrawable(C0439c.m1171f(this, R.attr.menuIconSearch));
            }
            this.f1390l.setOnCloseListener(new C0473k(this));
            this.f1390l.setOnSearchClickListener(new ViewOnClickListenerC0452b(this));
            this.f1390l.setOnQueryListener(new C0455c(this));
        }
        View view = this.f1388j;
        View viewFindViewById2 = view == null ? null : view.findViewById(R.id.rlNavigation);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new ViewOnClickListenerC0458d(this, viewFindViewById2));
        }
        int i2 = C0358b.f1982d & 983040;
        if (i2 != 65536) {
            if (i2 == 131072) {
                iM1168c = C0439c.m1168c(this, R.attr.backgroundColorFileList);
            } else if (i2 == 262144) {
                try {
                    String string = PreferenceManager.getDefaultSharedPreferences(this).getString("iGUICustomBGPath", null);
                    if (string != null) {
                        drawable = Drawable.createFromPath(string);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    ZApp.m726j("Error loading background image");
                }
            } else if (C0358b.m1040k(1024)) {
                iM1168c = C0439c.m1168c(this, R.attr.backgroundColorFileList);
            }
            imageView = (ImageView) findViewById(R.id.ivParent);
            if (drawable instanceof BitmapDrawable) {
                imageView.setImageBitmap(((BitmapDrawable) drawable).getBitmap());
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                if (i2 == 65536) {
                    imageView.setAlpha(0.7f);
                }
                this.f1389k.setCacheEnabled(false);
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
                this.f1389k.setCacheEnabled(true);
            }
            this.f1389k.setFastScrollEnabled(C0358b.m1041l(32768));
            this.f1389k.setOnItemLongClickListener(this);
            this.f1389k.setOnItemClickListener(this);
            this.f1389k.setOnItemSelectChanged(this);
            if (Build.VERSION.SDK_INT >= 24) {
                this.f1389k.setOnDragListener(this);
            }
            listView = (ListView) findViewById(R.id.lvFavorite);
            if (listView != null) {
                listView.setAdapter((ListAdapter) new C0022d(this, false, false));
                C0441e.m1185j(listView);
                listView.setOnItemClickListener(new C0461e(this));
                listView.setOnItemLongClickListener(new C0463f(this));
            }
            if (C0358b.m1041l(8)) {
                this.f1391m = (FloatingActionMenu) findViewById(R.id.ibAction);
            }
            floatingActionMenu = this.f1391m;
            if (floatingActionMenu != null) {
                floatingActionMenu.setVisibility(0);
                this.f1391m.setTransparent(C0358b.m1041l(16));
                this.f1391m.setAnimated(C0358b.m1041l(32));
                this.f1391m.setClosedOnTouchOutside(true);
                this.f1391m.setOnMenuButtonClickListener(new ViewOnClickListenerC0465g(this));
                this.f1391m.setOnMenuButtonClick(new ViewOnClickListenerC0467h(this));
                this.f1391m.setOnMenuToggleListener(new C0469i(this));
            }
        }
        try {
            drawable = WallpaperManager.getInstance(this).getDrawable();
        } catch (Exception e3) {
            e3.printStackTrace();
            ZApp.m726j("Error on get the wallpaper");
        }
        iM1168c = 0;
        imageView = (ImageView) findViewById(R.id.ivParent);
        if (drawable instanceof BitmapDrawable) {
            imageView.setImageBitmap(((BitmapDrawable) drawable).getBitmap());
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            if (i2 == 65536) {
                imageView.setAlpha(0.7f);
            }
            this.f1389k.setCacheEnabled(false);
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
            this.f1389k.setCacheEnabled(true);
        }
        this.f1389k.setFastScrollEnabled(C0358b.m1041l(32768));
        this.f1389k.setOnItemLongClickListener(this);
        this.f1389k.setOnItemClickListener(this);
        this.f1389k.setOnItemSelectChanged(this);
        if (Build.VERSION.SDK_INT >= 24) {
            this.f1389k.setOnDragListener(this);
        }
        listView = (ListView) findViewById(R.id.lvFavorite);
        if (listView != null) {
            listView.setAdapter((ListAdapter) new C0022d(this, false, false));
            C0441e.m1185j(listView);
            listView.setOnItemClickListener(new C0461e(this));
            listView.setOnItemLongClickListener(new C0463f(this));
        }
        if (C0358b.m1041l(8)) {
            this.f1391m = (FloatingActionMenu) findViewById(R.id.ibAction);
        }
        floatingActionMenu = this.f1391m;
        if (floatingActionMenu != null) {
            floatingActionMenu.setVisibility(0);
            this.f1391m.setTransparent(C0358b.m1041l(16));
            this.f1391m.setAnimated(C0358b.m1041l(32));
            this.f1391m.setClosedOnTouchOutside(true);
            this.f1391m.setOnMenuButtonClickListener(new ViewOnClickListenerC0465g(this));
            this.f1391m.setOnMenuButtonClick(new ViewOnClickListenerC0467h(this));
            this.f1391m.setOnMenuToggleListener(new C0469i(this));
        }
    }

    /* JADX INFO: renamed from: I */
    public final boolean m739I(int i2, int i3, int i4) {
        if (this.f1391m.m932c()) {
            FloatingActionMenu floatingActionMenu = this.f1391m;
            floatingActionMenu.m935f(floatingActionMenu.f1739j);
        }
        if (this.f1391m.getTag() != null && ((Integer) this.f1391m.getTag()).intValue() == i2) {
            FloatingActionMenu floatingActionMenu2 = this.f1391m;
            if (floatingActionMenu2.f1734e == i4 + 2) {
                floatingActionMenu2.setMenuState(false);
                return false;
            }
        }
        FloatingActionMenu floatingActionMenu3 = this.f1391m;
        if (floatingActionMenu3.f1734e > 1) {
            floatingActionMenu3.m934e(false, false);
            ArrayList<C0009a> arrayList = new ArrayList();
            int childCount = floatingActionMenu3.getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = floatingActionMenu3.getChildAt(i5);
                if (childAt != floatingActionMenu3.f1732c && childAt != floatingActionMenu3.f1740k && (childAt instanceof C0009a)) {
                    arrayList.add((C0009a) childAt);
                }
            }
            for (C0009a c0009a : arrayList) {
                c0009a.setOnClickListener(null);
                floatingActionMenu3.removeView(c0009a);
                floatingActionMenu3.f1734e--;
            }
        }
        this.f1391m.setTag(Integer.valueOf(i2));
        this.f1391m.setMenuButtonImageResource(i3);
        if (this.f1391m.m932c()) {
            FloatingActionMenu floatingActionMenu4 = this.f1391m;
            floatingActionMenu4.m935f(floatingActionMenu4.f1739j);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00ef  */
    /* JADX INFO: renamed from: J */
    public final void m740J() {
        boolean z2;
        if (this.f1391m == null) {
            return;
        }
        C0307d c0307d = this.f1386h;
        char c2 = c0307d.f1622a;
        if (c2 != 0) {
            if (c2 == 2) {
                m739I(R.id.bOk, R.drawable.l_done, 0);
                return;
            }
            if (c2 == '\t' || c2 == 17) {
                m739I(R.id.bSelectPath, R.drawable.l_to, 0);
                return;
            }
            if (c2 == '\"') {
                m739I(R.id.bCreateArchive, R.drawable.l_done, 0);
                return;
            } else {
                if (c2 != 'A') {
                    return;
                }
                C0449a c0449a = c0307d.f1624c.f1493e;
                m739I(R.id.bPast, c0449a != null && c0449a.f2258c ? R.drawable.l_paste_cut : R.drawable.l_paste, 0);
                return;
            }
        }
        AbstractViewOnClickListenerC0050h listAdapter = this.f1389k.getListAdapter();
        if (listAdapter == null) {
            return;
        }
        C0305b c0305bM842c = c0307d.m842c();
        if (!c0305bM842c.m826g(19)) {
            if (c0305bM842c.m826g(4)) {
                if (c0305bM842c.m828i() || listAdapter.f373h.f334a > 0 || !C0015d.m52N(1, c0305bM842c.f1594c.f1015c)) {
                    m739I(R.id.bExtract, R.drawable.l_upload, 0);
                    return;
                } else {
                    if (m739I(R.id.bAddFile, R.drawable.l_add, 2)) {
                        m741K(R.id.bAddFile, R.drawable.l_file);
                        m741K(R.id.bNewFolder, R.drawable.l_folder);
                        return;
                    }
                    return;
                }
            }
            if (c0305bM842c.m826g(64)) {
                if (c0305bM842c.m828i() || listAdapter.f373h.f334a > 0) {
                    m739I(R.id.bCopy, R.drawable.l_copy, 0);
                    return;
                } else {
                    if (m739I(R.id.bNewFolder, R.drawable.l_add, 2)) {
                        m741K(R.id.bNewFolder, R.drawable.l_folder);
                        m741K(R.id.bNewFile, R.drawable.l_file);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (c0305bM842c.m828i()) {
            if (listAdapter.f373h.f334a > 0) {
                m739I(R.id.bCompress, R.drawable.l_download, 0);
                return;
            }
            FloatingActionMenu floatingActionMenu = this.f1391m;
            boolean z3 = floatingActionMenu.f1739j;
            if (floatingActionMenu.m932c() || floatingActionMenu.f1741l) {
                return;
            }
            floatingActionMenu.f1741l = true;
            if (!floatingActionMenu.m933d()) {
                floatingActionMenu.m931b(z3);
                return;
            } else {
                floatingActionMenu.m934e(false, z3);
                floatingActionMenu.postDelayed(new RunnableC0010b(floatingActionMenu, z3), ((long) floatingActionMenu.f1734e) * 50);
                return;
            }
        }
        if (listAdapter.f373h.f334a > 0) {
            if (c0305bM842c.m825f() != 1) {
                m739I(R.id.bCopy, R.drawable.l_copy, 0);
                return;
            } else {
                m739I(R.id.bCompress, R.drawable.l_download, 0);
                return;
            }
        }
        boolean zM1038i = C0358b.m1038i(null);
        if (zM1038i && C0415f.m1135c(c0305bM842c.f1594c.m491r()) == 2 && !c0307d.m845f(128)) {
            if (c0305bM842c.m825f() == 4) {
                m739I(R.id.bRemountRW, R.drawable.l_to_rw, 0);
            } else if (c0305bM842c.m825f() != 3 || c0305bM842c.f1594c.f1015c.startsWith("/data")) {
                z2 = false;
            } else {
                m739I(R.id.bRemountRO, R.drawable.l_to_ro, 0);
            }
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            return;
        }
        if (c0305bM842c.m825f() != 1 && !zM1038i) {
            if (c0305bM842c.m825f() == 2) {
                m739I(R.id.bNewFolder, R.drawable.l_add, 0);
                return;
            } else {
                m739I(R.id.bInfo, R.drawable.l_info, 0);
                return;
            }
        }
        if (m739I(R.id.bNewFolder, R.drawable.l_add, 3)) {
            m741K(R.id.bNewFolder, R.drawable.l_folder);
            m741K(R.id.bNewArchive, R.drawable.l_archive);
            m741K(R.id.bNewFile, R.drawable.l_file);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: K */
    public final void m741K(int i2, int i3) {
        C0009a c0009a = new C0009a(this, false);
        c0009a.setTag(Integer.valueOf(i2));
        Resources.Theme themeNewTheme = c0009a.getResources().newTheme();
        themeNewTheme.applyStyle(R.style.AppTheme_Dark, true);
        c0009a.f27f = C0439c.m1174i(c0009a.getResources(), themeNewTheme, i3);
        c0009a.f22a = 1;
        c0009a.m20g();
        FloatingActionMenu floatingActionMenu = this.f1391m;
        floatingActionMenu.addView(c0009a, floatingActionMenu.f1734e - 2);
        c0009a.setOnClickListener(floatingActionMenu);
        floatingActionMenu.f1734e++;
    }

    /* JADX INFO: renamed from: L */
    public final void m742L(int i2, int i3, C0129h c0129h) {
        m743M(i2, c0129h, null, -1, i3);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0094  */
    /* JADX WARN: Code duplicated, block: B:37:0x009c  */
    /* JADX INFO: renamed from: M */
    public final void m743M(int i2, C0129h c0129h, String str, int i3, int i4) {
        int i5;
        C0044b c0044b;
        Objects.toString(c0129h);
        C0393a c0393a = this.f4c;
        c0393a.m1095f(10, 1, i2);
        C0307d c0307d = this.f1386h;
        C0305b c0305b = c0307d.f1627f[i2];
        boolean zEquals = c0305b.f1594c.equals(c0129h);
        if (!zEquals) {
            c0305b.m832m((char) (c0307d.f1622a & 3), this.f1389k.getListPosition());
        }
        if (i2 == c0307d.f1626e) {
            if (!c0129h.m483j()) {
                DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y = (DialogInterfaceOnCancelListenerC0115y) c0307d.m841b(-2, 1, -1);
                if (dialogInterfaceOnCancelListenerC0115y == null) {
                    dialogInterfaceOnCancelListenerC0115y = new DialogInterfaceOnCancelListenerC0115y(c0307d, this, R.string.MES_GET_FILE_LIST_PROCESS, 1);
                }
                dialogInterfaceOnCancelListenerC0115y.f739c = -2;
                dialogInterfaceOnCancelListenerC0115y.f737a = new C0253d();
                dialogInterfaceOnCancelListenerC0115y.m387r();
            }
            m745O(c0129h);
            if (!(this.f1389k.f1697d != null)) {
                m751U(false);
            }
        }
        if (C0015d.m49K(i4, 16)) {
            FilePanelView filePanelView = this.f1389k;
            AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050hM920b = filePanelView.m920b(filePanelView.f1694a);
            if (abstractViewOnClickListenerC0050hM920b != null && abstractViewOnClickListenerC0050hM920b.f373h.f334a > 0) {
                c0044b = c0305b.f1608q;
                i5 = i4;
            } else {
                i5 = i4 & (-17);
            }
            if (c0305b.f1600i) {
                i5 |= 32;
            }
            if (this.f1389k.f1704k) {
                i5 |= 64;
            }
            new C0468h0(c0305b, c0129h, zEquals, str, i3, i5, this.f1389k.getListSize(), c0044b).m1098g(null, c0393a);
            if (c0129h.m480g() && this.f3b == null && !zEquals) {
                this.f1393o = false;
                return;
            }
            return;
        }
        i5 = i4;
        c0044b = null;
        if (c0305b.f1600i) {
            i5 |= 32;
        }
        if (this.f1389k.f1704k) {
            i5 |= 64;
        }
        new C0468h0(c0305b, c0129h, zEquals, str, i3, i5, this.f1389k.getListSize(), c0044b).m1098g(null, c0393a);
        if (c0129h.m480g()) {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01c5, code lost:
    
        if ((r14.getCategories() == null ? false : r14.getCategories().contains("ZA_SHORTCUT")) != false) goto L72;
     */
    /* JADX INFO: renamed from: N */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m744N(Intent intent, boolean z2, boolean z3) {
        boolean z4 = (intent == null || intent.getIntExtra("ZArchiver.iCMD", 0) == 0) ? false : true;
        C0307d c0307d = this.f1386h;
        if (!z4) {
            boolean z5 = intent != null && ("android.intent.action.SEND".equals(intent.getAction()) || "android.intent.action.SEND_MULTIPLE".equals(intent.getAction()));
            C0393a c0393a = this.f4c;
            if (!z5) {
                if (intent.getData() == null) {
                }
                new C0480n0(c0307d.f1626e, intent, intent.getData(), z2, z3).m1098g(null, c0393a);
                return true;
            }
            if ("android.intent.action.SEND".equals(intent.getAction())) {
                Parcelable parcelableExtra = intent.getParcelableExtra("android.intent.extra.STREAM");
                if (parcelableExtra instanceof Uri) {
                    Uri uri = (Uri) parcelableExtra;
                    if (!"content".equals(uri.getScheme())) {
                        String path = uri.getPath();
                        if (path != null && C0015d.m45G(C0015d.m43E(path))) {
                            C0497w c0497w = new C0497w(c0307d.f1626e, z2);
                            c0497w.f2380b = new C0129h("arch", path, "/");
                            mo341g(c0497w);
                            return true;
                        }
                    } else if (C0015d.m45G(C0015d.m43E(C0383f.m1072c(this, uri)))) {
                        new C0480n0(c0307d.f1626e, intent, uri, z2, z3).m1098g(null, c0393a);
                        return true;
                    }
                }
            }
            c0307d.f1624c.m794o(this, this.f1384f);
            c0307d.f1624c.getClass();
            new C0287a.c(this, intent, z2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            return false;
        }
        c0307d.f1624c.m794o(this, this.f1384f);
        C0287a c0287a = c0307d.f1624c;
        if (c0287a.f1491c != null) {
            int intExtra = intent.getIntExtra("ZArchiver.iCMD", 0);
            int intExtra2 = intent.getIntExtra("iTaskID", 0);
            C0287a.a aVar = c0287a.f1496h;
            switch (intExtra) {
                case 21:
                    Intent intent2 = new Intent("ZArchiver.iMES");
                    intent2.putExtra("iAction", 1);
                    intent2.putExtra("iTaskID", intExtra2);
                    intent2.putExtra("iTaskType", intent.getIntExtra("iTaskType", 0));
                    aVar.onReceive(c0287a.f1491c, intent2);
                    C0306c c0306c = c0287a.f1495g;
                    if (c0306c.f1616a.get() != null) {
                        try {
                            intent2.putExtra("iAction", 22);
                            InterfaceC0316c interfaceC0316c = c0306c.f1616a.get();
                            if (interfaceC0316c == null) {
                                throw new RemoteException();
                            }
                            intent2.putExtra("iProgress", interfaceC0316c.GetProgPercent(intExtra2));
                            InterfaceC0316c interfaceC0316c2 = c0306c.f1616a.get();
                            if (interfaceC0316c2 == null) {
                                throw new RemoteException();
                            }
                            intent2.putExtra("sText", interfaceC0316c2.GetProgText(intExtra2));
                            aVar.onReceive(c0287a.f1491c, intent2);
                        } catch (Exception unused) {
                        }
                    }
                    break;
                case 22:
                    Intent intent3 = new Intent("ZArchiver.iMES");
                    intent3.putExtra("iTaskID", intExtra2);
                    intent3.putExtra("iAction", 5);
                    aVar.onReceive(c0287a.f1491c, intent3);
                    break;
                case 23:
                    Intent intent4 = new Intent("ZArchiver.iMES");
                    intent4.putExtra("iTaskID", intExtra2);
                    intent4.putExtra("iAction", 8);
                    intent4.putExtra("oData", intent.getParcelableExtra("iData"));
                    aVar.onReceive(c0287a.f1491c, intent4);
                    break;
                case 24:
                    Intent intent5 = new Intent("ZArchiver.iMES");
                    intent5.putExtra("iTaskID", intExtra2);
                    intent5.putExtra("iAction", 21);
                    intent5.putExtra("oErrorData", intent.getParcelableArrayExtra("iErrorData"));
                    aVar.onReceive(c0287a.f1491c, intent5);
                    break;
                case 25:
                    Intent intent6 = new Intent("ZArchiver.iMES");
                    intent6.putExtra("iTaskID", intExtra2);
                    intent6.putExtra("iAction", 24);
                    intent6.putExtra("oData", intent.getParcelableArrayExtra("iData"));
                    aVar.onReceive(c0287a.f1491c, intent6);
                    break;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: O */
    public final void m745O(C0129h c0129h) {
        String strM493t;
        if (c0129h.m483j() || c0129h.m486m()) {
            strM493t = c0129h.m493t();
        } else if (c0129h.m480g()) {
            strM493t = c0129h.f1017e.length() > 1 ? c0129h.f1015c + c0129h.f1017e : c0129h.f1015c;
            if (strM493t.contains("Android/")) {
                String strM566g = C0181d.m566g();
                if (strM493t.startsWith(strM566g)) {
                    strM493t = strM493t.replace(strM566g, "~");
                }
            }
        } else if (c0129h.m484k()) {
            String str = c0129h.f1015c;
            String str2 = c0129h.f1017e;
            for (C0023e c0023e : C0357a.m1022d(false)) {
                if (c0023e.f186c.m484k() && str2.equals(c0023e.f186c.f1017e)) {
                    strM493t = "/".equals(str) ? "/" + c0023e.f185b : "/" + c0023e.f185b + str;
                }
            }
            strM493t = str;
        } else {
            strM493t = "";
        }
        AbstractActivityC0003c.m0r(this.f1388j, strM493t);
    }

    /* JADX INFO: renamed from: P */
    public final void m746P(int i2, String str, String[] strArr, boolean z2) {
        C0393a c0393a = this.f4c;
        c0393a.m1095f(2, 0, -1);
        C0307d c0307d = this.f1386h;
        C0305b c0305b = c0307d.f1627f[i2];
        synchronized (c0305b.f1592a) {
            c0305b.f1606o = str;
            c0305b.f1607p = strArr;
            c0305b.f1605n = 0;
            c0305b.f1609r = new C0051i(0);
            c0305b.f1597f |= 1;
        }
        this.f1389k.m929k(c0305b, c0307d.f1628g, 0, 0);
        if (i2 == c0307d.f1626e) {
            if (this.f3b == null) {
                invalidateOptionsMenu();
            }
            m740J();
            if (!z2) {
                m10s(-1);
            }
        }
        if (z2) {
            return;
        }
        c0393a.m1095f(13, 0, c0305b.f1593b);
        new C0488r0(c0305b, str, strArr).m1098g(this, c0393a);
    }

    /* JADX INFO: renamed from: Q */
    public final void m747Q(int i2, boolean z2, boolean z3) {
        this.f4c.m1095f(13, 0, i2);
        C0307d c0307d = this.f1386h;
        C0305b c0305b = c0307d.f1627f[i2];
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
        ExSearchView exSearchView = this.f1390l;
        if (exSearchView != null) {
            exSearchView.m1013b();
        }
        if (C0015d.m50L(c0305b.f1597f, 2)) {
            m742L(c0305b.f1593b, 0, c0305b.f1594c);
        } else if (z3) {
            this.f1389k.m929k(c0305b, c0307d.f1628g, 0, 0);
            if (this.f3b == null) {
                invalidateOptionsMenu();
            }
            m740J();
            m10s(0);
            m11t();
        }
    }

    /* JADX INFO: renamed from: R */
    public final void m748R(int i2) {
        AbstractCallableC0395c[] abstractCallableC0395cArr;
        C0393a c0393a = this.f4c;
        boolean z2 = true;
        int[] iArr = {11};
        synchronized (c0393a.f2107d) {
            abstractCallableC0395cArr = (AbstractCallableC0395c[]) c0393a.f2107d.toArray(new AbstractCallableC0395c[0]);
        }
        int length = abstractCallableC0395cArr.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                z2 = false;
                break;
            }
            AbstractCallableC0395c abstractCallableC0395c = abstractCallableC0395cArr[i3];
            if (abstractCallableC0395c != null && abstractCallableC0395c.mo344j() == iArr[0]) {
                break;
            } else {
                i3++;
            }
        }
        if (z2) {
            return;
        }
        new C0496v0(i2, this.f1386h.f1627f).m1098g(null, this.f4c);
    }

    /* JADX INFO: renamed from: S */
    public final void m749S(ActionMode actionMode) {
        AbstractViewOnClickListenerC0050h listAdapter;
        if (actionMode == null || (listAdapter = this.f1389k.getListAdapter()) == null) {
            return;
        }
        actionMode.setTitle(listAdapter.f373h.f334a + " / " + listAdapter.f373h.m170c());
        actionMode.setSubtitle(C0385h.m1078b(listAdapter.f373h.f335b, 1, null));
    }

    /* JADX INFO: renamed from: T */
    public final void m750T(int i2, boolean z2, boolean z3, boolean z4) {
        C0307d c0307d = this.f1386h;
        if (i2 < 0) {
            i2 = c0307d.f1626e;
        }
        int i3 = i2;
        int iM921c = z3 ? this.f1389k.m921c(i3) : -1;
        C0305b c0305b = c0307d.f1627f[i3];
        if (!c0305b.m828i()) {
            m743M(i3, c0305b.f1594c, null, iM921c, (z2 ? 0 : 16) | 1);
            return;
        }
        if (c0305b.f1609r == null) {
            return;
        }
        C0393a c0393a = this.f4c;
        c0393a.m1095f(10, 1, i3);
        if (z2) {
            DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y = new DialogInterfaceOnCancelListenerC0115y(c0307d, this, R.string.MES_GET_FILE_LIST_PROCESS, 1);
            dialogInterfaceOnCancelListenerC0115y.f739c = -2;
            dialogInterfaceOnCancelListenerC0115y.f737a = new C0254e();
            dialogInterfaceOnCancelListenerC0115y.m387r();
        }
        new C0490s0(c0305b, z2, z4).m1098g(null, c0393a);
    }

    /* JADX INFO: renamed from: U */
    public final void m751U(boolean z2) {
        String strM1078b;
        int i2;
        int i3;
        String string;
        int i4;
        String str;
        C0305b c0305bM842c = this.f1386h.m842c();
        long j2 = c0305bM842c.f1601j;
        if (j2 == -2 || !z2) {
            strM1078b = getString(R.string.FINFO_SIZE) + " ...";
        } else if (j2 == -1) {
            strM1078b = getString(R.string.FINFO_SIZE) + " ---";
        } else {
            strM1078b = C0385h.m1078b(j2, 1, getString(R.string.FINFO_SIZE));
        }
        String str2 = strM1078b;
        boolean zM826g = c0305bM842c.m826g(4);
        C0393a c0393a = this.f4c;
        int i5 = c0305bM842c.f1593b;
        if (zM826g) {
            StringBuilder sb = new StringBuilder();
            float f2 = -1.0f;
            if (z2) {
                try {
                    C0079a c0079aM266m = C0079a.m266m();
                    ReentrantReadWriteLock reentrantReadWriteLock = c0079aM266m.f582a;
                    try {
                        reentrantReadWriteLock.readLock().lock();
                        InterfaceC0082d interfaceC0082d = c0079aM266m.f583b;
                        float fMo285b = interfaceC0082d == null ? 1.0f : interfaceC0082d.mo285b();
                        reentrantReadWriteLock.readLock().unlock();
                        f2 = fMo285b * 100.0f;
                    } catch (Throwable th) {
                        reentrantReadWriteLock.readLock().unlock();
                        throw th;
                    }
                } catch (Exception unused) {
                }
                sb.append(getString(R.string.FINFO_COMPRESSION_RATIO));
                if (f2 > 100.0f) {
                    f2 = 100.0f;
                }
                if (f2 < 0.0f) {
                    sb.append(" ---");
                    f2 = 0.0f;
                } else {
                    sb.append(" ");
                    StringBuilder sb2 = new StringBuilder();
                    C0385h.m1077a(sb2, (int) (100.0f * f2), true);
                    sb2.append("%");
                    sb.append(sb2.toString());
                }
            }
            if (c0305bM842c.f1594c.f1017e.equals("/")) {
                str = getString(R.string.FINFO_TYPE_FOLDER) + ": /";
            } else {
                str = getString(R.string.FINFO_TYPE_FOLDER) + ": " + c0305bM842c.f1594c.m478e();
            }
            i2 = 0;
            m7o(getString(R.string.FINFO_ARCHIVE) + " " + C0015d.m97y(c0305bM842c.f1594c.f1015c), sb.toString(), str, str2, (int) f2, 100L);
            i4 = 1;
        } else {
            i2 = 0;
            if (z2 && c0305bM842c.f1603l == -1) {
                c0393a.m1095f(4, 0, i5);
                new C0459d0(c0305bM842c.f1594c, i5).m1098g(this, c0393a);
            }
            if (!z2 || c0305bM842c.f1603l == -1) {
                i3 = 1;
                string = getString(R.string.FINFO_FREE_SPACE) + " ...";
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(getString(R.string.FINFO_FREE_SPACE));
                sb3.append(" ");
                i3 = 1;
                sb3.append(C0385h.m1078b(c0305bM842c.f1602k, 1, null));
                sb3.append("/\n");
                sb3.append(C0385h.m1078b(c0305bM842c.f1603l, 1, null));
                string = sb3.toString();
            }
            String str3 = string;
            i4 = i3;
            m7o(getString(R.string.FINFO_TYPE) + ' ' + getString(R.string.FINFO_TYPE_FOLDER), str3, getString(R.string.FINFO_TYPE_FOLDER) + ": " + c0305bM842c.f1594c.m478e(), str2, 0L, 0L);
        }
        if (z2) {
            FilePanelView filePanelView = this.f1389k;
            if (filePanelView.f1697d == null) {
                i4 = i2;
            }
            if (i4 != 0) {
                filePanelView.setTag(c0305bM842c.f1601j != -2 ? c0305bM842c.f1592a : null);
            } else if (c0305bM842c.f1601j == -2) {
                c0393a.m1095f(3, i2, i5);
                new C0466g0(c0305bM842c.f1594c, i5).m1098g(this, c0393a);
            }
        }
    }

    /* JADX INFO: renamed from: V */
    public final void m752V(C0305b c0305b, boolean z2) {
        AbstractViewOnClickListenerC0050h listAdapter;
        m745O(c0305b.f1594c);
        m751U(true);
        m11t();
        if (z2) {
            m740J();
            invalidateOptionsMenu();
            m6n(c0305b.f1594c.m488o() ? c0305b.m825f() : (byte) 1);
        }
        this.f1389k.setMessage(c0305b.m824e());
        if (((char) (this.f1386h.f1622a & 3)) == 1 && (listAdapter = this.f1389k.getListAdapter()) != null) {
            listAdapter.m194h();
            listAdapter.mo188m(false);
        }
        if (c0305b.m828i()) {
            this.f1390l.m1014e(c0305b.f1606o, c0305b.f1607p);
        } else {
            this.f1390l.m1013b();
        }
    }

    @Override // ru.zdevs.zarchiver.archiver.C2JBridge.InterfaceC0303a
    /* JADX INFO: renamed from: a */
    public final void mo753a(int i2, String str) {
    }

    @Override // p039p0.C0229g.c
    /* JADX INFO: renamed from: b */
    public final void mo663b(int i2) {
        AbstractViewOnClickListenerC0050h listAdapter;
        if (i2 != 0) {
            m10s((i2 * 10000) / 100);
            return;
        }
        m11t();
        C0229g c0229g = this.f1386h.f1628g;
        if (!(c0229g != null && c0229g.f1295g) || (listAdapter = this.f1389k.getListAdapter()) == null) {
            return;
        }
        listAdapter.mo178n(this.f1389k.getListPosition(), this.f1389k.getListMaxVisibleItemCount());
    }

    @Override // p008c0.AbstractViewOnClickListenerC0050h.a
    /* JADX INFO: renamed from: c */
    public final void mo199c(int i2, int i3, boolean z2) {
        C0307d c0307d = this.f1386h;
        if (i2 != c0307d.f1626e) {
            return;
        }
        if ((z2 && i3 == 1) || (!z2 && i3 == 0)) {
            m740J();
            invalidateOptionsMenu();
        }
        ActionMode actionMode = this.f3b;
        if (actionMode != null && ((char) (c0307d.f1622a & 3)) == 2) {
            m749S(actionMode);
        }
    }

    @Override // ru.zdevs.zarchiver.archiver.C2JBridge.InterfaceC0303a
    /* JADX INFO: renamed from: d */
    public final void mo754d(int i2, int i3) {
        DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y;
        if (i2 != 0 || i3 <= 0 || (dialogInterfaceOnCancelListenerC0115y = (DialogInterfaceOnCancelListenerC0115y) this.f1386h.m841b(-2, 1, -1)) == null) {
            return;
        }
        runOnUiThread(new RunnableC0251b(dialogInterfaceOnCancelListenerC0115y, i3));
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (((char) (this.f1386h.f1622a & 3)) != 1 || keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1) {
            return super.dispatchKeyEvent(keyEvent);
        }
        m731A(true);
        return true;
    }

    @Override // ru.zdevs.zarchiver.archiver.C2JBridge.InterfaceC0303a
    /* JADX INFO: renamed from: e */
    public final void mo755e(int i2, int i3, String str) {
        String strM235e = C0063a.m235e(i3, str);
        if (strM235e != null) {
            str = strM235e;
        }
        if (str != null) {
            ZApp.m726j(str);
        }
    }

    @Override // ru.zdevs.zarchiver.p045ui.FilePanelView.InterfaceC0326f
    /* JADX INFO: renamed from: f */
    public final void mo756f() {
        if (this.f1389k.getTag() != null) {
            return;
        }
        C0305b c0305bM842c = this.f1386h.m842c();
        C0129h c0129h = c0305bM842c.f1594c;
        this.f1389k.setTag(c0129h);
        TextView textView = (TextView) findViewById(R.id.tvFolderSize);
        if (textView == null) {
            return;
        }
        textView.setText(getString(R.string.FINFO_SIZE) + " ...");
        C0393a c0393a = this.f4c;
        int i2 = c0305bM842c.f1593b;
        c0393a.m1095f(3, 0, i2);
        new C0466g0(c0129h, i2).m1098g(this, c0393a);
    }

    @Override // android.app.Activity
    public final void finish() {
        ZApp.m724g();
        super.finish();
    }

    @Override // p053v0.C0393a.c
    /* JADX INFO: renamed from: g */
    public final void mo341g(C0393a.b bVar) {
        TextView textView;
        int i2;
        int i3;
        int iMo342a = bVar.mo342a();
        C0307d c0307d = this.f1386h;
        try {
            switch (iMo342a) {
                case 0:
                    m1i();
                    return;
                case 1:
                    for (File file : ((C0485q) bVar).f2339a) {
                        DialogInterfaceOnCancelListenerC0113w dialogInterfaceOnCancelListenerC0113w = new DialogInterfaceOnCancelListenerC0113w(1, this, getString(R.string.MOD_UPDATE_FILE).replace("%1", file.getName()), c0307d);
                        dialogInterfaceOnCancelListenerC0113w.m361p(15);
                        C0287a c0287a = c0307d.f1624c;
                        dialogInterfaceOnCancelListenerC0113w.f738b = c0287a;
                        dialogInterfaceOnCancelListenerC0113w.f737a = c0287a;
                        dialogInterfaceOnCancelListenerC0113w.m360n(0, file.getAbsolutePath());
                        dialogInterfaceOnCancelListenerC0113w.m381r();
                    }
                    return;
                case 2:
                    C0487r c0487r = (C0487r) bVar;
                    int i4 = c0487r.f2349d;
                    String str = c0487r.f2346a;
                    if (i4 == 0) {
                        ZApp.m726j(getString(R.string.MES_REMOUNT_SUCESSFUL).replace("%1", str).replace("%2", c0487r.f2348c ? "RW" : "RO"));
                        C0305b[] c0305bArr = c0307d.f1627f;
                        C0305b c0305b = c0305bArr[0];
                        if (c0305b != null) {
                            c0305b.f1595d = (byte) 0;
                        }
                        C0305b c0305b2 = c0305bArr[1];
                        if (c0305b2 != null) {
                            c0305b2.f1595d = (byte) 0;
                        }
                        if (((char) (c0307d.f1622a & 3)) == 0) {
                            m740J();
                            return;
                        }
                        return;
                    }
                    if (i4 == -2) {
                        ZApp.m726j(c0487r.f2347b + " device has the SHARED_BLOCKS function, remounting to RW is not possible");
                        return;
                    }
                    String str2 = c0487r.f2350e;
                    if (str2 == null) {
                        ZApp.m726j(getString(R.string.MES_ERROR_ON_REMOUNT).replace("%1", str));
                        return;
                    } else {
                        ZApp.m726j(str2);
                        return;
                    }
                case 3:
                    m750T(((C0503z) bVar).f2390a, false, true, false);
                    return;
                case 4:
                    C0499x c0499x = (C0499x) bVar;
                    String str3 = c0499x.f2385a;
                    if (str3 != null) {
                        ZApp.m726j(str3);
                        return;
                    } else {
                        ZApp.m725i(c0499x.f2386b);
                        return;
                    }
                case 5:
                    m743M(c0307d.f1626e, ((char) (c0307d.f1622a & 3)) == 1 ? ((C0483p) bVar).f2336a : c0307d.m843d(), null, this.f1389k.getListPosition(), 16);
                    return;
                case 6:
                    C0477m c0477m = (C0477m) bVar;
                    int i5 = c0477m.f2314a;
                    AbstractC0126e.a aVar = c0477m.f2315b;
                    C0305b c0305b3 = c0307d.f1627f[i5];
                    c0305b3.f1602k = aVar.f992a;
                    c0305b3.f1603l = aVar.f993b;
                    String str4 = getString(R.string.FINFO_FREE_SPACE) + " " + C0385h.m1078b(aVar.f992a, 1, null) + "/\n" + C0385h.m1078b(aVar.f993b, 1, null);
                    long j2 = aVar.f993b;
                    m8p(str4, j2 - aVar.f992a, j2);
                    return;
                case 7:
                    C0481o c0481o = (C0481o) bVar;
                    int i6 = c0481o.f2332a;
                    long j3 = c0481o.f2333b;
                    c0307d.f1627f[i6].f1601j = j3;
                    if (c0307d.f1626e == i6 && (textView = (TextView) findViewById(R.id.tvFolderSize)) != null) {
                        textView.setText(j3 != -1 ? C0385h.m1078b(j3, 1, getString(R.string.FINFO_SIZE)) : getString(R.string.FINFO_SIZE) + " ---");
                        return;
                    }
                    return;
                case 8:
                    C0479n c0479n = (C0479n) bVar;
                    DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y = (DialogInterfaceOnCancelListenerC0115y) c0307d.m841b(-2, 1, -1);
                    if (dialogInterfaceOnCancelListenerC0115y != null) {
                        dialogInterfaceOnCancelListenerC0115y.mo337d();
                    }
                    View view = this.f1389k.f1698e;
                    if (view != null) {
                        view.setVisibility(8);
                    }
                    if (c0479n.f2324h == null) {
                        return;
                    }
                    C0129h c0129h = c0479n.f2318b;
                    boolean zM480g = c0129h.m480g();
                    int i7 = c0479n.f2317a;
                    if (zM480g && (i2 = c0479n.f2322f) == R.string.MES_CANCEL_PROCES) {
                        ZApp.m725i(i2);
                        if (i7 == c0307d.f1626e) {
                            m745O(c0307d.m843d());
                            return;
                        }
                        return;
                    }
                    C0305b c0305b4 = c0307d.f1627f[i7];
                    boolean zM826g = c0305b4.m826g(4);
                    boolean z2 = c0305b4.f1608q.f334a > 0;
                    boolean zM828i = c0305b4.m828i();
                    int i8 = c0305b4.f1593b;
                    if (zM828i && i8 == c0307d.f1626e) {
                        m747Q(i7, C0358b.m1041l(8192), false);
                    }
                    if (C0015d.m50L(c0479n.f2319c, 768)) {
                        new C0456c0(c0129h, c0479n.f2324h, c0479n.f2319c, i8).m1098g(this, this.f4c);
                    }
                    C0044b c0044b = c0479n.f2324h;
                    C0043a c0043a = c0479n.f2325i;
                    synchronized (c0305b4.f1592a) {
                        c0305b4.f1608q = c0044b;
                        c0305b4.f1610s = c0043a;
                        c0305b4.f1597f &= -3;
                        break;
                    }
                    c0305b4.m831l(c0129h, c0479n.f2326j, c0479n.f2322f);
                    this.f1389k.m929k(c0305b4, c0307d.f1628g, c0479n.f2320d, c0479n.f2319c);
                    if (i8 == c0307d.f1626e) {
                        if (c0129h.m488o()) {
                            m6n(c0305b4.m825f());
                        } else {
                            m6n((byte) 1);
                        }
                        m751U(true);
                        m740J();
                        if (zM826g != c0307d.m845f(4)) {
                            boolean z3 = !zM826g;
                            if (this.f3b == null) {
                                invalidateOptionsMenu();
                            }
                            if (!z3) {
                                AbstractCallableC0395c.m1097h(new RunnableC0471j());
                                if (this.f3b == null) {
                                    C0070h.m253d().m254a();
                                }
                            }
                        }
                        if (z2 && c0479n.f2324h.f334a == 0) {
                            mo199c(i8, 0, false);
                        }
                        if (C0015d.m49K(c0479n.f2319c, 8)) {
                            AbsListView absListView = this.f1389k.f1701h[i7];
                            int i9 = c0479n.f2320d;
                            onItemClick(absListView, null, i9, i9);
                        }
                    }
                    C0412c.a aVar2 = c0479n.f2323g;
                    if (aVar2 != null) {
                        DialogInterfaceOnClickListenerC0109s.m377r(c0307d, this, 0, i8, aVar2, 0, null);
                        return;
                    } else {
                        if (c0479n.f2321e || c0479n.f2322f != R.string.MES_ACCESS_DENIED || Build.VERSION.SDK_INT < 30 || C0358b.m1035f(67108864)) {
                            return;
                        }
                        m759x(i8, c0129h.f1015c);
                        return;
                    }
                case 9:
                    DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y2 = (DialogInterfaceOnCancelListenerC0115y) c0307d.m841b(-2, 1, -1);
                    if (dialogInterfaceOnCancelListenerC0115y2 != null) {
                        dialogInterfaceOnCancelListenerC0115y2.mo337d();
                    }
                    View view2 = this.f1389k.f1698e;
                    if (view2 != null) {
                        view2.setVisibility(8);
                    }
                    C0495v c0495v = (C0495v) bVar;
                    FilePanelView filePanelView = this.f1389k;
                    C0229g c0229g = c0307d.f1628g;
                    C0305b c0305b5 = c0495v.f2375a;
                    filePanelView.m929k(c0305b5, c0229g, filePanelView.m921c(c0305b5.f1593b), 0);
                    if (c0495v.f2376b) {
                        mo199c(c0495v.f2375a.f1593b, 0, false);
                        return;
                    }
                    return;
                case 10:
                    C0489s c0489s = (C0489s) bVar;
                    C0305b c0305b6 = c0307d.f1627f[c0489s.f2356a];
                    if (!c0305b6.m828i()) {
                        m743M(c0489s.f2356a, c0305b6.f1594c, c0489s.f2357b, -1, 1);
                        return;
                    }
                    AbstractViewOnClickListenerC0050h listAdapter = this.f1389k.getListAdapter();
                    if (listAdapter != null) {
                        listAdapter.notifyDataSetChanged();
                        return;
                    }
                    return;
                case 11:
                case 14:
                case 15:
                case 16:
                default:
                    return;
                case 12:
                    C0497w c0497w = (C0497w) bVar;
                    if (c0497w.f2380b == null) {
                        ZApp.m726j("Failed to determine path");
                        return;
                    }
                    C0305b c0305b7 = c0307d.f1627f[c0497w.f2379a];
                    this.f1393o = c0497w.f2383e;
                    boolean z4 = c0497w.f2381c;
                    if (!z4) {
                        c0305b7.m832m((char) (c0307d.f1622a & 3), this.f1389k.getListPosition());
                        c0305b7.m831l(c0497w.f2380b, (byte) 0, 0);
                    }
                    int i10 = c0497w.f2379a;
                    C0129h c0129h2 = c0497w.f2380b;
                    String str5 = c0497w.f2382d;
                    m743M(i10, c0129h2, str5, -1, str5 != null ? 8 : 0);
                    if (z4) {
                        c0305b7.f1611t.clear();
                        return;
                    }
                    return;
                case 13:
                    ListView listView = (ListView) findViewById(R.id.lvFavorite);
                    if (listView != null) {
                        listView.setAdapter((ListAdapter) new C0022d(this, false, false));
                        return;
                    }
                    return;
                case 17:
                    C0493u c0493u = (C0493u) bVar;
                    if (c0307d.f1626e != c0493u.f2370a) {
                        return;
                    }
                    int i11 = c0493u.f2371b;
                    if (i11 != 100) {
                        m10s((i11 * 10000) / 100);
                        return;
                    } else {
                        m11t();
                        this.f1389k.setMessage(c0307d.f1627f[c0493u.f2370a].m824e());
                        return;
                    }
                case 18:
                    C0491t c0491t = (C0491t) bVar;
                    AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050hM920b = this.f1389k.m920b(c0491t.f2362a);
                    if (abstractViewOnClickListenerC0050hM920b == null || abstractViewOnClickListenerC0050hM920b.mo176c() != R.layout.item_file_search) {
                        return;
                    }
                    abstractViewOnClickListenerC0050hM920b.f373h.m168a(c0491t.f2363b);
                    abstractViewOnClickListenerC0050hM920b.notifyDataSetChanged();
                    return;
                case 19:
                    C0450a0 c0450a0 = (C0450a0) bVar;
                    DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y3 = (DialogInterfaceOnCancelListenerC0115y) c0307d.m841b(-1, 1, 23);
                    if (dialogInterfaceOnCancelListenerC0115y3 != null) {
                        dialogInterfaceOnCancelListenerC0115y3.mo337d();
                    }
                    if (c0450a0.f2261c == null && (i3 = c0450a0.f2260b) != 2) {
                        if (i3 == 0) {
                            ZApp.m725i(R.string.MES_INSTALL_APP_DONE);
                            return;
                        }
                        return;
                    }
                    C0063a.b bVar2 = new C0063a.b(c0450a0.f2259a.m478e());
                    ArrayList<C0063a.a> arrayList = bVar2.f452c;
                    String str6 = c0450a0.f2261c;
                    if (str6 != null) {
                        arrayList.add(new C0063a.a(0, str6));
                        arrayList.add(new C0063a.a(0, getString(R.string.MES_INSTALL_APP_FAILED)));
                    } else {
                        arrayList.add(new C0063a.a(0, "Root is required to XAPK expansions"));
                        arrayList.add(new C0063a.a(0, "App is not fully installed"));
                    }
                    AlertDialog alertDialog = new DialogInterfaceOnClickListenerC0104n(c0307d, this, new C0063a.b[]{bVar2}).f755g;
                    if (alertDialog != null) {
                        AbstractC0099i.m354q(alertDialog);
                        return;
                    }
                    return;
                case 20:
                    C0449a c0449a = new C0449a(((C0501y) bVar).f2388a, 0);
                    if (c0449a.m1203h() == 0) {
                        return;
                    }
                    c0307d.f1624c.f1493e = c0449a;
                    m736F('A');
                    return;
            }
        } catch (Exception unused) {
        }
    }

    @Override // ru.zdevs.zarchiver.p045ui.FilePanelView.InterfaceC0327g
    /* JADX INFO: renamed from: h */
    public final void mo757h(int i2) {
        C0229g c0229g = this.f1386h.f1628g;
        if (c0229g != null) {
            c0229g.m656c(0);
        }
        m750T(i2, true, false, true);
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        String str;
        C0305b c0305b;
        InterfaceC0139j interfaceC0139j;
        DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y;
        String strSubstring = null;
        char c2 = 0;
        C0307d c0307d = this.f1386h;
        if (i2 == 105 || i2 == 106) {
            if (i3 == -1 && intent != null && intent.getData() != null) {
                Uri data = intent.getData();
                String str2 = (i2 != 106 || (c0305b = c0307d.f1627f[1]) == null) ? c0307d.f1627f[0].f1594c.f1015c : c0305b.f1594c.f1015c;
                C0412c.a aVarM1111e = C0412c.m1111e(str2);
                if (aVarM1111e != null) {
                    Uri uriM1128c = aVarM1111e.m1128c(aVarM1111e.m1127b(str2), true);
                    if (uriM1128c != null && uriM1128c.toString().startsWith(data.toString())) {
                        c2 = 1;
                    }
                } else if (Build.VERSION.SDK_INT >= 33 && str2.startsWith("/SAF") && data.toString().contains("ru.zdevs.zarchiver")) {
                    c2 = 2;
                }
                if (c2 == 0) {
                    int iIndexOf = str2.indexOf("/Android/");
                    if (iIndexOf > 0) {
                        strSubstring = str2.substring(iIndexOf + 1);
                    } else if (aVarM1111e != null && C0015d.m49K(aVarM1111e.f2157f, 2) && (str = aVarM1111e.f2152a) != null) {
                        strSubstring = str;
                    }
                    if (strSubstring == null) {
                        strSubstring = "SD";
                    }
                    ZApp.m726j(getResources().getString(R.string.FSD_INCORRECT_PATH).replace("%1", strSubstring));
                } else {
                    getApplicationContext().getContentResolver().takePersistableUriPermission(data, 3);
                    C0412c.m1107a(data);
                }
                if (c2 == 1) {
                    m743M(c0307d.f1626e, c0307d.m843d(), null, this.f1389k.getListPosition(), 16);
                }
            }
        } else if (i2 == 108 || i2 == 109 || i2 == 110) {
            if (i3 == -1 && (interfaceC0139j = c0307d.f1624c.f1494f) != null && interfaceC0139j.type() == 2) {
                new C0308e(getContentResolver(), (C0287a.b) c0307d.f1624c.f1494f, i2, c0307d.f1626e).m1098g(null, this.f4c);
            } else {
                ZApp.m725i(R.string.MES_END_WITH_ERROR);
            }
        } else if (i2 == 1203) {
            if (i3 == -1) {
                C0287a.m782d(this, (C0129h) intent.getParcelableExtra("apk_path"), (C0129h) intent.getParcelableExtra("dir_path"), intent.getStringArrayExtra("name_list"));
            }
        } else if (i2 == 111) {
            if (Build.VERSION.SDK_INT >= 33) {
                System.exit(0);
                recreate();
            }
        } else if (i2 == 112) {
            if (i3 != -1 && (dialogInterfaceOnCancelListenerC0115y = (DialogInterfaceOnCancelListenerC0115y) c0307d.m841b(-1, 1, 23)) != null) {
                dialogInterfaceOnCancelListenerC0115y.mo337d();
            }
        } else if (i2 == 107) {
            m758w();
        } else if (i2 == 113) {
            if (C0416g.m1142c(this) == 0) {
                m759x(c0307d.f1626e, c0307d.m843d().f1015c);
            } else {
                ZApp.m725i(R.string.FSD_ACCESS_FILES_DENIED);
            }
        }
        super.onActivityResult(i2, i3, intent);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050hM920b;
        int iM921c;
        int iM921c2;
        AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050hM920b2;
        ExSearchView exSearchView;
        ExSearchView exSearchView2;
        super.onConfigurationChanged(configuration);
        int iM3k = m3k(configuration);
        boolean z2 = false;
        boolean z3 = iM3k != this.f1387i;
        this.f1387i = iM3k;
        if (z3) {
            C0393a c0393a = this.f4c;
            c0393a.m1093d(this);
            FilePanelView filePanelView = this.f1389k;
            if (filePanelView != null) {
                iM921c = filePanelView.m921c(0);
                iM921c2 = this.f1389k.m921c(1);
                abstractViewOnClickListenerC0050hM920b = this.f1389k.m920b(0);
                abstractViewOnClickListenerC0050hM920b2 = this.f1389k.m920b(1);
            } else {
                abstractViewOnClickListenerC0050hM920b = null;
                iM921c = 0;
                iM921c2 = 0;
                abstractViewOnClickListenerC0050hM920b2 = null;
            }
            boolean z4 = configuration.orientation == 1 && !C0379b.m1055b(configuration);
            if (C0441e.m1177b(this, false, configuration)) {
                getWindow().setFlags(z4 ? 134217728 : 0, 134217728);
            }
            C0441e.m1179d(this);
            m737G(this.f1387i);
            m738H();
            invalidateOptionsMenu();
            C0307d c0307d = this.f1386h;
            m745O(c0307d.m843d());
            m751U(true);
            C0305b c0305bM842c = c0307d.m842c();
            if (abstractViewOnClickListenerC0050hM920b != null) {
                this.f1389k.m926h(0, abstractViewOnClickListenerC0050hM920b, c0305bM842c.f1593b == 0, false);
                this.f1389k.m928j(0, iM921c);
                if (c0305bM842c.f1593b == 0 && abstractViewOnClickListenerC0050hM920b.mo176c() == R.layout.item_file_search && (exSearchView2 = this.f1390l) != null) {
                    exSearchView2.m1014e(c0305bM842c.f1606o, c0305bM842c.f1607p);
                }
            }
            if (abstractViewOnClickListenerC0050hM920b2 != null) {
                this.f1389k.m926h(1, abstractViewOnClickListenerC0050hM920b2, c0305bM842c.f1593b == 1, false);
                this.f1389k.m928j(1, iM921c2);
                if (c0305bM842c.f1593b == 1 && abstractViewOnClickListenerC0050hM920b2.mo176c() == R.layout.item_file_search && (exSearchView = this.f1390l) != null) {
                    exSearchView.m1014e(c0305bM842c.f1606o, c0305bM842c.f1607p);
                }
            }
            this.f1389k.setMessage(c0305bM842c.m824e());
            Iterator<AbstractC0099i> it = c0307d.f1625d.iterator();
            while (it.hasNext()) {
                it.next().mo346m(this, configuration);
            }
            c0393a.m1090a(this, this);
        }
        FloatingActionMenu floatingActionMenu = this.f1391m;
        if (floatingActionMenu != null) {
            floatingActionMenu.postDelayed(new RunnableC0256g(), 150L);
        }
        if ((configuration.screenLayout & 15) >= 3 && !C0441e.m1176a(this)) {
            z2 = true;
        }
        C0128g.f1005g = z2;
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        C0305b c0305b;
        f1383r = new WeakReference<>(this);
        C0441e.m1181f(this);
        C0358b.m1042m(this, false, null);
        Intent intent = getIntent();
        Configuration configuration = getResources().getConfiguration();
        C0441e.m1184i(this, C0358b.f1983e);
        C0441e.m1184i(ZApp.f1375c, C0358b.f1983e);
        C0441e.m1188m(this, configuration.orientation == 1 && !C0379b.m1055b(configuration));
        C0128g.f1005g = (configuration.screenLayout & 15) >= 3 && !C0441e.m1176a(this);
        super.onCreate(bundle);
        int iM3k = m3k(configuration);
        this.f1387i = iM3k;
        m737G(iM3k);
        C0305b[] c0305bArr = this.f1386h.f1627f;
        c0305bArr[0].m831l(new C0129h(C0358b.f1980b[0]), (byte) 0, 0);
        c0305bArr[0].m833n();
        if (C0358b.m1041l(128)) {
            C0305b c0305b2 = new C0305b(1);
            c0305bArr[1] = c0305b2;
            c0305b2.m833n();
        }
        C2JBridge.m802c(this);
        C0385h.m1080d(this);
        C0438b.m1165f(this, C0358b.m1033d(), this.f1386h.m842c().f1598g == R.layout.item_file_grid);
        C0412c.m1109c(this);
        m738H();
        ZApp.m719b(this);
        this.f1394p = 0L;
        new C0470i0().m1098g(null, this.f4c);
        if (intent == null) {
            this.f1393o = false;
        } else if (m744N(intent, !intent.getBooleanExtra("isZA", false), true)) {
            if (C0358b.m1041l(128)) {
                m742L(1, 0, this.f1386h.f1627f[1].f1594c);
            }
        } else if (bundle != null) {
            C0307d c0307d = this.f1386h;
            c0307d.getClass();
            c0307d.f1622a = (char) bundle.getInt("action");
            C0449a c0449a = (C0449a) bundle.getParcelable("c_file");
            C0287a c0287a = c0307d.f1624c;
            c0287a.f1493e = c0449a;
            c0287a.f1492d = (C0449a) bundle.getParcelable("a_file");
            if (bundle.getInt("d_type") == 1) {
                c0287a.f1494f = (InterfaceC0139j) bundle.getParcelable("d_data");
            }
            c0307d.f1626e = bundle.getInt("page");
            C0305b[] c0305bArr2 = c0307d.f1627f;
            c0305bArr2[0].m830k(bundle, "p1");
            C0305b c0305b3 = c0305bArr2[1];
            if (c0305b3 != null) {
                c0305b3.m830k(bundle, "p2");
            } else if (c0307d.f1626e >= 1) {
                c0307d.f1626e = 0;
            }
            C0305b[] c0305bArr3 = this.f1386h.f1627f;
            int i2 = 0;
            while (i2 < c0305bArr3.length && (c0305b = c0305bArr3[i2]) != null) {
                if (c0305b.m828i()) {
                    C0305b c0305b4 = c0305bArr3[i2];
                    m746P(i2, c0305b4.f1606o, c0305b4.f1607p, false);
                } else {
                    m743M(i2, c0305bArr3[i2].f1594c, null, bundle.getInt("p" + (i2 + 1) + "pos", -1), i2 == this.f1386h.f1626e ? 1024 : 0);
                }
                i2++;
            }
            char c2 = this.f1386h.f1622a;
            if (((char) (c2 & 3)) != 0) {
                m736F(c2);
            }
        } else {
            if (C0358b.m1037h(16)) {
                C0358b.m1044o(this, 16);
                new DialogInterfaceOnCancelListenerC0113w(4, this, getString(R.string.MES_FEATURES), this.f1386h).m381r();
            }
            m742L(0, 0, this.f1386h.f1627f[0].f1594c);
            if (C0358b.m1041l(128)) {
                m742L(1, 0, this.f1386h.f1627f[1].f1594c);
            }
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("ZArchiver.iMES");
        C0137h.m501c(this, this.f1386h.f1624c.f1496h, intentFilter);
        C0287a c0287a2 = this.f1386h.f1624c;
        if (c0287a2.f2158a == null) {
            try {
                if (Build.VERSION.SDK_INT >= 30) {
                    C0414e.m1132a(this, c0287a2);
                } else {
                    c0287a2.f2158a = new C0411b(new Handler(), c0287a2);
                    try {
                        getContentResolver().registerContentObserver(DocumentsContract.buildRootsUri("com.android.externalstorage.documents"), false, (ContentObserver) c0287a2.f2158a);
                    } catch (SecurityException unused) {
                        c0287a2.f2158a = null;
                    }
                }
            } catch (Exception unused2) {
                c0287a2.f2158a = null;
            }
        }
        m758w();
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00cb  */
    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        int i2;
        boolean z2;
        boolean z3;
        if (menu == null) {
            return false;
        }
        C0379b.m1058e(this);
        FilePanelView filePanelView = this.f1389k;
        AbstractViewOnClickListenerC0050h listAdapter = filePanelView == null ? null : filePanelView.getListAdapter();
        boolean z4 = listAdapter != null && listAdapter.f373h.f334a > 0;
        MenuInflater menuInflater = getMenuInflater();
        menuInflater.inflate(R.menu.toolbar_default, menu);
        menuInflater.inflate(R.menu.menu_tool, menu);
        menuInflater.inflate(R.menu.menu_main, menu);
        ExSearchView exSearchView = this.f1390l;
        if (exSearchView == null || exSearchView.getVisibility() == 0) {
            i2 = 1;
        } else {
            menu.findItem(R.id.bSearch).setVisible(true);
            i2 = 0;
        }
        C0307d c0307d = this.f1386h;
        C0305b c0305bM842c = c0307d.m842c();
        String str = c0305bM842c.f1594c.f1015c;
        byte bM825f = c0305bM842c.m825f();
        boolean zM826g = c0305bM842c.m826g(4);
        boolean z5 = zM826g && C0015d.m52N(1, str);
        if (zM826g) {
            C0079a c0079aM266m = C0079a.m266m();
            ReentrantReadWriteLock reentrantReadWriteLock = c0079aM266m.f582a;
            try {
                reentrantReadWriteLock.readLock().lock();
                InterfaceC0082d interfaceC0082d = c0079aM266m.f583b;
                boolean z6 = interfaceC0082d != null && interfaceC0082d.mo296m(str) && c0079aM266m.f583b.mo299p();
                reentrantReadWriteLock.readLock().unlock();
                if (z6) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } catch (Throwable th) {
                reentrantReadWriteLock.readLock().unlock();
                throw th;
            }
        } else {
            z2 = false;
        }
        boolean z7 = !c0305bM842c.m828i();
        boolean z8 = !C0358b.m1041l(64);
        MenuItem menuItemFindItem = menu.findItem(R.id.bMenuTool);
        if (!z4) {
            if (z8) {
                z3 = c0307d.f1624c.f1493e != null;
            }
        }
        menuItemFindItem.setVisible(z3);
        menu.findItem(R.id.bPast).setVisible(z8);
        menu.findItem(R.id.bArchiveComment).setVisible(z2);
        menu.findItem(R.id.bArchiveCommentAdd).setVisible(zM826g && !z2 && C0015d.m52N(2, str));
        menu.findItem(R.id.bMenuNew).setVisible(z7 && (!zM826g || z5));
        menu.findItem(R.id.bNewArchive).setVisible((zM826g || bM825f == 2) ? false : true);
        menu.findItem(R.id.bMenuAdd).setVisible(z5);
        if (C0358b.m1038i(null) && ((C0358b.f1991m != 2 || ZApp.f1379g) && ((bM825f == 3 || bM825f == 4) && c0307d.m845f(3) && !c0307d.m845f(128)))) {
            menu.findItem(R.id.bRemountRO).setVisible(bM825f == 3);
            menu.findItem(R.id.bRemountRW).setVisible(bM825f == 4);
        }
        if (C0379b.m1058e(this)) {
            m4l(i2, menu);
        }
        return true;
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        C0307d c0307d = this.f1386h;
        try {
            unregisterReceiver(c0307d.f1624c.f1496h);
            C0412c.m1124r(this, c0307d.f1624c);
        } catch (Exception unused) {
        }
        C0357a.f1972a.clear();
        C0357a.f1974c = null;
        C0357a.f1975d = false;
        ZApp.m724g();
        super.onDestroy();
    }

    @Override // android.view.View.OnDragListener
    public final boolean onDrag(View view, DragEvent dragEvent) {
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        try {
            int action = dragEvent.getAction();
            if (action == 1) {
                ClipDescription clipDescription = dragEvent.getClipDescription();
                if (clipDescription == null) {
                    return false;
                }
                for (int i2 = 0; i2 < clipDescription.getMimeTypeCount(); i2++) {
                    String mimeType = clipDescription.getMimeType(i2);
                    if (mimeType.startsWith("text/") || mimeType.startsWith("image/") || mimeType.startsWith("video/") || mimeType.startsWith("application/") || mimeType.equals("vnd.android.document/directory") || mimeType.equals("text/uri-list")) {
                        return true;
                    }
                }
            } else if (action == 3) {
                ClipData clipData = dragEvent.getClipData();
                if (clipData.getItemCount() >= 1) {
                    requestDragAndDropPermissions(dragEvent);
                    new C0478m0(this.f1386h.f1626e, clipData).m1098g(this, this.f4c);
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:132:0x0236  */
    /* JADX WARN: Code duplicated, block: B:66:0x010c  */
    /* JADX WARN: Code duplicated, block: B:67:0x010e  */
    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        char c2;
        String strM78i;
        C0129h c0129h;
        boolean z2;
        String strM478e;
        char c3;
        if (adapterView == null) {
            return;
        }
        this.f1392n = false;
        AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050h = (AbstractViewOnClickListenerC0050h) adapterView.getAdapter();
        if (abstractViewOnClickListenerC0050h == null) {
            return;
        }
        C0307d c0307d = this.f1386h;
        if (((char) (c0307d.f1622a & 3)) == 2) {
            abstractViewOnClickListenerC0050h.m196j(i2, 2);
            return;
        }
        if (c0307d.m841b(-1, 10, -1) != null) {
            return;
        }
        int i3 = abstractViewOnClickListenerC0050h.f372g;
        C0305b c0305b = this.f1386h.f1627f[i3];
        if (abstractViewOnClickListenerC0050h.f373h.f334a > 0) {
            if (abstractViewOnClickListenerC0050h.getItem(i2).f358g) {
                C0128g.m470c(this, this.f1386h, c0305b, 2, abstractViewOnClickListenerC0050h.m191d(), this.f1389k.getClickPoint());
                return;
            }
            C0128g c0128g = new C0128g(this);
            c0128g.f1010d = getString(R.string.MENU_SELECT);
            c0128g.m471a(14);
            c0128g.m471a(15);
            c0128g.m471a(16);
            c0128g.m473d(this.f1386h, 2, this.f1389k.getClickPoint());
            return;
        }
        if (abstractViewOnClickListenerC0050h.mo176c() == R.layout.item_file_search) {
            synchronized (c0305b.f1592a) {
                C0051i c0051i = c0305b.f1609r;
                if (c0051i == null || i2 < 0 || i2 >= c0051i.size()) {
                    return;
                }
                C0048f c0048fM201j = c0305b.f1609r.get(i2);
                if (c0048fM201j.m185f()) {
                    c2 = 3;
                } else if (C0015d.m45G(c0048fM201j.m183d()) || c0048fM201j.m183d() == 2) {
                    if ((C0358b.m1041l(2048) || j2 == -8) && this.f1386h.m845f(3)) {
                        c2 = 2;
                    } else {
                        c2 = 0;
                    }
                } else if (j2 == -8 || (C0358b.m1041l(4096) && j2 != -7)) {
                    c2 = 1;
                } else {
                    c2 = 0;
                }
                if (c2 == 0) {
                    C0128g.m470c(this, this.f1386h, c0305b, 2, new int[]{i2}, this.f1389k.getClickPoint());
                    return;
                }
                if (c2 == 1) {
                    C0287a c0287a = this.f1386h.f1624c;
                    C0129h c0129h2 = new C0129h(c0048fM201j.f352a, c0048fM201j.f365k, c0048fM201j.f353b);
                    long j3 = c0048fM201j.f355d;
                    boolean z3 = c0048fM201j.f357f == 28;
                    int i4 = c0305b.f1599h;
                    byte bM825f = c0305b.m825f();
                    c0287a.getClass();
                    C0287a.m783j(this, c0129h2, j3, z3, 0, i4, bM825f);
                    return;
                }
                if (c2 != 2) {
                    if (c2 != 3) {
                        return;
                    }
                    C0129h c0129h3 = new C0129h(c0048fM201j.f365k);
                    if (c0048fM201j.m186g()) {
                        String str = c0048fM201j.f353b;
                        if (c0129h3.m476c()) {
                            c0129h3.f1016d = str;
                        }
                    } else {
                        String str2 = c0048fM201j.f352a;
                        String str3 = c0048fM201j.f353b;
                        c0129h3.m474a(str2);
                        c0129h3.f1016d = str3;
                    }
                    m742L(i3, 128, c0129h3);
                    return;
                }
                C0129h c0129h4 = c0048fM201j.f365k;
                String str4 = c0048fM201j.f352a;
                String str5 = c0129h4.f1013a;
                if (c0129h4.m480g()) {
                    strM78i = c0129h4.f1015c;
                    C0015d.m78i(c0129h4.f1017e, str4);
                } else if (c0129h4.m487n()) {
                    strM78i = c0129h4.f1015c + str4;
                } else {
                    strM78i = C0015d.m78i(c0129h4.f1015c, str4);
                }
                if ("arch".equals(str5) || "rarch".equals(str5)) {
                    c0129h = new C0129h(str5, strM78i, "/");
                } else {
                    c0129h = new C0129h("root".equals(str5) ? "rarch" : "arch", strM78i, "/");
                }
                C0079a.m266m().m268b(c0129h.f1015c);
                m742L(i3, 128, c0129h);
                return;
            }
        }
        synchronized (c0305b.f1592a) {
            if (i2 >= 0) {
                if (i2 < c0305b.f1608q.size()) {
                    C0046d c0046d = c0305b.f1608q.get(i2);
                    if (c0046d.m185f()) {
                        C0129h c0129h5 = new C0129h(c0305b.f1594c);
                        if (!c0046d.m186g()) {
                            String str6 = c0046d.f352a;
                            String str7 = c0046d.f353b;
                            c0129h5.m474a(str6);
                            c0129h5.f1016d = str7;
                            m742L(i3, 128, c0129h5);
                            return;
                        }
                        String str8 = c0046d.f353b;
                        if (c0129h5.m476c()) {
                            c0129h5.f1016d = str8;
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            if (C0358b.m1041l(16384)) {
                                strM478e = c0305b.f1594c.m478e();
                                if ("/".equals(strM478e) && c0305b.m826g(4)) {
                                    strM478e = C0015d.m97y(c0305b.f1594c.f1015c);
                                }
                            } else {
                                strM478e = null;
                            }
                            m743M(i3, c0129h5, strM478e, -1, 0);
                            return;
                        }
                        return;
                    }
                    byte bM183d = c0046d.m183d();
                    if (!C0015d.m45G(bM183d) && bM183d != 2) {
                        if (this.f1386h.f1622a == 'A') {
                            if ((C0015d.m46H(bM183d) || (bM183d == 23 && c0046d.f357f == 30)) && c0305b.m826g(19)) {
                                c3 = 2;
                            }
                        }
                        if (j2 == -8 || (C0358b.m1041l(4096) && j2 != -7)) {
                            c3 = 1;
                        } else {
                            c3 = 0;
                        }
                    } else if ((C0358b.m1041l(2048) || j2 == -8 || this.f1386h.f1622a == 'A') && c0305b.m826g(19)) {
                        c3 = 2;
                    } else {
                        c3 = 0;
                    }
                    if (c3 == 0) {
                        C0128g.m470c(this, this.f1386h, c0305b, 2, new int[]{i2}, this.f1389k.getClickPoint());
                        return;
                    }
                    if (c3 == 1) {
                        C0287a c0287a2 = this.f1386h.f1624c;
                        C0129h c0129h6 = new C0129h(c0046d.f352a, c0305b.f1594c, c0046d.f353b);
                        long j4 = c0046d.f355d;
                        boolean z4 = c0046d.f357f == 28;
                        int i5 = c0305b.f1599h;
                        byte bM825f2 = c0305b.m825f();
                        c0287a2.getClass();
                        C0287a.m783j(this, c0129h6, j4, z4, 0, i5, bM825f2);
                        return;
                    }
                    if (c3 != 2) {
                        return;
                    }
                    C0129h c0129h7 = new C0129h(c0305b.f1594c);
                    String str9 = c0046d.f352a;
                    String str10 = c0046d.f353b;
                    c0129h7.m474a(str9);
                    c0129h7.f1016d = str10;
                    C0129h c0129hM40B = C0015d.m40B(c0129h7);
                    C0079a.m266m().m268b(c0129hM40B.f1015c);
                    m742L(i3, 128, c0129hM40B);
                }
            }
        }
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        ActionMode actionMode;
        this.f1392n = false;
        AbstractViewOnClickListenerC0050h listAdapter = this.f1389k.getListAdapter();
        if (listAdapter == null) {
            return false;
        }
        C0307d c0307d = this.f1386h;
        char c2 = c0307d.f1622a;
        if (c2 != 0 && c2 != 2) {
            return false;
        }
        C0046d c0046dM189a = listAdapter.getItem(i2);
        if (c0046dM189a.m186g()) {
            if (listAdapter.f373h.f334a > 0) {
                listAdapter.m194h();
            } else {
                listAdapter.m193g();
            }
            return true;
        }
        C0044b c0044b = listAdapter.f373h;
        int i3 = c0044b.f334a;
        int i4 = listAdapter.f372g;
        if (i3 > 0 && !c0046dM189a.f358g) {
            boolean zM173f = c0044b.m173f(i2);
            AbstractViewOnClickListenerC0050h.a aVar = listAdapter.f379n;
            if (aVar != null && zM173f) {
                aVar.mo199c(i4, listAdapter.f373h.f334a, true);
            }
            listAdapter.notifyDataSetChanged();
            return true;
        }
        if (c0307d.f1622a == 2 && (actionMode = this.f3b) != null) {
            actionMode.setTag(c0307d);
            this.f3b.finish();
        }
        if (c0307d.m841b(-1, 10, -1) != null) {
            return true;
        }
        int[] iArrM191d = listAdapter.f373h.f334a > 0 ? listAdapter.m191d() : new int[]{i2};
        C0307d c0307d2 = this.f1386h;
        C0128g.m470c(this, c0307d2, c0307d2.f1627f[i4], 3, iArrM191d, this.f1389k.getClickPoint());
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        boolean z2;
        boolean z3;
        boolean zM49K = C0015d.m49K(keyEvent != null ? keyEvent.getMetaState() : 0, 4096);
        C0307d c0307d = this.f1386h;
        if (!zM49K) {
            if (i2 == 67) {
                m731A(true);
                return true;
            }
            if (i2 != 69) {
                if (i2 == 76 || i2 == 154) {
                    return m734D(R.id.bSelectInvert);
                }
                if (i2 == 174) {
                    return this.f1389k.m925g(2);
                }
                if (i2 == 92) {
                    this.f1389k.m922d(0);
                    return true;
                }
                if (i2 == 93) {
                    this.f1389k.m922d(1);
                    return true;
                }
                if (i2 != 111) {
                    if (i2 == 112) {
                        return m735E() && m734D(R.id.bDelete);
                    }
                    if (i2 == 122) {
                        this.f1389k.m922d(2);
                        return true;
                    }
                    if (i2 == 123) {
                        this.f1389k.m922d(3);
                        return true;
                    }
                    if (i2 != 156) {
                        if (i2 != 157) {
                            switch (i2) {
                                case 82:
                                    char c2 = c0307d.f1622a;
                                    C0287a c0287a = c0307d.f1624c;
                                    if (c2 == 0) {
                                        AbstractViewOnClickListenerC0050h listAdapter = this.f1389k.getListAdapter();
                                        z3 = listAdapter != null && listAdapter.f373h.f334a > 0;
                                        if (z3) {
                                            int[] iArrM191d = listAdapter.m191d();
                                            int length = iArrM191d.length;
                                            int i3 = 0;
                                            while (true) {
                                                if (i3 < length) {
                                                    C0046d c0046dM189a = listAdapter.getItem(iArrM191d[i3]);
                                                    byte bM183d = c0046dM189a.m183d();
                                                    if (C0015d.m46H(bM183d) || (bM183d == 23 && c0046dM189a.f357f == 30)) {
                                                        i3++;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                } else {
                                                    z2 = true;
                                                }
                                            }
                                            C0305b c0305b = c0307d.f1627f[listAdapter.f372g];
                                            c0287a.getClass();
                                            try {
                                                C0449a c0449aM820a = c0305b.m820a(iArrM191d);
                                                c0287a.f1492d = c0449aM820a;
                                                c0449aM820a.m1203h();
                                                break;
                                            } catch (Exception unused) {
                                            }
                                        } else {
                                            z2 = false;
                                        }
                                    } else {
                                        z2 = false;
                                        z3 = false;
                                    }
                                    C0305b c0305bM842c = c0307d.m842c();
                                    boolean zM826g = c0305bM842c.m826g(4);
                                    boolean z4 = zM826g && C0015d.m52N(1, c0305bM842c.f1594c.f1015c);
                                    boolean z5 = (c0287a.f1493e != null) && !c0305bM842c.m828i();
                                    C0128g c0128g = new C0128g(this);
                                    char c3 = c0307d.f1622a;
                                    if (c3 == 0) {
                                        if (z3 && !zM826g && !z2 && !c0305bM842c.m828i()) {
                                            c0128g.m471a(8);
                                        }
                                        if (z2 || (zM826g && z3)) {
                                            c0128g.m471a(5);
                                        }
                                        if (!z3 && z5 && (!zM826g || z4)) {
                                            c0128g.m471a(26);
                                        }
                                        if (z3) {
                                            c0128g.m471a(24);
                                            if (!zM826g) {
                                                c0128g.m471a(25);
                                                c0128g.m471a(23);
                                            } else if (z4) {
                                                c0128g.m471a(56);
                                            }
                                        }
                                        c0128g.m471a(14);
                                        if (z3) {
                                            c0128g.m471a(16);
                                            c0128g.m471a(15);
                                        } else {
                                            c0128g.m471a(91);
                                        }
                                    } else {
                                        if (c3 == '\t' || c3 == 17) {
                                            c0128g.m471a(92);
                                        } else if (c3 == 'A') {
                                            c0128g.m471a(93);
                                        } else if (c3 == '\"') {
                                            c0128g.m471a(94);
                                        }
                                        if (((char) (c0307d.f1622a & 3)) == 2) {
                                            c0128g.m471a(14);
                                            c0128g.m471a(16);
                                            c0128g.m471a(15);
                                        }
                                        if (c0307d.f1622a == 2) {
                                            c0128g.m471a(95);
                                        } else {
                                            c0128g.m471a(96);
                                        }
                                    }
                                    c0128g.m471a(90);
                                    c0128g.m471a(97);
                                    c0128g.f1010d = getString(R.string.app_name);
                                    c0128g.m473d(c0307d, 0, null);
                                    return true;
                                case 83:
                                    FloatingActionMenu floatingActionMenu = this.f1391m;
                                    if (floatingActionMenu != null) {
                                        if (floatingActionMenu.f1734e <= 2) {
                                            floatingActionMenu.getOnMenuButtonClick().onClick(this.f1391m);
                                        } else if (floatingActionMenu.m933d()) {
                                            this.f1391m.m934e(false, false);
                                            this.f1389k.requestFocus();
                                        } else {
                                            this.f1391m.setMenuState(true);
                                            this.f1391m.requestFocus();
                                        }
                                    }
                                    return true;
                            }
                        }
                        return this.f1389k.m925g(1);
                    }
                } else if (this.f3b != null) {
                    c0307d.m846g((char) 0);
                    m2j();
                    return true;
                }
            }
            return this.f1389k.m925g(0);
        }
        if (i2 == 29) {
            return m735E() && m734D(R.id.bCompress);
        }
        if (i2 == 31) {
            return m735E() && m734D(R.id.bCopy);
        }
        if (i2 == 33) {
            return m735E() && m734D(R.id.bExtract);
        }
        if (i2 == 50) {
            if (!m734D(R.id.bPast)) {
                return false;
            }
            c0307d.m846g((char) 0);
            m2j();
            return true;
        }
        if (i2 == 52) {
            return m735E() && m734D(R.id.bCut);
        }
        if (i2 == 61) {
            FilePanelView filePanelView = this.f1389k;
            if (!C0015d.m49K(filePanelView.f1719z, 16)) {
                return false;
            }
            int i4 = filePanelView.f1694a;
            int i5 = i4 == 0 ? 1 : 0;
            if (filePanelView.f1701h[i5] == null) {
                return false;
            }
            if (i4 != i5) {
                filePanelView.f1694a = i5;
                filePanelView.m919a();
                FilePanelView.InterfaceC0328h interfaceC0328h = filePanelView.f1718y;
                if (interfaceC0328h != null) {
                    ((ZArchiver) interfaceC0328h).m733C(filePanelView.f1694a);
                }
            }
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i2, KeyEvent keyEvent) {
        ExSearchView exSearchView;
        if (keyEvent.getKeyCode() == 4) {
            m731A(true);
            return true;
        }
        if (i2 == 84) {
            C0307d c0307d = this.f1386h;
            if (c0307d.f1622a == 0 && !c0307d.m842c().m828i() && (exSearchView = this.f1390l) != null && exSearchView.isIconified()) {
                this.f1390l.setVisibility(0);
                this.f1390l.setIconified(false);
            }
        }
        return super.onKeyUp(i2, keyEvent);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onLowMemory() {
        Log.e("ZArchiver", "Low memory image cash release!");
        C0229g c0229g = this.f1386h.f1628g;
        if (c0229g != null) {
            c0229g.m656c(0);
        }
    }

    @Override // p001a0.AbstractActivityC0003c, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuOpened(int i2, Menu menu) {
        boolean z2;
        if (i2 == 8) {
            C0441e.m1186k(menu);
            if ((menu instanceof SubMenu) && ((SubMenu) menu).getItem().getItemId() == R.id.bMenuTool) {
                C0307d c0307d = this.f1386h;
                C0305b c0305bM842c = c0307d.m842c();
                boolean zM826g = c0305bM842c.m826g(4);
                boolean z3 = false;
                boolean z4 = !zM826g || C0015d.m52N(1, c0305bM842c.f1594c.f1015c);
                boolean z5 = !c0305bM842c.m828i();
                AbstractViewOnClickListenerC0050h listAdapter = this.f1389k.getListAdapter();
                boolean z6 = listAdapter != null && listAdapter.f373h.f334a > 0;
                if (!z6) {
                    z2 = z6;
                    break;
                }
                int[] iArrM191d = listAdapter.m191d();
                int length = iArrM191d.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        z2 = z6;
                        break;
                    }
                    if (!C0015d.m46H(listAdapter.getItem(iArrM191d[i3]).m183d())) {
                        z2 = false;
                        break;
                    }
                    i3++;
                }
                byte bM825f = c0305bM842c.m825f();
                boolean z7 = bM825f != 2 || listAdapter == null || listAdapter.f373h.f334a < 2;
                menu.findItem(R.id.bCopy).setEnabled(z6);
                menu.findItem(R.id.bCut).setEnabled((!z6 || zM826g || bM825f == 2) ? false : true);
                menu.findItem(R.id.bPast).setEnabled((c0307d.f1624c.f1493e != null) && z4 && z5 && bM825f != 2);
                menu.findItem(R.id.bExtract).setEnabled(zM826g || (z6 && z2));
                menu.findItem(R.id.bTest).setEnabled(zM826g || (z6 && z2));
                menu.findItem(R.id.bCompress).setEnabled(z6 && !zM826g && z5);
                MenuItem menuItemFindItem = menu.findItem(R.id.bDelete);
                if (z6 && z4 && z7) {
                    z3 = true;
                }
                menuItemFindItem.setEnabled(z3);
            }
        }
        return super.onMenuOpened(i2, menu);
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y;
        super.onNewIntent(intent);
        if (intent == null) {
        }
        if (!"ru.zdevs.zarchiver.APP_INSTALL_RESULT".equals(intent.getAction())) {
            m744N(intent, false, false);
            return;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return;
        }
        int i2 = extras.getInt("android.content.pm.extra.STATUS", -1);
        String string = extras.getString("android.content.pm.extra.STATUS_MESSAGE");
        Uri data = intent.getData();
        C0129h c0129h = data == null ? null : new C0129h(data);
        boolean z2 = c0129h != null && c0129h.f1015c.toLowerCase().endsWith(".xapk");
        C0307d c0307d = this.f1386h;
        if (z2 && i2 == 0) {
            new C0482o0(c0307d.f1624c.f1495g, c0129h).m1098g(null, this.f4c);
        } else if (i2 != -1 && (dialogInterfaceOnCancelListenerC0115y = (DialogInterfaceOnCancelListenerC0115y) c0307d.m841b(-1, 1, 23)) != null) {
            dialogInterfaceOnCancelListenerC0115y.mo337d();
        }
        switch (i2) {
            case -1:
                Intent intent2 = (Intent) extras.get("android.intent.extra.INTENT");
                if (intent2 != null) {
                    ComponentName componentNameResolveActivity = intent2.resolveActivity(getPackageManager());
                    if (componentNameResolveActivity != null && (componentNameResolveActivity.getPackageName().startsWith("ru.zdevs") || componentNameResolveActivity.getClassName().startsWith("ru.zdevs"))) {
                        ZApp.m726j("Incorrect confirm pending");
                    } else if (!C0015d.m50L(intent2.getFlags(), 3)) {
                        AbstractCallableC0395c.m1097h(new RunnableC0136g(this, intent2, 112, null));
                    } else {
                        ZApp.m726j("Incorrect confirm pending");
                    }
                    break;
                }
                break;
            case 0:
                ZApp.m725i(R.string.MES_INSTALL_APP_DONE);
                break;
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 7:
                C0063a.b bVar = new C0063a.b(c0129h == null ? "" : c0129h.m478e());
                C0063a.a aVar = new C0063a.a(0, string);
                ArrayList<C0063a.a> arrayList = bVar.f452c;
                arrayList.add(aVar);
                arrayList.add(new C0063a.a(0, getString(R.string.MES_INSTALL_APP_FAILED)));
                AlertDialog alertDialog = new DialogInterfaceOnClickListenerC0104n(c0307d, this, new C0063a.b[]{bVar}).f755g;
                if (alertDialog != null) {
                    AbstractC0099i.m354q(alertDialog);
                }
                AbstractCallableC0395c.m1097h(new RunnableC0252c());
                break;
            case 3:
                break;
            default:
                ZApp.m726j(string);
                break;
        }
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            m731A(false);
            return true;
        }
        if (menuItem.getItemId() != R.id.bMenuViewMode) {
            if (m734D(menuItem.getItemId())) {
                return true;
            }
            return super.onOptionsItemSelected(menuItem);
        }
        C0305b c0305bM842c = this.f1386h.m842c();
        C0083a c0083a = new C0083a(this, c0305bM842c.f1598g, c0305bM842c.f1600i, c0305bM842c.f1599h);
        c0083a.m310a(getWindow(), findViewById(R.id.bMenuViewMode));
        c0083a.f613g = new C0255f(c0305bM842c);
        return true;
    }

    @Override // p001a0.AbstractActivityC0003c, android.app.Activity
    public final void onPause() {
        super.onPause();
        Handler handler = this.f1385g;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f1385g = null;
        }
        this.f4c.m1095f(100, 1, -1);
        C2JBridge.f1553b = null;
        this.f1394p = System.currentTimeMillis();
    }

    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        if (iArr.length <= 0 || iArr[0] != 0) {
            return;
        }
        Iterator it = C0412c.m1117k().iterator();
        while (it.hasNext()) {
            ((C0412c.a) it.next()).f2157f &= -24577;
        }
        C0307d c0307d = this.f1386h;
        C0305b[] c0305bArr = c0307d.f1627f;
        C0305b c0305b = c0305bArr[0];
        if (c0305b != null) {
            c0305b.f1595d = (byte) 0;
        }
        C0305b c0305b2 = c0305bArr[1];
        if (c0305b2 != null) {
            c0305b2.f1595d = (byte) 0;
        }
        m743M(c0307d.f1626e, c0307d.m843d(), null, this.f1389k.getListPosition(), 0);
    }

    @Override // android.app.Activity
    public final void onRestart() {
        C0305b c0305b;
        super.onRestart();
        boolean z2 = true;
        if (C0358b.m1037h(1)) {
            C0358b.a aVar = new C0358b.a();
            C0358b.m1042m(this, false, aVar);
            if (aVar.f1996a) {
                f1383r = null;
                recreate();
                return;
            }
            C0385h.m1080d(this);
            C0438b.f2231c.clear();
            if (aVar.f2000e) {
                C0079a c0079a = C0079a.f581e;
                if (c0079a != null) {
                    c0079a.m267a();
                }
                C0079a.f581e = null;
                aVar.f1997b = true;
            }
            if (aVar.f1997b) {
                int i2 = C0358b.m1041l(128) ? 2 : 1;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (aVar.f1998c && (c0305b = this.f1386h.f1627f[i3]) != null) {
                        c0305b.m833n();
                    }
                    this.f1389k.m926h(i3, null, false, false);
                }
                this.f1394p = 0L;
            }
            if (aVar.f1999d) {
                m748R(10);
                z2 = false;
            }
        }
        if (z2) {
            m748R(8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0087  */
    @Override // p001a0.AbstractActivityC0003c, android.app.Activity
    public final void onResume() {
        char c2;
        super.onResume();
        C2JBridge.f1553b = this;
        InterfaceC0316c interfaceC0316c = this.f1384f;
        if (interfaceC0316c != null) {
            try {
                interfaceC0316c.GUIStatus(true);
                this.f1384f.SetSettings(C0358b.m1031b(), C0358b.f1985g, C0358b.f1983e);
            } catch (Exception unused) {
            }
        } else {
            this.f1385g = C0137h.m503e(this, new Intent(this, (Class<?>) ZArchiverService.class), this.f1395q);
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f1394p;
        C0307d c0307d = this.f1386h;
        if (jCurrentTimeMillis > 5000) {
            int i2 = C0358b.m1041l(128) ? 2 : 1;
            for (int i3 = 0; i3 < i2; i3++) {
                C0305b c0305b = c0307d.f1627f[i3];
                if (c0305b != null) {
                    if (!c0305b.m828i()) {
                        if (c0305b.m826g(4)) {
                            C0129h c0129h = c0305b.f1594c;
                            String str = c0129h.f1015c;
                            if (str.startsWith("/uri/") || str.startsWith("/SAF") || C0415f.m1134b(c0129h) != 1 || C0181d.m569j(str)) {
                                c2 = 1;
                            } else {
                                c2 = 2;
                            }
                        } else if (c0305b.m826g(3)) {
                            c2 = 1;
                        } else {
                            c2 = 0;
                        }
                        if (c2 == 1) {
                            m743M(i3, c0305b.f1594c, null, this.f1389k.m921c(i3), 16);
                        } else if (c2 == 2) {
                            m742L(i3, 0, new C0129h(C0358b.f1980b[i3]));
                        }
                    } else if (this.f1389k.m920b(i3) == null) {
                        FilePanelView filePanelView = this.f1389k;
                        filePanelView.m929k(c0305b, c0307d.f1628g, filePanelView.m921c(i3), 0);
                    }
                }
            }
        }
        c0307d.f1624c.m789i();
        if (c0307d.m845f(4) && C0181d.m570k(c0307d.m843d().f1015c)) {
            return;
        }
        new C0464f0(this).m1098g(this, this.f4c);
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        C0307d c0307d = this.f1386h;
        bundle.putInt("action", c0307d.f1622a);
        C0287a c0287a = c0307d.f1624c;
        C0449a c0449a = c0287a.f1493e;
        bundle.putParcelable("c_file", (c0449a == null || c0449a.m1203h() < 10) ? c0287a.f1493e : null);
        C0449a c0449a2 = c0287a.f1492d;
        bundle.putParcelable("a_file", (c0449a2 == null || c0449a2.m1203h() < 10) ? c0287a.f1492d : null);
        InterfaceC0139j interfaceC0139j = c0287a.f1494f;
        if (interfaceC0139j != null) {
            bundle.putInt("d_type", interfaceC0139j.type());
            bundle.putParcelable("d_data", c0287a.f1494f);
        } else {
            bundle.putInt("d_type", 0);
        }
        bundle.putInt("page", c0307d.f1626e);
        C0305b[] c0305bArr = c0307d.f1627f;
        c0305bArr[0].m829j(bundle, "p1");
        C0305b c0305b = c0305bArr[1];
        if (c0305b != null) {
            c0305b.m829j(bundle, "p2");
        }
        bundle.putInt("p1pos", this.f1389k.m921c(0));
        if (C0358b.m1041l(128)) {
            bundle.putInt("p2pos", this.f1389k.m921c(1));
        }
    }

    @Override // p001a0.AbstractActivityC0003c, android.app.Activity
    public final void onStart() {
        C0305b c0305b;
        super.onStart();
        C0307d c0307d = this.f1386h;
        c0307d.f1624c.m794o(this, this.f1384f);
        if ((C0358b.f1988j & 4128768) != 0) {
            if (c0307d.f1628g == null) {
                c0307d.f1628g = new C0229g(this);
            }
            int i2 = C0358b.f1989k;
            C0305b[] c0305bArr = c0307d.f1627f;
            C0305b c0305b2 = c0305bArr[0];
            if ((c0305b2 != null && c0305b2.f1598g == R.layout.item_file_grid) || ((c0305b = c0305bArr[1]) != null && c0305b.f1598g == R.layout.item_file_grid)) {
                i2 = (int) (i2 * 1.6f);
            }
            c0307d.f1628g.m657d(this, i2);
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        InterfaceC0316c interfaceC0316c = this.f1384f;
        if (interfaceC0316c != null) {
            try {
                interfaceC0316c.GUIStatus(false);
            } catch (Exception unused) {
            }
            this.f1384f = null;
        }
        try {
            unbindService(this.f1395q);
        } catch (Exception unused2) {
        }
        this.f1386h.m840a(-1, -1, true);
        C0307d c0307d = this.f1386h;
        int listMaxVisibleItemCount = this.f1389k.getListMaxVisibleItemCount() * 2;
        C0229g c0229g = c0307d.f1628g;
        if (c0229g != null) {
            c0229g.m658e(listMaxVisibleItemCount);
        }
        this.f4c.m1095f(1000, 1, -1);
        C0079a.m266m().m279o();
        C0198e.a aVar = C0198e.f1203l;
        if (aVar != null) {
            try {
                synchronized (aVar) {
                    aVar.notifyAll();
                }
            } catch (Exception unused3) {
            }
        }
        this.f1386h.f1624c.m794o(null, null);
    }

    /* JADX INFO: renamed from: w */
    public final void m758w() {
        ZApp zApp;
        if (!C0137h.m499a(this)) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 30 || (i2 < 33 && C0441e.m1178c(this))) {
                requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 0);
                return;
            } else {
                DialogInterfaceOnClickListenerC0109s.m377r(this.f1386h, this, 0, 0, null, 4, null);
                return;
            }
        }
        boolean z2 = true;
        if (Build.VERSION.SDK_INT >= 33 && (zApp = ZApp.f1375c) != null && zApp.checkSelfPermission("android.permission.POST_NOTIFICATIONS") == -1) {
            z2 = false;
        }
        if (z2) {
            return;
        }
        requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 0);
    }

    /* JADX INFO: renamed from: x */
    public final boolean m759x(int i2, String str) {
        C0412c.a aVarM1138f = C0415f.m1138f(str);
        if (aVarM1138f != null) {
            String str2 = null;
            if (str != null) {
                int length = str.length();
                String str3 = aVarM1138f.f2153b;
                if (length > str3.length()) {
                    String strM65a0 = C0015d.m65a0(str.substring(str3.length()));
                    if (strM65a0.startsWith("Android/data") || strM65a0.startsWith("Android/obb")) {
                        String[] strArrM1084h = C0385h.m1084h(strM65a0, '/');
                        if (Build.VERSION.SDK_INT >= 33) {
                            if (strArrM1084h.length >= 3) {
                                str2 = strArrM1084h[0] + '/' + strArrM1084h[1] + '/' + strArrM1084h[2];
                            }
                        } else if (strArrM1084h.length >= 2) {
                            str2 = strArrM1084h[0] + '/' + strArrM1084h[1];
                        }
                    }
                }
            }
            String str4 = str2;
            if (str4 != null) {
                DialogInterfaceOnClickListenerC0109s.m377r(this.f1386h, this, 0, i2, aVarM1138f, Build.VERSION.SDK_INT >= 33 ? 3 : 2, str4);
                return false;
            }
            if (str.endsWith("/Android/obb") && Build.VERSION.SDK_INT >= 33) {
                DialogInterfaceOnClickListenerC0109s.m377r(this.f1386h, this, 0, i2, aVarM1138f, 1, "/Android/obb");
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: y */
    public final void m760y(boolean z2) {
        AbstractViewOnClickListenerC0050h listAdapter = this.f1389k.getListAdapter();
        if (listAdapter == null || listAdapter.f373h.f334a <= 0) {
            return;
        }
        C0307d c0307d = this.f1386h;
        C0287a c0287a = c0307d.f1624c;
        C0305b c0305b = c0307d.f1627f[listAdapter.f372g];
        int[] iArrM191d = listAdapter.m191d();
        c0287a.getClass();
        try {
            C0449a c0449aM820a = c0305b.m820a(iArrM191d);
            c0287a.f1492d = c0449aM820a;
            c0449aM820a.m1203h();
        } catch (Exception unused) {
        }
        if (z2) {
            listAdapter.m194h();
            m740J();
        }
    }
}
