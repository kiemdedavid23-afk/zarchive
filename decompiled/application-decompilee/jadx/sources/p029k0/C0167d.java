package p029k0;

import android.content.ContentProviderClient;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import p020g0.C0129h;

/* JADX INFO: renamed from: k0.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0167d extends FileInputStream {

    /* JADX INFO: renamed from: a */
    public final ContentProviderClient f1094a;

    /* JADX INFO: renamed from: b */
    public final ParcelFileDescriptor f1095b;

    /* JADX INFO: renamed from: c */
    public final C0129h f1096c;

    /* JADX INFO: renamed from: d */
    public long f1097d;

    /* JADX INFO: renamed from: e */
    public long f1098e;

    public C0167d(ContentProviderClient contentProviderClient, C0129h c0129h, ParcelFileDescriptor parcelFileDescriptor, long j2) {
        super(parcelFileDescriptor.getFileDescriptor());
        this.f1094a = contentProviderClient;
        this.f1095b = parcelFileDescriptor;
        this.f1096c = c0129h;
        this.f1098e = j2;
    }

    @Override // java.io.FileInputStream, java.io.InputStream
    public final int available() {
        long j2 = this.f1098e;
        if (j2 <= 0) {
            return 0;
        }
        long j3 = j2 - this.f1097d;
        if (j3 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j3;
    }

    @Override // java.io.FileInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ParcelFileDescriptor parcelFileDescriptor = this.f1095b;
        ContentProviderClient contentProviderClient = this.f1094a;
        try {
            super.close();
        } finally {
            this.f1098e = 0L;
            parcelFileDescriptor.close();
            if (Build.VERSION.SDK_INT >= 24) {
                contentProviderClient.close();
            } else {
                contentProviderClient.release();
            }
        }
    }

    @Override // java.io.FileInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        try {
            int i4 = super.read(bArr, i2, i3);
            if (i4 > 0) {
                this.f1097d += (long) i4;
            }
            return i4;
        } catch (IOException e2) {
            String strM546f = C0166c.m546f(this.f1096c);
            if (strM546f != null) {
                throw new IOException(strM546f);
            }
            throw e2;
        }
    }

    @Override // java.io.FileInputStream, java.io.InputStream
    public final long skip(long j2) throws IOException {
        long jSkip = super.skip(j2);
        if (jSkip > 0) {
            this.f1097d += jSkip;
        }
        return jSkip;
    }
}
