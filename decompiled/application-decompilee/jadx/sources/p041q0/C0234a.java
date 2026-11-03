package p041q0;

import java.util.ArrayList;
import p004b.C0015d;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p035n0.AbstractC0194a;
import p037o0.C0204b;
import p037o0.C0207e;
import p051u0.C0380c;
import p055w0.C0410a;

/* JADX INFO: renamed from: q0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0234a {

    /* JADX INFO: renamed from: a */
    public static final ArrayList<AbstractC0194a> f1319a = new ArrayList<>(2);

    /* JADX INFO: renamed from: a */
    public static boolean m670a(AbstractC0194a abstractC0194a, String str, String str2, String str3, String str4) {
        if (!abstractC0194a.m595f()) {
            return false;
        }
        m671b(abstractC0194a);
        String strM1062b = C0380c.m1062b(str);
        String strM1062b2 = C0380c.m1062b(str4);
        String strM676g = m676g(abstractC0194a, strM1062b, true);
        boolean zM75g0 = C0015d.m75g0(strM1062b, m674e(str2), m674e(str3), strM1062b2, abstractC0194a, true);
        if (strM676g != null) {
            m676g(abstractC0194a, strM676g, false);
        }
        m673d(abstractC0194a);
        return zM75g0;
    }

    /* JADX INFO: renamed from: b */
    public static void m671b(AbstractC0194a abstractC0194a) {
        ArrayList<AbstractC0194a> arrayList = f1319a;
        synchronized (arrayList) {
            arrayList.add(abstractC0194a);
        }
    }

    /* JADX INFO: renamed from: c */
    public static int m672c(AbstractC0194a abstractC0194a, C0129h c0129h, C0129h c0129h2, int i2) {
        if (!abstractC0194a.m595f()) {
            return -1;
        }
        m671b(abstractC0194a);
        int iM607c = C0204b.m607c(abstractC0194a, false, i2, C0015d.m49K(AbstractC0126e.m452c(c0129h2), 4), C0380c.m1062b(c0129h.f1015c), C0380c.m1062b(c0129h2.f1015c));
        m673d(abstractC0194a);
        return iM607c;
    }

    /* JADX INFO: renamed from: d */
    public static void m673d(AbstractC0194a abstractC0194a) {
        ArrayList<AbstractC0194a> arrayList = f1319a;
        synchronized (arrayList) {
            arrayList.remove(abstractC0194a);
        }
    }

    /* JADX INFO: renamed from: e */
    public static String m674e(String str) {
        int length = str.length();
        if (length == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(length);
        sb.append('\'');
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\\') {
                if (i2 != 0) {
                    sb.append("' '");
                }
            } else if (cCharAt == '\'') {
                sb.append("'\\''");
            } else {
                sb.append(cCharAt);
            }
        }
        if (sb.charAt(sb.length() - 1) != '\'') {
            sb.append('\'');
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: f */
    public static int m675f(AbstractC0194a abstractC0194a, C0129h c0129h, C0129h c0129h2, int i2) {
        if (!abstractC0194a.m595f()) {
            return -1;
        }
        m671b(abstractC0194a);
        int iM607c = C0204b.m607c(abstractC0194a, true, i2, C0015d.m49K(AbstractC0126e.m452c(c0129h2), 4), C0380c.m1062b(c0129h.f1015c), C0380c.m1062b(c0129h2.f1015c));
        m673d(abstractC0194a);
        return iM607c;
    }

    /* JADX INFO: renamed from: g */
    public static String m676g(AbstractC0194a abstractC0194a, String str, boolean z2) {
        C0410a.a aVar;
        if (!abstractC0194a.m595f()) {
            return null;
        }
        if (z2) {
            C0410a.a aVarM1103b = C0410a.m1103b(C0380c.m1062b(str), true);
            if (aVarM1103b != null) {
                String str2 = aVarM1103b.f2146d;
                if (!(str2 != null && str2.contains("rw")) && aVarM1103b.m1106a() != 5) {
                    aVar = aVarM1103b;
                    str = aVarM1103b.f2144b;
                }
            }
            return null;
        }
        aVar = null;
        if (C0207e.m613a(abstractC0194a, str, aVar, z2) == 0) {
            return str;
        }
        return null;
    }

    /* JADX INFO: renamed from: h */
    public static void m677h(int i2) {
        ArrayList<AbstractC0194a> arrayList = f1319a;
        synchronized (arrayList) {
            for (AbstractC0194a abstractC0194a : arrayList) {
                if (abstractC0194a.f1183a == i2) {
                    String str = abstractC0194a.f1184b;
                    if (str == null) {
                        break;
                    }
                    abstractC0194a.m601m(str);
                    break;
                }
            }
        }
    }
}
