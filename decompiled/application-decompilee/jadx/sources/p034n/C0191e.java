package p034n;

import p013e.C0076b;

/* JADX INFO: renamed from: n.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0191e implements InterfaceC0193g {

    /* JADX INFO: renamed from: c */
    public String f1180c = null;

    /* JADX INFO: renamed from: a */
    public String f1178a = null;

    /* JADX INFO: renamed from: b */
    public Long f1179b = null;

    @Override // p034n.InterfaceC0193g
    /* JADX INFO: renamed from: a */
    public final void mo582a() {
    }

    @Override // p034n.InterfaceC0193g
    /* JADX INFO: renamed from: b */
    public final void mo583b(C0190d c0190d) {
        C0076b c0076b = (C0076b) c0190d.f1177d;
        String str = (String) c0190d.f1176c;
        str.getClass();
        if (str.equals("uses-sdk")) {
            c0076b.m263d("targetSdkVersion");
            c0076b.m263d("maxSdkVersion");
            return;
        }
        if (str.equals("manifest")) {
            this.f1178a = c0076b.m263d("package");
            c0076b.m263d("versionName");
            c0076b.m262c("revisionCode");
            this.f1180c = c0076b.m263d("split");
            Long lM262c = c0076b.m262c("versionCodeMajor");
            Long lM262c2 = c0076b.m262c("versionCode");
            this.f1179b = lM262c2;
            if (lM262c != null) {
                if (lM262c2 == null) {
                    this.f1179b = 0L;
                }
                this.f1179b = Long.valueOf((lM262c.longValue() << 32) | (this.f1179b.longValue() & 4294967295L));
            }
            c0076b.m263d("compileSdkVersion");
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
