package p013e;

import p040q.C0232a;

/* JADX INFO: renamed from: e.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0076b implements InterfaceC0077c {

    /* JADX INFO: renamed from: a */
    public final Object f526a;

    public C0076b(int i2, int i3) {
        if (i3 != 2) {
            this.f526a = new String[i2];
        } else {
            this.f526a = new C0232a[i2];
        }
    }

    /* JADX INFO: renamed from: a */
    public final String m260a(int i2) {
        return ((String[]) this.f526a)[i2];
    }

    /* JADX INFO: renamed from: b */
    public final boolean m261b(String str) {
        String strM263d = m263d(str);
        if (strM263d == null) {
            return false;
        }
        return Boolean.parseBoolean(strM263d);
    }

    /* JADX INFO: renamed from: c */
    public final Long m262c(String str) {
        String strM263d = m263d(str);
        if (strM263d == null) {
            return null;
        }
        return strM263d.startsWith("0x") ? Long.valueOf(strM263d.substring(2), 16) : Long.valueOf(strM263d);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x001b  */
    /* JADX INFO: renamed from: d */
    public final String m263d(String str) {
        for (C0232a c0232a : (C0232a[]) this.f526a) {
            if (c0232a.f1315b.equals(str)) {
                if (c0232a == null) {
                    return null;
                }
                return c0232a.f1318e;
            }
        }
        c0232a = null;
        if (c0232a == null) {
            return null;
        }
        return c0232a.f1318e;
    }
}
