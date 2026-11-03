package p020g0;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.io.OutputStream;
import p004b.C0015d;
import p014e0.C0079a;
import p025i0.C0151d;
import p027j0.C0159b;
import p031l0.C0173b;
import p031l0.C0174c;
import p033m0.C0181d;
import ru.zdevs.zarchiver.p044io.SAF;

/* JADX INFO: renamed from: g0.f */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0127f {

    /* JADX INFO: renamed from: a */
    public final C0129h f1004a;

    public AbstractC0127f(C0129h c0129h) {
        this.f1004a = c0129h;
    }

    /* JADX INFO: renamed from: e */
    public static boolean m462e(C0129h c0129h) {
        if (c0129h.m483j()) {
            return C0181d.m569j(c0129h.f1015c);
        }
        if (!c0129h.m486m()) {
            return c0129h.m480g() && C0079a.m266m().m278n(c0129h.f1015c) && C0079a.m266m().m271e(c0129h.f1017e, null) != null;
        }
        Uri uriM861l = SAF.m861l(0, c0129h.f1015c);
        if (uriM861l == null) {
            return false;
        }
        return SAF.m865p(uriM861l);
    }

    /* JADX INFO: renamed from: u */
    public static AbstractC0127f m463u(C0129h c0129h) {
        if (c0129h.m483j()) {
            return new C0151d(c0129h);
        }
        if (c0129h.m486m()) {
            return new C0173b(c0129h);
        }
        if (c0129h.m484k()) {
            return new C0159b(c0129h);
        }
        return c0129h.m482i() ? new C0174c(c0129h) : new C0122a();
    }

    /* JADX INFO: renamed from: a */
    public boolean mo464a(C0129h c0129h) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: renamed from: b */
    public abstract C0129h mo416b(String str);

    /* JADX INFO: renamed from: c */
    public abstract boolean mo417c();

    /* JADX INFO: renamed from: d */
    public abstract boolean mo418d();

    public final boolean equals(Object obj) {
        if (!(obj instanceof AbstractC0127f)) {
            return false;
        }
        try {
            return this.f1004a.equals(((AbstractC0127f) obj).f1004a);
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: f */
    public abstract boolean mo419f(String str);

    /* JADX INFO: renamed from: g */
    public String mo465g() {
        return this.f1004a.f1015c;
    }

    /* JADX INFO: renamed from: h */
    public String mo466h() {
        return null;
    }

    /* JADX INFO: renamed from: i */
    public final String m467i() {
        return this.f1004a.m478e();
    }

    /* JADX INFO: renamed from: j */
    public final C0129h m468j() {
        return new C0129h(C0015d.m39A(this.f1004a.f1015c));
    }

    /* JADX INFO: renamed from: k */
    public abstract boolean mo420k();

    /* JADX INFO: renamed from: l */
    public abstract boolean mo421l();

    /* JADX INFO: renamed from: m */
    public abstract boolean mo422m();

    /* JADX INFO: renamed from: n */
    public abstract long mo423n();

    /* JADX INFO: renamed from: o */
    public abstract long mo424o();

    /* JADX INFO: renamed from: p */
    public abstract AbstractC0127f[] mo425p();

    /* JADX INFO: renamed from: q */
    public abstract boolean mo426q(String str);

    /* JADX INFO: renamed from: r */
    public void mo469r(String str) throws Exception {
        if (mo426q(str)) {
            return;
        }
        String strMo466h = mo466h();
        if (strMo466h == null) {
            strMo466h = "Failed to create";
        }
        throw new Exception(C0015d.m78i(this.f1004a.f1015c, str) + ": " + strMo466h);
    }

    /* JADX INFO: renamed from: s */
    public abstract boolean mo427s(String str);

    /* JADX INFO: renamed from: t */
    public abstract boolean mo428t(C0129h c0129h);

    /* JADX INFO: renamed from: v */
    public abstract ParcelFileDescriptor mo429v(int i2);

    /* JADX INFO: renamed from: w */
    public abstract InputStream mo430w();

    /* JADX INFO: renamed from: x */
    public abstract OutputStream mo431x(long j2);

    /* JADX INFO: renamed from: y */
    public abstract boolean mo432y(String str);

    /* JADX INFO: renamed from: z */
    public abstract boolean mo433z(long j2, OutputStream outputStream);
}
