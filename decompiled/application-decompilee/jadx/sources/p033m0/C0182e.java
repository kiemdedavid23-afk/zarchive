package p033m0;

import java.io.Closeable;
import java.io.DataInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import p035n0.AbstractC0194a;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: m0.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0182e extends InputStream {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1142a;

    /* JADX INFO: renamed from: b */
    public final Closeable f1143b;

    public /* synthetic */ C0182e(Closeable closeable, int i2) {
        this.f1142a = i2;
        this.f1143b = closeable;
    }

    /* JADX INFO: renamed from: a */
    public static C0182e m574a(int i2, String str) throws FileNotFoundException {
        AbstractC0194a abstractC0194aM589c = AbstractC0194a.m589c(i2);
        if (abstractC0194aM589c.m595f()) {
            if (abstractC0194aM589c.m602n("cat '" + str.replace("'", "'\\''") + "' ; exit $? ;\r\n")) {
                return new C0182e(abstractC0194aM589c, 1);
            }
        }
        throw new FileNotFoundException(m575b(abstractC0194aM589c));
    }

    /* JADX INFO: renamed from: b */
    public static String m575b(AbstractC0194a abstractC0194a) {
        String str;
        ZApp zApp;
        if (abstractC0194a.f1192j != 2 || (zApp = ZApp.f1375c) == null) {
            return (!abstractC0194a.m595f() || (str = abstractC0194a.f1185c) == null) ? "Failed to get root shell" : str;
        }
        return zApp.getString(R.string.MES_SHIZUKU_IS_NOT_RUNNING);
    }

    @Override // java.io.InputStream
    public final int available() {
        switch (this.f1142a) {
            case 0:
                return ((InputStream) this.f1143b).available();
            default:
                return super.available();
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        switch (this.f1142a) {
            case 0:
                break;
            default:
                super.close();
                ((AbstractC0194a) this.f1143b).close();
                break;
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        int i2 = this.f1142a;
        Closeable closeable = this.f1143b;
        switch (i2) {
            case 0:
                return ((InputStream) closeable).read();
            default:
                AbstractC0194a abstractC0194a = (AbstractC0194a) closeable;
                DataInputStream dataInputStream = abstractC0194a.f1188f;
                if (dataInputStream == null) {
                    return -1;
                }
                int i3 = 1000;
                while (dataInputStream.available() <= 0) {
                    if (abstractC0194a.m596h() || (i3 = i3 - 1) == 0) {
                        return -1;
                    }
                    try {
                        ((AbstractC0194a) closeable).m598j(10L);
                    } catch (InterruptedException unused) {
                    }
                }
                return dataInputStream.read();
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j2) {
        switch (this.f1142a) {
            case 0:
                return ((InputStream) this.f1143b).skip(j2);
            default:
                return super.skip(j2);
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) {
        switch (this.f1142a) {
            case 0:
                return ((InputStream) this.f1143b).read(bArr, i2, i3);
            default:
                return super.read(bArr, i2, i3);
        }
    }
}
