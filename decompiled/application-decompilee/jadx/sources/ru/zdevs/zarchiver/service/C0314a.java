package ru.zdevs.zarchiver.service;

import java.util.LinkedList;
import p004b.C0015d;
import p020g0.C0129h;
import p051u0.C0385h;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.service.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0314a {

    /* JADX INFO: renamed from: a */
    public final LinkedList<a> f1661a = new LinkedList<>();

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.service.a$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public final String f1662a;

        /* JADX INFO: renamed from: b */
        public final int f1663b;

        /* JADX INFO: renamed from: c */
        public final int f1664c;

        public a(int i2, int i3, String str) {
            this.f1662a = str;
            this.f1663b = i2;
            this.f1664c = i3;
        }
    }

    /* JADX INFO: renamed from: c */
    public static String m902c(C0129h c0129h) {
        StringBuilder sb = new StringBuilder();
        if (!C0385h.m1081e(c0129h.f1014b)) {
            sb.append(c0129h.f1014b);
            sb.append('/');
        }
        sb.append(c0129h.f1015c);
        return sb.toString();
    }

    /* JADX INFO: renamed from: a */
    public final synchronized boolean m903a(C0129h c0129h, int i2, int i3, int i4) {
        String strM902c = m902c(c0129h);
        if (m904b(i2, i3, i4, strM902c) != null) {
            return false;
        }
        return this.f1661a.add(new a(i2, i3, strM902c));
    }

    /* JADX INFO: renamed from: b */
    public final synchronized a m904b(int i2, int i3, int i4, String str) {
        for (a aVar : this.f1661a) {
            if (!C0015d.m49K(i4, 1) || aVar.f1664c != i3) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 == 3) {
                            if (aVar.f1663b == 4 && C0015d.m51M(aVar.f1662a, str)) {
                                return aVar;
                            }
                        } else if (i2 == 4 && C0015d.m51M(str, aVar.f1662a)) {
                            return aVar;
                        }
                    }
                } else if (aVar.f1663b == 2 && C0015d.m86n(str, aVar.f1662a)) {
                    return aVar;
                }
                if (aVar.f1663b == 1 && C0015d.m86n(str, aVar.f1662a)) {
                    return aVar;
                }
                if (aVar.f1663b == 4) {
                    continue;
                }
            }
        }
        return null;
    }
}
