package p060z;

import android.content.ClipData;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import java.io.File;
import java.util.ArrayList;
import p004b.C0015d;
import p008c0.C0046d;
import p011d0.C0064b;
import p011d0.C0068f;
import p011d0.C0070h;
import p014e0.C0079a;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p047s0.C0358b;
import p049t0.C0374b;
import p051u0.C0382e;
import p051u0.C0385h;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.archiver.NArc;

/* JADX INFO: renamed from: z.l0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0476l0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final C0449a f2307e;

    /* JADX INFO: renamed from: f */
    public final C0129h f2308f;

    /* JADX INFO: renamed from: g */
    public final long f2309g;

    /* JADX INFO: renamed from: h */
    public final boolean f2310h;

    /* JADX INFO: renamed from: i */
    public final int f2311i;

    /* JADX INFO: renamed from: j */
    public final int f2312j;

    /* JADX INFO: renamed from: k */
    public final byte f2313k;

    public C0476l0(C0129h c0129h, long j2, boolean z2, int i2, int i3, byte b2) {
        this.f2307e = null;
        this.f2308f = c0129h;
        this.f2309g = j2;
        this.f2310h = z2;
        this.f2311i = i2;
        this.f2312j = i3;
        this.f2313k = b2;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0082 A[PHI: r3
      0x0082: PHI (r3v36 ru.zdevs.zarchiver.archiver.NArc) = (r3v34 ru.zdevs.zarchiver.archiver.NArc), (r3v37 ru.zdevs.zarchiver.archiver.NArc) binds: [B:40:0x007c, B:43:0x0080] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() throws Throwable {
        String str;
        boolean z2;
        String strM243g;
        NArc nArcM806k;
        boolean z3;
        C0068f c0068fM815h;
        C0449a c0449a = this.f2307e;
        if (c0449a != null && m1209n(null)) {
            return null;
        }
        C0129h c0129h = this.f2308f;
        if (!c0129h.m480g()) {
            if (c0129h.m484k()) {
                if (!"plglocal".equals(c0129h.f1013a) && !C0015d.m49K(AbstractC0126e.m452c(c0129h), 1)) {
                    m1208m(null);
                    str = null;
                    z2 = true;
                }
            } else {
                if (!c0129h.m488o()) {
                    return new C0499x("Unsupported path " + c0129h);
                }
                if (this.f2313k != 1 && c0129h.m483j() && !c0129h.m485l() && C0358b.m1038i(c0129h.f1015c) && !new File(c0129h.f1015c).canRead()) {
                    c0129h.m490q("root");
                }
            }
            str = null;
            z2 = false;
        } else if (c0129h.m481h() || !C0064b.m244h(c0129h, this.f2309g)) {
            m1208m(null);
            str = null;
            z2 = true;
        } else {
            String str2 = c0129h.f1015c;
            if (!this.f2310h || C0070h.m253d().m257e(str2)) {
                strM243g = null;
            } else {
                String strM275i = C0079a.m266m().m278n(str2) ? C0079a.m266m().m275i() : null;
                strM243g = C0064b.m243g(null);
                if (C0385h.m1081e(strM243g)) {
                    return null;
                }
                try {
                    nArcM806k = NArc.m806k(c0129h.f1015c, strM275i, strM243g);
                    if (nArcM806k != null) {
                        try {
                            c0068fM815h = nArcM806k.m815h(C0015d.m79i0(-1, c0129h.f1016d), c0129h.f1017e);
                        } catch (NArc.NArcPasswordException unused) {
                            if (nArcM806k != null) {
                                nArcM806k.m809b(null);
                            }
                            z3 = true;
                        } catch (Exception unused2) {
                            if (nArcM806k != null) {
                                nArcM806k.m809b(null);
                            }
                            z3 = true;
                        } catch (Throwable th) {
                            th = th;
                            if (nArcM806k != null) {
                                nArcM806k.m809b(null);
                            }
                            throw th;
                        }
                    } else {
                        c0068fM815h = null;
                    }
                    if (nArcM806k != null) {
                        nArcM806k.m809b(c0068fM815h);
                    }
                    z3 = false;
                } catch (NArc.NArcPasswordException unused3) {
                    nArcM806k = null;
                } catch (Exception unused4) {
                    nArcM806k = null;
                } catch (Throwable th2) {
                    th = th2;
                    nArcM806k = null;
                }
                if (z3) {
                    return new C0499x(R.string.ERROR_WRONG_PASSWORD);
                }
            }
            if (c0449a != null) {
                m1208m(strM243g);
                z2 = true;
            } else {
                z2 = false;
            }
            str = strM243g;
        }
        if (!z2 && c0449a == null) {
            Bundle bundle = new Bundle(1);
            bundle.putInt("zaSortType", this.f2312j);
            if (C0015d.m49K(this.f2311i, 8)) {
                ZArchiver zArchiverM730z = ZArchiver.m730z();
                if (zArchiverM730z != null) {
                    C0382e.m1066d(zArchiverM730z, this.f2308f, null, this.f2309g, str, bundle);
                }
                return null;
            }
            String strM42D = C0015d.m42D(c0129h.m478e());
            C0374b c0374bM88p = !strM42D.isEmpty() ? C0015d.m88p(0, strM42D) : null;
            try {
                ZArchiver zArchiverM730z2 = ZArchiver.m730z();
                if (zArchiverM730z2 != null) {
                    C0382e.m1065c(zArchiverM730z2, this.f2308f, this.f2309g, str, c0374bM88p, bundle);
                }
            } catch (C0382e.a unused5) {
                m1208m(null);
            }
        }
        return null;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 111;
    }

    /* JADX INFO: renamed from: m */
    public final void m1208m(String str) {
        ZArchiver zArchiverM730z = ZArchiver.m730z();
        if (zArchiverM730z == null) {
            return;
        }
        if (this.f2307e == null) {
            zArchiverM730z.f1386h.f1624c.f1495g.m839e(this.f2308f, this.f2311i);
            return;
        }
        if (str == null) {
            str = "";
        }
        m1209n(str);
    }

    /* JADX INFO: renamed from: n */
    public final boolean m1209n(String str) {
        C0449a c0449a = this.f2307e;
        int iM1203h = c0449a.m1203h();
        C0129h c0129h = this.f2308f;
        boolean zM480g = c0129h.m480g();
        ArrayList<C0046d> arrayList = c0449a.f2256a;
        if (zM480g && str == null && !C0070h.m253d().m257e(c0129h.f1015c)) {
            for (int i2 = 0; i2 < iM1203h; i2++) {
                if (arrayList.get(i2).f357f == 28) {
                    return false;
                }
            }
        }
        ZArchiver zArchiverM730z = ZArchiver.m730z();
        if (zArchiverM730z == null) {
            return true;
        }
        if (iM1203h > 1) {
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(iM1203h);
            for (int i3 = 0; i3 < iM1203h; i3++) {
                Uri uriM1064b = C0382e.m1064b(zArchiverM730z, c0449a.m1196a(i3), arrayList.get(i3).f355d, str);
                if (uriM1064b != null) {
                    arrayList2.add(uriM1064b);
                }
            }
            if (arrayList2.size() == 0) {
                ZApp.m725i(R.string.ERROR_UNSUPORTED_METOD);
            } else {
                Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
                intent.setFlags(268435456);
                intent.setType("*/*");
                intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList2);
                if (Build.VERSION.SDK_INT >= 24) {
                    ClipData clipData = new ClipData(null, new String[]{"*/*"}, new ClipData.Item((Uri) arrayList2.get(0)));
                    int size = arrayList2.size();
                    for (int i4 = 1; i4 < size; i4++) {
                        clipData.addItem(new ClipData.Item((Uri) arrayList2.get(i4)));
                    }
                    intent.setClipData(clipData);
                    intent.addFlags(1);
                }
                zArchiverM730z.startActivity(Intent.createChooser(intent, zArchiverM730z.getResources().getString(R.string.MENU_SHARE)));
            }
        } else {
            Uri uriM1064b2 = C0382e.m1064b(zArchiverM730z, c0449a.m1196a(0), arrayList.get(0).f355d, str);
            if (uriM1064b2 != null) {
                C0382e.m1067e(zArchiverM730z, uriM1064b2, c0449a.m1197b(0));
            }
        }
        return true;
    }

    public C0476l0(C0449a c0449a) {
        this.f2307e = c0449a;
        this.f2308f = c0449a.m1202g();
        this.f2309g = 0L;
        this.f2310h = false;
        this.f2311i = 0;
        this.f2312j = 0;
        this.f2313k = (byte) 1;
    }
}
