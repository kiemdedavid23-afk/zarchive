package p043r0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p004b.C0015d;
import p011d0.C0063a;
import p011d0.C0071i;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p035n0.AbstractC0194a;
import p037o0.C0209g;
import p039p0.C0228f;
import p041q0.C0234a;
import p041q0.C0235b;
import p041q0.C0236c;
import p051u0.C0380c;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

/* JADX INFO: renamed from: r0.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0243e extends AbstractC0245g {

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ int f1342i;

    /* JADX INFO: renamed from: j */
    public Object f1343j;

    /* JADX INFO: renamed from: k */
    public Object f1344k;

    /* JADX INFO: renamed from: l */
    public Object f1345l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0243e(ZArchiverService zArchiverService, int i2, int i3) {
        super(zArchiverService, (byte) 8, i2);
        this.f1342i = i3;
        if (i3 == 1) {
            super(zArchiverService, (byte) 11, i2);
        } else if (i3 != 2) {
        } else {
            super(zArchiverService, (byte) 6, i2);
        }
    }

    @Override // p043r0.AbstractC0245g, p043r0.InterfaceC0239a
    /* JADX INFO: renamed from: a */
    public final void mo694a(String str) {
        switch (this.f1342i) {
            case 2:
                String[] strArr = C2JBridge.f1558g;
                int i2 = this.f1353c;
                strArr[i2] = str;
                try {
                    this.f1351a.mo753a(i2, str);
                } catch (Exception unused) {
                    return;
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:159:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:208:0x0493  */
    /* JADX WARN: Code duplicated, block: B:222:0x0180 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:45:0x016a  */
    /* JADX WARN: Code duplicated, block: B:49:0x0177  */
    /* JADX WARN: Code duplicated, block: B:87:0x025f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v21, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v22 */
    @Override // p043r0.AbstractC0245g
    /* JADX INFO: renamed from: p */
    public final void mo696p() {
        List list;
        boolean z2;
        boolean zM615c;
        boolean zM615c2;
        boolean zCDelFiles;
        boolean z3;
        boolean zCTest;
        int i2 = this.f1342i;
        ZArchiverService zArchiverService = this.f1351a;
        int i3 = this.f1353c;
        boolean z4 = false;
        ?? r9 = 1;
        switch (i2) {
            case 0:
                if (m702d((C0129h) this.f1343j, true)) {
                    C0063a.m232b(i3, false, ((C0129h) this.f1343j).f1015c);
                    if (isCancelled()) {
                        zCDelFiles = false;
                    } else if (m709k(1)) {
                        AbstractC0194a abstractC0194aM708j = m708j();
                        String str = ((C0129h) this.f1343j).f1015c;
                        String str2 = (String) this.f1345l;
                        String str3 = (String) this.f1344k;
                        String strM39A = C0015d.m39A(str);
                        ArrayList<AbstractC0194a> arrayList = C0234a.f1319a;
                        if (abstractC0194aM708j.m595f()) {
                            C0234a.m671b(abstractC0194aM708j);
                            String strM1062b = C0380c.m1062b(str);
                            String strM1062b2 = C0380c.m1062b(strM39A);
                            String strM676g = C0234a.m676g(abstractC0194aM708j, strM1062b2, true);
                            boolean zM75g0 = C0015d.m75g0(strM1062b, C0234a.m674e(str2), C0234a.m674e(str3), strM1062b2, abstractC0194aM708j, false);
                            if (strM676g != null) {
                                C0234a.m676g(abstractC0194aM708j, strM676g, false);
                            }
                            C0234a.m673d(abstractC0194aM708j);
                            zCDelFiles = zM75g0;
                        } else {
                            zCDelFiles = false;
                        }
                    } else if (m706h()) {
                        C0236c c0236cM689c = C0236c.m689c(new C0129h(((C0129h) this.f1343j).f1015c), true);
                        if (c0236cM689c != null) {
                            byte[] bArr = C0015d.f118e;
                            bArr[i3] = (byte) (bArr[i3] | (-128));
                            if (!c0236cM689c.m691b(this)) {
                                C0063a.m234d(i3, 0, "Failed to write to archive");
                                c0236cM689c = null;
                            }
                        }
                        zCDelFiles = C2JBridge.cDelFiles(i3, c0236cM689c != null ? c0236cM689c.f1324b : ((C0129h) this.f1343j).f1015c, (String) this.f1345l, (String) this.f1344k, C0015d.m39A(((C0129h) this.f1343j).f1015c));
                        if (c0236cM689c != null) {
                            c0236cM689c.m690a(this);
                        }
                    } else {
                        zCDelFiles = false;
                    }
                    m712n();
                    m714q(zCDelFiles ? 1179648 : 1114112);
                    zArchiverService.m895l(this, zCDelFiles, this.f1358h, null);
                    if (zCDelFiles) {
                        zArchiverService.m896m(i3, 2, null);
                        return;
                    }
                    return;
                }
                return;
            case 1:
                List list2 = (List) this.f1343j;
                if (list2 == null || ((List) this.f1344k) == null || list2.size() != ((List) this.f1344k).size()) {
                    m714q(1179648);
                    zArchiverService.m895l(this, true, null, null);
                    return;
                }
                Iterator it = ((List) this.f1343j).iterator();
                while (it.hasNext()) {
                    if (!m702d((C0129h) it.next(), false)) {
                        return;
                    }
                }
                ArrayList<C0071i> arrayList2 = new ArrayList<>(((List) this.f1343j).size());
                int size = ((List) this.f1343j).size();
                int i4 = 0;
                boolean z5 = true;
                while (true) {
                    if (i4 < size) {
                        if (((List) this.f1345l) != null) {
                            String[] strArr = C2JBridge.f1562k;
                            String str4 = ((String) ((List) this.f1345l).get(i4)) + " (" + (i4 + 1) + "/" + ((List) this.f1345l).size() + ")";
                            strArr[i3] = str4;
                            zArchiverService.m898o(i3, str4);
                        }
                        C0063a.m232b(i3, r9, ((C0129h) ((List) this.f1343j).get(i4)).f1015c);
                        C0071i[] c0071iArr = C2JBridge.f1563l;
                        c0071iArr[i3] = new C0071i(((C0129h) ((List) this.f1343j).get(i4)).f1015c);
                        if (isCancelled()) {
                            zCTest = z4;
                            m712n();
                            if (isCancelled()) {
                                arrayList2.add(c0071iArr[i3]);
                                c0071iArr[i3] = null;
                                if (z5) {
                                    z5 = false;
                                } else {
                                    z5 = false;
                                }
                                i4++;
                                z4 = false;
                                r9 = 1;
                            }
                        } else {
                            if (m709k(r9)) {
                                AbstractC0194a abstractC0194aM708j2 = m708j();
                                String str5 = ((C0129h) ((List) this.f1343j).get(i4)).f1015c;
                                String str6 = (String) ((List) this.f1344k).get(i4);
                                ArrayList<AbstractC0194a> arrayList3 = C0234a.f1319a;
                                if (abstractC0194aM708j2.m595f()) {
                                    C0234a.m671b(abstractC0194aM708j2);
                                    String strM1062b3 = C0380c.m1062b(str5);
                                    String strM674e = C0234a.m674e(str6);
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(C0015d.m90r());
                                    sb.append(" t '");
                                    sb.append(strM1062b3.replace("'", "'\\''"));
                                    sb.append("' ");
                                    sb.append(strM674e);
                                    zCTest = abstractC0194aM708j2.m592b(sb.toString()) && C0015d.m57S(abstractC0194aM708j2) == 2;
                                    C0234a.m673d(abstractC0194aM708j2);
                                } else {
                                    zCTest = z4;
                                }
                            } else if (m706h()) {
                                zCTest = C2JBridge.cTest(i3, ((C0129h) ((List) this.f1343j).get(i4)).f1015c, (String) ((List) this.f1344k).get(i4));
                            } else {
                                z3 = false;
                            }
                            m712n();
                            if (isCancelled()) {
                                arrayList2.add(c0071iArr[i3]);
                                c0071iArr[i3] = null;
                                if (z5 || !zCTest) {
                                    z5 = false;
                                } else {
                                    z5 = true;
                                }
                                i4++;
                                z4 = false;
                                r9 = 1;
                            }
                        }
                    }
                    z3 = z5;
                }
                m714q(z3 ? 1179648 : 1114112);
                zArchiverService.m895l(this, z3, this.f1358h, arrayList2);
                return;
            default:
                List list3 = (List) this.f1344k;
                if ((list3 == null || list3.isEmpty()) && ((list = (List) this.f1345l) == null || list.isEmpty())) {
                    m714q(1179648);
                    zArchiverService.m895l(this, true, null, null);
                    return;
                }
                C0129h c0129h = (C0129h) this.f1343j;
                if (c0129h != null) {
                    List list4 = (List) this.f1344k;
                    if (list4 != null && !m705g(c0129h, list4, 4, 0)) {
                        return;
                    }
                } else if (!m704f(null, (List) this.f1345l, 4)) {
                    return;
                }
                C0129h c0129h2 = (C0129h) this.f1343j;
                String[] strArr2 = C2JBridge.f1558g;
                if (c0129h2 == null) {
                    boolean zM483j = ((C0129h) ((List) this.f1345l).get(0)).m483j();
                    boolean z6 = !m709k(1) && C0228f.m651b((C0129h) ((List) this.f1345l).get(0));
                    String strM676g2 = m709k(1) ? C0234a.m676g(m708j(), ((C0129h) ((List) this.f1345l).get(0)).f1015c, true) : null;
                    int i5 = 0;
                    z2 = true;
                    for (C0129h c0129h3 : (List) this.f1345l) {
                        String strM478e = c0129h3.m478e();
                        strArr2[i3] = strM478e;
                        if (zM483j) {
                            zArchiverService.mo753a(i3, strM478e);
                        } else {
                            zArchiverService.m899p(i3, (i5 * 100) / ((List) this.f1345l).size(), strM478e);
                        }
                        if (!isCancelled()) {
                            if (c0129h3.m484k()) {
                                z2 = C0235b.m683f(AbstractC0127f.m463u(c0129h3)) && z2;
                            } else if (m709k(1)) {
                                AbstractC0194a abstractC0194aM708j3 = m708j();
                                ArrayList<AbstractC0194a> arrayList4 = C0234a.f1319a;
                                if (abstractC0194aM708j3.m595f()) {
                                    C0234a.m671b(abstractC0194aM708j3);
                                    zM615c2 = C0209g.m615c(abstractC0194aM708j3, C0380c.m1062b(c0129h3.f1015c), true);
                                    C0234a.m673d(abstractC0194aM708j3);
                                } else {
                                    zM615c2 = false;
                                }
                                if (!zM615c2) {
                                    m713o(strM478e);
                                }
                            } else {
                                AbstractC0127f abstractC0127fM463u = AbstractC0127f.m463u(c0129h3);
                                if (abstractC0127fM463u.mo418d()) {
                                    C0235b.m682e(this, abstractC0127fM463u, C0015d.m39A(abstractC0127fM463u.mo465g()).length());
                                    if (z6) {
                                        C0228f.m652c(c0129h3.f1015c, true, false);
                                    }
                                }
                            }
                            i5++;
                        } else if (strM676g2 != null) {
                            C0234a.m676g(m708j(), strM676g2, false);
                        }
                    }
                    if (strM676g2 != null) {
                        C0234a.m676g(m708j(), strM676g2, false);
                    }
                } else {
                    boolean zM484k = c0129h2.m484k();
                    boolean zM483j2 = ((C0129h) this.f1343j).m483j();
                    boolean z7 = !m709k(1) && C0228f.m651b((C0129h) this.f1343j);
                    String strM676g3 = m709k(1) ? C0234a.m676g(m708j(), ((C0129h) this.f1343j).f1015c, true) : null;
                    z2 = true;
                    int i6 = 0;
                    for (String str7 : (List) this.f1344k) {
                        strArr2[i3] = str7;
                        if (zM483j2) {
                            zArchiverService.mo753a(i3, str7);
                        } else {
                            int size2 = (i6 * 100) / ((List) this.f1344k).size();
                            synchronized (zArchiverService) {
                                zArchiverService.f1657d.obtainMessage(i3, 22, size2, str7).sendToTarget();
                            }
                        }
                        if (!isCancelled()) {
                            C0129h c0129h4 = new C0129h(str7, (C0129h) this.f1343j);
                            if (zM484k) {
                                z2 = C0235b.m683f(AbstractC0127f.m463u(c0129h4)) && z2;
                            } else if (m709k(1)) {
                                AbstractC0194a abstractC0194aM708j4 = m708j();
                                ArrayList<AbstractC0194a> arrayList5 = C0234a.f1319a;
                                if (abstractC0194aM708j4.m595f()) {
                                    C0234a.m671b(abstractC0194aM708j4);
                                    zM615c = C0209g.m615c(abstractC0194aM708j4, C0380c.m1062b(c0129h4.f1015c), true);
                                    C0234a.m673d(abstractC0194aM708j4);
                                } else {
                                    zM615c = false;
                                }
                                if (!zM615c) {
                                    m713o(str7);
                                }
                            } else {
                                AbstractC0127f abstractC0127fM463u2 = AbstractC0127f.m463u(c0129h4);
                                if (abstractC0127fM463u2.mo418d()) {
                                    C0235b.m682e(this, abstractC0127fM463u2, C0015d.m39A(abstractC0127fM463u2.mo465g()).length());
                                    if (z7) {
                                        C0228f.m652c(c0129h4.f1015c, true, false);
                                    }
                                }
                            }
                            i6++;
                        } else if (strM676g3 != null) {
                            C0234a.m676g(m708j(), strM676g3, false);
                        }
                    }
                    if (strM676g3 != null) {
                        C0234a.m676g(m708j(), strM676g3, false);
                    }
                }
                m714q(z2 ? 1179648 : 1114112);
                zArchiverService.m895l(this, z2, this.f1358h, null);
                zArchiverService.m896m(i3, 2, (C0129h) this.f1343j);
                return;
        }
    }

    /* JADX INFO: renamed from: s */
    public final void m699s(int i2, String str) {
        switch (this.f1342i) {
            case 0:
                this.f1345l = str;
                this.f1354d = i2;
                break;
            default:
                ArrayList arrayList = new ArrayList(1);
                this.f1344k = arrayList;
                arrayList.add(str);
                this.f1354d = i2;
                break;
        }
    }
}
