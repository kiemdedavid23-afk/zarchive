package p011d0;

import android.os.ParcelFileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import ru.zdevs.zarchiver.archiver.NArc;

/* JADX INFO: renamed from: d0.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0068f extends FileInputStream {

    /* JADX INFO: renamed from: a */
    public final NArc f482a;

    /* JADX INFO: renamed from: b */
    public final ParcelFileDescriptor f483b;

    /* JADX INFO: renamed from: c */
    public long f484c;

    /* JADX INFO: renamed from: d */
    public long f485d;

    /* JADX INFO: renamed from: e */
    public final long f486e;

    /* JADX INFO: renamed from: f */
    public boolean f487f;

    /* JADX INFO: renamed from: g */
    public volatile boolean f488g;

    /* JADX WARN: Illegal instructions before constructor call */
    public C0068f(NArc nArc, int i2, long j2, long j3) {
        ParcelFileDescriptor parcelFileDescriptorAdoptFd = ParcelFileDescriptor.adoptFd(i2);
        super(parcelFileDescriptorAdoptFd.getFileDescriptor());
        this.f482a = nArc;
        this.f483b = parcelFileDescriptorAdoptFd;
        this.f484c = 0L;
        this.f485d = j2;
        this.f486e = j3;
        this.f487f = false;
        this.f488g = false;
    }

    @Override // java.io.FileInputStream, java.io.InputStream
    public final int available() {
        long j2 = this.f485d;
        if (j2 <= 0) {
            return 0;
        }
        long j3 = j2 - this.f484c;
        if (j3 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j3;
    }

    @Override // java.io.FileInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            if (this.f488g) {
                return;
            }
            this.f488g = true;
            if (this.f482a.f1568c == this) {
                this.f482a.f1568c = null;
            }
            try {
                super.close();
                this.f485d = 0L;
                this.f483b.close();
                this.f482a.m819o(this.f486e);
                if (this.f487f) {
                    this.f482a.close();
                }
            } catch (Throwable th) {
                this.f485d = 0L;
                this.f483b.close();
                this.f482a.m819o(this.f486e);
                throw th;
            }
        }
    }

    @Override // java.io.FileInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = super.read(bArr, i2, i3);
        if (i4 > 0) {
            this.f484c += (long) i4;
        }
        return i4;
    }

    @Override // java.io.FileInputStream, java.io.InputStream
    public final long skip(long j2) throws IOException {
        long jSkip = super.skip(j2);
        if (jSkip > 0) {
            this.f484c += jSkip;
        }
        return jSkip;
    }
}
