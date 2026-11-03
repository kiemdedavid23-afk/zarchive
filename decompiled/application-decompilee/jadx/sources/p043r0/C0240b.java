package p043r0;

import android.content.Intent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p004b.C0015d;
import p011d0.C0063a;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p035n0.AbstractC0194a;
import p039p0.C0228f;
import p041q0.C0234a;
import p041q0.C0235b;
import p041q0.C0236c;
import p051u0.C0380c;
import p051u0.C0385h;
import p055w0.C0415f;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

/* JADX INFO: renamed from: r0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0240b extends AbstractC0245g {

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ int f1329i;

    /* JADX INFO: renamed from: j */
    public C0129h f1330j;

    /* JADX INFO: renamed from: k */
    public String f1331k;

    /* JADX INFO: renamed from: l */
    public Object f1332l;

    /* JADX INFO: renamed from: m */
    public Object f1333m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0240b(ZArchiverService zArchiverService, int i2, int i3) {
        super(zArchiverService, (byte) 7, i2);
        this.f1329i = i3;
        if (i3 != 1) {
        } else {
            super(zArchiverService, (byte) 9, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:104:0x0203  */
    /* JADX WARN: Code duplicated, block: B:107:0x020f  */
    /* JADX WARN: Code duplicated, block: B:109:0x022d  */
    /* JADX WARN: Code duplicated, block: B:112:0x0236  */
    /* JADX WARN: Code duplicated, block: B:114:0x023e  */
    /* JADX WARN: Code duplicated, block: B:115:0x0242  */
    /* JADX WARN: Code duplicated, block: B:118:0x024f  */
    /* JADX WARN: Code duplicated, block: B:120:0x0254  */
    /* JADX WARN: Code duplicated, block: B:124:0x0267  */
    /* JADX WARN: Code duplicated, block: B:125:0x026a  */
    /* JADX WARN: Code duplicated, block: B:128:0x027f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:135:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:137:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:140:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:144:0x02d9 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:146:0x02db A[Catch: all -> 0x02f0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:142:0x02d5, B:146:0x02db), top: B:197:0x02d5 }] */
    /* JADX WARN: Code duplicated, block: B:153:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:197:0x02d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x0261 A[EDGE_INSN: B:211:0x0261->B:122:0x0261 BREAK  A[LOOP:5: B:108:0x022b->B:121:0x025d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x025d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:214:0x025d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:216:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x0184  */
    /* JADX WARN: Code duplicated, block: B:75:0x018d  */
    /* JADX WARN: Code duplicated, block: B:82:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:85:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:87:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:90:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:92:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:93:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:96:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:99:0x01fb  */
    /* JADX WARN: Instruction removed from duplicated block: B:107:0x020f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:140:0x02b8, please report this as an issue */
    @Override // p043r0.AbstractC0245g
    /* JADX INFO: renamed from: p */
    public final void mo696p() {
        C0129h[] c0129hArr;
        C0129h c0129h;
        C0236c c0236cM689c;
        int i2;
        C0129h c0129h2;
        String strSubstring;
        ZArchiverService zArchiverService;
        int i3;
        String str;
        AbstractC0127f abstractC0127fM463u;
        boolean z2;
        String[] strArrM1084h;
        C0129h c0129h3;
        boolean z3;
        boolean z4;
        int size;
        int i4;
        C0129h c0129h4;
        int i5;
        C0129h c0129h5;
        AbstractC0127f abstractC0127fM463u2;
        boolean zCAddFiles;
        boolean zCRename = false;
        switch (this.f1329i) {
            case 0:
                int i6 = m709k(4) ? 4 : 3;
                if (!m702d(this.f1330j, true)) {
                    return;
                }
                int size2 = ((List) this.f1332l).size();
                int i7 = 0;
                while (true) {
                    char c2 = '\\';
                    if (i7 >= size2) {
                        if (m709k(1)) {
                            c0129hArr = null;
                            c0129h = null;
                            c0236cM689c = null;
                        } else {
                            c0129h = new C0129h(this.f1330j.f1015c);
                            c0236cM689c = C0236c.m689c(c0129h, true);
                            if (c0236cM689c != null) {
                                byte[] bArr = C0015d.f118e;
                                int i8 = this.f1353c;
                                bArr[i8] = (byte) (bArr[i8] | (-128));
                                if (!c0236cM689c.m691b(this)) {
                                    m711m(this.f1330j.m478e(), "Failed to write to archive");
                                    return;
                                }
                            }
                            if (m709k(4)) {
                                String strM491r = this.f1330j.m491r();
                                int size3 = ((List) this.f1332l).size();
                                int i9 = 0;
                                while (true) {
                                    if (i9 < size3) {
                                        String strM68d = C0015d.m68d(((C0129h) ((List) this.f1333m).get(i9)).m491r());
                                        String[] strArrM1084h2 = C0385h.m1084h((String) ((List) this.f1332l).get(i9), c2);
                                        int length = strArrM1084h2.length;
                                        int i10 = 0;
                                        while (true) {
                                            if (i10 < length) {
                                                String str2 = strArrM1084h2[i10];
                                                StringBuilder sb = new StringBuilder();
                                                sb.append(str2.startsWith("/") ? "" : strM68d);
                                                sb.append(str2);
                                                sb.append("/");
                                                if (strM491r.startsWith(sb.toString())) {
                                                    c0129hArr = new C0129h[]{this.f1330j};
                                                } else {
                                                    i10++;
                                                }
                                            } else {
                                                i9++;
                                                c2 = '\\';
                                            }
                                        }
                                    } else {
                                        c0129hArr = null;
                                    }
                                }
                            } else {
                                c0129hArr = null;
                            }
                        }
                        int size4 = ((List) this.f1332l).size();
                        boolean z5 = false;
                        boolean z6 = true;
                        for (int i11 = 0; i11 < size4; i11++) {
                            String str3 = (String) ((List) this.f1332l).get(i11);
                            C0129h c0129h6 = (C0129h) ((List) this.f1333m).get(i11);
                            C0063a.m232b(this.f1353c, false, this.f1330j.f1015c);
                            if (isCancelled()) {
                                zCAddFiles = false;
                            } else {
                                if (!m709k(1)) {
                                    if (m706h()) {
                                        zCAddFiles = C2JBridge.cAddFiles(this.f1353c, c0236cM689c != null ? c0236cM689c.f1324b : this.f1330j.f1015c, this.f1331k, str3, c0129h6.f1015c);
                                    } else {
                                        z6 = false;
                                    }
                                    if (c0236cM689c != null) {
                                        c0236cM689c.m690a(this);
                                    }
                                    if (!m709k(1) && m709k(4) && z6 && !m710l()) {
                                        abstractC0127fM463u = AbstractC0127f.m463u(c0129h);
                                        if (abstractC0127fM463u.mo418d() || abstractC0127fM463u.mo424o() <= 200) {
                                            z2 = false;
                                        } else {
                                            z2 = true;
                                        }
                                        if (z2) {
                                            strArrM1084h = C0385h.m1084h((String) ((List) this.f1332l).get(0), '\\');
                                            if (strArrM1084h.length != 0) {
                                                if (strArrM1084h[0].startsWith("/")) {
                                                    c0129h3 = new C0129h(strArrM1084h[0]);
                                                } else {
                                                    c0129h3 = new C0129h(strArrM1084h[0], (C0129h) ((List) this.f1333m).get(0));
                                                }
                                                if (c0129h3.m483j() || C0415f.m1134b(c0129h3) != 1) {
                                                    z3 = false;
                                                } else {
                                                    z3 = true;
                                                }
                                                if (c0129hArr != null || c0129hArr.length == 0) {
                                                    z4 = false;
                                                } else {
                                                    z4 = true;
                                                }
                                                size = ((List) this.f1332l).size();
                                                for (i4 = 0; i4 < size; i4++) {
                                                    c0129h4 = (C0129h) ((List) this.f1333m).get(i4);
                                                    for (String str4 : C0385h.m1084h((String) ((List) this.f1332l).get(i4), '\\')) {
                                                        if (isCancelled()) {
                                                        }
                                                        if (str4.startsWith("/")) {
                                                            c0129h5 = new C0129h(str4);
                                                        } else {
                                                            c0129h5 = new C0129h(str4, c0129h4);
                                                        }
                                                        abstractC0127fM463u2 = AbstractC0127f.m463u(c0129h5);
                                                        if (abstractC0127fM463u2.mo418d()) {
                                                            C0235b.m684g(this, abstractC0127fM463u2, c0129hArr);
                                                            if (z3) {
                                                                C0228f.m652c(c0129h5.f1015c, abstractC0127fM463u2.mo420k(), z4);
                                                            }
                                                        }
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    if (z6) {
                                        i2 = 1179648;
                                    } else {
                                        i2 = 1114112;
                                    }
                                    m714q(i2);
                                    this.f1351a.m895l(this, z6, this.f1358h, null);
                                    if (m709k(256) && z6 && (c0129h2 = (C0129h) ((List) this.f1333m).get(0)) != null && c0129h2.m483j()) {
                                        strSubstring = (String) ((List) this.f1332l).get(0);
                                        if (!strSubstring.isEmpty()) {
                                            if (strSubstring.charAt(0) == '\\') {
                                                strSubstring = strSubstring.substring(1);
                                            }
                                            if (!strSubstring.contains("\\")) {
                                                zArchiverService = this.f1351a;
                                                i3 = this.f1353c;
                                                str = c0129h2.m491r() + '/' + strSubstring;
                                                synchronized (zArchiverService) {
                                                    if (zArchiverService.f1654a) {
                                                        Intent intentM890h = ZArchiverService.m890h(i3, 0);
                                                        intentM890h.putExtra("iAction", 20);
                                                        intentM890h.putExtra("sFilePath", str);
                                                        zArchiverService.sendBroadcast(intentM890h);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    if (z5) {
                                        this.f1351a.m896m(this.f1353c, 1, null);
                                        return;
                                    }
                                    return;
                                }
                                zCAddFiles = C0234a.m670a(m708j(), this.f1330j.f1015c, this.f1331k, str3, c0129h6.f1015c);
                            }
                            m712n();
                            if (isCancelled()) {
                                if (c0236cM689c != null) {
                                    c0236cM689c.m690a(this);
                                }
                                if (!m709k(1)) {
                                    abstractC0127fM463u = AbstractC0127f.m463u(c0129h);
                                    if (abstractC0127fM463u.mo418d()) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        strArrM1084h = C0385h.m1084h((String) ((List) this.f1332l).get(0), '\\');
                                        if (strArrM1084h.length != 0) {
                                            if (strArrM1084h[0].startsWith("/")) {
                                                c0129h3 = new C0129h(strArrM1084h[0]);
                                            } else {
                                                c0129h3 = new C0129h(strArrM1084h[0], (C0129h) ((List) this.f1333m).get(0));
                                            }
                                            if (c0129h3.m483j()) {
                                                z3 = false;
                                            } else {
                                                z3 = false;
                                            }
                                            if (c0129hArr != null) {
                                                z4 = false;
                                            } else {
                                                z4 = false;
                                            }
                                            size = ((List) this.f1332l).size();
                                            while (i4 < size) {
                                                c0129h4 = (C0129h) ((List) this.f1333m).get(i4);
                                                while (i5 < r13) {
                                                    if (isCancelled()) {
                                                    }
                                                    if (str4.startsWith("/")) {
                                                        c0129h5 = new C0129h(str4);
                                                    } else {
                                                        c0129h5 = new C0129h(str4, c0129h4);
                                                    }
                                                    abstractC0127fM463u2 = AbstractC0127f.m463u(c0129h5);
                                                    if (abstractC0127fM463u2.mo418d()) {
                                                        C0235b.m684g(this, abstractC0127fM463u2, c0129hArr);
                                                        if (z3) {
                                                            C0228f.m652c(c0129h5.f1015c, abstractC0127fM463u2.mo420k(), z4);
                                                        }
                                                    }
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                }
                                if (z6) {
                                    i2 = 1179648;
                                } else {
                                    i2 = 1114112;
                                }
                                m714q(i2);
                                this.f1351a.m895l(this, z6, this.f1358h, null);
                                if (m709k(256)) {
                                    strSubstring = (String) ((List) this.f1332l).get(0);
                                    if (!strSubstring.isEmpty()) {
                                        if (strSubstring.charAt(0) == '\\') {
                                            strSubstring = strSubstring.substring(1);
                                        }
                                        if (!strSubstring.contains("\\")) {
                                            zArchiverService = this.f1351a;
                                            i3 = this.f1353c;
                                            str = c0129h2.m491r() + '/' + strSubstring;
                                            synchronized (zArchiverService) {
                                                if (zArchiverService.f1654a) {
                                                    Intent intentM890h2 = ZArchiverService.m890h(i3, 0);
                                                    intentM890h2.putExtra("iAction", 20);
                                                    intentM890h2.putExtra("sFilePath", str);
                                                    zArchiverService.sendBroadcast(intentM890h2);
                                                }
                                            }
                                        }
                                    }
                                }
                                if (z5) {
                                    this.f1351a.m896m(this.f1353c, 1, null);
                                    return;
                                }
                                return;
                            }
                            z6 = z6 && zCAddFiles;
                            z5 = z5 || zCAddFiles;
                        }
                        if (c0236cM689c != null) {
                            c0236cM689c.m690a(this);
                        }
                        if (!m709k(1)) {
                            abstractC0127fM463u = AbstractC0127f.m463u(c0129h);
                            if (abstractC0127fM463u.mo418d()) {
                                z2 = false;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                strArrM1084h = C0385h.m1084h((String) ((List) this.f1332l).get(0), '\\');
                                if (strArrM1084h.length != 0) {
                                    if (strArrM1084h[0].startsWith("/")) {
                                        c0129h3 = new C0129h(strArrM1084h[0]);
                                    } else {
                                        c0129h3 = new C0129h(strArrM1084h[0], (C0129h) ((List) this.f1333m).get(0));
                                    }
                                    if (c0129h3.m483j()) {
                                        z3 = false;
                                    } else {
                                        z3 = false;
                                    }
                                    if (c0129hArr != null) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    size = ((List) this.f1332l).size();
                                    while (i4 < size) {
                                        c0129h4 = (C0129h) ((List) this.f1333m).get(i4);
                                        while (i5 < r13) {
                                            if (isCancelled()) {
                                            }
                                            if (str4.startsWith("/")) {
                                                c0129h5 = new C0129h(str4);
                                            } else {
                                                c0129h5 = new C0129h(str4, c0129h4);
                                            }
                                            abstractC0127fM463u2 = AbstractC0127f.m463u(c0129h5);
                                            if (abstractC0127fM463u2.mo418d()) {
                                                C0235b.m684g(this, abstractC0127fM463u2, c0129hArr);
                                                if (z3) {
                                                    C0228f.m652c(c0129h5.f1015c, abstractC0127fM463u2.mo420k(), z4);
                                                }
                                            }
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                        if (z6) {
                            i2 = 1179648;
                        } else {
                            i2 = 1114112;
                        }
                        m714q(i2);
                        this.f1351a.m895l(this, z6, this.f1358h, null);
                        if (m709k(256)) {
                            strSubstring = (String) ((List) this.f1332l).get(0);
                            if (!strSubstring.isEmpty()) {
                                if (strSubstring.charAt(0) == '\\') {
                                    strSubstring = strSubstring.substring(1);
                                }
                                if (!strSubstring.contains("\\")) {
                                    zArchiverService = this.f1351a;
                                    i3 = this.f1353c;
                                    str = c0129h2.m491r() + '/' + strSubstring;
                                    synchronized (zArchiverService) {
                                        if (zArchiverService.f1654a) {
                                            Intent intentM890h3 = ZArchiverService.m890h(i3, 0);
                                            intentM890h3.putExtra("iAction", 20);
                                            intentM890h3.putExtra("sFilePath", str);
                                            zArchiverService.sendBroadcast(intentM890h3);
                                        }
                                    }
                                }
                            }
                        }
                        if (z5) {
                            this.f1351a.m896m(this.f1353c, 1, null);
                            return;
                        }
                        return;
                    }
                    if (!m705g((C0129h) ((List) this.f1333m).get(i7), Arrays.asList(C0385h.m1084h((String) ((List) this.f1332l).get(i7), '\\')), i6, 1)) {
                        return;
                    } else {
                        i7++;
                    }
                }
                break;
            default:
                if (m702d(this.f1330j, true)) {
                    String str5 = this.f1330j.f1015c;
                    int i12 = this.f1353c;
                    C0063a.m232b(i12, false, str5);
                    if (!isCancelled()) {
                        if (m709k(1)) {
                            AbstractC0194a abstractC0194aM708j = m708j();
                            String str6 = this.f1330j.f1015c;
                            String str7 = (String) this.f1333m;
                            String str8 = this.f1331k;
                            String str9 = (String) this.f1332l;
                            ArrayList<AbstractC0194a> arrayList = C0234a.f1319a;
                            if (abstractC0194aM708j.m595f()) {
                                C0234a.m671b(abstractC0194aM708j);
                                String strM1062b = C0380c.m1062b(str6);
                                String strM676g = C0234a.m676g(abstractC0194aM708j, strM1062b, true);
                                String strM674e = C0234a.m674e(str7);
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(C0015d.m90r());
                                sb2.append(" rn '");
                                sb2.append(strM1062b.replace("'", "'\\''"));
                                sb2.append("' ");
                                sb2.append(strM674e);
                                sb2.append(" -- '");
                                sb2.append(str8.replace("'", "'\\''"));
                                sb2.append("' '");
                                sb2.append(str9.replace("'", "'\\''"));
                                sb2.append("'");
                                boolean z7 = abstractC0194aM708j.m592b(sb2.toString()) && C0015d.m57S(abstractC0194aM708j) == 2;
                                if (strM676g != null) {
                                    C0234a.m676g(abstractC0194aM708j, strM676g, false);
                                }
                                C0234a.m673d(abstractC0194aM708j);
                                zCRename = z7;
                            }
                        } else if (m706h()) {
                            C0236c c0236cM689c2 = C0236c.m689c(new C0129h(this.f1330j.f1015c), true);
                            if (c0236cM689c2 != null) {
                                byte[] bArr2 = C0015d.f118e;
                                bArr2[i12] = (byte) (bArr2[i12] | (-128));
                                if (!c0236cM689c2.m691b(this)) {
                                    C0063a.m234d(i12, 0, "Failed to write to archive");
                                    c0236cM689c2 = null;
                                }
                            }
                            zCRename = C2JBridge.cRename(i12, c0236cM689c2 != null ? c0236cM689c2.f1324b : this.f1330j.f1015c, (String) this.f1333m, this.f1331k, (String) this.f1332l);
                            if (c0236cM689c2 != null) {
                                c0236cM689c2.m690a(this);
                            }
                        }
                    }
                    m712n();
                    m714q(zCRename ? 1179648 : 1114112);
                    ArrayList<C0063a.b> arrayList2 = this.f1358h;
                    ZArchiverService zArchiverService2 = this.f1351a;
                    zArchiverService2.m895l(this, zCRename, arrayList2, null);
                    if (zCRename) {
                        zArchiverService2.m896m(i12, 3, null);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    /* JADX INFO: renamed from: s */
    public final void m697s(C0129h c0129h) {
        switch (this.f1329i) {
            case 0:
                this.f1330j = c0129h;
                break;
            default:
                this.f1330j = c0129h;
                break;
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m698t(int i2, String str) {
        switch (this.f1329i) {
            case 0:
                this.f1331k = str;
                this.f1354d = i2;
                break;
            default:
                this.f1333m = str;
                this.f1354d = i2;
                break;
        }
    }
}
