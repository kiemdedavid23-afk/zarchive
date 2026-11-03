package p025i0;

import android.os.ParcelFileDescriptor;
import android.system.Os;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.InvalidPropertiesFormatException;
import p004b.C0015d;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p033m0.C0180c;
import p033m0.C0181d;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.p044io.SAF;

/* JADX INFO: renamed from: i0.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0151d extends AbstractC0127f {

    /* JADX INFO: renamed from: b */
    public final File f1052b;

    /* JADX INFO: renamed from: c */
    public String f1053c;

    public C0151d(File file) {
        super(new C0129h("file", file.getPath()));
        this.f1052b = file;
        this.f1053c = null;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: b */
    public final C0129h mo416b(String str) throws IOException {
        File file = new File(this.f1052b, str);
        C0129h c0129h = new C0129h("file", file.getAbsolutePath());
        try {
            if (file.createNewFile()) {
                return c0129h;
            }
            e = null;
            try {
                SAF.m860k(2, c0129h.f1015c);
                return c0129h;
            } catch (FileNotFoundException e2) {
                if (e == null) {
                    throw e2;
                }
                throw e;
            }
        } catch (IOException e3) {
            e = e3;
        }
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: c */
    public final boolean mo417c() {
        File file = this.f1052b;
        if (file.delete()) {
            return true;
        }
        return SAF.remove(file.getAbsolutePath()) == 0;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: d */
    public final boolean mo418d() {
        return this.f1052b.exists();
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: f */
    public final boolean mo419f(String str) {
        return C0181d.m569j(C0015d.m78i(this.f1052b.getPath(), str));
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: g */
    public final String mo465g() {
        return this.f1052b.getAbsolutePath();
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: h */
    public final String mo466h() {
        return this.f1053c;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: k */
    public final boolean mo420k() {
        return this.f1052b.isDirectory();
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: l */
    public final boolean mo421l() {
        return this.f1052b.isFile();
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: m */
    public final boolean mo422m() {
        try {
            return C0180c.m559f(this.f1052b);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: n */
    public final long mo423n() {
        return this.f1052b.lastModified();
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: o */
    public final long mo424o() {
        return this.f1052b.length();
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: p */
    public final AbstractC0127f[] mo425p() {
        File[] fileArrListFiles = this.f1052b.listFiles();
        if (fileArrListFiles == null) {
            return new AbstractC0127f[0];
        }
        AbstractC0127f[] abstractC0127fArr = new AbstractC0127f[fileArrListFiles.length];
        for (int i2 = 0; i2 < fileArrListFiles.length; i2++) {
            abstractC0127fArr[i2] = new C0151d(fileArrListFiles[i2]);
        }
        return abstractC0127fArr;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: q */
    public final boolean mo426q(String str) {
        File file = new File(this.f1052b, str);
        if (file.exists()) {
            return file.isDirectory();
        }
        if (file.mkdir()) {
            return true;
        }
        return SAF.mkdir(file.getAbsolutePath()) == 0;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: s */
    public final boolean mo427s(String str) {
        int iMkdirs;
        File file = this.f1052b;
        if (str != null) {
            file = new File(file, str);
        }
        if (file.exists()) {
            return file.isDirectory();
        }
        if (file.mkdirs() || (iMkdirs = SAF.mkdirs(file.getAbsolutePath(), 0)) == 0) {
            return true;
        }
        this.f1053c = Os.strerror(-iMkdirs);
        return false;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: t */
    public final boolean mo428t(C0129h c0129h) {
        C0129h c0129h2 = this.f1004a;
        String str = c0129h.f1015c;
        File file = this.f1052b;
        if (file.renameTo(new File(str, file.getName()))) {
            return true;
        }
        try {
            return SAF.m869t(C0015d.m39A(c0129h2.f1015c), c0129h2.m478e(), c0129h.f1015c);
        } catch (IOException e2) {
            this.f1053c = e2.getMessage();
            return false;
        }
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: v */
    public final ParcelFileDescriptor mo429v(int i2) {
        return ParcelFileDescriptor.open(this.f1052b, i2);
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: w */
    public final InputStream mo430w() {
        return new FileInputStream(this.f1052b);
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: x */
    public final OutputStream mo431x(long j2) throws FileNotFoundException {
        OutputStream outputStreamM870u;
        File file = this.f1052b;
        try {
            return new FileOutputStream(file);
        } catch (FileNotFoundException e2) {
            try {
                outputStreamM870u = SAF.m870u(file.getAbsolutePath(), false);
            } catch (InvalidPropertiesFormatException unused) {
                outputStreamM870u = null;
            }
            if (outputStreamM870u != null) {
                return outputStreamM870u;
            }
            throw e2;
        }
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: y */
    public final boolean mo432y(String str) {
        File file = this.f1052b;
        File file2 = new File(file.getParent(), str);
        if (file2.exists()) {
            return false;
        }
        if (file.renameTo(file2)) {
            return true;
        }
        C0129h c0129h = this.f1004a;
        return SAF.m871v(C0015d.m39A(c0129h.f1015c), c0129h.m478e(), str);
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: z */
    public final boolean mo433z(long j2, OutputStream outputStream) {
        if (!this.f1052b.setLastModified(j2)) {
            int iM98z = C0015d.m98z(outputStream);
            if (iM98z > 0) {
                if (((C2JBridge.f1554c || C2JBridge.m804e()) ? C2JBridge.cSetMTime(iM98z, (int) (j2 / 1000)) : -1) == 0) {
                }
            }
            return false;
        }
        return true;
    }

    public C0151d(C0129h c0129h) {
        super(c0129h);
        this.f1052b = new File(c0129h.f1015c);
    }
}
