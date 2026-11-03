package p033m0;

import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: renamed from: m0.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0183f extends InputStream {

    /* JADX INFO: renamed from: a */
    public final FileDescriptor f1144a;

    /* JADX INFO: renamed from: b */
    public final ParcelFileDescriptor f1145b;

    /* JADX INFO: renamed from: e */
    public final long f1148e;

    /* JADX INFO: renamed from: c */
    public final Object f1146c = new Object();

    /* JADX INFO: renamed from: d */
    public volatile boolean f1147d = false;

    /* JADX INFO: renamed from: f */
    public long f1149f = 0;

    /* JADX INFO: renamed from: g */
    public long f1150g = 0;

    public C0183f(ParcelFileDescriptor parcelFileDescriptor, long j2) {
        this.f1144a = parcelFileDescriptor.getFileDescriptor();
        this.f1145b = parcelFileDescriptor;
        this.f1148e = j2;
    }

    @Override // java.io.InputStream
    public final int available() {
        long j2 = this.f1148e - this.f1149f;
        if (j2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j2;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this.f1146c) {
            if (this.f1147d) {
                return;
            }
            this.f1147d = true;
            try {
                this.f1145b.close();
            } finally {
                super.close();
            }
        }
    }

    public final void finalize() throws IOException {
        close();
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i2) {
        this.f1150g = this.f1149f;
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = new byte[1];
        if (read(bArr, 0, 1) != -1) {
            return bArr[0] & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        if (this.f1147d) {
            throw new IOException("Stream Closed");
        }
        try {
            Os.lseek(this.f1144a, this.f1150g, OsConstants.SEEK_SET);
            this.f1149f = this.f1150g;
        } catch (ErrnoException e2) {
            throw new IOException(e2.getMessage(), e2);
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j2) throws IOException {
        if (this.f1147d) {
            throw new IOException("Stream Closed");
        }
        long jMin = Math.min(j2, this.f1148e - this.f1149f);
        if (jMin <= 0) {
            return 0L;
        }
        try {
            Os.lseek(this.f1144a, jMin, OsConstants.SEEK_CUR);
            this.f1149f += jMin;
            return jMin;
        } catch (ErrnoException e2) {
            throw new IOException(e2.getMessage(), e2);
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        if (this.f1147d && i3 > 0) {
            throw new IOException("Stream Closed");
        }
        int iMin = Math.min(i3, available());
        if (iMin <= 0) {
            return available() > 0 ? 0 : -1;
        }
        try {
            int i4 = Os.read(this.f1144a, bArr, i2, iMin);
            if (i4 <= 0) {
                return -1;
            }
            this.f1149f += (long) i4;
            return i4;
        } catch (ErrnoException e2) {
            throw new IOException(e2.getMessage(), e2);
        }
    }
}
