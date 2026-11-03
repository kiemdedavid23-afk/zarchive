package p041q0;

import android.os.Build;
import android.os.CancellationSignal;
import android.os.FileUtils;
import android.os.OperationCanceledException;
import android.os.storage.StorageManager;
import android.system.Os;
import android.text.TextUtils;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.Executor;
import p004b.C0015d;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p029k0.C0166c;
import p029k0.C0167d;
import p029k0.C0168e;
import p033m0.C0181d;
import p043r0.AbstractC0245g;
import p043r0.InterfaceC0239a;

/* JADX INFO: renamed from: q0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0235b {

    /* JADX INFO: renamed from: q0.b$a */
    public class a implements FileUtils.ProgressListener {

        /* JADX INFO: renamed from: a */
        public long f1320a = 0;

        /* JADX INFO: renamed from: b */
        public final /* synthetic */ InterfaceC0239a f1321b;

        /* JADX INFO: renamed from: c */
        public final /* synthetic */ CancellationSignal f1322c;

        public a(InterfaceC0239a interfaceC0239a, CancellationSignal cancellationSignal) {
            this.f1321b = interfaceC0239a;
            this.f1322c = cancellationSignal;
        }

        @Override // android.os.FileUtils.ProgressListener
        public final void onProgress(long j2) {
            if (((AbstractC0245g) this.f1321b).isCancelled()) {
                this.f1322c.cancel();
            }
            this.f1321b.mo695c(j2 - this.f1320a);
            this.f1320a = j2;
        }
    }

    /* JADX INFO: renamed from: q0.b$b */
    public static final class b implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: a */
    public static int m678a(InterfaceC0239a interfaceC0239a, AbstractC0127f abstractC0127f, C0129h c0129h, int i2, int i3, int i4) {
        String strM685h;
        boolean z2;
        int i5;
        AbstractC0127f abstractC0127fM463u = AbstractC0127f.m463u(c0129h);
        boolean z3 = true;
        if (abstractC0127f.mo421l()) {
            interfaceC0239a.mo694a(abstractC0127f.mo465g().substring(i3));
            interfaceC0239a.mo695c(0L);
            String strM467i = abstractC0127f.m467i();
            AbstractC0127f abstractC0127fM463u2 = null;
            if (!abstractC0127fM463u.mo419f(strM467i)) {
                i5 = i2;
                z3 = false;
            } else if (abstractC0127f.m468j().equals(c0129h)) {
                strM467i = m685h(strM467i, false, "Copy", abstractC0127fM463u);
                i5 = i2;
                z3 = false;
            } else {
                AbstractC0127f abstractC0127fM463u3 = AbstractC0127f.m463u(new C0129h(strM467i, c0129h));
                int iM707i = i2 == 0 ? ((AbstractC0245g) interfaceC0239a).m707i(abstractC0127f, abstractC0127fM463u3) : i2;
                i5 = !C0015d.m49K(iM707i, 16) ? 0 : iM707i;
                if (C0015d.m49K(iM707i, 8)) {
                    return -2;
                }
                if (C0015d.m49K(iM707i, 2)) {
                    return i5;
                }
                if (C0015d.m49K(iM707i, 4)) {
                    strM467i = m685h(strM467i, false, null, abstractC0127fM463u);
                    z3 = false;
                } else {
                    abstractC0127fM463u2 = abstractC0127fM463u3;
                }
            }
            if (abstractC0127fM463u2 == null) {
                abstractC0127fM463u2 = AbstractC0127f.m463u(new C0129h(strM467i, c0129h));
            }
            if (m679b(interfaceC0239a, abstractC0127f, abstractC0127fM463u2, z3)) {
                return i5;
            }
            return -1;
        }
        if (!abstractC0127f.mo420k() || abstractC0127f.mo422m()) {
            return i2;
        }
        AbstractC0127f[] abstractC0127fArrMo425p = abstractC0127f.mo425p();
        String strM467i2 = abstractC0127f.m467i();
        boolean zMo419f = abstractC0127fM463u.mo419f(strM467i2);
        if (zMo419f && abstractC0127f.m468j().equals(c0129h)) {
            strM685h = m685h(strM467i2, true, "Copy", abstractC0127fM463u);
            z2 = false;
        } else {
            strM685h = strM467i2;
            z2 = zMo419f;
        }
        if (!z2) {
            try {
                abstractC0127fM463u.mo469r(strM685h);
            } catch (Exception e2) {
                m688k(interfaceC0239a, abstractC0127f.m467i(), e2);
                return -1;
            }
        }
        int iM678a = i2;
        for (AbstractC0127f abstractC0127f2 : abstractC0127fArrMo425p) {
            if (i4 < 50) {
                iM678a = m678a(interfaceC0239a, abstractC0127f2, new C0129h(strM685h, c0129h), iM678a, i3, i4 + 1);
            }
            if (((AbstractC0245g) interfaceC0239a).isCancelled()) {
                return -2;
            }
            if (iM678a < 0) {
                return iM678a;
            }
        }
        return iM678a;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:60:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:63:0x00d1  */
    /* JADX INFO: renamed from: b */
    public static boolean m679b(InterfaceC0239a interfaceC0239a, AbstractC0127f abstractC0127f, AbstractC0127f abstractC0127f2, boolean z2) throws Throwable {
        OutputStream outputStreamMo431x;
        boolean zIsCancelled;
        long jMo423n;
        try {
            try {
                outputStreamMo431x = abstractC0127f2.mo431x(abstractC0127f.mo424o());
                try {
                    if (outputStreamMo431x == null) {
                        throw new Exception("Failed to open");
                    }
                    InputStream inputStreamMo430w = abstractC0127f.mo430w();
                    long jMo424o = abstractC0127f.mo424o();
                    if (jMo424o < 0) {
                        jMo424o = inputStreamMo430w.available();
                    }
                    long j2 = jMo424o;
                    boolean z3 = z2 && j2 < abstractC0127f2.mo424o();
                    if (Build.VERSION.SDK_INT < 29) {
                        boolean zM680c = m680c(interfaceC0239a, inputStreamMo430w, j2, outputStreamMo431x, z3);
                        boolean zIsCancelled2 = ((AbstractC0245g) interfaceC0239a).isCancelled();
                        C0181d.m563d(inputStreamMo430w);
                        if (!zIsCancelled2) {
                            long jMo423n2 = abstractC0127f.mo423n();
                            if (jMo423n2 > 0) {
                                abstractC0127f2.mo433z(jMo423n2, outputStreamMo431x);
                            }
                        }
                        C0181d.m563d(outputStreamMo431x);
                        if (zIsCancelled2) {
                            m683f(abstractC0127f2);
                        }
                        return zM680c;
                    }
                    boolean zM681d = m681d(interfaceC0239a, inputStreamMo430w, j2, outputStreamMo431x, z3);
                    boolean zIsCancelled3 = ((AbstractC0245g) interfaceC0239a).isCancelled();
                    C0181d.m563d(inputStreamMo430w);
                    if (!zIsCancelled3) {
                        long jMo423n3 = abstractC0127f.mo423n();
                        if (jMo423n3 > 0) {
                            abstractC0127f2.mo433z(jMo423n3, outputStreamMo431x);
                        }
                    }
                    C0181d.m563d(outputStreamMo431x);
                    if (zIsCancelled3) {
                        m683f(abstractC0127f2);
                    }
                    return zM681d;
                } catch (Exception e2) {
                    e = e2;
                    m688k(interfaceC0239a, abstractC0127f.m467i(), e);
                    boolean zIsCancelled4 = ((AbstractC0245g) interfaceC0239a).isCancelled();
                    C0181d.m563d(null);
                    if (!zIsCancelled4) {
                        long jMo423n4 = abstractC0127f.mo423n();
                        if (jMo423n4 > 0) {
                            abstractC0127f2.mo433z(jMo423n4, outputStreamMo431x);
                        }
                    }
                    C0181d.m563d(outputStreamMo431x);
                    if (zIsCancelled4) {
                        m683f(abstractC0127f2);
                    }
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                zIsCancelled = ((AbstractC0245g) interfaceC0239a).isCancelled();
                C0181d.m563d(null);
                if (!zIsCancelled) {
                    jMo423n = abstractC0127f.mo423n();
                    if (jMo423n > 0) {
                        abstractC0127f2.mo433z(jMo423n, null);
                    }
                }
                C0181d.m563d(null);
                if (zIsCancelled) {
                    m683f(abstractC0127f2);
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            outputStreamMo431x = null;
        } catch (Throwable th2) {
            th = th2;
            zIsCancelled = ((AbstractC0245g) interfaceC0239a).isCancelled();
            C0181d.m563d(null);
            if (!zIsCancelled) {
                jMo423n = abstractC0127f.mo423n();
                if (jMo423n > 0) {
                    abstractC0127f2.mo433z(jMo423n, null);
                }
            }
            C0181d.m563d(null);
            if (zIsCancelled) {
                m683f(abstractC0127f2);
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: c */
    public static boolean m680c(InterfaceC0239a interfaceC0239a, InputStream inputStream, long j2, OutputStream outputStream, boolean z2) throws IOException {
        long j3 = j2 / 100;
        if (j3 < 262144) {
            j3 = 262144;
        }
        byte[] bArr = new byte[8192];
        long j4 = 0;
        long j5 = 0;
        while (true) {
            int i2 = inputStream.read(bArr, 0, 8192);
            if (i2 == -1) {
                interfaceC0239a.mo695c(j4);
                long j6 = j5 + j4;
                outputStream.flush();
                if (((AbstractC0245g) interfaceC0239a).isCancelled() || j6 < j2) {
                    return false;
                }
                if (!z2 || !(outputStream instanceof FileOutputStream)) {
                    return true;
                }
                try {
                    Os.ftruncate(((FileOutputStream) outputStream).getFD(), j2);
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            }
            outputStream.write(bArr, 0, i2);
            j4 += (long) i2;
            if (j4 >= j3) {
                interfaceC0239a.mo695c(j4);
                j5 += j4;
                if (((AbstractC0245g) interfaceC0239a).isCancelled()) {
                    return false;
                }
                j4 = 0;
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public static boolean m681d(InterfaceC0239a interfaceC0239a, InputStream inputStream, long j2, OutputStream outputStream, boolean z2) throws Exception {
        String strM546f;
        boolean z3;
        try {
            if (!C0015d.m49K(((AbstractC0245g) interfaceC0239a).f1355e, 1) && j2 > 4096 && (outputStream instanceof FileOutputStream)) {
                StorageManager storageManager = (StorageManager) ((AbstractC0245g) interfaceC0239a).f1351a.getSystemService(StorageManager.class);
                try {
                    FileDescriptor fd = ((FileOutputStream) outputStream).getFD();
                    if (storageManager.isAllocationSupported(fd)) {
                        storageManager.allocateBytes(fd, j2);
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                } catch (IOException unused) {
                }
                if (!z3) {
                    ((AbstractC0245g) interfaceC0239a).f1355e |= 1;
                }
            }
            CancellationSignal cancellationSignal = new CancellationSignal();
            long jCopy = FileUtils.copy(inputStream, outputStream, cancellationSignal, new b(), new a(interfaceC0239a, cancellationSignal));
            outputStream.flush();
            if (((AbstractC0245g) interfaceC0239a).isCancelled() || jCopy < j2) {
                return false;
            }
            if (z2 && (outputStream instanceof FileOutputStream)) {
                try {
                    Os.ftruncate(((FileOutputStream) outputStream).getFD(), j2);
                } catch (Exception unused2) {
                }
            }
            return true;
        } catch (Exception e2) {
            if (e2 instanceof IOException) {
                if (outputStream instanceof C0168e) {
                    strM546f = C0166c.m546f(((C0168e) outputStream).f1101c);
                } else {
                    strM546f = inputStream instanceof C0167d ? C0166c.m546f(((C0167d) inputStream).f1096c) : null;
                }
                if (strM546f != null) {
                    throw new IOException(strM546f);
                }
            }
            if (e2 instanceof OperationCanceledException) {
                return false;
            }
            throw e2;
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m682e(InterfaceC0239a interfaceC0239a, AbstractC0127f abstractC0127f, int i2) {
        if (abstractC0127f == null) {
            return;
        }
        if (abstractC0127f.mo420k()) {
            for (AbstractC0127f abstractC0127f2 : abstractC0127f.mo425p()) {
                m682e(interfaceC0239a, abstractC0127f2, i2);
            }
        }
        interfaceC0239a.mo694a(abstractC0127f.mo465g().substring(i2));
        try {
            abstractC0127f.mo417c();
        } catch (Exception e2) {
            m688k(interfaceC0239a, abstractC0127f.m467i(), e2);
        }
    }

    /* JADX INFO: renamed from: f */
    public static boolean m683f(AbstractC0127f abstractC0127f) {
        try {
            return abstractC0127f.mo417c();
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0032  */
    /* JADX INFO: renamed from: g */
    public static void m684g(InterfaceC0239a interfaceC0239a, AbstractC0127f abstractC0127f, C0129h[] c0129hArr) {
        boolean z2;
        if (abstractC0127f == null) {
            return;
        }
        if (abstractC0127f.mo420k()) {
            for (AbstractC0127f abstractC0127f2 : abstractC0127f.mo425p()) {
                if (c0129hArr == null || abstractC0127f2.mo420k()) {
                    m684g(interfaceC0239a, abstractC0127f2, c0129hArr);
                } else {
                    int length = c0129hArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            z2 = true;
                            break;
                        }
                        if (abstractC0127f2.f1004a.equals(c0129hArr[i2])) {
                            z2 = false;
                            break;
                        }
                        i2++;
                    }
                    if (z2) {
                        m684g(interfaceC0239a, abstractC0127f2, c0129hArr);
                    }
                }
            }
        }
        try {
            abstractC0127f.mo417c();
        } catch (Exception e2) {
            m688k(interfaceC0239a, abstractC0127f.m467i(), e2);
        }
    }

    /* JADX INFO: renamed from: h */
    public static String m685h(String str, boolean z2, String str2, AbstractC0127f abstractC0127f) {
        String strSubstring;
        String string;
        int iLastIndexOf;
        if (!z2 && (iLastIndexOf = str.lastIndexOf(46)) >= 0 && iLastIndexOf + 1 < str.length()) {
            String strSubstring2 = str.substring(0, iLastIndexOf);
            strSubstring = str.substring(iLastIndexOf);
            str = strSubstring2;
        } else {
            strSubstring = "";
        }
        int i2 = 1;
        do {
            if (i2 != 1 || str2 == null) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append("(");
                sb.append(str2 == null ? "" : str2.concat(" "));
                sb.append(i2);
                sb.append(")");
                sb.append(strSubstring);
                string = sb.toString();
            } else {
                string = str + "(" + str2 + ")" + strSubstring;
            }
            i2++;
        } while (abstractC0127f.mo419f(string));
        return string;
    }

    /* JADX INFO: renamed from: i */
    public static int m686i(InterfaceC0239a interfaceC0239a, AbstractC0127f abstractC0127f, AbstractC0127f abstractC0127f2, int i2, int i3, int i4) {
        boolean z2;
        AbstractC0127f[] abstractC0127fArrMo425p;
        int i5;
        char c2;
        boolean z3;
        int iM707i;
        AbstractC0127f abstractC0127fM463u;
        C0129h c0129h = abstractC0127f2.f1004a;
        if (i4 == 0 && !abstractC0127f2.mo418d() && abstractC0127f.mo428t(c0129h)) {
            return i2;
        }
        if (!abstractC0127f.mo421l()) {
            if (!abstractC0127f.mo420k()) {
                return -1;
            }
            if (abstractC0127f2.mo419f(abstractC0127f.m467i())) {
                abstractC0127fArrMo425p = abstractC0127f.mo425p();
            } else {
                try {
                    z2 = abstractC0127f.mo428t(c0129h);
                } catch (Exception unused) {
                }
                if (z2) {
                    return i2;
                }
                abstractC0127fArrMo425p = abstractC0127f.mo425p();
                try {
                    abstractC0127f2.mo469r(abstractC0127f.m467i());
                } catch (Exception e2) {
                    m688k(interfaceC0239a, abstractC0127f.m467i(), e2);
                    return -1;
                }
            }
            AbstractC0127f abstractC0127fM463u2 = AbstractC0127f.m463u(new C0129h(abstractC0127f.m467i(), c0129h));
            int iM686i = i2;
            for (AbstractC0127f abstractC0127f3 : abstractC0127fArrMo425p) {
                if (i4 < 50) {
                    iM686i = m686i(interfaceC0239a, abstractC0127f3, abstractC0127fM463u2, iM686i, i3, i4 + 1);
                }
                if (((AbstractC0245g) interfaceC0239a).isCancelled()) {
                    return -2;
                }
                if (iM686i < 0) {
                    return iM686i;
                }
            }
            try {
                abstractC0127f.mo417c();
            } catch (Exception unused2) {
            }
            return iM686i;
        }
        interfaceC0239a.mo694a(abstractC0127f.mo465g().substring(i3));
        interfaceC0239a.mo695c(0L);
        String strM467i = abstractC0127f.m467i();
        AbstractC0127f abstractC0127fM463u3 = null;
        if (!abstractC0127f2.mo419f(strM467i)) {
            i5 = i2;
            c2 = 0;
        } else {
            if (abstractC0127f.m468j().equals(c0129h)) {
                return i2;
            }
            if (i2 == 0) {
                abstractC0127fM463u = AbstractC0127f.m463u(new C0129h(strM467i, c0129h));
                iM707i = ((AbstractC0245g) interfaceC0239a).m707i(abstractC0127f, abstractC0127fM463u);
            } else {
                iM707i = i2;
                abstractC0127fM463u = null;
            }
            i5 = !C0015d.m49K(iM707i, 16) ? 0 : iM707i;
            if (C0015d.m49K(iM707i, 8)) {
                return -2;
            }
            c2 = 2;
            if (C0015d.m49K(iM707i, 2)) {
                return i5;
            }
            if (C0015d.m49K(iM707i, 4)) {
                strM467i = m685h(strM467i, false, null, abstractC0127f2);
            } else {
                c2 = 1;
                abstractC0127fM463u3 = abstractC0127fM463u;
            }
        }
        if (c2 == 0) {
            try {
                z3 = abstractC0127f.mo428t(c0129h);
            } catch (Exception unused3) {
            }
            if (z3) {
                return i5;
            }
        }
        if (abstractC0127fM463u3 == null) {
            abstractC0127fM463u3 = AbstractC0127f.m463u(new C0129h(strM467i, c0129h));
        }
        if (!m679b(interfaceC0239a, abstractC0127f, abstractC0127fM463u3, c2 == 1)) {
            return -1;
        }
        try {
            abstractC0127f.mo417c();
            return i5;
        } catch (Exception unused4) {
            return i5;
        }
    }

    /* JADX INFO: renamed from: j */
    public static int m687j(InterfaceC0239a interfaceC0239a, C0129h c0129h, C0129h c0129h2, int i2, int i3) {
        if (c0129h2 == null) {
            return -1;
        }
        return m686i(interfaceC0239a, AbstractC0127f.m463u(c0129h), AbstractC0127f.m463u(c0129h2), i2, i3, 0);
    }

    /* JADX INFO: renamed from: k */
    public static void m688k(InterfaceC0239a interfaceC0239a, String str, Exception exc) {
        String localizedMessage = exc.getLocalizedMessage();
        if (TextUtils.isEmpty(localizedMessage)) {
            localizedMessage = exc.getMessage();
        }
        if (TextUtils.isEmpty(localizedMessage)) {
            localizedMessage = exc.getClass().getName();
        }
        ((AbstractC0245g) interfaceC0239a).m711m(str, localizedMessage);
    }
}
