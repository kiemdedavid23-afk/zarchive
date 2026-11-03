package p028k;

import java.io.File;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import p004b.C0015d;
import p038p.C0216g;

/* JADX INFO: renamed from: k.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0161b extends C0160a {

    /* JADX INFO: renamed from: f */
    public final ZipFile f1069f;

    public C0161b(String str) throws Throwable {
        this.f1069f = new ZipFile(new File(str), 1);
        this.f1066c = new C0216g();
        m530b();
    }

    @Override // p028k.C0160a
    /* JADX INFO: renamed from: a */
    public final byte[] mo529a(String str) {
        ZipFile zipFile = this.f1069f;
        ZipEntry entry = zipFile.getEntry("AndroidManifest.xml");
        if (entry == null) {
            return null;
        }
        return C0015d.m58T(zipFile.getInputStream(entry));
    }

    @Override // p028k.C0160a, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        this.f1069f.close();
    }
}
