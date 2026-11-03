package p029k0;

import android.content.ContentProviderClient;
import android.os.Build;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import p020g0.C0129h;

/* JADX INFO: renamed from: k0.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0168e extends FileOutputStream {

    /* JADX INFO: renamed from: a */
    public final ContentProviderClient f1099a;

    /* JADX INFO: renamed from: b */
    public final ParcelFileDescriptor f1100b;

    /* JADX INFO: renamed from: c */
    public final C0129h f1101c;

    public C0168e(ContentProviderClient contentProviderClient, C0129h c0129h, ParcelFileDescriptor parcelFileDescriptor) {
        super(parcelFileDescriptor.getFileDescriptor());
        this.f1099a = contentProviderClient;
        this.f1100b = parcelFileDescriptor;
        this.f1101c = c0129h;
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ContentProviderClient contentProviderClient = this.f1099a;
        String[] strArr = C0166c.f1077a;
        C0129h c0129h = this.f1101c;
        boolean z2 = false;
        try {
            Bundle bundle = new Bundle();
            bundle.putString("_account", c0129h.f1017e);
            bundle.putParcelable("_uri", C0166c.m547g(c0129h));
            Bundle bundleCall = contentProviderClient.call("flush", null, bundle);
            if (bundleCall != null && bundleCall.getInt("_ret") == 0) {
                z2 = true;
            }
        } catch (Exception unused) {
        }
        this.f1100b.close();
        super.close();
        if (Build.VERSION.SDK_INT >= 24) {
            contentProviderClient.close();
        } else {
            contentProviderClient.release();
        }
        if (!z2) {
            throw new IOException("PUT file error!");
        }
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        try {
            super.write(bArr, i2, i3);
        } catch (IOException e2) {
            String strM546f = C0166c.m546f(this.f1101c);
            if (strM546f == null) {
                throw e2;
            }
            throw new IOException(strM546f);
        }
    }
}
