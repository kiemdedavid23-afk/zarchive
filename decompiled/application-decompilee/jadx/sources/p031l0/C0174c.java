package p031l0;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import ru.zdevs.zarchiver.p044io.ZAIO;

/* JADX INFO: renamed from: l0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0174c extends AbstractC0127f {

    /* JADX INFO: renamed from: b */
    public final Uri f1121b;

    /* JADX INFO: renamed from: c */
    public long f1122c;

    public C0174c(C0129h c0129h) {
        super(c0129h);
        this.f1121b = ZAIO.m874c(c0129h.f1015c);
        this.f1122c = -1L;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: b */
    public final C0129h mo416b(String str) {
        return null;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: c */
    public final boolean mo417c() {
        return false;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: d */
    public final boolean mo418d() {
        return true;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: f */
    public final boolean mo419f(String str) {
        return false;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: k */
    public final boolean mo420k() {
        return false;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: l */
    public final boolean mo421l() {
        return true;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: m */
    public final boolean mo422m() {
        return false;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: n */
    public final long mo423n() {
        return 0L;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: o */
    public final long mo424o() {
        if (this.f1122c == -1) {
            this.f1122c = ZAIO.m873b(this.f1121b);
        }
        return this.f1122c;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: p */
    public final AbstractC0127f[] mo425p() {
        return new AbstractC0127f[0];
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: q */
    public final boolean mo426q(String str) {
        return false;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: s */
    public final boolean mo427s(String str) {
        return false;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: t */
    public final boolean mo428t(C0129h c0129h) {
        return false;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: v */
    public final ParcelFileDescriptor mo429v(int i2) throws FileNotFoundException {
        if ((i2 & 536870912) == 536870912) {
            throw new FileNotFoundException("Create file not supported");
        }
        ParcelFileDescriptor parcelFileDescriptorM876e = ZAIO.m876e(this.f1121b, "r");
        if (parcelFileDescriptorM876e != null) {
            return parcelFileDescriptorM876e;
        }
        throw new FileNotFoundException();
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: w */
    public final InputStream mo430w() {
        return new FileInputStream(mo429v(268435456).getFileDescriptor());
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: x */
    public final OutputStream mo431x(long j2) {
        return null;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: y */
    public final boolean mo432y(String str) {
        return false;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: z */
    public final boolean mo433z(long j2, OutputStream outputStream) {
        return false;
    }
}
