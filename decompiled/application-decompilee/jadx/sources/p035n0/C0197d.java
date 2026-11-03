package p035n0;

import java.io.DataOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import p033m0.C0182e;
import p037o0.C0203a;

/* JADX INFO: renamed from: n0.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0197d extends OutputStream {

    /* JADX INFO: renamed from: a */
    public final AbstractC0194a f1200a;

    /* JADX INFO: renamed from: b */
    public boolean f1201b = true;

    public C0197d(AbstractC0194a abstractC0194a) {
        this.f1200a = abstractC0194a;
    }

    /* JADX INFO: renamed from: a */
    public static C0197d m603a(int i2, String str) throws FileNotFoundException {
        if (!C0203a.m606b()) {
            throw new FileNotFoundException("coreutils is not available");
        }
        AbstractC0194a abstractC0194aM589c = AbstractC0194a.m589c(i2);
        if (abstractC0194aM589c.m595f()) {
            if (abstractC0194aM589c.m602n(C0203a.m605a() + " sv '" + str.replace("'", "'\\''") + "' ; exit $? ;\r\n") && abstractC0194aM589c.m600l(20, 16)) {
                return new C0197d(abstractC0194aM589c);
            }
        }
        throw new FileNotFoundException(C0182e.m575b(abstractC0194aM589c));
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        boolean z2 = this.f1201b;
        AbstractC0194a abstractC0194a = this.f1200a;
        if (z2) {
            if (abstractC0194a.m596h()) {
                String str = abstractC0194a.f1185c;
                if (str == null) {
                    str = "Bad FD";
                }
                throw new IOException(str);
            }
            try {
                DataOutputStream dataOutputStream = abstractC0194a.f1187e;
                if (dataOutputStream != null) {
                    dataOutputStream.write("^ZA_EOF#".getBytes("UTF-8"));
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    for (int i2 = 0; i2 < 10 && !abstractC0194a.m596h(); i2++) {
                        abstractC0194a.m598j(200L);
                    }
                }
            } catch (Exception unused) {
            }
        }
        abstractC0194a.close();
    }

    @Override // java.io.OutputStream
    public final void write(int i2) throws IOException {
        AbstractC0194a abstractC0194a = this.f1200a;
        DataOutputStream dataOutputStream = abstractC0194a.f1187e;
        if (dataOutputStream != null) {
            dataOutputStream.write(i2);
            return;
        }
        String str = abstractC0194a.f1185c;
        if (str == null) {
            str = "Bad FD";
        }
        throw new IOException(str);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        AbstractC0194a abstractC0194a = this.f1200a;
        DataOutputStream dataOutputStream = abstractC0194a.f1187e;
        if (dataOutputStream != null && !abstractC0194a.m596h()) {
            dataOutputStream.write(bArr, i2, i3);
            dataOutputStream.flush();
        } else {
            String str = abstractC0194a.f1185c;
            if (str == null) {
                str = "Bad FD";
            }
            throw new IOException(str);
        }
    }
}
