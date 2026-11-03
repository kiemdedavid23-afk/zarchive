package p017f0;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.system.Os;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ScrollView;
import android.widget.TableLayout;
import android.widget.TextView;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.text.DateFormat;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executors;
import p004b.C0014c;
import p004b.C0015d;
import p011d0.C0064b;
import p020g0.AbstractC0126e;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p020g0.InterfaceC0123b;
import p025i0.C0150c;
import p033m0.C0181d;
import p035n0.AbstractC0194a;
import p039p0.C0225c;
import p039p0.C0227e;
import p039p0.C0228f;
import p047s0.C0358b;
import p051u0.C0378a;
import p051u0.C0380c;
import p051u0.C0385h;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p055w0.C0410a;
import p055w0.C0415f;
import p059y0.C0442f;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.archiver.NArc;

/* JADX INFO: renamed from: f0.o */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0105o extends AbstractC0099i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, CompoundButton.OnCheckedChangeListener, View.OnClickListener, C0393a.c {

    /* JADX INFO: renamed from: p */
    public static final int[] f757p = {R.id.trMedia1, R.id.trMedia2, R.id.trMedia3, R.id.trMedia4, R.id.trMedia5};

    /* JADX INFO: renamed from: q */
    public static final int[] f758q = {R.id.tvTitlMedia1, R.id.tvTitlMedia2, R.id.tvTitlMedia3, R.id.tvTitlMedia4, R.id.tvTitlMedia5};

    /* JADX INFO: renamed from: r */
    public static final int[] f759r = {R.id.tvMedia1, R.id.tvMedia2, R.id.tvMedia3, R.id.tvMedia4, R.id.tvMedia5};

    /* JADX INFO: renamed from: g */
    public AlertDialog f760g;

    /* JADX INFO: renamed from: h */
    public int f761h;

    /* JADX INFO: renamed from: i */
    public ScrollView f762i;

    /* JADX INFO: renamed from: j */
    public final C0393a f763j = new C0393a();

    /* JADX INFO: renamed from: k */
    public final C0129h[] f764k;

    /* JADX INFO: renamed from: l */
    public final String[] f765l;

    /* JADX INFO: renamed from: m */
    public final boolean f766m;

    /* JADX INFO: renamed from: n */
    public int f767n;

    /* JADX INFO: renamed from: o */
    public int f768o;

    /* JADX INFO: renamed from: f0.o$a */
    public class a implements DialogInterface.OnShowListener {
        public a() {
        }

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            Resources resources;
            DialogInterfaceOnCancelListenerC0105o dialogInterfaceOnCancelListenerC0105o = DialogInterfaceOnCancelListenerC0105o.this;
            AlertDialog alertDialog = dialogInterfaceOnCancelListenerC0105o.f760g;
            if (alertDialog != null && (resources = alertDialog.getContext().getResources()) != null && resources.getConfiguration() != null) {
                dialogInterfaceOnCancelListenerC0105o.m367t(resources.getConfiguration());
            }
            Button button = ((AlertDialog) dialogInterface).getButton(-3);
            if (button != null) {
                button.setOnClickListener(dialogInterfaceOnCancelListenerC0105o);
            }
        }
    }

    /* JADX INFO: renamed from: f0.o$b */
    public class b implements View.OnLongClickListener {
        public b() {
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            String string;
            DialogInterfaceOnCancelListenerC0105o dialogInterfaceOnCancelListenerC0105o = DialogInterfaceOnCancelListenerC0105o.this;
            String[] strArr = dialogInterfaceOnCancelListenerC0105o.f765l;
            if (strArr.length > 1) {
                StringBuilder sb = new StringBuilder();
                for (String str : dialogInterfaceOnCancelListenerC0105o.f765l) {
                    if (sb.length() != 0) {
                        sb.append('\n');
                    }
                    sb.append(str);
                }
                string = sb.toString();
            } else {
                string = strArr[0];
            }
            C0378a.m1053a(dialogInterfaceOnCancelListenerC0105o.f760g.getContext(), "ZA File", string);
            return true;
        }
    }

    /* JADX INFO: renamed from: f0.o$c */
    public static class c implements C0393a.b {

        /* JADX INFO: renamed from: a */
        public final int f771a;

        /* JADX INFO: renamed from: b */
        public final int[] f772b;

        /* JADX INFO: renamed from: c */
        public final String[] f773c;

        public c(int i2, String[] strArr, int[] iArr) {
            this.f771a = i2;
            this.f772b = iArr;
            this.f773c = strArr;
        }

        @Override // p053v0.C0393a.b
        /* JADX INFO: renamed from: a */
        public final int mo342a() {
            return this.f771a;
        }
    }

    /* JADX INFO: renamed from: f0.o$d */
    public static class d implements C0393a.b {

        /* JADX INFO: renamed from: a */
        public final C0129h f774a;

        /* JADX INFO: renamed from: b */
        public final AbstractC0126e.b f775b;

        public d(AbstractC0126e.b bVar, C0129h c0129h) {
            this.f775b = bVar;
            this.f774a = c0129h;
        }

        @Override // p053v0.C0393a.b
        /* JADX INFO: renamed from: a */
        public final int mo342a() {
            return 0;
        }
    }

    /* JADX INFO: renamed from: f0.o$e */
    public static class e implements C0393a.b {

        /* JADX INFO: renamed from: a */
        public final int f776a;

        /* JADX INFO: renamed from: b */
        public int f777b = 0;

        /* JADX INFO: renamed from: c */
        public String f778c;

        public e(int i2) {
            this.f776a = i2;
        }

        @Override // p053v0.C0393a.b
        /* JADX INFO: renamed from: a */
        public final int mo342a() {
            return this.f776a;
        }
    }

    /* JADX INFO: renamed from: f0.o$f */
    public static class f extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final String f779e;

        public f(Dialog dialog, String str) {
            this.f779e = str;
            DialogInterfaceOnCancelListenerC0105o.m365r(dialog, "7z".equals(C0015d.m91s(str)) ? 5 : 4);
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: e */
        public final void mo369e() {
            C0064b.f455a = null;
            if (C2JBridge.f1554c) {
                C2JBridge.cSetStatus(5, 15);
            }
            super.mo369e();
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            C0064b.a aVarM239c;
            long j2;
            String str = this.f779e;
            try {
                aVarM239c = C0064b.m239c(str);
            } catch (C0064b.b unused) {
                aVarM239c = null;
            }
            if (aVarM239c == null) {
                return null;
            }
            String[] strArr = new String[5];
            strArr[0] = aVarM239c.f456a;
            int i2 = aVarM239c.f459d;
            if ((i2 & 3) != 0) {
                strArr[1] = (i2 & 1) != 0 ? "+" : "-";
            }
            if (aVarM239c.f457b >= 0) {
                strArr[2] = "" + aVarM239c.f457b;
            }
            long j3 = aVarM239c.f458c;
            if (j3 >= 0) {
                strArr[3] = C0385h.m1078b(j3, 2, null);
                try {
                    j2 = Os.lstat(str).st_size;
                } catch (Exception unused2) {
                    j2 = -1;
                }
                if (j2 > 0 && aVarM239c.f458c > j2) {
                    strArr[4] = ((int) ((j2 * 100) / aVarM239c.f458c)) + "%";
                }
            }
            return new c(1, strArr, new int[]{R.string.FINFO_ARCHIVE_TYPE, R.string.FINFO_ARCHIVE_SOLID, R.string.FINFO_ARCHIVE_FILE_COUNT, R.string.FINFO_ARCHIVE_SIZE, R.string.FINFO_COMPRESSION_RATIO});
        }
    }

    /* JADX INFO: renamed from: f0.o$g */
    public static class g extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final C0129h f780e;

        /* JADX INFO: renamed from: f */
        public final C0129h[] f781f;

        /* JADX INFO: renamed from: g */
        public final String[] f782g;

        public g(C0129h[] c0129hArr, String[] strArr) {
            if (c0129hArr.length == 1) {
                this.f780e = c0129hArr[0];
                this.f781f = null;
            } else {
                this.f780e = null;
                this.f781f = c0129hArr;
            }
            this.f782g = strArr;
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            AbstractC0126e.b bVarM455f;
            String[] strArr = this.f782g;
            C0129h c0129h = this.f780e;
            if (c0129h == null) {
                C0129h[] c0129hArr = this.f781f;
                if (c0129hArr != null && strArr != null && c0129hArr.length != 0 && c0129hArr.length == strArr.length) {
                    InterfaceC0123b[] interfaceC0123bArrM451b = AbstractC0126e.m451b();
                    int length = interfaceC0123bArrM451b.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length) {
                            AbstractC0126e.b bVarMo440g = interfaceC0123bArrM451b[i2].mo440g(c0129hArr, strArr, this);
                            if (bVarMo440g != null) {
                                bVarM455f = bVarMo440g;
                                break;
                            }
                            if (!isCancelled()) {
                                i2++;
                            }
                        }
                        bVarM455f = null;
                        break;
                    }
                } else {
                    bVarM455f = null;
                    break;
                }
            } else {
                bVarM455f = AbstractC0126e.m455f(c0129h, strArr, this);
            }
            return new c(2, bVarM455f != null ? new String[]{C0385h.m1078b(bVarM455f.f997c, 2, null), String.format(Locale.ENGLISH, "%d", Integer.valueOf(bVarM455f.f998d))} : new String[]{"-", "-"}, new int[]{R.id.tvFileSize, R.id.tvFileCount});
        }
    }

    /* JADX INFO: renamed from: f0.o$h */
    public static class h extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public NArc f783e = null;

        /* JADX INFO: renamed from: f */
        public final C0129h f784f;

        /* JADX INFO: renamed from: g */
        public final int f785g;

        public h(Dialog dialog, C0129h c0129h, int i2, String str) {
            this.f784f = c0129h;
            this.f785g = i2;
            DialogInterfaceOnCancelListenerC0105o.m365r(dialog, "epub".equals(str) ? 2 : 3);
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: e */
        public final void mo369e() {
            NArc nArc = this.f783e;
            if (nArc != null) {
                nArc.m808a();
            }
            super.mo369e();
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() throws Throwable {
            InputStream inputStreamMo430w;
            C0129h c0129h = this.f784f;
            String[] strArr = new String[4];
            try {
                if (c0129h.m480g()) {
                    NArc nArcM807l = NArc.m807l(c0129h.f1015c);
                    this.f783e = nArcM807l;
                    if (nArcM807l == null) {
                        if (nArcM807l != null) {
                            nArcM807l.m809b(null);
                            this.f783e = null;
                        }
                        return null;
                    }
                    inputStreamMo430w = this.f783e.m815h(C0015d.m79i0(-1, c0129h.f1016d), c0129h.f1017e);
                } else {
                    inputStreamMo430w = c0129h.m486m() ? AbstractC0127f.m463u(c0129h).mo430w() : new FileInputStream(c0129h.f1015c);
                }
                try {
                    if (inputStreamMo430w == null) {
                        Objects.toString(c0129h);
                        NArc nArc = this.f783e;
                        if (nArc != null) {
                            nArc.m809b(inputStreamMo430w);
                            this.f783e = null;
                        }
                        return null;
                    }
                    if (this.f785g == R.string.FINFO_BOOK_INFO) {
                        C0014c c0014c = new C0014c(1);
                        c0014c.m38b(inputStreamMo430w, C0015d.m91s(c0129h.m478e()), false);
                        strArr[0] = c0014c.m37a(0);
                        strArr[1] = c0014c.m37a(2);
                        strArr[2] = c0014c.m37a(3);
                    } else {
                        C0225c.a aVarM637a = C0225c.m637a(inputStreamMo430w);
                        if (aVarM637a != null) {
                            strArr[0] = aVarM637a.f1270a;
                            strArr[1] = aVarM637a.f1271b;
                            strArr[3] = aVarM637a.f1272c;
                        }
                    }
                    inputStreamMo430w.close();
                    NArc nArc2 = this.f783e;
                    if (nArc2 != null) {
                        nArc2.m809b(null);
                        this.f783e = null;
                    }
                    return new c(1, strArr, new int[]{R.string.FINFO_BOOK_AUTOR, R.string.FINFO_BOOK_TITLE, R.string.FINFO_MEDIA_GENRE, R.string.FINFO_BOOK_PAGES});
                } catch (Exception unused) {
                    NArc nArc3 = this.f783e;
                    if (nArc3 != null) {
                        nArc3.m809b(inputStreamMo430w);
                    }
                    return new c(1, strArr, new int[]{R.string.FINFO_BOOK_AUTOR, R.string.FINFO_BOOK_TITLE, R.string.FINFO_MEDIA_GENRE, R.string.FINFO_BOOK_PAGES});
                } catch (Throwable th) {
                    th = th;
                    NArc nArc4 = this.f783e;
                    if (nArc4 != null) {
                        nArc4.m809b(inputStreamMo430w);
                        this.f783e = null;
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                inputStreamMo430w = null;
            } catch (Throwable th2) {
                th = th2;
                inputStreamMo430w = null;
            }
        }
    }

    /* JADX INFO: renamed from: f0.o$i */
    public static class i extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final C0129h f786e;

        public i(C0129h c0129h) {
            this.f786e = c0129h;
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            String str;
            AbstractC0126e.a aVarM453d = AbstractC0126e.m453d(this.f786e);
            if (aVarM453d == null || (str = aVarM453d.f994c) == null) {
                return null;
            }
            e eVar = new e(5);
            eVar.f778c = str;
            return eVar;
        }
    }

    /* JADX INFO: renamed from: f0.o$j */
    public static class j extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final String f787e;

        public j(String str) {
            this.f787e = str;
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() throws Throwable {
            FileInputStream fileInputStream;
            File file = new File(this.f787e);
            String string = null;
            string = null;
            string = null;
            string = null;
            FileInputStream fileInputStream2 = null;
            if (file.exists()) {
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                        byte[] bArr = new byte[4096];
                        do {
                            int i2 = fileInputStream.read(bArr);
                            if (i2 <= 0 || isCancelled()) {
                                BigInteger bigInteger = new BigInteger(1, messageDigest.digest());
                                StringBuilder sb = new StringBuilder();
                                sb.append(bigInteger.toString(16));
                                while (sb.length() < 32) {
                                    sb.insert(0, "0");
                                }
                                string = sb.toString();
                                break;
                            }
                            messageDigest.update(bArr, 0, i2);
                        } while (!Thread.interrupted());
                    } catch (Exception unused) {
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream2 = fileInputStream;
                        C0181d.m563d(fileInputStream2);
                        throw th;
                    }
                } catch (Exception unused2) {
                    fileInputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                }
                C0181d.m563d(fileInputStream);
            }
            int[] iArr = {R.id.tvFileMD5};
            String[] strArr = new String[1];
            if (string == null) {
                string = "";
            }
            strArr[0] = string;
            return new c(2, strArr, iArr);
        }
    }

    /* JADX INFO: renamed from: f0.o$k */
    public static class k extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final C0129h f788e;

        /* JADX INFO: renamed from: f */
        public final boolean f789f;

        public k(C0129h c0129h, boolean z2) {
            this.f789f = z2;
            this.f788e = c0129h;
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            AbstractC0126e.b bVarM454e;
            boolean z2 = this.f789f;
            C0129h c0129h = this.f788e;
            if (z2 && C0358b.m1038i(c0129h.f1015c)) {
                AbstractC0194a abstractC0194aM589c = AbstractC0194a.m589c(C0358b.f1991m);
                bVarM454e = C0150c.m515l(abstractC0194aM589c, c0129h.toFile());
                abstractC0194aM589c.close();
            } else {
                bVarM454e = null;
            }
            if (bVarM454e == null) {
                bVarM454e = AbstractC0126e.m454e(c0129h, this);
            }
            return new d(bVarM454e, c0129h);
        }
    }

    /* JADX INFO: renamed from: f0.o$l */
    public static class l extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final C0129h f790e;

        /* JADX INFO: renamed from: f */
        public final long f791f;

        /* JADX INFO: renamed from: g */
        public final int f792g;

        public l(Dialog dialog, C0129h c0129h, long j2, int i2) {
            this.f790e = c0129h;
            this.f791f = j2;
            this.f792g = i2;
            DialogInterfaceOnCancelListenerC0105o.m365r(dialog, i2 == 14 ? 3 : i2 == 9 ? 1 : 4);
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            C0227e.a aVarM645f = C0227e.m645f(this.f790e, this.f791f, this.f792g, 2, 0, null);
            if (aVarM645f == null) {
                return null;
            }
            return new c(1, aVarM645f.f1277c, aVarM645f.f1276b);
        }
    }

    /* JADX INFO: renamed from: f0.o$m */
    public static class m extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final C0129h f793e;

        /* JADX INFO: renamed from: f */
        public final boolean f794f;

        public m(C0129h c0129h, boolean z2) {
            this.f793e = c0129h;
            this.f794f = z2;
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            e eVar = new e(3);
            try {
                boolean z2 = this.f794f;
                C0129h c0129h = this.f793e;
                if (z2) {
                    if (AbstractC0127f.m463u(c0129h).mo416b(".nomedia") != null) {
                        eVar.f777b = 1;
                    }
                } else if (AbstractC0127f.m463u(new C0129h(".nomedia", c0129h)).mo417c()) {
                    eVar.f777b = -1;
                }
            } catch (Exception unused) {
            }
            return eVar;
        }
    }

    /* JADX INFO: renamed from: f0.o$n */
    public static class n extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final C0129h f795e;

        public n(C0129h c0129h) {
            this.f795e = c0129h;
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            e eVar = new e(4);
            File file = this.f795e.toFile();
            if (file != null) {
                eVar.f777b = new File(file, ".nomedia").exists() ? 1 : 0;
            } else {
                eVar.f777b = 2;
            }
            return eVar;
        }
    }

    public DialogInterfaceOnCancelListenerC0105o(C0307d c0307d, Context context, C0129h c0129h, String str, boolean z2) {
        this.f742f = c0307d;
        this.f764k = new C0129h[]{c0129h};
        this.f765l = new String[]{str};
        this.f766m = z2;
        this.f768o = 0;
        this.f767n = 0;
        m366s(context);
        m355a();
    }

    /* JADX INFO: renamed from: r */
    public static void m365r(Dialog dialog, int i2) {
        if (dialog == null || !C0358b.m1041l(32)) {
            return;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            try {
                dialog.findViewById(f757p[i3]).setVisibility(4);
            } catch (Exception unused) {
                return;
            }
        }
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        C0393a c0393a = this.f763j;
        c0393a.m1093d(this);
        c0393a.m1095f(Integer.MAX_VALUE, 1, -1);
        AlertDialog alertDialog = this.f760g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f760g = null;
        }
        this.f762i = null;
        m357f();
    }

    /* JADX WARN: Code duplicated, block: B:136:0x025d  */
    /* JADX WARN: Code duplicated, block: B:201:0x0427  */
    @Override // p053v0.C0393a.c
    /* JADX INFO: renamed from: g */
    public final void mo341g(C0393a.b bVar) {
        int i2;
        int i3;
        String str;
        int i4;
        AlertDialog alertDialog;
        AlertDialog alertDialog2;
        int iMo342a = bVar.mo342a();
        if (iMo342a == 0) {
            d dVar = (d) bVar;
            AlertDialog alertDialog3 = this.f760g;
            if (alertDialog3 == null) {
                return;
            }
            TextView textView = (TextView) alertDialog3.findViewById(R.id.tvFileType);
            TextView textView2 = (TextView) this.f760g.findViewById(R.id.tvFileSize);
            TextView textView3 = (TextView) this.f760g.findViewById(R.id.tvFileLastMod);
            TextView textView4 = (TextView) this.f760g.findViewById(R.id.tvFileMD5);
            View viewFindViewById = this.f760g.findViewById(R.id.trMD5);
            if (textView == null || textView2 == null || textView3 == null || textView4 == null || viewFindViewById == null) {
                return;
            }
            AbstractC0126e.b bVar2 = dVar.f775b;
            if (bVar2 == null) {
                if (this.f766m) {
                    textView.setText(R.string.FINFO_TYPE_FOLDER);
                } else {
                    textView.setText("-");
                }
                textView2.setText("-");
                textView3.setText("-");
                return;
            }
            boolean z2 = bVar2.f995a;
            C0393a c0393a = this.f763j;
            if (!z2 || bVar2.f999e) {
                if (bVar2.f999e) {
                    textView.setText(this.f760g.getContext().getString(R.string.FINFO_TYPE_LINK));
                    String str2 = bVar2.f1000f;
                    if (str2 != null && !str2.isEmpty()) {
                        View viewFindViewById2 = this.f760g.findViewById(R.id.trLinkTo);
                        if (viewFindViewById2 != null) {
                            viewFindViewById2.setVisibility(0);
                        }
                        TextView textView5 = (TextView) this.f760g.findViewById(R.id.tvLinkTo);
                        if (textView5 != null) {
                            textView5.setText(bVar2.f1000f);
                        }
                    }
                } else {
                    textView.setText(R.string.FINFO_TYPE_FOLDER);
                }
                long j2 = bVar2.f997c;
                if (j2 > 0) {
                    textView2.setText(C0385h.m1078b(j2, 2, null));
                } else if (bVar2.f999e) {
                    textView2.setText("-");
                } else {
                    textView2.setText("...");
                    View viewFindViewById3 = this.f760g.findViewById(R.id.trFileCount);
                    if (viewFindViewById3 != null) {
                        viewFindViewById3.setVisibility(0);
                    }
                    new g(this.f764k, this.f765l).m1098g(null, c0393a);
                }
                if (bVar2.f998d > 0) {
                    View viewFindViewById4 = this.f760g.findViewById(R.id.trFileCount);
                    TextView textView6 = (TextView) this.f760g.findViewById(R.id.tvFileCount);
                    if (textView6 != null && viewFindViewById4 != null) {
                        viewFindViewById4.setVisibility(0);
                        textView6.setText(String.format(Locale.ENGLISH, "%d", Integer.valueOf(bVar2.f998d)));
                    }
                }
                textView4.setVisibility(8);
                viewFindViewById.setVisibility(8);
            } else {
                C0129h c0129h = dVar.f774a;
                String strM478e = c0129h.m478e();
                String strM91s = C0015d.m91s(strM478e);
                String strM96x = C0015d.m96x(strM91s);
                textView.setText(strM96x);
                textView2.setText(C0385h.m1078b(bVar2.f997c, 2, null));
                boolean z3 = c0129h.m483j() && !c0129h.m485l();
                if (z3 || c0129h.m480g() || c0129h.m486m()) {
                    if (z3) {
                        textView4.setText("...");
                        new j(c0129h.m491r()).m1098g(null, c0393a);
                    }
                    if (strM91s.equals("apk")) {
                        i4 = R.string.FINFO_APK_INFO;
                    } else if (strM96x.startsWith("image/")) {
                        i4 = R.string.FINFO_IMAGE_INFO;
                    } else if (strM91s.equals("fb2") || strM91s.equals("epub")) {
                        i4 = R.string.FINFO_BOOK_INFO;
                    } else if (strM91s.equals("docx") || strM91s.equals("odt") || strM91s.equals("xlsx") || strM91s.equals("ods")) {
                        i4 = R.string.FINFO_DOCUMENT_INFO;
                    } else if (!z3) {
                        i4 = 0;
                    } else if (strM96x.startsWith("video/")) {
                        i4 = R.string.FINFO_VIDEO_INFO;
                    } else if (strM96x.startsWith("audio/")) {
                        i4 = R.string.FINFO_AUDIO_INFO;
                    } else if (C0015d.m46H(C0015d.m43E(strM478e))) {
                        i4 = R.string.FINFO_ARCHIVE_INFO;
                    } else {
                        i4 = 0;
                    }
                    if (i4 != 0) {
                        TableLayout tableLayout = (TableLayout) this.f760g.findViewById(R.id.tlMediaInfo);
                        if (tableLayout != null) {
                            tableLayout.setVisibility(0);
                        }
                        TextView textView7 = (TextView) this.f760g.findViewById(R.id.tvMediaHeader);
                        if (textView7 != null) {
                            textView7.setText(i4);
                        }
                    }
                    this.f767n = i4;
                    if (i4 == R.string.FINFO_APK_INFO) {
                        new l(this.f760g, c0129h, bVar2.f997c, 6).m1098g(null, c0393a);
                    } else if (i4 == R.string.FINFO_VIDEO_INFO) {
                        new l(this.f760g, c0129h, bVar2.f997c, 14).m1098g(null, c0393a);
                    } else if (i4 == R.string.FINFO_AUDIO_INFO) {
                        new l(this.f760g, c0129h, bVar2.f997c, 7).m1098g(null, c0393a);
                    } else if (i4 == R.string.FINFO_IMAGE_INFO) {
                        new l(this.f760g, c0129h, bVar2.f997c, 9).m1098g(null, c0393a);
                    } else if (i4 == R.string.FINFO_ARCHIVE_INFO) {
                        new f(this.f760g, c0129h.m491r()).m1098g(null, c0393a);
                    } else if (i4 == R.string.FINFO_BOOK_INFO || i4 == R.string.FINFO_DOCUMENT_INFO) {
                        new h(this.f760g, c0129h, i4, strM91s).m1098g(null, c0393a);
                    }
                }
            }
            Context context = this.f760g.getContext();
            StringBuilder sb = new StringBuilder();
            sb.append(DateFormat.getDateInstance(3).format(Long.valueOf(bVar2.f996b)));
            sb.append(" ");
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            Configuration configuration = context.getResources().getConfiguration();
            if (displayMetrics.densityDpi >= 240) {
                i2 = 2;
                sb.append(DateFormat.getTimeInstance(i2).format(Long.valueOf(bVar2.f996b)));
            } else if (configuration.orientation == 2) {
                i2 = 2;
                sb.append(DateFormat.getTimeInstance(i2).format(Long.valueOf(bVar2.f996b)));
            } else if ((configuration.screenLayout & 15) >= 3) {
                i2 = 2;
                sb.append(DateFormat.getTimeInstance(i2).format(Long.valueOf(bVar2.f996b)));
            } else {
                sb.append(DateFormat.getTimeInstance(3).format(Long.valueOf(bVar2.f996b)));
            }
            textView3.setText(sb.toString());
            String str3 = bVar2.f1001g;
            if (str3 != null && !str3.isEmpty() && (str = bVar2.f1002h) != null && !str.isEmpty()) {
                View viewFindViewById5 = this.f760g.findViewById(R.id.trUserGroup);
                TextView textView8 = (TextView) this.f760g.findViewById(R.id.tvUserGroup);
                if (viewFindViewById5 != null && textView8 != null) {
                    viewFindViewById5.setVisibility(0);
                    textView8.setText(bVar2.f1002h + "/" + bVar2.f1001g);
                }
            }
            int i5 = bVar2.f1003i;
            if (i5 >= 0) {
                StringBuilder sb2 = new StringBuilder();
                int i6 = i5;
                for (int i7 = 0; i7 < 3; i7++) {
                    int i8 = i6 % 10;
                    i6 /= 10;
                    if ((i8 & 1) == 1) {
                        i3 = 0;
                        sb2.insert(0, 'x');
                    } else {
                        i3 = 0;
                        sb2.insert(0, '-');
                    }
                    if ((i8 & 2) == 2) {
                        sb2.insert(i3, 'w');
                    } else {
                        sb2.insert(i3, '-');
                    }
                    if ((i8 & 4) == 4) {
                        sb2.insert(i3, 'r');
                    } else {
                        sb2.insert(i3, '-');
                    }
                    if (i7 != 2) {
                        sb2.insert(i3, ' ');
                    }
                }
                sb2.append(" (");
                sb2.append(bVar2.f1003i);
                sb2.append(')');
                View viewFindViewById6 = this.f760g.findViewById(R.id.trPermissions);
                TextView textView9 = (TextView) this.f760g.findViewById(R.id.tvPermissions);
                if (viewFindViewById6 == null || textView9 == null) {
                    return;
                }
                viewFindViewById6.setVisibility(0);
                textView9.setText(sb2.toString());
                return;
            }
            return;
        }
        if (iMo342a == 1) {
            c cVar = (c) bVar;
            int[] iArr = cVar.f772b;
            if (this.f760g == null) {
                return;
            }
            int i9 = 0;
            int i10 = 0;
            while (true) {
                String[] strArr = cVar.f773c;
                try {
                    if (i9 >= iArr.length) {
                        break;
                    }
                    String str4 = strArr[i9];
                    if (str4 != null && !str4.isEmpty()) {
                        TextView textView10 = (TextView) this.f760g.findViewById(f758q[i10]);
                        if (textView10 != null) {
                            textView10.setText(this.f760g.getContext().getString(iArr[i9]));
                        }
                        TextView textView11 = (TextView) this.f760g.findViewById(f759r[i10]);
                        if (textView11 != null) {
                            textView11.setText(strArr[i9]);
                        }
                        i10++;
                    }
                    i9++;
                } catch (Exception unused) {
                    return;
                }
            }
            for (int i11 = 0; i11 < i10; i11++) {
                View viewFindViewById7 = this.f760g.findViewById(f757p[i11]);
                if (C0358b.m1041l(32)) {
                    C0442f.m1191b(viewFindViewById7);
                } else {
                    viewFindViewById7.setVisibility(0);
                }
            }
            return;
        }
        if (iMo342a != 2) {
            if (iMo342a == 3) {
                int i12 = ((e) bVar).f777b;
                this.f768o = i12;
                if (i12 != 0 || (alertDialog = this.f760g) == null) {
                    return;
                }
                CheckBox checkBox = (CheckBox) alertDialog.findViewById(R.id.cbNomedia);
                if (checkBox.isEnabled()) {
                    checkBox.setChecked(!checkBox.isChecked());
                }
                checkBox.setEnabled(false);
                return;
            }
            if (iMo342a != 4) {
                if (iMo342a == 5 && (alertDialog2 = this.f760g) != null) {
                    ((TextView) alertDialog2.findViewById(R.id.tvFSType)).setText(((e) bVar).f778c);
                    return;
                }
                return;
            }
            AlertDialog alertDialog4 = this.f760g;
            if (alertDialog4 != null) {
                int i13 = ((e) bVar).f777b;
                CheckBox checkBox2 = (CheckBox) alertDialog4.findViewById(R.id.cbNomedia);
                checkBox2.setOnCheckedChangeListener(null);
                checkBox2.setChecked(i13 == 1);
                checkBox2.setEnabled(i13 != 2);
                checkBox2.setOnCheckedChangeListener(this);
                return;
            }
            return;
        }
        c cVar2 = (c) bVar;
        if (this.f760g == null) {
            return;
        }
        boolean zM1041l = C0358b.m1041l(32);
        int i14 = 0;
        while (true) {
            int[] iArr2 = cVar2.f772b;
            if (i14 >= iArr2.length) {
                return;
            }
            TextView textView12 = (TextView) this.f760g.findViewById(iArr2[i14]);
            if (textView12 != null) {
                textView12.setText(cVar2.f773c[i14]);
                if (zM1041l) {
                    C0442f.m1191b(textView12);
                } else {
                    textView12.setVisibility(0);
                }
            }
            i14++;
        }
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 6;
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: m */
    public final void mo346m(Context context, Configuration configuration) {
        if (this.f760g == null) {
            return;
        }
        int i2 = (configuration.orientation == 2 || (configuration.screenLayout & 15) >= 3) ? R.layout.dlg_info_land : R.layout.dlg_info;
        if (this.f761h == i2) {
            return;
        }
        this.f761h = i2;
        C0393a c0393a = this.f763j;
        c0393a.m1093d(this);
        View viewInflate = LayoutInflater.from(context).inflate(this.f761h, (ViewGroup) null, false);
        AbstractC0099i.m352l(this.f762i, viewInflate);
        viewInflate.findViewById(R.id.trMD5).setVisibility(this.f762i.findViewById(R.id.trMD5).getVisibility());
        ((CheckBox) viewInflate.findViewById(R.id.cbNomedia)).setOnCheckedChangeListener(this);
        this.f762i.removeAllViews();
        this.f762i.addView(viewInflate);
        m367t(configuration);
        c0393a.m1090a(this, null);
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        AbstractC0099i.b bVar = this.f737a;
        if (bVar != null) {
            bVar.mo246a(this);
        }
        C0393a c0393a = this.f763j;
        c0393a.m1093d(this);
        c0393a.m1095f(Integer.MAX_VALUE, 1, -1);
        this.f760g = null;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        C0129h c0129h;
        if (compoundButton.getId() == R.id.cbNomedia) {
            C0129h[] c0129hArr = this.f764k;
            if (c0129hArr.length == 1 && (c0129h = c0129hArr[0]) != null && c0129h.m483j()) {
                String[] strArr = this.f765l;
                new m((strArr.length == 0 || C0385h.m1081e(strArr[0])) ? c0129hArr[0] : new C0129h(strArr[0], c0129hArr[0]), z2).m1098g(null, this.f763j);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f760g == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        TextView textView = (TextView) this.f760g.findViewById(R.id.tvFileName);
        if (textView != null) {
            sb.append(textView.getText().toString());
            sb.append('\n');
        }
        View viewFindViewById = this.f760g.findViewById(R.id.trFileCount);
        TextView textView2 = (TextView) this.f760g.findViewById(R.id.tvFileCount);
        if (textView2 != null && viewFindViewById != null && viewFindViewById.getVisibility() == 0) {
            sb.append(this.f760g.getContext().getString(R.string.FINFO_ARCHIVE_FILE_COUNT));
            sb.append(' ');
            sb.append(textView2.getText().toString());
            sb.append('\n');
        }
        TextView textView3 = (TextView) this.f760g.findViewById(R.id.tvFileSize);
        if (textView3 != null) {
            sb.append(this.f760g.getContext().getString(R.string.FINFO_SIZE));
            sb.append(' ');
            sb.append(textView3.getText().toString());
            sb.append('\n');
        }
        TextView textView4 = (TextView) this.f760g.findViewById(R.id.tvFileMD5);
        if (textView4 != null && textView4.getVisibility() == 0) {
            sb.append(this.f760g.getContext().getString(R.string.FINFO_MD5));
            sb.append(' ');
            sb.append(textView4.getText().toString());
            sb.append('\n');
        }
        if (this.f767n != 0) {
            for (int i2 = 0; i2 < 5; i2++) {
                View viewFindViewById2 = this.f760g.findViewById(f757p[i2]);
                if (viewFindViewById2 != null && viewFindViewById2.getVisibility() == 0) {
                    TextView textView5 = (TextView) this.f760g.findViewById(f758q[i2]);
                    if (textView5 != null) {
                        sb.append(textView5.getText().toString());
                        sb.append(' ');
                    }
                    TextView textView6 = (TextView) this.f760g.findViewById(f759r[i2]);
                    if (textView6 != null) {
                        sb.append(textView6.getText().toString());
                        sb.append('\n');
                    }
                }
            }
        }
        C0378a.m1053a(this.f760g.getContext(), "ZA File", sb.toString());
    }

    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX INFO: renamed from: s */
    public final void m366s(Context context) {
        ?? r1;
        boolean z2;
        String str;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.FINFO_TTL_FILE_INFO);
        Configuration configuration = context.getResources().getConfiguration();
        this.f761h = (configuration.orientation == 2 || (configuration.screenLayout & 15) >= 3) ? R.layout.dlg_info_land : R.layout.dlg_info;
        boolean z3 = false;
        View viewInflate = LayoutInflater.from(context).inflate(this.f761h, (ViewGroup) null, false);
        ScrollView scrollView = new ScrollView(context);
        this.f762i = scrollView;
        scrollView.addView(viewInflate);
        builder.setView(this.f762i);
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNeutralButton(R.string.BTN_COPY, this);
        builder.setOnCancelListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f760g = alertDialogCreate;
        alertDialogCreate.setOnShowListener(new a());
        TextView textView = (TextView) viewInflate.findViewById(R.id.tvFileName);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tvFileType);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.tvFileLastMod);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.tvFSPath);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.tvFSType);
        TextView textView6 = (TextView) viewInflate.findViewById(R.id.tvFileMD5);
        View viewFindViewById = viewInflate.findViewById(R.id.trMD5);
        String[] strArr = this.f765l;
        int length = strArr.length;
        C0393a c0393a = this.f763j;
        C0129h[] c0129hArr = this.f764k;
        if (length == 1) {
            C0129h c0129h = C0385h.m1081e(strArr[0]) ? c0129hArr[0] : new C0129h(strArr[0], c0129hArr[0]);
            textView4.setText("-");
            textView5.setText("-");
            if (c0129h.m483j()) {
                String strM491r = c0129hArr[0].m491r();
                boolean z4 = C0415f.m1134b(c0129hArr[0]) == 2;
                C0410a.a aVarM1103b = C0410a.m1103b(strM491r, false);
                if (aVarM1103b != null) {
                    textView4.setText(aVarM1103b.f2144b);
                    textView5.setText(aVarM1103b.f2145c);
                }
                if (this.f766m && !z4 && strM491r.startsWith("/storage")) {
                    CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.cbNomedia);
                    checkBox.setEnabled(false);
                    checkBox.setVisibility(0);
                    checkBox.setOnCheckedChangeListener(this);
                    new n(c0129h).m1098g(null, c0393a);
                }
                z3 = z4;
            } else {
                if (c0129h.m480g()) {
                    textView4.setText(c0129h.f1015c);
                } else {
                    textView4.setText("-");
                }
                new i(c0129h).m1098g(null, c0393a);
                textView5.setText("-");
            }
            if (!c0129h.m483j() || c0129h.m485l()) {
                textView6.setVisibility(8);
                viewFindViewById.setVisibility(8);
            }
            textView.setText(c0129h.m478e());
            new k(c0129h, z3).m1098g(null, c0393a);
        } else {
            textView.setText(context.getResources().getQuantityString(R.plurals.FINFO_FILE_COUNT, strArr.length, Integer.valueOf(strArr.length)));
            textView2.setText(context.getString(R.string.FINFO_TYPE_FILE_GROUP));
            textView3.setText("-");
            textView4.setText("-");
            textView5.setText("-");
            int i2 = 1;
            while (true) {
                if (i2 >= c0129hArr.length) {
                    r1 = 0;
                    z2 = true;
                    break;
                } else {
                    r1 = 0;
                    if (!c0129hArr[0].equals(c0129hArr[i2])) {
                        z2 = false;
                        break;
                    }
                    i2++;
                }
            }
            if (z2) {
                if (c0129hArr[r1].m483j()) {
                    C0410a.a aVarM1103b2 = C0410a.m1103b(c0129hArr[r1].m491r(), r1);
                    if (aVarM1103b2 != null) {
                        textView4.setText(aVarM1103b2.f2144b);
                        textView5.setText(aVarM1103b2.f2145c);
                    }
                } else {
                    if (c0129hArr[r1].m480g()) {
                        textView4.setText(c0129hArr[r1].f1015c);
                    } else {
                        textView4.setText("-");
                    }
                    AbstractC0126e.a aVarM453d = AbstractC0126e.m453d(c0129hArr[r1]);
                    if (aVarM453d == null || (str = aVarM453d.f994c) == null) {
                        textView5.setText("-");
                    } else {
                        textView5.setText(str);
                    }
                }
            }
            textView6.setVisibility(8);
            viewFindViewById.setVisibility(8);
            viewInflate.findViewById(R.id.trFileCount).setVisibility(0);
            new g(c0129hArr, strArr).m1098g(null, c0393a);
        }
        textView.setOnLongClickListener(new b());
    }

    /* JADX INFO: renamed from: t */
    public final void m367t(Configuration configuration) {
        AlertDialog alertDialog;
        if ((configuration.screenLayout & 15) >= 3 || (alertDialog = this.f760g) == null || alertDialog.getWindow() == null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.copyFrom(this.f760g.getWindow().getAttributes());
        layoutParams.width = configuration.orientation == 1 ? -1 : -2;
        this.f760g.getWindow().setAttributes(layoutParams);
    }

    /* JADX INFO: renamed from: u */
    public final void m368u() {
        AlertDialog alertDialog = this.f760g;
        if (alertDialog == null || !AbstractC0099i.m354q(alertDialog)) {
            return;
        }
        this.f763j.m1090a(this, null);
    }

    public DialogInterfaceOnCancelListenerC0105o(C0307d c0307d, Context context, C0129h c0129h, String[] strArr, boolean z2) {
        this.f742f = c0307d;
        this.f764k = new C0129h[]{c0129h};
        this.f765l = strArr;
        this.f766m = z2;
        this.f768o = 0;
        this.f767n = 0;
        m366s(context);
        m355a();
    }

    public DialogInterfaceOnCancelListenerC0105o(C0307d c0307d, Context context, C0129h[] c0129hArr, String[] strArr, boolean z2) {
        this.f742f = c0307d;
        this.f764k = c0129hArr;
        this.f765l = strArr;
        this.f766m = z2;
        this.f768o = 0;
        this.f767n = 0;
        m366s(context);
        m355a();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        AbstractC0099i.b bVar;
        AbstractC0099i.c cVar;
        C0129h c0129h;
        if (this.f768o != 0) {
            String[] strArr = this.f765l;
            int length = strArr.length;
            C0129h[] c0129hArr = this.f764k;
            if (length != 0 && !C0385h.m1081e(strArr[0])) {
                c0129h = new C0129h(strArr[0], c0129hArr[0]);
            } else {
                c0129h = c0129hArr[0];
            }
            if (c0129h != null) {
                boolean z2 = this.f768o == 1;
                if (C0228f.m651b(c0129h)) {
                    try {
                        String strM1061a = c0129h.f1015c;
                        int i3 = Build.VERSION.SDK_INT;
                        if (i3 < 29) {
                            strM1061a = C0380c.m1061a(strM1061a);
                        }
                        if (z2) {
                            Executors.newSingleThreadExecutor().execute(new C0228f.b(strM1061a));
                        } else {
                            File file = new File(strM1061a);
                            if (i3 < 29) {
                                new C0228f.a(file);
                            } else {
                                Executors.newSingleThreadExecutor().execute(new C0228f.d(file));
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        if (i2 == -1 && (cVar = this.f738b) != null) {
            cVar.mo245b(this);
        }
        if (i2 == -2 && (bVar = this.f737a) != null) {
            bVar.mo246a(this);
        }
        mo337d();
    }
}
