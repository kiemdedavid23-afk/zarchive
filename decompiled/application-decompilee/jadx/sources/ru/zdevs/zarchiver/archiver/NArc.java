package ru.zdevs.zarchiver.archiver;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import android.os.storage.StorageManager;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import p004b.C0015d;
import p011d0.C0068f;
import p011d0.C0070h;
import p011d0.ParcelFileDescriptorC0069g;
import p011d0.ProxyFileDescriptorCallbackC0067e;
import p033m0.C0181d;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: loaded from: classes.dex */
public class NArc implements Closeable {

    /* JADX INFO: renamed from: a */
    public volatile long f1566a;

    /* JADX INFO: renamed from: b */
    public final String f1567b;

    /* JADX INFO: renamed from: c */
    public volatile Closeable f1568c = null;

    /* JADX INFO: renamed from: d */
    public final Object f1569d = new Object();

    public static class NArcException extends Exception {
        public NArcException(String str) {
            super(str);
        }
    }

    public static class NArcItem {
        private final long mMTime;
        private final String mPath;
        private final long mSize;

        public NArcItem(String str, long j2, long j3) {
            this.mPath = str;
            this.mSize = j2;
            this.mMTime = j3;
        }

        public long getModifyTime() {
            return this.mMTime;
        }

        public String getPath() {
            return this.mPath;
        }

        public long getSize() {
            if (isDir()) {
                return 0L;
            }
            return this.mSize;
        }

        public boolean isDir() {
            return this.mSize == -2;
        }
    }

    public static class NArcPasswordException extends NArcException {
        public NArcPasswordException() {
            super("Wrong password");
        }
    }

    public static class NArcStreamOutsidePipePosition extends NArcException {
        public NArcStreamOutsidePipePosition() {
            super("Stream outside pipe position");
        }
    }

    public NArc(long j2, String str) {
        this.f1566a = j2;
        this.f1567b = str;
    }

    private static native long cArchiveOpen(String str, String str2, String str3);

    private static native void cCancel(long j2);

    private static native void cClose(long j2);

    private static native NArcItem cGetItem(long j2, int i2, String str);

    private static native int cGetItemCount(long j2);

    private static native long[] cGetStream(long j2, int i2, String str);

    private static native int cSetComment(long j2, String str);

    private static native void cWaitEndStream(long j2, long j3);

    /* JADX INFO: renamed from: j */
    public static NArc m805j(String str) {
        return m806k(str, "zip", null);
    }

    /* JADX INFO: renamed from: k */
    public static NArc m806k(String str, String str2, String str3) {
        if (!C2JBridge.f1554c && !C2JBridge.m804e()) {
            throw new NArcException("Fail to load library");
        }
        long jCArchiveOpen = cArchiveOpen(str, str2, str3);
        if (jCArchiveOpen == 0) {
            return null;
        }
        C0015d.m97y(str);
        return new NArc(jCArchiveOpen, str);
    }

    /* JADX INFO: renamed from: l */
    public static NArc m807l(String str) {
        return m806k(str, C0015d.m93u(str), C0070h.m253d().m257e(str) ? C0070h.m253d().m256c(false) : null);
    }

    /* JADX INFO: renamed from: a */
    public final void m808a() {
        synchronized (this.f1569d) {
            if (!isClosed()) {
                cCancel(this.f1566a);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m809b(InputStream inputStream) {
        C0181d.m563d(inputStream);
        close();
    }

    /* JADX INFO: renamed from: c */
    public final void m810c() {
        Closeable closeable = this.f1568c;
        this.f1568c = null;
        if (!(closeable instanceof ParcelFileDescriptorC0069g)) {
            C0181d.m563d(closeable);
            return;
        }
        try {
            ParcelFileDescriptorC0069g parcelFileDescriptorC0069g = (ParcelFileDescriptorC0069g) closeable;
            if (parcelFileDescriptorC0069g.f490b.mo249c()) {
                parcelFileDescriptorC0069g.close();
            }
        } catch (IOException unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        C0015d.m97y(this.f1567b);
        synchronized (this.f1569d) {
            if (isClosed()) {
                return;
            }
            long j2 = this.f1566a;
            this.f1566a = 0L;
            m810c();
            synchronized (this) {
                cClose(j2);
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public final ParcelFileDescriptor m811d(int i2, String str, int i3) {
        ZApp zApp = ZApp.f1375c;
        if (zApp == null) {
            return null;
        }
        return m812e(zApp, i2, str, i3, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.os.ProxyFileDescriptorCallback, d0.d] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r2v5, types: [android.os.storage.StorageManager] */
    /* JADX INFO: renamed from: e */
    public final synchronized ParcelFileDescriptor m812e(Context context, int i2, String str, int i3, boolean z2) {
        ?? proxyFileDescriptorCallbackC0304a;
        if (isClosed()) {
            return null;
        }
        m810c();
        if (i2 >= 0 || str == null) {
            str = null;
        } else {
            try {
                str = C0015d.m66b0(str);
            } catch (IOException unused) {
                return null;
            } catch (NArcStreamOutsidePipePosition unused2) {
                String str2 = str;
                if (m817m()) {
                    return m812e(context, i2, str2, i3, z2);
                }
                return null;
            }
        }
        long[] jArrCGetStream = cGetStream(this.f1566a, i2, str);
        if (jArrCGetStream == null) {
            return null;
        }
        if (i3 != 0) {
            long j2 = jArrCGetStream[1];
            proxyFileDescriptorCallbackC0304a = new ProxyFileDescriptorCallbackC0067e(jArrCGetStream, Math.min(i3, j2 > 0 ? (int) j2 : Integer.MAX_VALUE), z2 ? this : null);
        } else {
            proxyFileDescriptorCallbackC0304a = new ProxyFileDescriptorCallbackC0304a(this, i2, str, jArrCGetStream, z2);
        }
        ParcelFileDescriptorC0069g parcelFileDescriptorC0069g = new ParcelFileDescriptorC0069g(this, proxyFileDescriptorCallbackC0304a, ((StorageManager) context.getSystemService("storage")).openProxyFileDescriptor(268435456, proxyFileDescriptorCallbackC0304a, proxyFileDescriptorCallbackC0304a.getHandler()));
        this.f1568c = parcelFileDescriptorC0069g;
        return parcelFileDescriptorC0069g;
    }

    /* JADX INFO: renamed from: f */
    public final synchronized NArcItem m813f(int i2) {
        if (isClosed()) {
            return null;
        }
        return cGetItem(this.f1566a, i2, null);
    }

    public final void finalize() {
        if (isClosed()) {
            return;
        }
        close();
    }

    /* JADX INFO: renamed from: g */
    public final synchronized int m814g() {
        if (isClosed()) {
            return 0;
        }
        int iCGetItemCount = cGetItemCount(this.f1566a);
        return iCGetItemCount >= 0 ? iCGetItemCount : 0;
    }

    /* JADX INFO: renamed from: h */
    public final synchronized C0068f m815h(int i2, String str) {
        if (isClosed()) {
            return null;
        }
        m810c();
        try {
            long[] jArrCGetStream = cGetStream(this.f1566a, i2, str == null ? null : C0015d.m66b0(str));
            if (jArrCGetStream == null) {
                return null;
            }
            C0068f c0068f = new C0068f(this, (int) jArrCGetStream[0], jArrCGetStream[1], jArrCGetStream[2]);
            this.f1568c = c0068f;
            return c0068f;
        } catch (NArcStreamOutsidePipePosition unused) {
            if (m817m()) {
                return m815h(i2, str);
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: i */
    public final synchronized long[] m816i(int i2, String str) {
        if (isClosed()) {
            return null;
        }
        try {
            return cGetStream(this.f1566a, i2, str);
        } catch (NArcStreamOutsidePipePosition unused) {
            if (m817m()) {
                return m816i(i2, str);
            }
            return null;
        }
    }

    public final boolean isClosed() {
        return this.f1566a == 0;
    }

    /* JADX INFO: renamed from: m */
    public final synchronized boolean m817m() {
        if (isClosed()) {
            return false;
        }
        close();
        this.f1566a = cArchiveOpen(this.f1567b, null, null);
        return this.f1566a != 0;
    }

    /* JADX INFO: renamed from: n */
    public final synchronized int m818n(String str) {
        if (isClosed()) {
            return -1;
        }
        return cSetComment(this.f1566a, str);
    }

    /* JADX INFO: renamed from: o */
    public final synchronized void m819o(long j2) {
        if (isClosed()) {
            return;
        }
        cWaitEndStream(this.f1566a, j2);
    }
}
