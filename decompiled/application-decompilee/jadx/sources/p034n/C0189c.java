package p034n;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import p004b.C0015d;
import p013e.C0076b;
import p030l.C0169a;
import p030l.C0170b;
import p030l.C0171c;
import p036o.AbstractC0201b;
import p038p.C0216g;
import p038p.C0219j;
import p040q.C0232a;

/* JADX INFO: renamed from: n.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0189c implements InterfaceC0193g {

    /* JADX INFO: renamed from: a */
    public final C0169a f1170a = new C0169a();

    /* JADX INFO: renamed from: b */
    public List<C0170b> f1171b = Collections.emptyList();

    /* JADX INFO: renamed from: c */
    public final C0216g f1172c;

    /* JADX INFO: renamed from: d */
    public final Locale f1173d;

    public C0189c(C0216g c0216g, Locale locale) {
        this.f1172c = c0216g;
        this.f1173d = locale;
    }

    @Override // p034n.InterfaceC0193g
    /* JADX INFO: renamed from: a */
    public final void mo582a() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:33:0x0062  */
    @Override // p034n.InterfaceC0193g
    /* JADX INFO: renamed from: b */
    public final void mo583b(C0190d c0190d) {
        byte b2;
        C0232a c0232a;
        C0076b c0076b = (C0076b) c0190d.f1177d;
        String str = (String) c0190d.f1176c;
        str.getClass();
        switch (str) {
            case "permission":
                b2 = 0;
                break;
            case "uses-sdk":
                b2 = 1;
                break;
            case "manifest":
                b2 = 2;
                break;
            case "uses-permission":
                b2 = 3;
                break;
            case "supports-screens":
                b2 = 4;
                break;
            case "application":
                b2 = 5;
                break;
            case "uses-feature":
                b2 = 6;
                break;
            default:
                b2 = -1;
                break;
        }
        C0169a c0169a = this.f1170a;
        switch (b2) {
            case 0:
                c0076b.m263d("name");
                c0076b.m263d("label");
                c0076b.m263d("icon");
                c0076b.m263d("description");
                c0076b.m263d("group");
                c0076b.m263d("android:protectionLevel");
                c0169a.f1113l.add(new C0015d());
                break;
            case 1:
                String strM263d = c0076b.m263d("minSdkVersion");
                if (strM263d != null) {
                    c0169a.f1108g = strM263d;
                }
                String strM263d2 = c0076b.m263d("targetSdkVersion");
                if (strM263d2 != null) {
                    c0169a.f1109h = strM263d2;
                }
                String strM263d3 = c0076b.m263d("maxSdkVersion");
                if (strM263d3 != null) {
                    c0169a.f1110i = strM263d3;
                }
                break;
            case 2:
                c0169a.f1102a = c0076b.m263d("package");
                c0169a.f1105d = c0076b.m263d("versionName");
                c0076b.m262c("revisionCode");
                c0169a.f1107f = c0076b.m263d("split");
                c0076b.m263d("configForSplit");
                c0076b.m261b("isFeatureSplit");
                c0076b.m261b("isSplitRequired");
                c0076b.m261b("isolatedSplits");
                Long lM262c = c0076b.m262c("versionCodeMajor");
                Long lM262c2 = c0076b.m262c("versionCode");
                if (lM262c != null) {
                    if (lM262c2 == null) {
                        lM262c2 = 0L;
                    }
                    lM262c2 = Long.valueOf((lM262c.longValue() << 32) | (4294967295L & lM262c2.longValue()));
                }
                c0169a.f1106e = lM262c2;
                c0076b.m263d("installLocation");
                c0076b.m263d("compileSdkVersion");
                c0076b.m263d("compileSdkVersionCodename");
                c0076b.m263d("platformBuildVersionCode");
                c0076b.m263d("platformBuildVersionName");
                break;
            case 3:
                c0169a.f1111j.add(c0076b.m263d("name"));
                break;
            case 4:
                c0076b.m261b("anyDensity");
                c0169a.getClass();
                c0076b.m261b("smallScreens");
                c0076b.m261b("normalScreens");
                c0076b.m261b("largeScreens");
                break;
            case 5:
                c0076b.m261b("debuggable");
                c0169a.getClass();
                String strM263d4 = c0076b.m263d("label");
                if (strM263d4 != null) {
                    c0169a.f1103b = strM263d4;
                }
                C0232a[] c0232aArr = (C0232a[]) c0076b.f526a;
                int length = c0232aArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        c0232a = c0232aArr[i2];
                        if (!c0232a.f1315b.equals("icon")) {
                            i2++;
                        }
                    } else {
                        c0232a = null;
                    }
                }
                if (c0232a != null) {
                    AbstractC0201b abstractC0201b = c0232a.f1317d;
                    if (abstractC0201b instanceof AbstractC0201b.i) {
                        long j2 = ((long) ((AbstractC0201b.i) abstractC0201b).f1209a) & 4294967295L;
                        C0216g c0216g = this.f1172c;
                        List<C0216g.a> listM617a = c0216g.m617a(j2);
                        if (!listM617a.isEmpty()) {
                            ArrayList arrayList = new ArrayList();
                            boolean z2 = false;
                            for (C0216g.a aVar : listM617a) {
                                C0219j c0219j = aVar.f1250b;
                                String strMo616a = aVar.f1251c.mo616a(c0216g, this.f1173d);
                                int i3 = c0219j.f1259g;
                                if (i3 == 0) {
                                    c0169a.f1104c = strMo616a;
                                    z2 = true;
                                }
                                arrayList.add(new C0170b(i3, strMo616a));
                            }
                            if (!z2) {
                                c0169a.f1104c = ((C0170b) arrayList.get(0)).f1114a;
                            }
                            this.f1171b = arrayList;
                        }
                    } else {
                        String str2 = c0232a.f1318e;
                        if (str2 != null) {
                            c0169a.f1104c = str2;
                            this.f1171b = Collections.singletonList(new C0170b(0, str2));
                        }
                    }
                }
                break;
            case 6:
                String strM263d5 = c0076b.m263d("name");
                c0076b.m261b("required");
                if (strM263d5 != null) {
                    c0169a.f1112k.add(new C0171c(strM263d5));
                }
                break;
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
