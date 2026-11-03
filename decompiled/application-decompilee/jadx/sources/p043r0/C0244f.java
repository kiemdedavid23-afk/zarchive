package p043r0;

import android.content.Intent;
import android.system.Os;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p004b.C0015d;
import p011d0.C0063a;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p035n0.AbstractC0194a;
import p037o0.C0208f;
import p039p0.C0228f;
import p041q0.C0234a;
import p041q0.C0236c;
import p051u0.C0380c;
import p051u0.C0385h;
import p055w0.C0415f;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

/* JADX INFO: renamed from: r0.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0244f extends AbstractC0245g {

    /* JADX INFO: renamed from: i */
    public List<C0129h> f1346i;

    /* JADX INFO: renamed from: j */
    public List<String> f1347j;

    /* JADX INFO: renamed from: k */
    public List<String> f1348k;

    /* JADX INFO: renamed from: l */
    public List<C0129h> f1349l;

    /* JADX INFO: renamed from: m */
    public List<String> f1350m;

    public C0244f(ZArchiverService zArchiverService, int i2) {
        super(zArchiverService, (byte) 1, i2);
    }

    @Override // p043r0.AbstractC0245g, p043r0.InterfaceC0239a
    /* JADX INFO: renamed from: a */
    public final void mo694a(String str) {
    }

    @Override // p043r0.AbstractC0245g, p043r0.InterfaceC0239a
    /* JADX INFO: renamed from: c */
    public final void mo695c(long j2) {
    }

    /* JADX WARN: Code duplicated, block: B:151:0x0333  */
    /* JADX WARN: Code duplicated, block: B:81:0x01fa  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v29 */
    @Override // p043r0.AbstractC0245g
    /* JADX INFO: renamed from: p */
    public final void mo696p() {
        int i2;
        int i3;
        int i4;
        C0129h c0129h;
        boolean z2;
        boolean z3;
        int i5;
        List<C0129h> list = this.f1346i;
        ?? r4 = 1;
        if (list == null || this.f1349l == null || this.f1347j == null || !((this.f1348k == null || list.size() == this.f1348k.size()) && this.f1346i.size() == this.f1349l.size() && this.f1346i.size() == this.f1347j.size())) {
            m714q(1179648);
            this.f1351a.m895l(this, true, null, null);
            return;
        }
        boolean z4 = false;
        boolean z5 = (this.f1354d & (-2)) == 0;
        int i6 = 2;
        if (z5) {
            Iterator<C0129h> it = this.f1346i.iterator();
            while (it.hasNext()) {
                if (!m702d(it.next(), false)) {
                    return;
                }
            }
            if (!m704f(C0015d.m97y(this.f1346i.get(0).f1015c), this.f1349l, 3)) {
                return;
            }
        } else {
            Iterator<C0129h> it2 = this.f1346i.iterator();
            while (it2.hasNext()) {
                if (!m703e(2, 0, null, it2.next())) {
                    return;
                }
            }
            if (m709k(64)) {
                m715r((byte) 14);
            } else {
                m715r((byte) 5);
            }
        }
        if (m709k(16)) {
            if (this.f1346i.size() == 1) {
                ZArchiverService zArchiverService = this.f1351a;
                this.f1349l.get(0);
                this.f1348k.get(0);
                zArchiverService.getClass();
            }
            i2 = 1;
        } else {
            i2 = 0;
        }
        int size = this.f1346i.size();
        boolean z6 = true;
        int i7 = 0;
        boolean z7 = false;
        while (true) {
            if (i7 >= size) {
                i3 = 92;
                z4 = z6;
                break;
            }
            C0129h c0129h2 = this.f1349l.get(i7);
            if (this.f1346i.size() > r4 && this.f1350m != null) {
                String[] strArr = C2JBridge.f1562k;
                strArr[this.f1353c] = this.f1350m.get(i7) + " (" + (i7 + 1) + "/" + this.f1350m.size() + ")";
                ZArchiverService zArchiverService2 = this.f1351a;
                int i8 = this.f1353c;
                zArchiverService2.m898o(i8, strArr[i8]);
            }
            String str = this.f1346i.get(i7).f1015c;
            C0063a.m232b(this.f1353c, r4, str);
            List<String> list2 = this.f1348k;
            String str2 = list2 != null ? list2.get(i7) : "";
            if (isCancelled()) {
                i3 = 92;
                break;
            }
            if (!m709k(r4)) {
                i4 = i6;
                i3 = 92;
                if (!m706h()) {
                    z4 = false;
                    break;
                }
                C0236c c0236cM689c = C0236c.m689c(c0129h2, false);
                if (c0236cM689c != null) {
                    byte[] bArr = C0015d.f118e;
                    int i9 = this.f1353c;
                    bArr[i9] = (byte) (bArr[i9] | (-128));
                }
                if (c0236cM689c == null && c0129h2.m488o()) {
                    String str3 = c0129h2.f1015c;
                    int i10 = 1;
                    while (i10 < 10) {
                        AbstractC0127f abstractC0127fM463u = AbstractC0127f.m463u(c0129h2);
                        if (!abstractC0127fM463u.mo418d() || abstractC0127fM463u.mo420k()) {
                            break;
                        }
                        i10++;
                        c0129h2 = new C0129h(c0129h2.f1013a, C0015d.m78i(C0015d.m39A(str3), C0015d.m97y(str3) + "~" + i10));
                    }
                }
                c0129h = c0129h2;
                i3 = 92;
                boolean zCExtract = C2JBridge.cExtract(this.f1353c, str, this.f1347j.get(i7), str2, c0236cM689c != null ? c0236cM689c.f1324b : c0129h.f1015c, i2);
                if (c0236cM689c != null) {
                    try {
                        this.f1351a.mo754d(this.f1353c, -1);
                    } catch (Exception unused) {
                    }
                    if (c0236cM689c.m690a(this)) {
                        z2 = false;
                    } else {
                        z2 = false;
                        C0063a.m234d(this.f1353c, 0, "Failed to move files to destination");
                    }
                } else {
                    z2 = false;
                }
                z3 = zCExtract;
            } else {
                AbstractC0194a abstractC0194aM708j = m708j();
                String str4 = this.f1347j.get(i7);
                String str5 = c0129h2.f1015c;
                ArrayList<AbstractC0194a> arrayList = C0234a.f1319a;
                if (abstractC0194aM708j.m595f()) {
                    C0234a.m671b(abstractC0194aM708j);
                    String strM1062b = C0380c.m1062b(str);
                    String strM1062b2 = C0380c.m1062b(str5);
                    String strM676g = C0234a.m676g(abstractC0194aM708j, strM1062b2, r4);
                    String strM674e = C0234a.m674e(str4);
                    String strM674e2 = C0234a.m674e(str2);
                    boolean zM891i = ZArchiverService.m891i(i6);
                    if (abstractC0194aM708j.m592b("cd " + strM1062b2)) {
                        abstractC0194aM708j.m599k(z4);
                        StringBuilder sb = new StringBuilder();
                        sb.append(C0015d.m90r());
                        sb.append(zM891i ? " xp '" : " x '");
                        sb.append(strM1062b.replace("'", "'\\''"));
                        sb.append("' ");
                        sb.append(strM674e);
                        sb.append(" '-o");
                        sb.append(strM1062b2.replace("'", "'\\''"));
                        sb.append("' -- ");
                        sb.append(strM674e2);
                        if (abstractC0194aM708j.m592b(sb.toString()) && C0015d.m57S(abstractC0194aM708j) == 2) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                    } else {
                        z3 = false;
                    }
                    if (strM676g != null) {
                        C0234a.m676g(abstractC0194aM708j, strM676g, false);
                    }
                    C0234a.m673d(abstractC0194aM708j);
                } else {
                    z3 = z4;
                }
                boolean z8 = ZArchiverService.m891i(4) && C0208f.m614a(c0129h2);
                boolean z9 = !z8 && C0415f.m1137e(c0129h2.f1015c);
                if ((z8 || z9) && !str2.isEmpty()) {
                    String[] strArrM1084h = C0385h.m1084h(this.f1347j.get(i7), '\\');
                    int length = strArrM1084h.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= length) {
                            i4 = 2;
                            i5 = 0;
                            break;
                        }
                        String str6 = strArrM1084h[i11];
                        if (str6.startsWith("-z")) {
                            int length2 = str6.length();
                            i4 = 2;
                            i5 = (length2 - 2) + 1;
                            break;
                        }
                        i11++;
                    }
                    i3 = 92;
                    String[] strArrM1084h2 = C0385h.m1084h(str2, '\\');
                    if (z8) {
                        for (String strSubstring : strArrM1084h2) {
                            AbstractC0194a abstractC0194aM708j2 = m708j();
                            if (i5 != 0) {
                                strSubstring = strSubstring.substring(i5);
                            }
                            C0015d.m69d0(abstractC0194aM708j2, c0129h2, strSubstring);
                        }
                    } else {
                        for (String strSubstring2 : strArrM1084h2) {
                            AbstractC0194a abstractC0194aM708j3 = m708j();
                            if (i5 != 0) {
                                strSubstring2 = strSubstring2.substring(i5);
                            }
                            C0015d.m67c0(abstractC0194aM708j3, c0129h2, strSubstring2);
                        }
                    }
                } else {
                    i3 = 92;
                    i4 = 2;
                }
                c0129h = c0129h2;
                z2 = false;
            }
            if (isCancelled()) {
                z4 = z2;
                break;
            }
            if (!z3) {
                C0063a.m233c(this.f1353c, z2);
            }
            m712n();
            z6 = z6 && z3;
            if (!z7) {
                z7 = C0415f.m1134b(c0129h) == 1 && C0228f.m651b(c0129h);
            }
            i7++;
            i6 = i4;
            r4 = 1;
            z4 = false;
        }
        if (z5 && z7) {
            int size2 = this.f1346i.size();
            for (int i12 = 0; i12 < size2; i12++) {
                C0129h c0129h3 = this.f1349l.get(i12);
                if (C0415f.m1134b(c0129h3) == 1 && C0228f.m651b(c0129h3)) {
                    C0228f.m650a(c0129h3.f1015c, true);
                }
            }
        }
        m714q(z4 ? 1179648 : 1114112);
        this.f1351a.m895l(this, z4, this.f1358h, null);
        if (z5) {
            this.f1351a.m896m(this.f1353c, 1, null);
        } else if (isCancelled()) {
            return;
        }
        if (m709k(16)) {
            if (m700s(!z4 || m710l()) != null) {
                String strSubstring3 = "";
                String str7 = this.f1347j.get(0);
                if (str7.contains("\\-p")) {
                    strSubstring3 = str7.substring(str7.indexOf("\\-p") + 3);
                    if (strSubstring3.contains("\\")) {
                        strSubstring3 = strSubstring3.substring(0, strSubstring3.indexOf(i3));
                    }
                }
                if (C0385h.m1081e(strSubstring3)) {
                    String[] strArr2 = C2JBridge.f1557f;
                    if (!C0385h.m1081e(strArr2[this.f1353c])) {
                        String str8 = strArr2[this.f1353c];
                    }
                }
                ZArchiverService zArchiverService3 = this.f1351a;
                int i13 = this.f1353c;
                this.f1346i.get(0);
                zArchiverService3.m894k(i13, null, this.f1354d & 8);
                return;
            }
            return;
        }
        if (!m709k(32)) {
            if (m709k(128)) {
                if (m700s(!z4 || m710l()) != null) {
                    ZArchiverService zArchiverService4 = this.f1351a;
                    int i14 = this.f1353c;
                    this.f1346i.get(0);
                    zArchiverService4.m894k(i14, null, 128);
                    return;
                }
                return;
            }
            return;
        }
        ZArchiverService zArchiverService5 = this.f1351a;
        int i15 = this.f1353c;
        C0129h c0129h4 = this.f1346i.get(0);
        C0129h c0129h5 = this.f1349l.get(0);
        synchronized (zArchiverService5) {
            Intent intentM890h = ZArchiverService.m890h(i15, 0);
            intentM890h.putExtra("iAction", 23);
            intentM890h.putExtra("oPath", c0129h5);
            intentM890h.putExtra("sFilePath", c0129h4);
            zArchiverService5.sendBroadcast(intentM890h);
        }
    }

    /* JADX INFO: renamed from: s */
    public final String m700s(boolean z2) {
        long j2;
        List<String> list = this.f1348k;
        if (list == null) {
            return null;
        }
        String strSubstring = list.get(0);
        if (!strSubstring.isEmpty() && strSubstring.charAt(0) == '\\') {
            strSubstring = strSubstring.substring(1);
        }
        if (!z2) {
            return strSubstring;
        }
        try {
            j2 = Os.lstat(strSubstring).st_size;
        } catch (Exception unused) {
            j2 = -1;
        }
        if (j2 > 0) {
            return strSubstring;
        }
        return null;
    }
}
