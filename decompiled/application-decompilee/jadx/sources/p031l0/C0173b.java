package p031l0;

import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.system.Os;
import android.system.OsConstants;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.InvalidPropertiesFormatException;
import p004b.C0015d;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p033m0.C0183f;
import p055w0.C0412c;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.p044io.SAF;

/* JADX INFO: renamed from: l0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0173b extends AbstractC0127f {

    /* JADX INFO: renamed from: b */
    public SAF.C0309a f1118b;

    /* JADX INFO: renamed from: c */
    public boolean f1119c;

    /* JADX INFO: renamed from: d */
    public String f1120d;

    public C0173b(C0129h c0129h, SAF.C0309a c0309a) {
        super(c0129h);
        this.f1118b = c0309a;
        this.f1119c = false;
        this.f1120d = null;
    }

    /* JADX INFO: renamed from: A */
    public final void m551A() {
        if (this.f1119c && this.f1118b == null) {
            this.f1118b = SAF.m854e(this.f1004a.f1015c);
            this.f1119c = false;
        }
    }

    /* JADX INFO: renamed from: B */
    public final boolean m552B(int i2) {
        if (i2 != (-OsConstants.EPERM)) {
            this.f1120d = Os.strerror(-i2);
        } else {
            this.f1120d = null;
        }
        return i2 == 0;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: b */
    public final C0129h mo416b(String str) throws FileNotFoundException, InvalidPropertiesFormatException {
        C0129h c0129h = new C0129h("saf", this.f1004a.f1015c + '/' + str);
        SAF.m860k(2, c0129h.f1015c);
        return c0129h;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: c */
    public final boolean mo417c() throws FileNotFoundException {
        Uri uri;
        SAF.C0309a c0309a = this.f1118b;
        boolean zDeleteDocument = false;
        if (c0309a == null || (uri = c0309a.f1642e) == null) {
            if (SAF.remove(this.f1004a.f1015c) == 0) {
                zDeleteDocument = true;
            }
        } else if (!C0412c.f2151c && uri != null) {
            zDeleteDocument = DocumentsContract.deleteDocument(ZApp.m718a(), uri);
        }
        if (zDeleteDocument) {
            this.f1118b = null;
        }
        return zDeleteDocument;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: d */
    public final boolean mo418d() {
        m551A();
        return this.f1118b != null;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: f */
    public final boolean mo419f(String str) {
        Uri uriM861l;
        m551A();
        SAF.C0309a c0309a = this.f1118b;
        if (c0309a == null || !c0309a.f1639b || (uriM861l = SAF.m861l(0, C0015d.m78i(this.f1004a.f1015c, str))) == null) {
            return false;
        }
        return SAF.m865p(uriM861l);
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: h */
    public final String mo466h() {
        return this.f1120d;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: k */
    public final boolean mo420k() {
        m551A();
        SAF.C0309a c0309a = this.f1118b;
        return c0309a != null && c0309a.f1639b;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: l */
    public final boolean mo421l() {
        m551A();
        SAF.C0309a c0309a = this.f1118b;
        return (c0309a == null || c0309a.f1639b) ? false : true;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: m */
    public final boolean mo422m() {
        return false;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: n */
    public final long mo423n() {
        m551A();
        SAF.C0309a c0309a = this.f1118b;
        if (c0309a == null) {
            return 0L;
        }
        return c0309a.f1640c;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: o */
    public final long mo424o() {
        m551A();
        SAF.C0309a c0309a = this.f1118b;
        if (c0309a == null) {
            return 0L;
        }
        return c0309a.f1641d;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: p */
    public final AbstractC0127f[] mo425p() {
        m551A();
        SAF.C0309a c0309a = this.f1118b;
        int i2 = 0;
        if (c0309a == null) {
            return new AbstractC0127f[0];
        }
        Uri uri = c0309a.f1642e;
        C0129h c0129h = this.f1004a;
        ArrayList<SAF.C0309a> arrayListM867r = SAF.m867r(uri, c0129h.f1015c);
        if (arrayListM867r == null) {
            return new AbstractC0127f[0];
        }
        AbstractC0127f[] abstractC0127fArr = new AbstractC0127f[arrayListM867r.size()];
        for (SAF.C0309a c0309a2 : arrayListM867r) {
            abstractC0127fArr[i2] = new C0173b(new C0129h(c0309a2.f1638a, c0129h), c0309a2);
            i2++;
        }
        return abstractC0127fArr;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: q */
    public final boolean mo426q(String str) {
        return m552B(SAF.mkdir(C0015d.m78i(this.f1004a.f1015c, str)));
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: r */
    public final void mo469r(String str) throws Exception {
        int i2;
        C0129h c0129h = this.f1004a;
        String strM78i = C0015d.m78i(c0129h.f1015c, str);
        if (C0412c.f2151c || strM78i == null) {
            i2 = -OsConstants.EACCES;
        } else {
            i2 = 0;
            if (!"/SAF".equals(strM78i)) {
                SAF.m860k(3, strM78i);
            }
        }
        if (m552B(i2)) {
            return;
        }
        String str2 = this.f1120d;
        if (str2 == null) {
            str2 = "Failed to create";
        }
        throw new Exception(C0015d.m78i(c0129h.f1015c, str) + ": " + str2);
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: s */
    public final boolean mo427s(String str) {
        C0129h c0129h = this.f1004a;
        return m552B(SAF.mkdirs(str == null ? c0129h.f1015c : C0015d.m78i(c0129h.f1015c, str), 0));
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: t */
    public final boolean mo428t(C0129h c0129h) {
        C0129h c0129h2 = this.f1004a;
        if (!c0129h.m488o()) {
            return false;
        }
        try {
            boolean zM869t = SAF.m869t(C0015d.m39A(c0129h2.f1015c), c0129h2.m478e(), c0129h.f1015c);
            if (zM869t) {
                this.f1118b = null;
            }
            return zM869t;
        } catch (Exception e2) {
            m552B(-SAF.m853d(e2));
            return false;
        }
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: v */
    public final ParcelFileDescriptor mo429v(int i2) throws FileNotFoundException {
        Uri uri;
        int i3 = i2 & 536870912;
        if (i3 == 536870912) {
            throw new FileNotFoundException("Create file not supported");
        }
        m551A();
        SAF.C0309a c0309a = this.f1118b;
        if (c0309a == null || (uri = c0309a.f1642e) == null) {
            throw new FileNotFoundException();
        }
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = ZApp.m718a().openFileDescriptor(uri, i3 == 536870912 ? "w" : "r");
        if (parcelFileDescriptorOpenFileDescriptor != null) {
            return parcelFileDescriptorOpenFileDescriptor;
        }
        throw new FileNotFoundException();
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: w */
    public final InputStream mo430w() throws FileNotFoundException {
        Uri uri;
        C0183f c0183f;
        m551A();
        SAF.C0309a c0309a = this.f1118b;
        if (c0309a == null || (uri = c0309a.f1642e) == null) {
            throw new FileNotFoundException();
        }
        long j2 = c0309a.f1641d;
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = ZApp.m718a().openFileDescriptor(uri, "r");
            c0183f = parcelFileDescriptorOpenFileDescriptor != null ? new C0183f(parcelFileDescriptorOpenFileDescriptor, j2) : null;
        } catch (Exception unused) {
        }
        if (c0183f != null) {
            return c0183f;
        }
        throw new FileNotFoundException();
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: x */
    public final OutputStream mo431x(long j2) {
        if (this.f1118b == null) {
            SAF.C0309a c0309a = new SAF.C0309a();
            this.f1118b = c0309a;
            c0309a.f1638a = null;
            c0309a.f1639b = false;
            c0309a.f1640c = 0L;
            c0309a.f1641d = j2;
            c0309a.f1642e = null;
        }
        SAF.C0309a c0309a2 = this.f1118b;
        String str = this.f1004a.f1015c;
        if (Build.VERSION.SDK_INT >= 30) {
            return SAF.m870u(str, c0309a2.f1642e != null);
        }
        if (c0309a2.f1642e == null) {
            c0309a2.f1642e = SAF.m860k(2, str);
        }
        return ZApp.m718a().openOutputStream(c0309a2.f1642e);
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: y */
    public final boolean mo432y(String str) {
        C0129h c0129h = this.f1004a;
        try {
            boolean zM871v = SAF.m871v(C0015d.m39A(c0129h.f1015c), c0129h.m478e(), str);
            if (zM871v) {
                this.f1118b = null;
            }
            return zM871v;
        } catch (Exception e2) {
            m552B(-SAF.m853d(e2));
            return false;
        }
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: z */
    public final boolean mo433z(long j2, OutputStream outputStream) {
        int iM98z = C0015d.m98z(outputStream);
        if (iM98z > 0) {
            if (((C2JBridge.f1554c || C2JBridge.m804e()) ? C2JBridge.cSetMTime(iM98z, (int) (j2 / 1000)) : -1) == 0) {
                return true;
            }
        }
        return false;
    }

    public C0173b(C0129h c0129h) {
        super(c0129h);
        this.f1118b = null;
        this.f1119c = true;
        this.f1120d = null;
    }
}
