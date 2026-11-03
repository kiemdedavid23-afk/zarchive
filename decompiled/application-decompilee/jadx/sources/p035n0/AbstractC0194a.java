package p035n0;

import android.content.Context;
import android.content.pm.PackageInfo;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import p033m0.C0181d;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: n0.a */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0194a implements Closeable {

    /* JADX INFO: renamed from: c */
    public String f1185c;

    /* JADX INFO: renamed from: d */
    public Process f1186d;

    /* JADX INFO: renamed from: e */
    public DataOutputStream f1187e;

    /* JADX INFO: renamed from: f */
    public DataInputStream f1188f;

    /* JADX INFO: renamed from: g */
    public DataInputStream f1189g;

    /* JADX INFO: renamed from: i */
    public volatile boolean f1191i;

    /* JADX INFO: renamed from: a */
    public int f1183a = 0;

    /* JADX INFO: renamed from: b */
    public String f1184b = null;

    /* JADX INFO: renamed from: h */
    public int f1190h = 0;

    /* JADX INFO: renamed from: j */
    public int f1192j = 0;

    /* JADX INFO: renamed from: c */
    public static AbstractC0194a m589c(int i2) {
        if (i2 != 1) {
            return (i2 == 2 || i2 == 3) ? new C0198e() : new C0195b();
        }
        return new C0199f();
    }

    /* JADX INFO: renamed from: g */
    public static boolean m590g(int i2) {
        if (i2 != 1) {
            if (i2 != 2 && i2 != 3) {
                return true;
            }
            if (C0198e.f1202k == 0) {
                if (ZApp.f1379g) {
                    C0198e.f1202k = (byte) 2;
                } else {
                    PackageInfo packageInfo = null;
                    Context contextM720c = ZApp.m720c(null);
                    if (contextM720c != null) {
                        try {
                            packageInfo = contextM720c.getPackageManager().getPackageInfo("moe.shizuku.privileged.api", 0);
                        } catch (Throwable unused) {
                        }
                    }
                    if (packageInfo == null || packageInfo.versionCode < 502) {
                        C0198e.f1202k = (byte) 1;
                    } else {
                        C0198e.f1202k = (byte) 2;
                    }
                }
            }
            return C0198e.f1202k == 2;
        }
        if (C0199f.f1205l == 0) {
            C0199f.f1205l = (byte) 1;
            C0195b c0195b = new C0195b();
            if (c0195b.m595f() && c0195b.m591a(5, "su -v")) {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String strM599k = c0195b.m599k(true);
                    if (strM599k == null) {
                        break;
                    }
                    sb.append(strM599k);
                    sb.append('\n');
                }
                sb.length();
                if (c0195b.f1190h == 0) {
                    C0199f.f1205l = (byte) 2;
                }
            }
            c0195b.close();
        }
        return C0199f.f1205l == 2;
    }

    /* JADX INFO: renamed from: a */
    public final synchronized boolean m591a(int i2, String str) {
        if (!m602n(str + " ; echo -e \"\\n#@#[$?]#@#\\n\" \r\n")) {
            return false;
        }
        return m600l(i2, 2);
    }

    /* JADX INFO: renamed from: b */
    public final synchronized boolean m592b(String str) {
        return m591a(600, str);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f1191i = true;
        synchronized (this) {
            notifyAll();
        }
        C0181d.m563d(this.f1187e);
        this.f1187e = null;
        C0181d.m563d(this.f1188f);
        this.f1188f = null;
        C0181d.m563d(this.f1189g);
        this.f1189g = null;
        Process process = this.f1186d;
        if (process != null) {
            try {
                process.destroy();
            } catch (Exception unused) {
            }
            this.f1186d = null;
        }
    }

    /* JADX INFO: renamed from: d */
    public abstract int mo593d();

    /* JADX INFO: renamed from: e */
    public final void m594e(Process process) {
        this.f1191i = false;
        this.f1186d = process;
        this.f1187e = new DataOutputStream(this.f1186d.getOutputStream());
        this.f1188f = new DataInputStream(this.f1186d.getInputStream());
        this.f1189g = new DataInputStream(this.f1186d.getErrorStream());
    }

    /* JADX INFO: renamed from: f */
    public final boolean m595f() {
        return (this.f1186d == null || this.f1187e == null || this.f1188f == null) ? false : true;
    }

    /* JADX INFO: renamed from: h */
    public final boolean m596h() {
        Process process = this.f1186d;
        if (process == null) {
            return true;
        }
        try {
            process.exitValue();
            if (!this.f1191i) {
                try {
                    Thread.sleep(300L);
                } catch (Exception unused) {
                }
                m597i();
                this.f1191i = true;
            }
            return true;
        } catch (IllegalArgumentException unused2) {
            return false;
        }
    }

    /* JADX INFO: renamed from: i */
    public final void m597i() {
        String strM572m;
        try {
            DataInputStream dataInputStream = this.f1189g;
            if (dataInputStream == null || dataInputStream.available() <= 0) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            while (!this.f1191i && (strM572m = C0181d.m572m(this.f1189g, false)) != null) {
                sb.append(strM572m);
                sb.append('\n');
            }
            if (sb.length() > 2) {
                this.f1185c = sb.toString();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: j */
    public final void m598j(long j2) {
        synchronized (this) {
            wait(j2);
        }
    }

    /* JADX INFO: renamed from: k */
    public final synchronized String m599k(boolean z2) {
        String str;
        DataInputStream dataInputStream;
        str = null;
        while (!this.f1191i && (dataInputStream = this.f1188f) != null && (!z2 || str == null)) {
            try {
                if (dataInputStream.available() <= 0) {
                    m598j(100L);
                } else {
                    if (this.f1191i) {
                        break;
                    }
                    String strM572m = C0181d.m572m(this.f1188f, true);
                    if (strM572m != null) {
                        if (strM572m.startsWith("#@#[") && strM572m.endsWith("]#@#")) {
                            try {
                                this.f1190h = Integer.parseInt(strM572m.substring(4, strM572m.length() - 4));
                            } catch (Exception unused) {
                                this.f1190h = -1;
                            }
                            if (this.f1190h != 0) {
                                m597i();
                            }
                            this.f1191i = true;
                        } else {
                            str = strM572m;
                        }
                    }
                }
            } catch (Exception unused2) {
            }
        }
        return str;
    }

    /* JADX INFO: renamed from: l */
    public final synchronized boolean m600l(int i2, int i3) {
        int i4 = i2 * 100;
        do {
            try {
                m598j(10L);
                int iAvailable = this.f1188f.available();
                if (this.f1188f != null && iAvailable < i3 && (i4 = i4 - 1) > 0 && !this.f1191i) {
                }
                return i4 > 0;
            } catch (Exception unused) {
                this.f1191i = true;
                return false;
            }
        } while (!m596h());
        this.f1191i = true;
        return false;
    }

    /* JADX INFO: renamed from: m */
    public final void m601m(String str) {
        if (this.f1191i || this.f1187e == null) {
            return;
        }
        try {
            this.f1187e.write((str + "\r\n").getBytes("UTF-8"));
            this.f1187e.flush();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: n */
    public final synchronized boolean m602n(String str) {
        this.f1191i = false;
        this.f1190h = -1;
        if (this.f1187e == null) {
            return false;
        }
        try {
            this.f1185c = null;
            DataInputStream dataInputStream = this.f1188f;
            if (dataInputStream != null && dataInputStream.available() > 0) {
                DataInputStream dataInputStream2 = this.f1188f;
                dataInputStream2.skip(dataInputStream2.available());
            }
            DataInputStream dataInputStream3 = this.f1189g;
            if (dataInputStream3 != null && dataInputStream3.available() > 0) {
                DataInputStream dataInputStream4 = this.f1189g;
                dataInputStream4.skip(dataInputStream4.available());
            }
            this.f1187e.write(str.getBytes("UTF-8"));
            this.f1187e.flush();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
