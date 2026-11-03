package ru.zdevs.zarchiver;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.PopupMenu;
import android.widget.SearchView;
import android.widget.TextView;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Objects;
import p004b.C0015d;
import p005b0.C0026h;
import p009c1.AbstractC0053b;
import p017f0.AbstractC0099i;
import p017f0.DialogInterfaceOnCancelListenerC0112v;
import p017f0.DialogInterfaceOnCancelListenerC0113w;
import p017f0.DialogInterfaceOnCancelListenerC0115y;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p033m0.C0181d;
import p033m0.C0182e;
import p033m0.C0185h;
import p035n0.C0197d;
import p047s0.C0358b;
import p051u0.C0383f;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p055w0.C0412c;
import p055w0.C0415f;
import p059y0.C0439c;
import p059y0.C0441e;
import p060z.RunnableC0460d1;
import ru.zdevs.zarchiver.p044io.SAF;
import ru.zdevs.zarchiver.p045ui.editor.C0339b;
import ru.zdevs.zarchiver.p045ui.editor.EditableView;

/* JADX INFO: loaded from: classes.dex */
public class ZTextEditor extends Activity implements C0393a.c, EditableView.InterfaceC0336e {

    /* JADX INFO: renamed from: h */
    public static final int[] f1431h = {R.id.bFontSerif, R.id.bFontSansSerif, R.id.bFontMono, R.id.bFontLight, R.id.bFontCondensed};

    /* JADX INFO: renamed from: i */
    public static final int[] f1432i = {12, 14, 16, 18, 20, 24, 28};

    /* JADX INFO: renamed from: j */
    public static final int[] f1433j = {R.id.bFontSize12, R.id.bFontSize14, R.id.bFontSize16, R.id.bFontSize18, R.id.bFontSize20, R.id.bFontSize24, R.id.bFontSize28};

    /* JADX INFO: renamed from: k */
    public static final String[] f1434k = {"BIG5", "EUC-JP", "EUC-KR", "EUC-TW", "GB18030", "IBM855", "IBM866", "ISO-2022-JP", "ISO-2022-CN", "ISO-2022-KR", "ISO-8859-5", "ISO-8859-7", "ISO-8859-8", "KOI8-R", "MACCYRILLIC", "SHIFT_JIS", "TIS620", "US-ASCII", "UTF-8", "UTF-16BE", "UTF-16LE", "UTF-32BE", "UTF-32LE", "WINDOWS-1250", "WINDOWS-1251", "WINDOWS-1252", "WINDOWS-1253", "WINDOWS-1254", "WINDOWS-1255", "WINDOWS-1256", "WINDOWS-1257", "WINDOWS-1258"};

    /* JADX INFO: renamed from: l */
    public static final String[] f1435l = {"Bash", "C / CPP", "C#", "Config", "CSS", "Go", "Java", "JavaScript", "PHP", "Python", "Ruby", "Rust", "XML"};

    /* JADX INFO: renamed from: m */
    public static final int[] f1436m = {10, 1, 4, 12, 13, 5, 2, 6, 7, 8, 9, 3, 11};

    /* JADX INFO: renamed from: a */
    public EditableView f1437a;

    /* JADX INFO: renamed from: b */
    public DialogInterfaceOnCancelListenerC0115y f1438b;

    /* JADX INFO: renamed from: c */
    public SearchView f1439c;

    /* JADX INFO: renamed from: d */
    public boolean f1440d;

    /* JADX INFO: renamed from: e */
    public String f1441e;

    /* JADX INFO: renamed from: f */
    public C0281p f1442f;

    /* JADX INFO: renamed from: g */
    public final C0393a f1443g = new C0393a();

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$a */
    public class RunnableC0266a implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ C0281p f1444a;

        public RunnableC0266a(C0281p c0281p) {
            this.f1444a = c0281p;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ZTextEditor zTextEditor = ZTextEditor.this;
            zTextEditor.f1442f = this.f1444a;
            zTextEditor.f1437a.m947k();
            ZTextEditor.m774b(zTextEditor);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$b */
    public class C0267b implements SearchView.OnCloseListener {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ ActionBar f1446a;

        public C0267b(ActionBar actionBar) {
            this.f1446a = actionBar;
        }

        @Override // android.widget.SearchView.OnCloseListener
        public final boolean onClose() {
            ZTextEditor zTextEditor = ZTextEditor.this;
            zTextEditor.f1439c = null;
            ActionBar actionBar = this.f1446a;
            actionBar.setCustomView((View) null);
            actionBar.setDisplayShowCustomEnabled(false);
            zTextEditor.invalidateOptionsMenu();
            return true;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$c */
    public class C0268c implements SearchView.OnQueryTextListener {
        public C0268c() {
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public final boolean onQueryTextChange(String str) {
            ZTextEditor.this.f1439c.setBackgroundColor(0);
            return false;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public final boolean onQueryTextSubmit(String str) {
            int[] iArr = ZTextEditor.f1431h;
            ZTextEditor.this.m780i();
            return true;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$d */
    public class C0269d implements AbstractC0099i.b {
        public C0269d() {
        }

        @Override // p017f0.AbstractC0099i.b
        /* JADX INFO: renamed from: a */
        public final void mo246a(AbstractC0099i abstractC0099i) {
            ZTextEditor.this.f1443g.m1095f(2, 0, -1);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$e */
    public class C0270e implements AbstractC0099i.c {
        public C0270e() {
        }

        @Override // p017f0.AbstractC0099i.c
        /* JADX INFO: renamed from: b */
        public final boolean mo245b(AbstractC0099i abstractC0099i) {
            int[] iArr = ZTextEditor.f1431h;
            ZTextEditor.this.m776d(true);
            return true;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$f */
    public class C0271f implements AbstractC0099i.b {
        public C0271f() {
        }

        @Override // p017f0.AbstractC0099i.b
        /* JADX INFO: renamed from: a */
        public final void mo246a(AbstractC0099i abstractC0099i) {
            ZTextEditor.this.finish();
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$g */
    public class ViewOnClickListenerC0272g implements View.OnClickListener {
        public ViewOnClickListenerC0272g() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int[] iArr = ZTextEditor.f1431h;
            ZTextEditor.this.m775c();
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$h */
    public class ViewOnClickListenerC0273h implements View.OnClickListener {

        /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$h$a */
        public class a implements PopupMenu.OnMenuItemClickListener {
            public a() {
            }

            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return ZTextEditor.this.onOptionsItemSelected(menuItem);
            }
        }

        public ViewOnClickListenerC0273h() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ZTextEditor zTextEditor = ZTextEditor.this;
            PopupMenu popupMenu = new PopupMenu(zTextEditor, view);
            Menu menu = popupMenu.getMenu();
            zTextEditor.onCreateOptionsMenu(menu);
            menu.findItem(R.id.bSearch).setVisible(false);
            popupMenu.setOnMenuItemClickListener(new a());
            popupMenu.show();
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$i */
    public class RunnableC0274i implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ int f1455a;

        public RunnableC0274i(int i2) {
            this.f1455a = i2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ZTextEditor zTextEditor = ZTextEditor.this;
            zTextEditor.f1437a.setFont(this.f1455a);
            ZTextEditor.m774b(zTextEditor);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$j */
    public class RunnableC0275j implements Runnable {
        public RunnableC0275j() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ZTextEditor zTextEditor = ZTextEditor.this;
            zTextEditor.f1437a.setFontSize(C0358b.f1993o);
            ZTextEditor.m774b(zTextEditor);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$k */
    public class RunnableC0276k implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ boolean f1458a;

        public RunnableC0276k(boolean z2) {
            this.f1458a = z2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ZTextEditor zTextEditor = ZTextEditor.this;
            zTextEditor.f1437a.setWordWrap(this.f1458a);
            ZTextEditor.m774b(zTextEditor);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$l */
    public class RunnableC0277l implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ boolean f1460a;

        public RunnableC0277l(boolean z2) {
            this.f1460a = z2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ZTextEditor zTextEditor = ZTextEditor.this;
            zTextEditor.f1437a.setLineNumber(this.f1460a);
            ZTextEditor.m774b(zTextEditor);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$m */
    public class C0278m implements AbstractC0099i.c {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ DialogInterfaceOnCancelListenerC0112v f1462a;

        /* JADX INFO: renamed from: b */
        public final /* synthetic */ String f1463b;

        public C0278m(DialogInterfaceOnCancelListenerC0112v dialogInterfaceOnCancelListenerC0112v, String str) {
            this.f1462a = dialogInterfaceOnCancelListenerC0112v;
            this.f1463b = str;
        }

        @Override // p017f0.AbstractC0099i.c
        /* JADX INFO: renamed from: b */
        public final boolean mo245b(AbstractC0099i abstractC0099i) {
            int i2 = this.f1462a.f826j;
            String str = i2 < 0 ? null : ZTextEditor.f1434k[i2];
            if (Objects.equals(this.f1463b, str)) {
                return false;
            }
            ZTextEditor zTextEditor = ZTextEditor.this;
            C0281p c0281p = zTextEditor.f1442f;
            if (c0281p != null) {
                zTextEditor.m778f(true);
                new C0282q(c0281p.f1472c, zTextEditor.f1442f.f1473d, str, zTextEditor.f1437a.getEditable()).m1098g(zTextEditor, zTextEditor.f1443g);
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$n */
    public class C0279n implements AbstractC0099i.c {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ DialogInterfaceOnCancelListenerC0112v f1465a;

        /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$n$a */
        public class a implements Runnable {

            /* JADX INFO: renamed from: a */
            public final /* synthetic */ int f1467a;

            public a(int i2) {
                this.f1467a = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C0279n c0279n = C0279n.this;
                ZTextEditor.this.f1437a.setSyntax(this.f1467a);
                ZTextEditor.m774b(ZTextEditor.this);
            }
        }

        public C0279n(DialogInterfaceOnCancelListenerC0112v dialogInterfaceOnCancelListenerC0112v) {
            this.f1465a = dialogInterfaceOnCancelListenerC0112v;
        }

        @Override // p017f0.AbstractC0099i.c
        /* JADX INFO: renamed from: b */
        public final boolean mo245b(AbstractC0099i abstractC0099i) {
            int i2 = this.f1465a.f826j;
            if (i2 < 0) {
                ZApp.m725i(R.string.FREE_LIMIT_HELP);
                return true;
            }
            int[] iArr = ZTextEditor.f1431h;
            ZTextEditor.this.m778f(true);
            AbstractCallableC0395c.m1097h(new a(i2));
            return true;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$o */
    public static class C0280o implements C0393a.b {

        /* JADX INFO: renamed from: a */
        public final String f1469a;

        public C0280o(String str) {
            this.f1469a = str;
        }

        @Override // p053v0.C0393a.b
        /* JADX INFO: renamed from: a */
        public final int mo342a() {
            return 2;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$q */
    public static class C0282q extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final Uri f1474e;

        /* JADX INFO: renamed from: f */
        public final String f1475f;

        /* JADX INFO: renamed from: g */
        public final String f1476g;

        /* JADX INFO: renamed from: h */
        public final C0339b f1477h;

        public C0282q(Uri uri, String str, String str2, C0339b c0339b) {
            this.f1474e = uri;
            this.f1475f = str;
            this.f1476g = str2;
            this.f1477h = c0339b;
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            String name;
            InputStream inputStreamOpenInputStream;
            C0339b c0339b = this.f1477h;
            Uri uri = this.f1474e;
            try {
                try {
                    if ("file".equals(uri.getScheme())) {
                        String path = uri.getPath();
                        File file = new File(path);
                        if (file.length() > 10485760) {
                            throw new IOException("File size is too large (> 10MB)");
                        }
                        name = file.getName();
                        inputStreamOpenInputStream = (file.canRead() || !C0358b.m1038i(path)) ? new FileInputStream(file) : C0182e.m574a(C0358b.f1991m, file.getAbsolutePath());
                    } else {
                        SAF.C0309a c0309aM855f = SAF.m855f(uri);
                        if (c0309aM855f != null && c0309aM855f.f1641d > 10485760) {
                            throw new IOException("File size is too large (> 10MB)");
                        }
                        name = c0309aM855f != null ? c0309aM855f.f1638a : "";
                        inputStreamOpenInputStream = ZApp.m718a().openInputStream(uri);
                    }
                    c0339b.clear();
                    boolean z2 = (C0358b.f1992n & 64) == 64;
                    String str = this.f1475f;
                    if (z2) {
                        c0339b.m977p(AbstractC0053b.m207b(name, str));
                    }
                    C0281p c0281p = new C0281p(name, C0181d.m571l(inputStreamOpenInputStream, c0339b, this.f1476g, this), uri, str);
                    C0181d.m563d(inputStreamOpenInputStream);
                    return c0281p;
                } catch (Exception e2) {
                    C0280o c0280o = new C0280o("Failed to load file: " + e2.getMessage());
                    C0181d.m563d(null);
                    return c0280o;
                }
            } catch (Throwable th) {
                C0181d.m563d(null);
                throw th;
            }
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: j */
        public final int mo344j() {
            return 1;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$r */
    public static class C0283r implements C0393a.b {

        /* JADX INFO: renamed from: a */
        public final boolean f1478a;

        public C0283r(boolean z2) {
            this.f1478a = z2;
        }

        @Override // p053v0.C0393a.b
        /* JADX INFO: renamed from: a */
        public final int mo342a() {
            return 3;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$s */
    public static class C0284s extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final WeakReference<Context> f1479e;

        /* JADX INFO: renamed from: f */
        public final Uri f1480f;

        /* JADX INFO: renamed from: g */
        public final C0181d.a f1481g;

        /* JADX INFO: renamed from: h */
        public final CharSequence f1482h;

        /* JADX INFO: renamed from: i */
        public final boolean f1483i;

        /* JADX INFO: renamed from: j */
        public long f1484j = 0;

        public C0284s(Context context, Uri uri, C0181d.a aVar, C0339b c0339b, boolean z2) {
            this.f1479e = new WeakReference<>(context);
            this.f1480f = uri;
            this.f1481g = aVar;
            this.f1482h = c0339b;
            this.f1483i = z2;
        }

        /* JADX WARN: Code duplicated, block: B:21:0x0057 A[Catch: all -> 0x0090, Exception -> 0x0092, TryCatch #1 {Exception -> 0x0092, blocks: (B:3:0x0005, B:6:0x001d, B:21:0x0057, B:23:0x005f, B:24:0x0063, B:27:0x0077, B:29:0x0082, B:30:0x0085, B:8:0x0027, B:10:0x002f, B:16:0x0045, B:19:0x0050, B:17:0x004a), top: B:42:0x0005, outer: #0 }] */
        /* JADX WARN: Code duplicated, block: B:23:0x005f A[Catch: all -> 0x0090, Exception -> 0x0092, TryCatch #1 {Exception -> 0x0092, blocks: (B:3:0x0005, B:6:0x001d, B:21:0x0057, B:23:0x005f, B:24:0x0063, B:27:0x0077, B:29:0x0082, B:30:0x0085, B:8:0x0027, B:10:0x002f, B:16:0x0045, B:19:0x0050, B:17:0x004a), top: B:42:0x0005, outer: #0 }] */
        /* JADX WARN: Code duplicated, block: B:27:0x0077 A[Catch: all -> 0x0090, Exception -> 0x0092, TRY_ENTER, TryCatch #1 {Exception -> 0x0092, blocks: (B:3:0x0005, B:6:0x001d, B:21:0x0057, B:23:0x005f, B:24:0x0063, B:27:0x0077, B:29:0x0082, B:30:0x0085, B:8:0x0027, B:10:0x002f, B:16:0x0045, B:19:0x0050, B:17:0x004a), top: B:42:0x0005, outer: #0 }] */
        /* JADX WARN: Code duplicated, block: B:29:0x0082 A[Catch: all -> 0x0090, Exception -> 0x0092, TryCatch #1 {Exception -> 0x0092, blocks: (B:3:0x0005, B:6:0x001d, B:21:0x0057, B:23:0x005f, B:24:0x0063, B:27:0x0077, B:29:0x0082, B:30:0x0085, B:8:0x0027, B:10:0x002f, B:16:0x0045, B:19:0x0050, B:17:0x004a), top: B:42:0x0005, outer: #0 }] */
        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            OutputStream outputStreamM781m;
            Context contextM722e;
            Uri uri = this.f1480f;
            OutputStream outputStreamOpenOutputStream = null;
            try {
                try {
                    boolean zEquals = "ru.zdevs.zarchiver.external".equals(uri.getAuthority());
                    boolean zEquals2 = "file".equals(uri.getScheme());
                    WeakReference<Context> weakReference = this.f1479e;
                    if (!zEquals2) {
                        Context context = weakReference.get();
                        if (context == null) {
                            return new C0280o("Context is null");
                        }
                        if (!zEquals) {
                            try {
                                outputStreamOpenOutputStream = ZApp.m718a().openOutputStream(uri);
                            } catch (Exception unused) {
                            }
                        }
                        if (outputStreamOpenOutputStream == null) {
                            String path = zEquals ? uri.getPath() : C0383f.m1075f(context, uri);
                            if (path != null) {
                                outputStreamM781m = m781m(path);
                            }
                        }
                        if (outputStreamOpenOutputStream == null) {
                            contextM722e = weakReference.get();
                            if (contextM722e == null) {
                                contextM722e = ZApp.m722e();
                            }
                            C0280o c0280o = new C0280o(contextM722e.getResources().getString(R.string.MES_ACCESS_DENIED));
                            C0181d.m563d(outputStreamOpenOutputStream);
                            return c0280o;
                        }
                        C0181d.m573n(outputStreamOpenOutputStream, this.f1482h, this.f1481g, this.f1484j);
                        if (zEquals) {
                            outputStreamOpenOutputStream.close();
                        }
                        C0283r c0283r = new C0283r(this.f1483i);
                        C0181d.m563d(outputStreamOpenOutputStream);
                        return c0283r;
                    }
                    outputStreamM781m = m781m(uri.getPath());
                    outputStreamOpenOutputStream = outputStreamM781m;
                    if (outputStreamOpenOutputStream == null) {
                        contextM722e = weakReference.get();
                        if (contextM722e == null) {
                            contextM722e = ZApp.m722e();
                        }
                        C0280o c0280o2 = new C0280o(contextM722e.getResources().getString(R.string.MES_ACCESS_DENIED));
                        C0181d.m563d(outputStreamOpenOutputStream);
                        return c0280o2;
                    }
                    C0181d.m573n(outputStreamOpenOutputStream, this.f1482h, this.f1481g, this.f1484j);
                    if (zEquals) {
                        outputStreamOpenOutputStream.close();
                    }
                    C0283r c0283r2 = new C0283r(this.f1483i);
                    C0181d.m563d(outputStreamOpenOutputStream);
                    return c0283r2;
                } catch (Exception e2) {
                    C0280o c0280o3 = new C0280o("Failed to save file: " + e2.getMessage());
                    C0181d.m563d(null);
                    return c0280o3;
                }
            } catch (Throwable th) {
                C0181d.m563d(null);
                throw th;
            }
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: j */
        public final int mo344j() {
            return 2;
        }

        /* JADX INFO: renamed from: m */
        public final OutputStream m781m(String str) throws FileNotFoundException {
            String localizedMessage;
            OutputStream outputStreamM603a = null;
            try {
                AbstractC0127f abstractC0127fM773a = ZTextEditor.m773a(str);
                if (abstractC0127fM773a.mo418d()) {
                    this.f1484j = abstractC0127fM773a.mo424o();
                }
                OutputStream outputStreamMo431x = abstractC0127fM773a.mo431x(-1L);
                localizedMessage = null;
                outputStreamM603a = outputStreamMo431x;
            } catch (Exception e2) {
                localizedMessage = e2.getLocalizedMessage();
            }
            if (outputStreamM603a == null && C0358b.m1039j()) {
                try {
                    outputStreamM603a = C0197d.m603a(C0358b.f1991m, C0412c.m1116j(str));
                } catch (Exception e3) {
                    localizedMessage = e3.getLocalizedMessage();
                }
            }
            if (outputStreamM603a != null || localizedMessage == null) {
                return outputStreamM603a;
            }
            throw new FileNotFoundException(localizedMessage);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$t */
    public static class C0285t implements C0393a.b {

        /* JADX INFO: renamed from: a */
        public final int f1485a;

        /* JADX INFO: renamed from: b */
        public final int f1486b;

        public C0285t(int i2, int i3) {
            this.f1485a = i2;
            this.f1486b = i3;
        }

        @Override // p053v0.C0393a.b
        /* JADX INFO: renamed from: a */
        public final int mo342a() {
            return 4;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$u */
    public static class C0286u extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final CharSequence f1487e;

        /* JADX INFO: renamed from: f */
        public final CharSequence f1488f;

        /* JADX INFO: renamed from: g */
        public final int f1489g;

        public C0286u(CharSequence charSequence, C0339b c0339b, int i2) {
            this.f1487e = charSequence;
            this.f1488f = c0339b;
            this.f1489g = i2;
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            CharSequence charSequence = this.f1487e;
            int length = charSequence.length();
            if (length == 0) {
                return null;
            }
            CharSequence charSequence2 = this.f1488f;
            int length2 = charSequence2.length();
            int i2 = this.f1489g;
            while (true) {
                int i3 = i2;
                while (true) {
                    if (i3 < length2) {
                        for (int i4 = 0; i4 < length && Character.toLowerCase(charSequence2.charAt(i3 + i4)) == Character.toLowerCase(charSequence.charAt(i4)); i4++) {
                            if (i4 == length - 1) {
                                return new C0285t(i3, length);
                            }
                        }
                        i3++;
                    }
                }
                if (i2 <= 0) {
                    return new C0285t(-1, 0);
                }
                length2 = i2;
                i2 = 0;
            }
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: j */
        public final int mo344j() {
            return 3;
        }
    }

    /* JADX INFO: renamed from: a */
    public static AbstractC0127f m773a(String str) {
        C0129h c0129hM862m;
        String[] strArrM1133a = C0415f.m1133a(str);
        if (strArrM1133a != null) {
            if (C0185h.m580b(strArrM1133a)) {
                return AbstractC0127f.m463u(new C0129h(C0185h.m579a(str, strArrM1133a[2])));
            }
            String strM858i = SAF.m858i(strArrM1133a[2]);
            C0412c.a aVarM1112f = C0412c.m1112f(strArrM1133a[0]);
            if (aVarM1112f != null && aVarM1112f.m1129d(strM858i) && (c0129hM862m = SAF.m862m(aVarM1112f.m1126a(), strM858i, true, false)) != null) {
                return AbstractC0127f.m463u(c0129hM862m);
            }
        }
        return AbstractC0127f.m463u(new C0129h(str));
    }

    /* JADX INFO: renamed from: b */
    public static void m774b(ZTextEditor zTextEditor) {
        zTextEditor.getClass();
        zTextEditor.runOnUiThread(new RunnableC0460d1(zTextEditor));
    }

    /* JADX INFO: renamed from: c */
    public final void m775c() {
        if (!this.f1440d) {
            finish();
            return;
        }
        DialogInterfaceOnCancelListenerC0113w dialogInterfaceOnCancelListenerC0113w = new DialogInterfaceOnCancelListenerC0113w(6, this, getString(R.string.MES_QUESTION_SAVE), null);
        dialogInterfaceOnCancelListenerC0113w.f738b = new C0270e();
        dialogInterfaceOnCancelListenerC0113w.f737a = new C0271f();
        dialogInterfaceOnCancelListenerC0113w.m381r();
    }

    /* JADX INFO: renamed from: d */
    public final void m776d(boolean z2) {
        C0281p c0281p = this.f1442f;
        if (c0281p == null) {
            return;
        }
        Uri uri = c0281p.f1472c;
        C0181d.a aVar = c0281p.f1471b;
        if (aVar == null) {
            return;
        }
        DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y = new DialogInterfaceOnCancelListenerC0115y(0, this, "", (C0307d) null);
        this.f1438b = dialogInterfaceOnCancelListenerC0115y;
        dialogInterfaceOnCancelListenerC0115y.f737a = new C0269d();
        dialogInterfaceOnCancelListenerC0115y.m387r();
        new C0284s(this, uri, aVar, this.f1437a.getEditable(), z2).m1098g(this, this.f1443g);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        SearchView searchView;
        if (keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1 || (searchView = this.f1439c) == null) {
            return super.dispatchKeyEvent(keyEvent);
        }
        searchView.setIconified(true);
        return true;
    }

    /* JADX INFO: renamed from: e */
    public final boolean m777e() {
        SearchView searchView = this.f1439c;
        if (searchView != null) {
            searchView.requestFocus();
            return true;
        }
        ActionBar actionBar = getActionBar();
        if (actionBar == null) {
            return false;
        }
        SearchView searchView2 = new SearchView(this);
        this.f1439c = searchView2;
        searchView2.setIconifiedByDefault(true);
        this.f1439c.setIconified(false);
        this.f1439c.setOnCloseListener(new C0267b(actionBar));
        this.f1439c.setOnQueryTextListener(new C0268c());
        actionBar.setCustomView(this.f1439c);
        actionBar.setDisplayShowCustomEnabled(true);
        invalidateOptionsMenu();
        return true;
    }

    /* JADX INFO: renamed from: f */
    public final void m778f(boolean z2) {
        View viewFindViewById = findViewById(R.id.loadProgress);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(z2 ? 0 : 8);
        }
        this.f1437a.setWillNotDraw(z2);
        this.f1437a.setEnabled(!z2);
    }

    @Override // p053v0.C0393a.c
    /* JADX INFO: renamed from: g */
    public final void mo341g(C0393a.b bVar) {
        int iMo342a = bVar.mo342a();
        if (iMo342a == 1) {
            C0281p c0281p = (C0281p) bVar;
            this.f1441e = c0281p.f1470a;
            m779h(false);
            AbstractCallableC0395c.m1097h(new RunnableC0266a(c0281p));
            return;
        }
        if (iMo342a == 2) {
            m778f(false);
            DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y = this.f1438b;
            if (dialogInterfaceOnCancelListenerC0115y != null) {
                dialogInterfaceOnCancelListenerC0115y.mo337d();
                this.f1438b = null;
            }
            ZApp.m726j(((C0280o) bVar).f1469a);
            C0281p c0281p2 = this.f1442f;
            if (c0281p2 == null || c0281p2.f1471b == null) {
                finish();
                return;
            }
            return;
        }
        if (iMo342a == 3) {
            C0283r c0283r = (C0283r) bVar;
            DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y2 = this.f1438b;
            if (dialogInterfaceOnCancelListenerC0115y2 != null) {
                dialogInterfaceOnCancelListenerC0115y2.mo337d();
                this.f1438b = null;
            }
            ZApp.m725i(R.string.MES_FILE_SAVED);
            m779h(false);
            if (c0283r.f1478a) {
                finish();
                return;
            }
            return;
        }
        if (iMo342a == 4) {
            m778f(false);
            SearchView searchView = this.f1439c;
            if (searchView == null) {
                return;
            }
            C0285t c0285t = (C0285t) bVar;
            int i2 = c0285t.f1485a;
            if (i2 < 0) {
                searchView.setBackgroundColor(822018048);
                return;
            }
            EditableView editableView = this.f1437a;
            int i3 = c0285t.f1486b + i2;
            editableView.requestFocus();
            editableView.m954r(i2, i3, -1);
        }
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        return super.getMenuInflater();
    }

    /* JADX INFO: renamed from: h */
    public final void m779h(boolean z2) {
        this.f1440d = z2;
        String str = this.f1441e;
        if (str != null) {
            if (z2) {
                str = "* " + this.f1441e;
            }
            View viewFindViewById = findViewById(R.id.nTitle);
            if (viewFindViewById != null) {
                ((TextView) viewFindViewById).setText(str);
                return;
            }
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setTitle(str);
            }
        }
    }

    /* JADX INFO: renamed from: i */
    public final void m780i() {
        SearchView searchView = this.f1439c;
        if (searchView == null) {
            return;
        }
        CharSequence query = searchView.getQuery();
        if (query.length() == 0) {
            return;
        }
        C0339b editable = this.f1437a.getEditable();
        int selectionEnd = this.f1437a.getSelectionEnd();
        if (selectionEnd == -1) {
            selectionEnd = 0;
        }
        m778f(true);
        new C0286u(query, editable, selectionEnd).m1098g(this, this.f1443g);
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        C0358b.m1042m(this, false, null);
        C0441e.m1181f(this);
        C0441e.m1184i(this, C0358b.f1983e);
        C0441e.m1184i(ZApp.f1375c, C0358b.f1983e);
        C0441e.m1188m(this, false);
        super.onCreate(bundle);
        if (C0441e.m1178c(this)) {
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.hide();
            }
            setContentView(R.layout.dlg_edit_base_tv);
            findViewById(R.id.bBack).setOnClickListener(new ViewOnClickListenerC0272g());
            findViewById(R.id.bMenu).setOnClickListener(new ViewOnClickListenerC0273h());
        } else {
            ActionBar actionBar2 = getActionBar();
            if (actionBar2 != null) {
                actionBar2.setDisplayHomeAsUpEnabled(true);
            }
            setContentView(R.layout.dlg_edit_base);
        }
        EditableView editableView = (EditableView) findViewById(R.id.editable);
        this.f1437a = editableView;
        editableView.setFont(C0358b.f1992n & 15);
        this.f1437a.setFontSize(C0358b.f1993o);
        this.f1437a.setWordWrap((C0358b.f1992n & 16) == 16);
        this.f1437a.setLineNumber((C0358b.f1992n & 32) == 32);
        this.f1437a.setOnTextChangeChange(this);
        if (bundle == null || !bundle.getBoolean("txtValid")) {
            onNewIntent(getIntent());
        }
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_texteditor, menu);
        if (this.f1439c != null) {
            menu.findItem(R.id.bSearch).setVisible(false);
            menu.findItem(R.id.bSave).setVisible(false);
            menu.findItem(R.id.bCharset).setVisible(false);
            menu.findItem(R.id.bNext).setVisible(true);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (C0015d.m49K(keyEvent != null ? keyEvent.getMetaState() : 0, 4096)) {
            if (i2 == 47) {
                m776d(false);
                return true;
            }
            if (i2 == 34 && m777e()) {
                return true;
            }
        } else if (i2 == 133) {
            m780i();
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return super.onKeyUp(i2, keyEvent);
        }
        m775c();
        return true;
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        Uri data = intent == null ? null : intent.getData();
        if (data == null) {
            finish();
        } else {
            m778f(true);
            new C0282q(data, intent.getType(), null, this.f1437a.getEditable()).m1098g(this, this.f1443g);
        }
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        C0181d.a aVar;
        int i2 = 0;
        if (menuItem.getGroupId() == R.id.gFontFamily) {
            int[] iArr = f1431h;
            int itemId = menuItem.getItemId();
            while (true) {
                if (i2 >= 5) {
                    i2 = -1;
                    break;
                }
                if (itemId == iArr[i2]) {
                    break;
                }
                i2++;
            }
            if (i2 >= 0 && i2 != (C0358b.f1992n & 15)) {
                menuItem.setChecked(true);
                EditableView editableView = this.f1437a;
                C0358b.m1043n(this, i2, -1, editableView.f1773r, editableView.f1774s);
                m778f(true);
                AbstractCallableC0395c.m1097h(new RunnableC0274i(i2));
            }
            return true;
        }
        if (menuItem.getGroupId() == R.id.gFontSize) {
            int[] iArr2 = f1433j;
            int itemId2 = menuItem.getItemId();
            while (true) {
                if (i2 >= 7) {
                    i2 = -1;
                    break;
                }
                if (itemId2 == iArr2[i2]) {
                    break;
                }
                i2++;
            }
            if (i2 >= 0) {
                int[] iArr3 = f1432i;
                if (iArr3[i2] != C0358b.f1993o) {
                    menuItem.setChecked(true);
                    int i3 = iArr3[i2];
                    EditableView editableView2 = this.f1437a;
                    C0358b.m1043n(this, -1, i3, editableView2.f1773r, editableView2.f1774s);
                    m778f(true);
                    AbstractCallableC0395c.m1097h(new RunnableC0275j());
                }
            }
            return true;
        }
        int itemId3 = menuItem.getItemId();
        if (itemId3 == 16908332 || itemId3 == R.id.bExit) {
            SearchView searchView = this.f1439c;
            if (searchView == null || itemId3 != 16908332) {
                m775c();
            } else {
                searchView.setIconified(true);
            }
            return true;
        }
        if (itemId3 == R.id.bSave) {
            m776d(false);
            return true;
        }
        if (itemId3 == R.id.bNext) {
            m780i();
            return true;
        }
        if (itemId3 == R.id.bSearch) {
            return m777e();
        }
        if (itemId3 == R.id.bWordWrap) {
            boolean z2 = !menuItem.isChecked();
            C0358b.m1043n(this, -1, -1, z2, this.f1437a.f1774s);
            m778f(true);
            AbstractCallableC0395c.m1097h(new RunnableC0276k(z2));
            return true;
        }
        if (itemId3 == R.id.bLineNumber) {
            boolean z3 = !menuItem.isChecked();
            C0358b.m1043n(this, -1, -1, this.f1437a.f1773r, z3);
            m778f(true);
            AbstractCallableC0395c.m1097h(new RunnableC0277l(z3));
            return true;
        }
        if (itemId3 != R.id.bCharset) {
            if (itemId3 != R.id.bSyntax) {
                return false;
            }
            Drawable drawableM1172g = C0439c.m1172g(this, R.drawable.ic_radio_on);
            Drawable drawableM1172g2 = C0439c.m1172g(this, R.drawable.ic_radion_off);
            Drawable drawableM1172g3 = (C0358b.f1992n & 64) == 64 ? C0439c.m1172g(this, R.drawable.ic_check_circle) : drawableM1172g2;
            int syntax = this.f1437a.getSyntax();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new C0026h(-1, getString(R.string.OPT_CORE_N_AUTO), drawableM1172g3));
            arrayList.add(new C0026h(0, getString(R.string.BTN_NO), syntax <= 0 ? drawableM1172g : drawableM1172g2));
            while (i2 < 13) {
                int i4 = f1436m[i2];
                arrayList.add(new C0026h(i4, f1435l[i2], i4 == syntax ? drawableM1172g : drawableM1172g2));
                i2++;
            }
            DialogInterfaceOnCancelListenerC0112v dialogInterfaceOnCancelListenerC0112v = new DialogInterfaceOnCancelListenerC0112v(this, arrayList, getString(R.string.MENU_CHARSET), 9);
            dialogInterfaceOnCancelListenerC0112v.f738b = new C0279n(dialogInterfaceOnCancelListenerC0112v);
            dialogInterfaceOnCancelListenerC0112v.m380t();
            return true;
        }
        Drawable drawableM1172g4 = C0439c.m1172g(this, R.drawable.ic_radio_on);
        Drawable drawableM1172g5 = C0439c.m1172g(this, R.drawable.ic_radion_off);
        C0281p c0281p = this.f1442f;
        String str = (c0281p == null || (aVar = c0281p.f1471b) == null) ? null : aVar.f1140b;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new C0026h(-1, getString(R.string.OPT_CORE_N_AUTO), str == null ? drawableM1172g4 : drawableM1172g5));
        String[] strArr = f1434k;
        int i5 = 0;
        while (i2 < 32) {
            String str2 = strArr[i2];
            int i6 = i5 + 1;
            arrayList2.add(new C0026h(i5, str2, str2.equals(str) ? drawableM1172g4 : drawableM1172g5));
            i2++;
            i5 = i6;
        }
        DialogInterfaceOnCancelListenerC0112v dialogInterfaceOnCancelListenerC0112v2 = new DialogInterfaceOnCancelListenerC0112v(this, arrayList2, getString(R.string.MENU_CHARSET), 9);
        dialogInterfaceOnCancelListenerC0112v2.f738b = new C0278m(dialogInterfaceOnCancelListenerC0112v2, str);
        dialogInterfaceOnCancelListenerC0112v2.m380t();
        return true;
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        this.f1443g.m1093d(this);
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        try {
            menu.findItem(R.id.bWordWrap).setChecked(this.f1437a.f1773r);
            menu.findItem(R.id.bLineNumber).setChecked(this.f1437a.f1774s);
            menu.findItem(f1431h[C0358b.f1992n & 15]).setChecked(true);
            int[] iArr = f1432i;
            int i2 = C0358b.f1993o;
            int i3 = 0;
            while (true) {
                if (i3 >= 7) {
                    i3 = -1;
                    break;
                }
                if (i2 == iArr[i3]) {
                    break;
                }
                i3++;
            }
            if (i3 > 0) {
                menu.findItem(f1433j[i3]).setChecked(true);
            }
        } catch (Exception unused) {
        }
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public final void onRestoreInstanceState(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        super.onRestoreInstanceState(bundle);
        this.f1440d = bundle.getBoolean("txtChg");
        this.f1441e = bundle.getString("txtName");
        this.f1437a.setSyntax(bundle.getInt("txtSyntax"));
        if (bundle.getParcelable("op2u") != null) {
            this.f1442f = new C0281p(bundle);
            if (!bundle.getBoolean("txtValid")) {
                ZApp.m726j("File is too big for restore state");
                m778f(true);
                C0281p c0281p = this.f1442f;
                Uri uri = c0281p.f1472c;
                C0181d.a aVar = c0281p.f1471b;
                new C0282q(uri, c0281p.f1473d, aVar != null ? aVar.f1140b : null, this.f1437a.getEditable()).m1098g(this, this.f1443g);
            }
        }
        m779h(this.f1440d);
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        this.f1443g.m1090a(this, this);
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("txtChg", this.f1440d);
        bundle.putString("txtName", this.f1441e);
        bundle.putBoolean("txtValid", this.f1437a.f1760e.f1800c < 1047552);
        bundle.putInt("txtSyntax", this.f1437a.getSyntax());
        C0281p c0281p = this.f1442f;
        if (c0281p != null) {
            bundle.putString("op2n", c0281p.f1470a);
            C0181d.a aVar = c0281p.f1471b;
            if (aVar != null) {
                bundle.putByteArray("op2b", aVar.f1139a);
                bundle.putString("op2f", aVar.f1140b);
                bundle.putBoolean("op2r", aVar.f1141c);
            }
            bundle.putParcelable("op2u", c0281p.f1472c);
            bundle.putString("op2t", c0281p.f1473d);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ZTextEditor$p */
    public static class C0281p implements C0393a.b {

        /* JADX INFO: renamed from: a */
        public final String f1470a;

        /* JADX INFO: renamed from: b */
        public final C0181d.a f1471b;

        /* JADX INFO: renamed from: c */
        public final Uri f1472c;

        /* JADX INFO: renamed from: d */
        public final String f1473d;

        public C0281p(String str, C0181d.a aVar, Uri uri, String str2) {
            this.f1470a = str;
            this.f1471b = aVar;
            this.f1472c = uri;
            this.f1473d = str2;
        }

        @Override // p053v0.C0393a.b
        /* JADX INFO: renamed from: a */
        public final int mo342a() {
            return 1;
        }

        public C0281p(Bundle bundle) {
            this.f1470a = bundle.getString("op2n");
            String string = bundle.getString("op2f");
            if (string != null) {
                this.f1471b = new C0181d.a(bundle.getByteArray("op2b"), string, bundle.getBoolean("op2r"));
            } else {
                this.f1471b = null;
            }
            this.f1472c = (Uri) bundle.getParcelable("op2u");
            this.f1473d = bundle.getString("op2t");
        }
    }
}
