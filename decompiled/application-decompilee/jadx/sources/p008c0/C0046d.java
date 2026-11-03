package p008c0;

import java.text.DateFormat;
import p004b.C0015d;
import p020g0.C0129h;
import p051u0.C0385h;
import ru.zdevs.zarchiver.media.MimeLib;

/* JADX INFO: renamed from: c0.d */
/* JADX INFO: loaded from: classes.dex */
public class C0046d {

    /* JADX INFO: renamed from: i */
    public static final DateFormat f350i = DateFormat.getDateInstance(3);

    /* JADX INFO: renamed from: j */
    public static final DateFormat f351j = DateFormat.getTimeInstance(3);

    /* JADX INFO: renamed from: a */
    public String f352a;

    /* JADX INFO: renamed from: b */
    public final String f353b;

    /* JADX INFO: renamed from: c */
    public final long f354c;

    /* JADX INFO: renamed from: d */
    public final long f355d;

    /* JADX INFO: renamed from: e */
    public byte f356e;

    /* JADX INFO: renamed from: f */
    public byte f357f;

    /* JADX INFO: renamed from: g */
    public boolean f358g;

    /* JADX INFO: renamed from: h */
    public Object f359h;

    public C0046d(String str, byte b2) {
        this.f352a = str;
        this.f353b = null;
        this.f356e = b2;
        this.f357f = (byte) 0;
        this.f354c = -1L;
        this.f355d = 0L;
        this.f358g = false;
        this.f359h = null;
    }

    /* JADX INFO: renamed from: a */
    public final void m180a(String str) {
        byte bCGetType;
        byte bM183d = m183d();
        byte b2 = this.f357f;
        if (bM183d == -2 || b2 == -1) {
            byte b3 = 0;
            try {
                bCGetType = (byte) MimeLib.cGetType(str + this.f352a);
            } catch (UnsatisfiedLinkError unused) {
                bCGetType = 0;
            }
            if (bM183d == -2) {
                bM183d = bCGetType;
            }
            if (bCGetType != 0) {
                b3 = b2 == -1 ? (byte) 30 : (byte) 29;
            }
            this.f356e = bM183d;
            if (this.f357f <= 0) {
                this.f357f = b3;
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final long m181b() {
        long j2 = this.f354c;
        if (j2 < 0) {
            return 0L;
        }
        return j2;
    }

    /* JADX INFO: renamed from: c */
    public final String m182c(boolean z2) {
        String str = "";
        if (m186g()) {
            return "";
        }
        long j2 = this.f355d;
        if (j2 == -2) {
            return "<LINK>";
        }
        if (z2) {
            z2 = this.f359h != null;
        }
        if (this.f356e == 4) {
            return z2 ? this.f359h.toString() : "<DIR>";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(C0385h.m1078b(j2, 0, null));
        if (z2) {
            str = "  \t•\t" + this.f359h;
        }
        sb.append(str);
        return sb.toString();
    }

    /* JADX INFO: renamed from: d */
    public final byte m183d() {
        if (this.f356e == -1) {
            byte bM43E = C0015d.m43E(this.f352a);
            this.f356e = bM43E;
            if (bM43E == 0) {
                if (this.f355d > 200) {
                    this.f356e = (byte) -2;
                }
            } else if (this.f357f == 0) {
                if (bM43E == 23 || bM43E == 25 || bM43E == 15) {
                    this.f357f = (byte) -1;
                }
            }
        }
        return this.f356e;
    }

    /* JADX INFO: renamed from: e */
    public final int m184e(C0129h c0129h) {
        return ((m185f() ? 2566 : (int) this.f355d) << 16) ^ (this.f352a.hashCode() + c0129h.hashCode());
    }

    /* JADX INFO: renamed from: f */
    public final boolean m185f() {
        byte b2 = this.f356e;
        return b2 == 4 || b2 == 3;
    }

    /* JADX INFO: renamed from: g */
    public final boolean m186g() {
        return this.f356e == 3;
    }

    /* JADX INFO: renamed from: h */
    public final boolean m187h() {
        return this.f356e != 3;
    }

    public C0046d(String str, byte b2, byte b3, long j2, long j3) {
        this.f352a = str;
        this.f353b = null;
        this.f356e = b2;
        this.f357f = b3;
        this.f354c = j2;
        this.f355d = j3;
        this.f358g = false;
        this.f359h = null;
    }

    public C0046d(String str, String str2, byte b2, byte b3, long j2, long j3) {
        this.f352a = str;
        this.f353b = str2;
        this.f356e = b2;
        this.f357f = b3;
        this.f354c = j2;
        this.f355d = j3;
        this.f358g = false;
        this.f359h = null;
    }
}
