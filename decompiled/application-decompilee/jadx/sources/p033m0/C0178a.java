package p033m0;

import android.content.ContentResolver;
import android.net.Uri;
import android.provider.DocumentsContract;
import java.io.IOException;
import java.io.OutputStream;
import p004b.C0015d;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.p044io.SAF;

/* JADX INFO: renamed from: m0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0178a extends OutputStream {

    /* JADX INFO: renamed from: a */
    public final OutputStream f1128a;

    /* JADX INFO: renamed from: b */
    public final Uri f1129b;

    /* JADX INFO: renamed from: c */
    public final Uri f1130c;

    /* JADX INFO: renamed from: d */
    public final String f1131d;

    /* JADX INFO: renamed from: e */
    public final boolean f1132e;

    /* JADX INFO: renamed from: f */
    public final Object f1133f = new Object();

    /* JADX INFO: renamed from: g */
    public volatile boolean f1134g = false;

    public C0178a(OutputStream outputStream, Uri uri, Uri uri2, String str, boolean z2) {
        this.f1128a = outputStream;
        this.f1129b = uri;
        this.f1130c = uri2;
        this.f1131d = str;
        this.f1132e = z2;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this.f1133f) {
            if (this.f1134g) {
                return;
            }
            this.f1134g = true;
            this.f1128a.close();
            Uri uriM860k = SAF.m860k(0, this.f1131d);
            ContentResolver contentResolverM718a = ZApp.m718a();
            try {
                try {
                    if (this.f1132e) {
                        DocumentsContract.deleteDocument(contentResolverM718a, SAF.m860k(0, this.f1131d + '/' + C0015d.m97y(this.f1129b.getPath())));
                    }
                    DocumentsContract.moveDocument(contentResolverM718a, this.f1129b, this.f1130c, uriM860k);
                } catch (IllegalStateException e2) {
                    String message = e2.getMessage();
                    if (message == null || !message.contains("Already exists")) {
                        return;
                    }
                    DocumentsContract.deleteDocument(contentResolverM718a, SAF.m860k(0, this.f1131d + '/' + C0015d.m97y(this.f1129b.getPath())));
                    DocumentsContract.moveDocument(contentResolverM718a, this.f1129b, this.f1130c, uriM860k);
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void finalize() throws IOException {
        close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        this.f1128a.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i2) throws IOException {
        this.f1128a.write(i2);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        this.f1128a.write(bArr, i2, i3);
    }
}
