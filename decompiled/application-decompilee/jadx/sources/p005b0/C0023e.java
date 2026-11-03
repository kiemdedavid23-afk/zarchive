package p005b0;

import p020g0.C0129h;

/* JADX INFO: renamed from: b0.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0023e {

    /* JADX INFO: renamed from: a */
    public int f184a;

    /* JADX INFO: renamed from: b */
    public String f185b;

    /* JADX INFO: renamed from: c */
    public C0129h f186c;

    /* JADX INFO: renamed from: d */
    public String f187d = "";

    /* JADX INFO: renamed from: e */
    public int f188e;

    public C0023e(int i2, int i3, String str, C0129h c0129h) {
        this.f184a = i2;
        this.f185b = str;
        this.f186c = c0129h;
        this.f188e = (byte) i3;
    }

    /* JADX INFO: renamed from: a */
    public static C0023e m124a(int i2, String str) {
        if (str.length() < 6) {
            return null;
        }
        int iIndexOf = str.indexOf(41);
        int iIndexOf2 = str.indexOf(93);
        if (iIndexOf < 0 || iIndexOf2 < 0) {
            return null;
        }
        String strSubstring = str.substring(1, iIndexOf);
        return new C0023e(Integer.parseInt(strSubstring), i2, str.substring(iIndexOf + 2, iIndexOf2), new C0129h(str.substring(iIndexOf2 + 1)));
    }

    /* JADX INFO: renamed from: b */
    public final boolean m125b(int i2) {
        return (i2 & this.f188e) != 0;
    }

    public final String toString() {
        return "(" + this.f184a + ")[" + this.f185b + "]" + this.f186c.m491r();
    }
}
