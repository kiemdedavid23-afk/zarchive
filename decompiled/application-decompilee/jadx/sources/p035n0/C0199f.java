package p035n0;

import java.io.DataInputStream;

/* JADX INFO: renamed from: n0.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0199f extends AbstractC0194a {

    /* JADX INFO: renamed from: k */
    public static boolean f1204k;

    /* JADX INFO: renamed from: l */
    public static byte f1205l;

    public C0199f() {
        try {
            m594e(new ProcessBuilder(new String[0]).command("su").start());
            if (f1204k) {
                return;
            }
            String strM604o = m604o();
            if (strM604o == null || strM604o.isEmpty() || this.f1190h != 0) {
                this.f1186d = null;
                this.f1187e = null;
                this.f1188f = null;
                this.f1192j = 1;
            } else {
                f1204k = true;
            }
        } catch (Exception unused) {
        }
    }

    @Override // p035n0.AbstractC0194a
    /* JADX INFO: renamed from: d */
    public final int mo593d() {
        return 1;
    }

    /* JADX INFO: renamed from: o */
    public final String m604o() {
        int i2;
        this.f1191i = false;
        this.f1190h = -1;
        try {
            StringBuilder sb = new StringBuilder();
            this.f1187e.write("id ; echo -e \"\\n#@#[$?]#@#\\n\" \r\n".getBytes("UTF-8"));
            this.f1187e.flush();
            int i3 = 60000;
            boolean z2 = false;
            while (!this.f1191i) {
                m598j(10L);
                if (this.f1188f.available() >= 6) {
                    DataInputStream dataInputStream = this.f1188f;
                    byte[] bArr = new byte[1024];
                    int i4 = 0;
                    while (dataInputStream.available() > 0 && (i2 = dataInputStream.read()) != -1) {
                        if (i2 != 13) {
                            bArr[i4] = (byte) i2;
                            i4++;
                        }
                    }
                    String str = i4 == 0 ? null : new String(bArr, 0, i4, "UTF-8");
                    if (str != null) {
                        sb.append(str);
                        if (!z2 && sb.indexOf("uid") != -1) {
                            z2 = true;
                        }
                        int iIndexOf = sb.indexOf("#@#[");
                        int iIndexOf2 = sb.indexOf("]#@#");
                        if (iIndexOf != -1 && iIndexOf2 != -1) {
                            this.f1191i = true;
                            try {
                                this.f1190h = Integer.parseInt(sb.substring(iIndexOf + 4, iIndexOf2));
                            } catch (Exception unused) {
                                this.f1190h = -1;
                            }
                        }
                    }
                }
                if (!z2 && (i3 = i3 - 1) <= 0) {
                    break;
                }
                if (m596h()) {
                    this.f1191i = true;
                    return null;
                }
            }
            if (z2) {
                return sb.toString();
            }
            return null;
        } catch (Exception unused2) {
            this.f1191i = true;
            return null;
        }
    }
}
