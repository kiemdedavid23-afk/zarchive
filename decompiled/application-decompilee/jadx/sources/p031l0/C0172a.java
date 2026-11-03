package p031l0;

import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.system.StructStatVfs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;
import p004b.C0015d;
import p008c0.C0044b;
import p008c0.C0046d;
import p008c0.C0048f;
import p008c0.C0051i;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p020g0.InterfaceC0123b;
import p025i0.C0148a;
import p033m0.C0181d;
import p051u0.C0385h;
import p051u0.InterfaceC0381d;
import p055w0.C0412c;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.p044io.SAF;

/* JADX INFO: renamed from: l0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0172a implements InterfaceC0123b {

    /* JADX INFO: renamed from: a */
    public int f1117a = 0;

    /* JADX INFO: renamed from: l */
    public static void m550l(SAF.C0309a c0309a, String str, Pattern pattern, int[] iArr, int i2, AbstractC0126e.c cVar, InterfaceC0381d interfaceC0381d) {
        ArrayList arrayListM867r;
        if (interfaceC0381d != null) {
            try {
                if (interfaceC0381d.isCancelled()) {
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        String lowerCase = c0309a.f1638a.toLowerCase(Locale.getDefault());
        if (pattern.matcher(lowerCase).matches() && AbstractC0126e.m456g(lowerCase, iArr)) {
            AbstractC0126e.b bVar = new AbstractC0126e.b();
            bVar.f995a = !c0309a.f1639b;
            bVar.f996b = c0309a.f1640c;
            bVar.f997c = c0309a.f1641d;
            cVar.mo461d(bVar, new C0129h("saf", str), c0309a.f1638a, null);
        }
        if (!c0309a.f1639b || C0015d.m49K(i2, 1) || (arrayListM867r = SAF.m867r(c0309a.f1642e, null)) == null) {
            return;
        }
        Iterator it = arrayListM867r.iterator();
        while (it.hasNext()) {
            m550l((SAF.C0309a) it.next(), str + "/" + c0309a.f1638a, pattern, iArr, i2, cVar, interfaceC0381d);
            if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                return;
            }
        }
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: a */
    public final int mo434a(String str, C0129h c0129h) {
        Cursor cursorM868s;
        Uri uriM861l = SAF.m861l(1, C0015d.m78i(c0129h.f1015c, str));
        if (uriM861l == null || (cursorM868s = SAF.m868s(uriM861l, SAF.f1633a)) == null) {
            return -1;
        }
        int count = cursorM868s.getCount();
        C0181d.m561b(cursorM868s);
        return count;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: b */
    public final boolean mo435b(C0129h c0129h, C0044b c0044b, int i2) {
        byte bM512n;
        byte bM510l;
        byte b2;
        if (!c0129h.m486m()) {
            return false;
        }
        this.f1117a = 0;
        c0044b.clear();
        if (C0015d.m49K(i2, 4)) {
            c0044b.add(0, new C0046d("..", (byte) 3));
        }
        int size = c0044b.size();
        boolean z2 = !C0015d.m49K(i2, 32);
        Cursor cursorM868s = null;
        try {
            try {
                Uri uriM861l = SAF.m861l(1, c0129h.f1015c);
                if (uriM861l != null) {
                    cursorM868s = SAF.m868s(uriM861l, SAF.f1634b);
                }
                if (cursorM868s == null) {
                    if (C0015d.m49K(i2, 2)) {
                        this.f1117a = R.string.MES_ACCESS_DENIED;
                        C0181d.m561b(cursorM868s);
                        return true;
                    }
                    String strM1116j = C0412c.m1116j(c0129h.f1015c);
                    if (strM1116j != null) {
                        c0129h.m489p(strM1116j);
                    }
                    c0129h.m490q("root");
                    C0181d.m561b(cursorM868s);
                    return false;
                }
                c0044b.ensureCapacity(cursorM868s.getCount() + 1);
                try {
                    bM512n = C0148a.m512n(c0129h.m493t(), true);
                } catch (Exception unused) {
                    bM512n = 0;
                }
                while (cursorM868s.moveToNext()) {
                    String string = cursorM868s.getString(0);
                    if (!z2 || string.isEmpty() || string.charAt(0) != '.') {
                        if ("vnd.android.document/directory".equals(cursorM868s.getString(1))) {
                            b2 = 4;
                            bM510l = C0148a.m510l(string, bM512n);
                        } else {
                            bM510l = 0;
                            b2 = -1;
                        }
                        c0044b.add(new C0046d(string, b2, bM510l, cursorM868s.getLong(3), cursorM868s.getLong(2)));
                    }
                }
                if (c0044b.size() <= size) {
                    this.f1117a = R.string.MES_EMPTY_FOLDER;
                }
                C0181d.m561b(cursorM868s);
                c0129h.m490q("saf");
                return true;
            } catch (Throwable th) {
                C0181d.m561b(null);
                throw th;
            }
        } catch (Exception unused2) {
            this.f1117a = R.string.MES_ACCESS_DENIED;
            C0181d.m561b(null);
            return false;
        }
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: c */
    public final C0051i mo436c(C0051i c0051i) {
        C0051i c0051i2 = new C0051i(c0051i.size());
        Iterator<C0046d> it = c0051i.iterator();
        while (it.hasNext()) {
            C0048f c0048f = (C0048f) it.next();
            Uri uriM861l = SAF.m861l(0, c0048f.f365k.f1015c + '/' + c0048f.f352a);
            if (uriM861l != null ? SAF.m865p(uriM861l) : false) {
                c0051i2.m200i(c0048f);
            }
        }
        return c0051i2;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: d */
    public final int mo437d() {
        return this.f1117a;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: e */
    public final AbstractC0126e.b mo438e(C0129h c0129h, InterfaceC0381d interfaceC0381d) {
        if (!c0129h.m486m()) {
            return null;
        }
        try {
            AbstractC0126e.b bVar = new AbstractC0126e.b();
            SAF.C0309a c0309aM854e = SAF.m854e(c0129h.f1015c);
            if (c0309aM854e == null) {
                return null;
            }
            if (c0309aM854e.f1639b) {
                Uri uriM861l = c0309aM854e.f1642e;
                if (uriM861l == null) {
                    uriM861l = SAF.m861l(0, null);
                }
                if (uriM861l != null) {
                    SAF.m851b(uriM861l, new String[]{"mime_type", "_size", "document_id"}, bVar, interfaceC0381d, 0);
                }
            } else {
                bVar.f995a = true;
                bVar.f996b = c0309aM854e.f1640c;
                bVar.f997c = c0309aM854e.f1641d;
                bVar.f999e = false;
            }
            return bVar;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: f */
    public final int mo439f(C0129h c0129h) {
        return 17;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: g */
    public final AbstractC0126e.b mo440g(C0129h[] c0129hArr, String[] strArr, InterfaceC0381d interfaceC0381d) {
        if (!c0129hArr[0].m486m()) {
            return null;
        }
        AbstractC0126e.b bVar = new AbstractC0126e.b();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            SAF.C0309a c0309aM854e = SAF.m854e(C0015d.m78i(c0129hArr[i2].f1015c, strArr[i2]));
            if (c0309aM854e != null) {
                bVar.f997c += c0309aM854e.f1641d;
            }
        }
        return bVar;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: h */
    public final AbstractC0126e.a mo441h(C0129h c0129h) throws Throwable {
        Uri uriM861l;
        Throwable th;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        ParcelFileDescriptor parcelFileDescriptor = null;
        if (!c0129h.m486m() || (uriM861l = SAF.m861l(0, c0129h.f1015c)) == null) {
            return null;
        }
        try {
            parcelFileDescriptorOpenFileDescriptor = ZApp.m718a().openFileDescriptor(uriM861l, "r");
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                C0181d.m562c(parcelFileDescriptorOpenFileDescriptor);
                return null;
            }
            try {
                StructStatVfs structStatVfsFstatvfs = Os.fstatvfs(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                long j2 = structStatVfsFstatvfs.f_bavail;
                long j3 = structStatVfsFstatvfs.f_bsize;
                AbstractC0126e.a aVar = new AbstractC0126e.a("Storage Access Framework", j2 * j3, structStatVfsFstatvfs.f_blocks * j3);
                C0181d.m562c(parcelFileDescriptorOpenFileDescriptor);
                return aVar;
            } catch (Exception unused) {
                C0181d.m562c(parcelFileDescriptorOpenFileDescriptor);
                return null;
            } catch (Throwable th2) {
                th = th2;
                parcelFileDescriptor = parcelFileDescriptorOpenFileDescriptor;
                C0181d.m562c(parcelFileDescriptor);
                throw th;
            }
        } catch (Exception unused2) {
            parcelFileDescriptorOpenFileDescriptor = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: i */
    public final boolean mo442i(C0129h c0129h, String str, int[] iArr, int i2, AbstractC0126e.c cVar, InterfaceC0381d interfaceC0381d) {
        SAF.C0309a c0309aM854e;
        if (!c0129h.m486m() || (c0309aM854e = SAF.m854e(c0129h.f1015c)) == null || !c0309aM854e.f1639b) {
            return false;
        }
        Pattern patternCompile = Pattern.compile(C0385h.m1079c(str, false)[0]);
        try {
            ArrayList arrayListM867r = SAF.m867r(c0309aM854e.f1642e, null);
            if (arrayListM867r != null) {
                int size = arrayListM867r.size();
                Iterator it = arrayListM867r.iterator();
                int i3 = 0;
                while (it.hasNext()) {
                    m550l((SAF.C0309a) it.next(), c0129h.f1015c, patternCompile, iArr, i2, cVar, interfaceC0381d);
                    if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                        return false;
                    }
                    i3++;
                    cVar.mo460b((i3 * 100) / size);
                }
            }
        } catch (Exception unused) {
        }
        return true;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: j */
    public final boolean mo443j(C0129h c0129h) {
        return c0129h.m486m();
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: k */
    public final AbstractC0126e.b mo444k(C0129h c0129h, String[] strArr, InterfaceC0381d interfaceC0381d) {
        if (!c0129h.m486m()) {
            return null;
        }
        AbstractC0126e.b bVar = new AbstractC0126e.b();
        for (String str : strArr) {
            SAF.C0309a c0309aM854e = SAF.m854e(C0015d.m78i(c0129h.f1015c, str));
            if (c0309aM854e != null) {
                bVar.f997c += c0309aM854e.f1641d;
            }
        }
        return bVar;
    }
}
