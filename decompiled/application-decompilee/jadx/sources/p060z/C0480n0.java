package p060z;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import java.io.File;
import p004b.C0015d;
import p020g0.C0129h;
import p033m0.C0185h;
import p047s0.C0358b;
import p051u0.C0383f;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p055w0.C0415f;
import ru.zdevs.zarchiver.p044io.ZAIO;

/* JADX INFO: renamed from: z.n0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0480n0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final int f2327e;

    /* JADX INFO: renamed from: f */
    public final Intent f2328f;

    /* JADX INFO: renamed from: g */
    public final boolean f2329g;

    /* JADX INFO: renamed from: h */
    public final boolean f2330h;

    /* JADX INFO: renamed from: i */
    public final Uri f2331i;

    public C0480n0(int i2, Intent intent, Uri uri, boolean z2, boolean z3) {
        this.f2327e = i2;
        this.f2328f = intent;
        this.f2331i = uri;
        this.f2329g = z2;
        this.f2330h = z3;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0060  */
    /* JADX WARN: Code duplicated, block: B:29:0x0066  */
    /* JADX WARN: Code duplicated, block: B:31:0x006e  */
    /* JADX WARN: Code duplicated, block: B:33:0x0079  */
    /* JADX WARN: Code duplicated, block: B:38:0x008e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0090  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a7  */
    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        String strM1075f;
        String[] strArrM1133a;
        int i2;
        int i3 = this.f2327e;
        C0497w c0497w = new C0497w(i3, this.f2329g);
        Intent intent = this.f2328f;
        if (intent.getCategories() == null ? false : intent.getCategories().contains("ZA_SHORTCUT")) {
            String stringExtra = intent.getStringExtra("shrtct");
            c0497w.f2380b = stringExtra != null ? new C0129h(stringExtra) : null;
            return c0497w;
        }
        Uri uri = this.f2331i;
        if (uri != null) {
            boolean zEquals = "file".equals(uri.getScheme());
            if (zEquals) {
                strM1075f = C0383f.m1075f(null, uri);
                if (strM1075f == null) {
                    strM1075f = intent.getStringExtra("AbsolutePath");
                }
                if (strM1075f != null) {
                    if (!new File(strM1075f).exists()) {
                        strArrM1133a = C0415f.m1133a(strM1075f);
                        if (strArrM1133a == null && C0185h.m580b(strArrM1133a)) {
                            strM1075f = C0185h.m579a(strM1075f, strArrM1133a[2]);
                        } else {
                            strM1075f = null;
                        }
                    } else if (!zEquals) {
                        if (Build.VERSION.SDK_INT >= 30 && C0415f.m1137e(strM1075f)) {
                            strM1075f = null;
                        }
                        if (strM1075f != null && strM1075f.startsWith("/mnt/appfuse")) {
                            strM1075f = null;
                        }
                    }
                }
            } else {
                Uri data = intent.getData();
                if ((data == null || data.getAuthority() == null || !data.getAuthority().endsWith("archive")) ? false : true) {
                    strM1075f = null;
                } else {
                    strM1075f = C0383f.m1075f(null, uri);
                    if (strM1075f == null) {
                        strM1075f = intent.getStringExtra("AbsolutePath");
                    }
                    if (strM1075f != null) {
                        if (!new File(strM1075f).exists()) {
                            strArrM1133a = C0415f.m1133a(strM1075f);
                            if (strArrM1133a == null) {
                                strM1075f = null;
                            } else {
                                strM1075f = null;
                            }
                        } else if (!zEquals) {
                            if (Build.VERSION.SDK_INT >= 30) {
                                strM1075f = null;
                            }
                            if (strM1075f != null) {
                                strM1075f = null;
                            }
                        }
                    }
                }
            }
            if (strM1075f != null) {
                File file = new File(strM1075f);
                if (file.isDirectory()) {
                    c0497w.f2380b = new C0129h("file", file.getAbsolutePath());
                } else if (!intent.getBooleanExtra("isZA", false) && (i2 = C0358b.f1982d & 3145728) != 0) {
                    c0497w.f2382d = C0015d.m97y(strM1075f);
                    c0497w.f2383e = i2 == 2097152;
                    c0497w.f2380b = new C0129h("file", C0015d.m39A(strM1075f));
                }
                if (c0497w.f2380b == null) {
                    c0497w.f2380b = new C0129h("arch", strM1075f.replace("//", "/"), "/");
                }
            } else {
                String strM872a = ZAIO.m872a(uri);
                c0497w.f2380b = strM872a == null ? null : new C0129h("arch", strM872a, "/");
            }
        }
        if (c0497w.f2380b != null) {
            return c0497w;
        }
        if (!this.f2330h) {
            return null;
        }
        c0497w.f2380b = new C0129h(C0358b.f1980b[i3]);
        return c0497w;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 12;
    }
}
