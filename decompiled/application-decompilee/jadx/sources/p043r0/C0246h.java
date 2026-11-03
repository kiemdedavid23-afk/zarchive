package p043r0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executors;
import p004b.C0015d;
import p020g0.AbstractC0126e;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p037o0.C0208f;
import p039p0.C0228f;
import p041q0.C0234a;
import p041q0.C0235b;
import p051u0.C0385h;
import p055w0.C0415f;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

/* JADX INFO: renamed from: r0.h */
/* JADX INFO: loaded from: classes.dex */
public final class C0246h extends AbstractC0245g {

    /* JADX INFO: renamed from: i */
    public C0129h f1359i;

    /* JADX INFO: renamed from: j */
    public C0129h f1360j;

    /* JADX INFO: renamed from: k */
    public List<String> f1361k;

    /* JADX INFO: renamed from: l */
    public List<C0129h> f1362l;

    /* JADX INFO: renamed from: m */
    public long f1363m;

    /* JADX INFO: renamed from: n */
    public long f1364n;

    /* JADX INFO: renamed from: o */
    public int f1365o;

    /* JADX INFO: renamed from: p */
    public long f1366p;

    /* JADX INFO: renamed from: q */
    public long f1367q;

    public C0246h(ZArchiverService zArchiverService, boolean z2, int i2) {
        super(zArchiverService, z2 ? (byte) 10 : (byte) 4, i2);
        this.f1364n = 0L;
        this.f1363m = 0L;
        this.f1367q = 0L;
        this.f1366p = 0L;
    }

    @Override // p043r0.AbstractC0245g, p043r0.InterfaceC0239a
    /* JADX INFO: renamed from: a */
    public final void mo694a(String str) {
        String[] strArr = C2JBridge.f1558g;
        int i2 = this.f1353c;
        strArr[i2] = str;
        try {
            this.f1351a.mo753a(i2, str);
        } catch (Exception unused) {
        }
    }

    @Override // p043r0.AbstractC0245g, p043r0.InterfaceC0239a
    /* JADX INFO: renamed from: c */
    public final void mo695c(long j2) {
        if (this.f1363m == 0) {
            return;
        }
        this.f1364n += j2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j3 = this.f1364n;
        int i2 = (int) ((100 * j3) / this.f1363m);
        if (i2 > 100) {
            i2 = 100;
        }
        int[] iArr = C2JBridge.f1559h;
        int i3 = this.f1353c;
        if (i2 != iArr[i3] || jCurrentTimeMillis > this.f1367q + 2000) {
            iArr[i3] = i2;
            long j4 = this.f1367q;
            if (jCurrentTimeMillis > 500 + j4) {
                if (j4 == 0) {
                    this.f1365o = 0;
                } else {
                    int i4 = (int) (((j3 - this.f1366p) / (jCurrentTimeMillis - j4)) * 100.0f);
                    long j5 = jCurrentTimeMillis - j4;
                    if (j5 < 2000) {
                        int i5 = this.f1365o;
                        this.f1365o = (int) (((j5 * ((long) (i4 - i5))) / 2000) + ((long) i5));
                    } else {
                        this.f1365o = i4;
                    }
                }
                this.f1366p = j3;
                this.f1367q = jCurrentTimeMillis;
            }
            try {
                ZArchiverService zArchiverService = this.f1351a;
                int i6 = this.f1365o;
                synchronized (zArchiverService) {
                    zArchiverService.f1657d.obtainMessage(i3, 4, i2, Integer.valueOf(i6)).sendToTarget();
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:297:0x03bc A[EDGE_INSN: B:297:0x03bc->B:223:0x03bc BREAK  A[LOOP:6: B:207:0x037c->B:300:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:300:? A[LOOP:6: B:207:0x037c->B:300:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00a4  */
    @Override // p043r0.AbstractC0245g
    /* JADX INFO: renamed from: p */
    public final void mo696p() {
        List<String> list;
        int i2;
        ArrayList arrayList;
        ZArchiverService zArchiverService;
        int iM678a;
        int iM678a2;
        ArrayList arrayList2;
        byte b2 = this.f1352b;
        ZArchiverService zArchiverService2 = this.f1351a;
        if ((b2 == 10 && this.f1360j.equals(this.f1359i)) || ((list = this.f1361k) == null && this.f1362l == null)) {
            m714q(1179648);
            zArchiverService2.m895l(this, true, null, null);
            return;
        }
        String strM97y = this.f1359i == null ? C0015d.m97y(this.f1362l.get(0).f1015c) : list != null ? list.get(0) : "";
        if (this.f1352b == 10) {
            C0129h c0129h = this.f1359i;
            if (c0129h == null) {
                if (this.f1362l.size() > 0 && C0415f.m1134b(this.f1362l.get(0)) == 1 && C0228f.m651b(this.f1362l.get(0))) {
                    arrayList2 = new ArrayList(this.f1362l.size());
                } else {
                    arrayList2 = null;
                }
            } else if (C0415f.m1134b(c0129h) == 1 && C0228f.m651b(this.f1359i)) {
                arrayList2 = new ArrayList(this.f1361k.size());
            } else {
                arrayList2 = null;
            }
            arrayList = arrayList2;
            i2 = 4;
        } else {
            i2 = 3;
            arrayList = null;
        }
        if (this.f1359i == null) {
            for (C0129h c0129h2 : this.f1362l) {
                if (C0015d.m51M(c0129h2.m493t(), this.f1360j.m493t())) {
                    m716s(c0129h2.m478e());
                    return;
                }
            }
            if (!m704f(null, this.f1362l, i2)) {
                return;
            }
        } else {
            List<String> list2 = this.f1361k;
            if (list2 != null) {
                for (String str : list2) {
                    if (C0015d.m51M(new C0129h(str, this.f1359i).m493t(), this.f1360j.m493t())) {
                        m716s(str);
                        return;
                    }
                }
                if (!m705g(this.f1359i, this.f1361k, i2, 0)) {
                    return;
                }
            }
        }
        if (m703e(3, 0, strM97y, this.f1360j)) {
            int iM672c = !ZArchiverService.m891i(1) ? 17 : 0;
            if (m709k(1)) {
                boolean z2 = ZArchiverService.m891i(4) && C0208f.m614a(this.f1360j);
                boolean z3 = !z2 && C0415f.m1137e(this.f1360j.f1015c);
                String strM676g = m709k(1) ? C0234a.m676g(m708j(), this.f1360j.f1015c, true) : null;
                if (this.f1359i == null) {
                    for (C0129h c0129h3 : this.f1362l) {
                        if (isCancelled()) {
                            break;
                        }
                        byte b3 = this.f1352b;
                        if (b3 == 4) {
                            iM672c = C0234a.m672c(m708j(), c0129h3, this.f1360j, iM672c);
                        } else if (b3 == 10 && (iM672c = C0234a.m675f(m708j(), c0129h3, this.f1360j, iM672c)) >= 0 && arrayList != null) {
                            arrayList.add(c0129h3);
                        }
                        if (iM672c < 0) {
                            m713o(c0129h3.m478e());
                            break;
                        } else if (z2) {
                            C0015d.m69d0(m708j(), this.f1360j, c0129h3.m478e());
                        } else if (z3) {
                            C0015d.m67c0(m708j(), this.f1360j, c0129h3.m478e());
                        }
                    }
                } else {
                    for (String str2 : this.f1361k) {
                        if (isCancelled()) {
                            break;
                        }
                        C0129h c0129h4 = new C0129h(str2, this.f1359i);
                        byte b4 = this.f1352b;
                        if (b4 == 4) {
                            iM672c = C0234a.m672c(m708j(), c0129h4, this.f1360j, iM672c);
                        } else if (b4 == 10 && (iM672c = C0234a.m675f(m708j(), c0129h4, this.f1360j, iM672c)) >= 0 && arrayList != null) {
                            arrayList.add(c0129h4);
                        }
                        if (iM672c < 0) {
                            break;
                        }
                        if (z2) {
                            C0015d.m69d0(m708j(), this.f1360j, str2);
                        } else if (z3) {
                            C0015d.m67c0(m708j(), this.f1360j, str2);
                        }
                    }
                }
                if (strM676g != null) {
                    C0234a.m676g(m708j(), strM676g, false);
                }
                zArchiverService = zArchiverService2;
            } else {
                C0129h c0129h5 = this.f1359i;
                if (c0129h5 != null) {
                    zArchiverService = zArchiverService2;
                    AbstractC0126e.b bVarM455f = AbstractC0126e.m455f(c0129h5, (String[]) this.f1361k.toArray(new String[0]), this);
                    if (bVarM455f != null) {
                        this.f1363m = bVarM455f.f997c;
                    }
                    if (!this.f1359i.m484k() || !this.f1360j.m484k() || !C0385h.m1082f(this.f1359i.f1017e, this.f1360j.f1017e)) {
                        int length = this.f1359i.f1015c.length() + 1;
                        iM678a = iM672c;
                        for (String str3 : this.f1361k) {
                            if (isCancelled()) {
                                break;
                            }
                            C0129h c0129h6 = new C0129h(str3, this.f1359i);
                            byte b5 = this.f1352b;
                            if (b5 != 4) {
                                if (b5 == 10) {
                                    iM678a2 = C0235b.m687j(this, c0129h6, this.f1360j, iM678a, length);
                                    if (iM678a2 >= 0 && arrayList != null) {
                                        arrayList.add(c0129h6);
                                    }
                                }
                                if (iM678a < 0) {
                                    break;
                                }
                            } else {
                                iM678a2 = C0235b.m678a(this, AbstractC0127f.m463u(c0129h6), this.f1360j, iM678a, length, 0);
                            }
                            iM678a = iM678a2;
                            if (iM678a < 0) {
                                break;
                                break;
                            }
                        }
                    } else {
                        for (String str4 : this.f1361k) {
                            if (isCancelled()) {
                                break;
                            }
                            mo694a(str4);
                            AbstractC0127f abstractC0127fM463u = AbstractC0127f.m463u(new C0129h(str4, this.f1359i));
                            iM672c = (this.f1352b != 10 ? !abstractC0127fM463u.mo464a(this.f1360j) : !abstractC0127fM463u.mo428t(this.f1360j)) ? -1 : 0;
                            if (iM672c < 0) {
                                break;
                            }
                        }
                    }
                } else {
                    Iterator<C0129h> it = this.f1362l.iterator();
                    while (it.hasNext()) {
                        AbstractC0126e.b bVarM454e = AbstractC0126e.m454e(it.next(), this);
                        if (bVarM454e != null) {
                            this.f1363m += bVarM454e.f997c;
                            zArchiverService2 = zArchiverService2;
                        }
                    }
                    zArchiverService = zArchiverService2;
                    boolean zM484k = this.f1360j.m484k();
                    iM678a = iM672c;
                    for (C0129h c0129h7 : this.f1362l) {
                        if (isCancelled()) {
                            break;
                        }
                        if (zM484k && c0129h7.m484k() && C0385h.m1082f(c0129h7.f1017e, this.f1360j.f1017e)) {
                            mo694a(this.f1360j.m478e());
                            AbstractC0127f abstractC0127fM463u2 = AbstractC0127f.m463u(c0129h7);
                            iM678a = (this.f1352b != 10 ? !abstractC0127fM463u2.mo464a(this.f1360j) : !abstractC0127fM463u2.mo428t(this.f1360j)) ? -1 : 0;
                        } else {
                            byte b6 = this.f1352b;
                            if (b6 == 4) {
                                Objects.toString(c0129h7);
                                Objects.toString(this.f1360j);
                                iM678a = C0235b.m678a(this, AbstractC0127f.m463u(c0129h7), this.f1360j, iM678a, 1, 0);
                            } else if (b6 == 10) {
                                int iM687j = C0235b.m687j(this, c0129h7, this.f1360j, iM678a, 1);
                                if (iM687j >= 0 && arrayList != null) {
                                    arrayList.add(c0129h7);
                                }
                                iM678a = iM687j;
                            }
                        }
                        if (iM678a < 0) {
                            break;
                        }
                    }
                }
                iM672c = iM678a;
            }
            if (arrayList != null) {
                String[] strArr = C0228f.f1279a;
                try {
                    Executors.newSingleThreadExecutor().execute(new C0228f.c(arrayList));
                } catch (Throwable unused) {
                }
            }
            if (C0415f.m1134b(this.f1360j) == 1) {
                C0129h c0129h8 = this.f1360j;
                if (C0228f.m651b(c0129h8)) {
                    C0228f.m650a(c0129h8.f1015c, true);
                }
            }
            if (iM672c == -2) {
                m714q(15);
            }
            m714q(iM672c >= 0 ? 1179648 : 1114112);
            zArchiverService.m895l(this, iM672c >= 0, this.f1358h, null);
            byte b7 = this.f1352b;
            int i3 = this.f1353c;
            if (b7 == 10) {
                C0129h c0129h9 = this.f1359i;
                if (c0129h9 != null) {
                    zArchiverService.m896m(i3, 2, c0129h9);
                } else {
                    List<C0129h> list3 = this.f1362l;
                    if (list3 != null) {
                        zArchiverService.m896m(i3, 2, list3.get(0).m479f());
                    }
                }
            }
            zArchiverService.m896m(i3, 1, this.f1360j);
        }
    }

    /* JADX INFO: renamed from: s */
    public final void m716s(String str) {
        StringBuilder sb = new StringBuilder("Can't ");
        sb.append(this.f1352b == 10 ? "move" : "copy");
        sb.append(" a directory to its own subdirectory!");
        m711m(str, sb.toString());
    }
}
