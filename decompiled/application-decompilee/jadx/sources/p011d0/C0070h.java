package p011d0;

import p051u0.C0385h;

/* JADX INFO: renamed from: d0.h */
/* JADX INFO: loaded from: classes.dex */
public final class C0070h {

    /* JADX INFO: renamed from: d */
    public static C0070h f492d;

    /* JADX INFO: renamed from: a */
    public String f493a;

    /* JADX INFO: renamed from: b */
    public String f494b;

    /* JADX INFO: renamed from: c */
    public int f495c;

    public C0070h() {
        m254a();
    }

    /* JADX INFO: renamed from: d */
    public static C0070h m253d() {
        if (f492d == null) {
            f492d = new C0070h();
        }
        return f492d;
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m254a() {
        this.f493a = null;
        this.f494b = null;
    }

    /* JADX INFO: renamed from: b */
    public final synchronized String m255b(String str, boolean z2) {
        String strReplace;
        if (str == null) {
            return "";
        }
        String str2 = this.f493a;
        if (str2 == null || !str2.endsWith(str) || (strReplace = this.f494b) == null) {
            return "";
        }
        if (z2) {
            strReplace = strReplace.replace("\\", "\\\\");
        }
        return strReplace;
    }

    /* JADX INFO: renamed from: c */
    public final synchronized String m256c(boolean z2) {
        String strReplace;
        if (this.f493a == null || (strReplace = this.f494b) == null) {
            return "";
        }
        if (z2) {
            strReplace = strReplace.replace("\\", "\\\\");
        }
        return strReplace;
    }

    /* JADX INFO: renamed from: e */
    public final synchronized boolean m257e(String str) {
        boolean z2 = false;
        if (str == null) {
            return false;
        }
        String str2 = this.f493a;
        if (str2 != null && str2.endsWith(str) && !C0385h.m1081e(this.f494b)) {
            z2 = true;
        }
        return z2;
    }

    /* JADX INFO: renamed from: f */
    public final synchronized boolean m258f(String str) {
        if (str == null) {
            return false;
        }
        String str2 = this.f493a;
        if (str2 == null || !str2.endsWith(str)) {
            return false;
        }
        return 1 == this.f495c;
    }

    /* JADX INFO: renamed from: g */
    public final synchronized void m259g(String str, String str2) {
        this.f493a = str;
        this.f494b = str2;
        this.f495c = 1;
    }
}
