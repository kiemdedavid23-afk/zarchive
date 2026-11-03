package p034n;

import p013e.C0076b;
import p040q.C0232a;

/* JADX INFO: renamed from: n.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0187a implements InterfaceC0193g {

    /* JADX INFO: renamed from: a */
    public boolean f1160a;

    /* JADX INFO: renamed from: b */
    public boolean f1161b;

    /* JADX INFO: renamed from: c */
    public String f1162c;

    /* JADX INFO: renamed from: d */
    public String f1163d;

    /* JADX INFO: renamed from: e */
    public static String m581e(C0190d c0190d, String str) {
        for (C0232a c0232a : (C0232a[]) ((C0076b) c0190d.f1177d).f526a) {
            if (c0232a.f1315b.equals(str)) {
                return c0232a.f1318e;
            }
        }
        return null;
    }

    @Override // p034n.InterfaceC0193g
    /* JADX INFO: renamed from: a */
    public final void mo582a() {
    }

    @Override // p034n.InterfaceC0193g
    /* JADX INFO: renamed from: b */
    public final void mo583b(C0190d c0190d) {
        if (((String) c0190d.f1176c).equals("background")) {
            this.f1160a = false;
            this.f1161b = true;
            this.f1163d = m581e(c0190d, "drawable");
        } else if (((String) c0190d.f1176c).equals("foreground")) {
            this.f1160a = true;
            this.f1161b = false;
            this.f1162c = m581e(c0190d, "drawable");
        } else if (((String) c0190d.f1176c).equals("bitmap")) {
            if (this.f1160a) {
                this.f1162c = m581e(c0190d, "src");
            } else if (this.f1161b) {
                this.f1163d = m581e(c0190d, "src");
            }
        }
    }

    @Override // p034n.InterfaceC0193g
    /* JADX INFO: renamed from: c */
    public final void mo584c() {
    }

    @Override // p034n.InterfaceC0193g
    /* JADX INFO: renamed from: d */
    public final void mo585d() {
    }
}
