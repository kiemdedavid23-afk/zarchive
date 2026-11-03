package p043r0;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import p004b.C0015d;
import p011d0.C0063a;
import p011d0.C0064b;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p035n0.AbstractC0194a;
import p037o0.C0204b;
import p037o0.C0206d;
import p037o0.C0209g;
import p039p0.C0228f;
import p041q0.C0234a;
import p041q0.C0235b;
import p041q0.C0236c;
import p051u0.C0380c;
import p055w0.C0415f;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

/* JADX INFO: renamed from: r0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0241c extends AbstractC0245g {

    /* JADX INFO: renamed from: i */
    public List<C0129h> f1334i;

    /* JADX INFO: renamed from: j */
    public List<String> f1335j;

    /* JADX INFO: renamed from: k */
    public C0129h f1336k;

    /* JADX INFO: renamed from: l */
    public String f1337l;

    public C0241c(ZArchiverService zArchiverService, int i2) {
        super(zArchiverService, (byte) 3, i2);
    }

    @Override // p043r0.AbstractC0245g, p043r0.InterfaceC0239a
    /* JADX INFO: renamed from: a */
    public final void mo694a(String str) {
    }

    @Override // p043r0.AbstractC0245g, p043r0.InterfaceC0239a
    /* JADX INFO: renamed from: c */
    public final void mo695c(long j2) {
    }

    /* JADX WARN: Code duplicated, block: B:196:0x0459  */
    /* JADX WARN: Code duplicated, block: B:47:0x00db  */
    /* JADX WARN: Code duplicated, block: B:83:0x0240  */
    @Override // p043r0.AbstractC0245g
    /* JADX INFO: renamed from: p */
    public final void mo696p() {
        C0129h[] c0129hArr;
        int i2;
        ZArchiverService zArchiverService;
        boolean z2;
        String strM241e;
        int i3;
        String str;
        C0129h[] c0129hArr2;
        C0129h[] c0129hArr3;
        String str2;
        boolean z3;
        boolean z4;
        List<C0129h> list = this.f1334i;
        ZArchiverService zArchiverService2 = this.f1351a;
        int i4 = 1;
        if (list == null || list.isEmpty() || this.f1335j == null || this.f1336k == null || (this.f1334i.size() > 1 && this.f1334i.size() != this.f1335j.size())) {
            m714q(1179648);
            zArchiverService2.m895l(this, true, null, null);
            return;
        }
        int i5 = m709k(4) ? 4 : 3;
        Iterator<C0129h> it = this.f1334i.iterator();
        while (it.hasNext()) {
            if (!m702d(it.next(), true)) {
                return;
            }
        }
        if (m705g(this.f1336k, this.f1335j, i5, 1)) {
            boolean z5 = false;
            String str3 = "";
            if (m709k(4)) {
                ArrayList arrayList = new ArrayList(this.f1334i.size());
                String strM68d = C0015d.m68d(this.f1336k.m491r());
                for (C0129h c0129h : this.f1334i) {
                    String strM491r = c0129h.m491r();
                    for (String str4 : this.f1335j) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(str4.startsWith("/") ? "" : strM68d);
                        sb.append(str4);
                        sb.append("/");
                        if (strM491r.startsWith(sb.toString())) {
                            arrayList.add(c0129h);
                            break;
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    c0129hArr = (C0129h[]) arrayList.toArray(new C0129h[0]);
                } else {
                    c0129hArr = null;
                }
            } else {
                c0129hArr = null;
            }
            int size = this.f1334i.size();
            boolean z6 = true;
            int i6 = 0;
            while (true) {
                i2 = this.f1353c;
                if (i6 < size) {
                    C0129h c0129h2 = this.f1334i.get(i6);
                    String str5 = c0129h2.f1015c;
                    if (this.f1334i.size() > i4) {
                        String[] strArr = C2JBridge.f1562k;
                        String str6 = c0129h2.m478e() + " (" + (i6 + 1) + "/" + this.f1334i.size() + ")";
                        strArr[i2] = str6;
                        zArchiverService2.m898o(i2, str6);
                        strM241e = "\\" + this.f1335j.get(i6);
                    } else {
                        strM241e = C0064b.m241e(this.f1335j);
                    }
                    C0063a.m232b(i2, z5, str5);
                    if (!isCancelled()) {
                        int i7 = 100;
                        if (!m709k(i4)) {
                            i3 = size;
                            zArchiverService = zArchiverService2;
                            str3 = str3;
                            if (!m706h()) {
                                z2 = false;
                                break;
                            }
                            C0236c c0236cM689c = C0236c.m689c(c0129h2, true);
                            if (c0236cM689c == null) {
                                if (!m709k(2)) {
                                    str = str5;
                                    break;
                                }
                                String strM39A = C0015d.m39A(str5);
                                AbstractC0127f abstractC0127fM463u = AbstractC0127f.m463u(new C0129h(C0015d.m39A(str5)));
                                int i8 = 0;
                                while (true) {
                                    if (i8 >= 100) {
                                        str = str5;
                                        break;
                                    }
                                    if (!abstractC0127fM463u.mo419f(strM39A + ".t" + i8)) {
                                        str = str5 + ".t" + i8;
                                        break;
                                    }
                                    i8++;
                                }
                            } else {
                                byte[] bArr = C0015d.f118e;
                                bArr[i2] = (byte) (bArr[i2] | (-128));
                                str = c0236cM689c.f1324b;
                            }
                            boolean z7 = C2JBridge.cCompress(i2, str, this.f1337l, strM241e, this.f1336k.f1015c) && z6;
                            if (m709k(4) && z7 && !m710l()) {
                                C0129h c0129h3 = c0236cM689c == null ? c0129h2 : c0236cM689c.f1325c;
                                if (this.f1337l.contains("\\-v")) {
                                    c0129h3 = new C0129h(c0129h2.f1013a, c0129h2.f1015c + ".001");
                                }
                                AbstractC0127f abstractC0127fM463u2 = AbstractC0127f.m463u(c0129h3);
                                if (abstractC0127fM463u2.mo418d() && abstractC0127fM463u2.mo424o() > 200) {
                                    if (c0129hArr != null && m709k(2) && c0236cM689c == null) {
                                        c0129hArr3 = (C0129h[]) Arrays.copyOf(c0129hArr, c0129hArr.length + 1);
                                        c0129hArr3[c0129hArr3.length - 1] = new C0129h(str);
                                    } else {
                                        c0129hArr3 = c0129hArr;
                                    }
                                    boolean z8 = this.f1336k.m483j() && C0415f.m1134b(this.f1336k) == 1;
                                    boolean z9 = (c0129hArr3 == null || c0129hArr3.length == 0) ? false : true;
                                    for (int size2 = (i6 == 0 && this.f1334i.size() == 1) ? this.f1335j.size() : i6 + 1; i6 < size2 && !isCancelled(); size2 = size2) {
                                        String str7 = this.f1335j.get(i6);
                                        C0129h c0129h4 = str7.startsWith("/") ? new C0129h(str7) : new C0129h(str7, this.f1336k);
                                        AbstractC0127f abstractC0127fM463u3 = AbstractC0127f.m463u(c0129h4);
                                        if (abstractC0127fM463u3.mo418d()) {
                                            C0235b.m684g(this, abstractC0127fM463u3, c0129hArr3);
                                            if (z8) {
                                                C0228f.m652c(c0129h4.f1015c, abstractC0127fM463u3.mo420k(), z9);
                                            }
                                        }
                                        i6++;
                                        c0129hArr = c0129hArr;
                                    }
                                }
                            }
                            c0129hArr2 = c0129hArr;
                            if (c0236cM689c != null) {
                                if (!c0236cM689c.m690a(this)) {
                                    C0063a.m234d(i2, 0, "Failed to move archive to destination");
                                }
                            } else if (!str.equals(str5)) {
                                C0129h c0129h5 = new C0129h(str);
                                if (z7) {
                                    try {
                                        AbstractC0127f.m463u(c0129h2).mo417c();
                                        AbstractC0127f.m463u(c0129h5).mo432y(c0129h2.m478e());
                                    } catch (IOException unused) {
                                        C0063a.m234d(i2, 0, "Failed to rename output file to original");
                                    }
                                } else {
                                    AbstractC0127f.m463u(c0129h5).mo417c();
                                }
                            }
                            z6 = z7;
                        } else {
                            if (!m709k(2)) {
                                i3 = size;
                                zArchiverService = zArchiverService2;
                                str2 = str5;
                                break;
                            }
                            AbstractC0194a abstractC0194aM708j = m708j();
                            ArrayList arrayList2 = new ArrayList();
                            int i9 = 0;
                            while (true) {
                                if (i9 >= i7) {
                                    i3 = size;
                                    zArchiverService = zArchiverService2;
                                    str2 = str5;
                                    break;
                                }
                                str2 = str5 + ".t" + i9;
                                arrayList2.clear();
                                i3 = size;
                                zArchiverService = zArchiverService2;
                                if (!C0206d.m610d(abstractC0194aM708j, arrayList2, str2, 5, true) || arrayList2.isEmpty()) {
                                    break;
                                }
                                i9++;
                                size = i3;
                                zArchiverService2 = zArchiverService;
                                i7 = 100;
                            }
                            AbstractC0194a abstractC0194aM708j2 = m708j();
                            String str8 = this.f1337l;
                            String str9 = this.f1336k.f1015c;
                            ArrayList<AbstractC0194a> arrayList3 = C0234a.f1319a;
                            if (abstractC0194aM708j2.m595f()) {
                                C0234a.m671b(abstractC0194aM708j2);
                                String strM1062b = C0380c.m1062b(str2);
                                String strM1062b2 = C0380c.m1062b(str9);
                                String strReplace = str8.replace("\\-m0=FLZMA2", str3);
                                String strM676g = C0234a.m676g(abstractC0194aM708j2, strM1062b, true);
                                String strM674e = C0234a.m674e(strReplace);
                                String strM674e2 = C0234a.m674e(strM241e);
                                if (abstractC0194aM708j2.m592b("cd " + strM1062b2)) {
                                    abstractC0194aM708j2.m599k(false);
                                    if (abstractC0194aM708j2.m592b(C0015d.m90r() + " a '" + strM1062b.replace("'", "'\\''") + "' " + strM674e + " -- " + strM674e2) && C0015d.m57S(abstractC0194aM708j2) == 2) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                } else {
                                    z3 = false;
                                }
                                if (strM676g != null) {
                                    C0234a.m676g(abstractC0194aM708j2, strM676g, false);
                                }
                                C0234a.m673d(abstractC0194aM708j2);
                            } else {
                                z3 = false;
                            }
                            boolean z10 = z3 && z6;
                            if (!str2.equals(str5)) {
                                if (z10) {
                                    z10 = C0204b.m607c(m708j(), true, 17, true, str2, str5) >= -1;
                                } else {
                                    C0209g.m615c(m708j(), str2, false);
                                }
                            }
                            z6 = z10;
                            c0129hArr2 = c0129hArr;
                        }
                    } else {
                        c0129hArr2 = c0129hArr;
                        i3 = size;
                        zArchiverService = zArchiverService2;
                        z6 = z5;
                        str3 = str3;
                    }
                    m712n();
                    if (!isCancelled()) {
                        if (C0415f.m1134b(this.f1334i.get(i6)) == 1) {
                            C0129h c0129h6 = this.f1334i.get(i6);
                            if (C0228f.m651b(c0129h6)) {
                                z4 = false;
                                C0228f.m650a(c0129h6.f1015c, false);
                            } else {
                                z4 = false;
                            }
                        } else {
                            z4 = false;
                        }
                        i6++;
                        z5 = z4;
                        c0129hArr = c0129hArr2;
                        size = i3;
                        zArchiverService2 = zArchiverService;
                        str3 = str3;
                        i4 = 1;
                    }
                } else {
                    zArchiverService = zArchiverService2;
                }
                z2 = z6;
                break;
            }
            m714q(z2 ? 1179648 : 1114112);
            ZArchiverService zArchiverService3 = zArchiverService;
            zArchiverService3.m895l(this, z2, this.f1358h, null);
            zArchiverService3.m896m(i2, 1, null);
        }
    }
}
