package p025i0;

import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;
import p004b.C0015d;
import p008c0.C0044b;
import p008c0.C0046d;
import p008c0.C0048f;
import p008c0.C0051i;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p020g0.InterfaceC0123b;
import p035n0.AbstractC0194a;
import p037o0.C0203a;
import p037o0.C0205c;
import p037o0.C0206d;
import p047s0.C0358b;
import p051u0.C0385h;
import p051u0.InterfaceC0381d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: i0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0150c implements InterfaceC0123b {

    /* JADX INFO: renamed from: a */
    public int f1050a = 0;

    /* JADX INFO: renamed from: b */
    public AbstractC0194a f1051b = null;

    /* JADX INFO: renamed from: l */
    public static AbstractC0126e.b m515l(AbstractC0194a abstractC0194a, File file) {
        if (abstractC0194a == null || file == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!C0206d.m610d(abstractC0194a, arrayList, file.getAbsolutePath(), 5, true) || arrayList.isEmpty()) {
            return null;
        }
        AbstractC0126e.b bVar = new AbstractC0126e.b();
        C0206d.a aVar = (C0206d.a) arrayList.get(0);
        String str = aVar.f1219a;
        if (str != null && str.endsWith(file.getName())) {
            bVar.f995a = !aVar.f1225g;
            bVar.f996b = aVar.f1221c;
            bVar.f997c = aVar.f1220b;
            bVar.f999e = aVar.f1226h;
            bVar.f1000f = aVar.f1227i;
            bVar.f1001g = aVar.f1224f;
            bVar.f1002h = aVar.f1223e;
            bVar.f1003i = aVar.f1222d;
        }
        return bVar;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: a */
    public final int mo434a(String str, C0129h c0129h) {
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:94:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:98:0x01bf  */
    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: b */
    public final boolean mo435b(C0129h c0129h, C0044b c0044b, int i2) {
        AbstractC0194a abstractC0194aM589c;
        boolean z2;
        StructStat structStatStat;
        boolean z3;
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        this.f1050a = 0;
        File file = c0129h.toFile();
        if (file == null) {
            return false;
        }
        c0044b.clear();
        byte b6 = 4;
        if (file.getParent() != null && C0015d.m49K(i2, 4)) {
            c0044b.add(new C0046d("..", (byte) 3));
        }
        int size = c0044b.size();
        if (C0358b.m1038i(c0129h.f1015c)) {
            abstractC0194aM589c = AbstractC0194a.m589c(C0358b.f1991m);
            if (!abstractC0194aM589c.m595f()) {
                if (abstractC0194aM589c.f1192j == 2) {
                    ZApp.m725i(R.string.MES_SHIZUKU_IS_NOT_RUNNING);
                }
                abstractC0194aM589c = null;
            }
        } else {
            abstractC0194aM589c = null;
        }
        if (abstractC0194aM589c == null) {
            abstractC0194aM589c = AbstractC0194a.m589c(0);
        }
        String absolutePath = file.getAbsolutePath();
        boolean zM49K = C0015d.m49K(i2, 32);
        if (Build.VERSION.SDK_INT >= 30 && absolutePath.startsWith("/data/data")) {
            absolutePath = absolutePath.replaceFirst("/data/data", "/data_mirror/data_ce/null/0");
        }
        ArrayList<C0206d.a> arrayList = new ArrayList();
        boolean zM610d = C0206d.m610d(abstractC0194aM589c, arrayList, absolutePath, (zM49K ? 4 : 0) | 8, false);
        int iMo593d = abstractC0194aM589c.mo593d();
        if (!zM610d || (iMo593d != 1 && iMo593d != 3 && arrayList.isEmpty())) {
            if (iMo593d != 1 && iMo593d != 3) {
                byte bM512n = C0148a.m512n(absolutePath, true);
                String strM68d = C0015d.m68d(absolutePath);
                for (String str : C0154g.m519b(strM68d, abstractC0194aM589c)) {
                    String str2 = strM68d + str;
                    try {
                        StructStat structStatLstat = Os.lstat(str2);
                        if (OsConstants.S_ISLNK(structStatLstat.st_mode)) {
                            structStatStat = Os.stat(str2);
                            z3 = true;
                        } else {
                            structStatStat = structStatLstat;
                            z3 = false;
                        }
                        if (OsConstants.S_ISDIR(structStatStat.st_mode)) {
                            byte bM510l = C0148a.m510l(str, bM512n);
                            if (bM510l == 0) {
                                bM510l = C0148a.m511m(str2);
                            }
                            b3 = bM510l;
                            b2 = 4;
                        } else {
                            b2 = -1;
                            b3 = 0;
                        }
                        c0044b.add(new C0046d(str, b2, b3, structStatStat.st_mtime * 1000, z3 ? -2L : structStatStat.st_size));
                    } catch (Exception unused) {
                        if ("/storage/emulated".equals(str2)) {
                            c0044b.add(new C0046d(str, (byte) 4));
                        }
                    }
                }
                zM610d = c0044b.size() > size;
                z2 = true;
            }
            abstractC0194aM589c.close();
            if (!zM610d) {
                this.f1050a = R.string.MES_ACCESS_DENIED;
                return true;
            }
            if (abstractC0194aM589c.mo593d() == 0 && !z2) {
                c0129h.m490q("root");
                return true;
            }
        }
        byte bM512n2 = C0148a.m512n(absolutePath, true);
        try {
            for (C0206d.a aVar : arrayList) {
                String str3 = aVar.f1219a;
                if (str3 != null) {
                    if (aVar.f1225g) {
                        byte bM510l2 = C0148a.m510l(str3, bM512n2);
                        if (bM510l2 == 0) {
                            bM510l2 = C0148a.m511m(absolutePath + '/' + aVar.f1219a);
                        }
                        b5 = bM510l2;
                        b4 = b6;
                    } else {
                        b4 = -1;
                        b5 = 0;
                    }
                    byte b7 = bM512n2;
                    c0044b.add(new C0046d(aVar.f1219a, b4, b5, aVar.f1221c, aVar.f1226h ? -2L : aVar.f1220b));
                    bM512n2 = b7;
                    b6 = 4;
                }
            }
        } catch (Exception unused2) {
        }
        if (c0044b.size() <= size) {
            this.f1050a = R.string.MES_EMPTY_FOLDER;
        }
        z2 = false;
        abstractC0194aM589c.close();
        if (!zM610d) {
            return abstractC0194aM589c.mo593d() == 0 ? true : true;
        }
        this.f1050a = R.string.MES_ACCESS_DENIED;
        return true;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: c */
    public final C0051i mo436c(C0051i c0051i) {
        int size = c0051i.size();
        String[] strArr = new String[size];
        Iterator<C0046d> it = c0051i.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            C0048f c0048f = (C0048f) it.next();
            strArr[i2] = c0048f.f365k.f1015c + '/' + c0048f.f352a;
            i2++;
        }
        ArrayList<C0206d.a> arrayList = new ArrayList(size);
        m516m();
        C0206d.m611e(this.f1051b, arrayList, "", strArr, 6, false);
        AbstractC0194a abstractC0194a = this.f1051b;
        if (abstractC0194a != null) {
            abstractC0194a.close();
            this.f1051b = null;
        }
        C0051i c0051i2 = new C0051i(c0051i.size());
        for (C0206d.a aVar : arrayList) {
            c0051i2.m200i(new C0048f(new C0129h("root", C0015d.m39A(aVar.f1219a)), C0015d.m97y(aVar.f1219a), null, aVar.f1225g ? (byte) 4 : (byte) -1, aVar.f1226h ? -2L : aVar.f1220b, aVar.f1221c));
        }
        return c0051i2;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: d */
    public final int mo437d() {
        return this.f1050a;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: e */
    public final AbstractC0126e.b mo438e(C0129h c0129h, InterfaceC0381d interfaceC0381d) {
        if (!c0129h.m483j()) {
            return null;
        }
        m516m();
        File file = c0129h.toFile();
        AbstractC0126e.b bVarM515l = file != null ? m515l(this.f1051b, file) : null;
        if (bVarM515l != null && !bVarM515l.f995a) {
            String absolutePath = file.getAbsolutePath();
            if (!"/".equals(absolutePath)) {
                AbstractC0194a abstractC0194a = this.f1051b;
                abstractC0194a.f1184b = "$C";
                C0205c.m608c(abstractC0194a, absolutePath, bVarM515l);
            }
        }
        AbstractC0194a abstractC0194a2 = this.f1051b;
        if (abstractC0194a2 != null) {
            abstractC0194a2.close();
            this.f1051b = null;
        }
        return bVarM515l;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: f */
    public final int mo439f(C0129h c0129h) {
        return 0;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: g */
    public final AbstractC0126e.b mo440g(C0129h[] c0129hArr, String[] strArr, InterfaceC0381d interfaceC0381d) {
        return null;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: h */
    public final AbstractC0126e.a mo441h(C0129h c0129h) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x0155  */
    /* JADX WARN: Type inference failed for: r6v1, types: [boolean] */
    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: i */
    public final boolean mo442i(C0129h c0129h, String str, int[] iArr, int i2, AbstractC0126e.c cVar, InterfaceC0381d interfaceC0381d) {
        boolean z2;
        String str2;
        C0129h c0129h2;
        int i3;
        String str3;
        int i4 = 0;
        if (!c0129h.m483j()) {
            return false;
        }
        m516m();
        String[] strArrM1079c = C0385h.m1079c(str, true);
        AbstractC0194a abstractC0194a = this.f1051b;
        String str4 = c0129h.f1015c;
        ?? M49K = C0015d.m49K(i2, 1);
        if (str4 == null || !C0203a.m606b()) {
            z2 = false;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(C0203a.m605a());
            sb.append(" find '");
            sb.append(str4.replace("'", "'\\''"));
            sb.append("' -name '");
            sb.append(strArrM1079c[0].replace("'", "'\\''"));
            sb.append("'");
            if (M49K > 0) {
                sb.append(" -maxdepth ");
                sb.append(M49K == true ? 1 : 0);
            }
            if (abstractC0194a.m592b(sb.toString())) {
                String strM68d = C0015d.m68d(str4);
                Pattern patternCompile = (strArrM1079c.length <= 1 || (str3 = strArrM1079c[1]) == null) ? null : Pattern.compile(str3);
                while (true) {
                    try {
                        String strM599k = abstractC0194a.m599k(true);
                        if (strM599k == null) {
                            break;
                        }
                        if (interfaceC0381d == null || !interfaceC0381d.isCancelled()) {
                            if (strM599k.length() >= 2 && strM599k.charAt(i4) == '~') {
                                String[] strArrM1084h = C0385h.m1084h(strM599k, '\t');
                                if (strArrM1084h.length >= 2 && (str2 = strArrM1084h[1]) != null) {
                                    if (AbstractC0126e.m456g(str2, iArr)) {
                                        int iLastIndexOf = strArrM1084h[1].lastIndexOf(47);
                                        String strSubstring = iLastIndexOf < 1 ? strArrM1084h[1] : strArrM1084h[1].substring(iLastIndexOf + 1);
                                        if (patternCompile == null || patternCompile.matcher(strSubstring.toLowerCase(Locale.getDefault())).matches()) {
                                            AbstractC0126e.b bVar = new AbstractC0126e.b();
                                            long jM81j0 = C0015d.m81j0(0L, strArrM1084h[2]);
                                            bVar.f997c = jM81j0;
                                            bVar.f995a = jM81j0 != -1;
                                            bVar.f996b = C0015d.m81j0(0L, strArrM1084h[3]) * 1000;
                                            bVar.f1002h = strArrM1084h[4];
                                            bVar.f1001g = strArrM1084h[5];
                                            if (iLastIndexOf < 1) {
                                                c0129h2 = new C0129h("root", strM68d);
                                                i3 = 0;
                                            } else {
                                                StringBuilder sb2 = new StringBuilder();
                                                sb2.append(strM68d);
                                                i3 = 0;
                                                sb2.append(strArrM1084h[1].substring(0, iLastIndexOf));
                                                c0129h2 = new C0129h("root", sb2.toString());
                                            }
                                            cVar.mo461d(bVar, c0129h2, strSubstring, null);
                                        }
                                    }
                                }
                                i3 = i4;
                            }
                            patternCompile = patternCompile;
                            i4 = i3;
                        } else {
                            abstractC0194a.m601m("$C\n");
                        }
                        i3 = i4;
                        patternCompile = patternCompile;
                        i4 = i3;
                    } catch (Exception unused) {
                    }
                }
                z2 = true;
            } else {
                z2 = false;
            }
        }
        AbstractC0194a abstractC0194a2 = this.f1051b;
        if (abstractC0194a2 != null) {
            abstractC0194a2.close();
            this.f1051b = null;
        }
        return z2;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: j */
    public final boolean mo443j(C0129h c0129h) {
        return false;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: k */
    public final AbstractC0126e.b mo444k(C0129h c0129h, String[] strArr, InterfaceC0381d interfaceC0381d) {
        AbstractC0126e.b bVar;
        if (!c0129h.m483j()) {
            return null;
        }
        m516m();
        try {
            ArrayList<C0206d.a> arrayList = new ArrayList();
            if (C0206d.m611e(this.f1051b, arrayList, c0129h.m491r(), strArr, 5, true) && !arrayList.isEmpty()) {
                bVar = new AbstractC0126e.b();
                try {
                    for (C0206d.a aVar : arrayList) {
                        if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                            this.f1051b.m601m("$C");
                            return null;
                        }
                        if (aVar.f1225g) {
                            AbstractC0126e.b bVar2 = new AbstractC0126e.b();
                            if (C0205c.m608c(this.f1051b, C0015d.m78i(c0129h.m491r(), aVar.f1219a), bVar2)) {
                                bVar.f997c += bVar2.f997c;
                                bVar.f998d += bVar2.f998d;
                            }
                        } else {
                            bVar.f997c += aVar.f1220b;
                            bVar.f998d++;
                        }
                    }
                } catch (Exception unused) {
                }
                AbstractC0194a abstractC0194a = this.f1051b;
                if (abstractC0194a != null) {
                    abstractC0194a.close();
                    this.f1051b = null;
                }
                return bVar;
            }
            return null;
        } catch (Exception unused2) {
            bVar = null;
        }
    }

    /* JADX INFO: renamed from: m */
    public final void m516m() {
        if (AbstractC0194a.m590g(C0358b.f1991m)) {
            AbstractC0194a abstractC0194aM589c = AbstractC0194a.m589c(C0358b.f1991m);
            this.f1051b = abstractC0194aM589c;
            if (abstractC0194aM589c.m595f()) {
                return;
            }
            this.f1051b = null;
        }
    }
}
