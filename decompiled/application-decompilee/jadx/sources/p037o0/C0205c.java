package p037o0;

import p004b.C0015d;
import p020g0.AbstractC0126e;
import p035n0.AbstractC0194a;
import p051u0.C0385h;

/* JADX INFO: renamed from: o0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0205c extends C0203a {
    /* JADX INFO: renamed from: c */
    public static boolean m608c(AbstractC0194a abstractC0194a, String str, AbstractC0126e.b bVar) {
        String str2;
        if (str == null) {
            return false;
        }
        boolean zM606b = C0203a.m606b();
        if (zM606b) {
            str2 = C0203a.m605a() + " du -s '" + str.replace("'", "'\\''") + "'";
        } else {
            str2 = "du -s -d 10 '" + str.replace("'", "'\\''") + "'";
        }
        if (!abstractC0194a.m592b(str2)) {
            return false;
        }
        int i2 = (zM606b && "/".equals(str)) ? 3 : 2;
        while (true) {
            try {
                String strM599k = abstractC0194a.m599k(true);
                if (strM599k == null) {
                    break;
                }
                if (!strM599k.isEmpty()) {
                    String[] strArrM1084h = C0385h.m1084h(strM599k, '\t');
                    if (strArrM1084h.length >= i2) {
                        bVar.f997c = C0015d.m81j0(0L, strArrM1084h[0]);
                        if (zM606b) {
                            bVar.f998d = C0015d.m79i0(0, strArrM1084h[1]);
                        } else {
                            continue;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return abstractC0194a.f1190h == 0;
    }
}
