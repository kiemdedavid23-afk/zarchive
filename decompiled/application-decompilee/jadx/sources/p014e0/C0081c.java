package p014e0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import p008c0.C0046d;
import p020g0.AbstractC0126e;
import p039p0.C0230h;
import p051u0.C0385h;
import p051u0.InterfaceC0381d;

/* JADX INFO: renamed from: e0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0081c implements InterfaceC0082d {

    /* JADX INFO: renamed from: a */
    public String f592a;

    /* JADX INFO: renamed from: b */
    public long f593b;

    /* JADX INFO: renamed from: c */
    public C0080b f594c = new C0080b(null, 1);

    /* JADX INFO: renamed from: d */
    public long f595d;

    /* JADX INFO: renamed from: e */
    public int f596e;

    /* JADX INFO: renamed from: f */
    public String f597f;

    /* JADX INFO: renamed from: g */
    public String f598g;

    /* JADX INFO: renamed from: h */
    public String f599h;

    /* JADX INFO: renamed from: i */
    public int f600i;

    /* JADX INFO: renamed from: j */
    public C0080b f601j;

    /* JADX INFO: renamed from: k */
    public String f602k;

    /* JADX INFO: renamed from: l */
    public int f603l;

    public C0081c() {
        clear();
    }

    /* JADX INFO: renamed from: A */
    public static void m282A(C0080b c0080b, AbstractC0126e.b bVar, InterfaceC0381d interfaceC0381d) {
        for (C0080b c0080b2 : c0080b.f590e) {
            if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                return;
            }
            if (c0080b2.m281b()) {
                m282A(c0080b2, bVar, interfaceC0381d);
            } else {
                bVar.f997c += c0080b2.f587b;
                bVar.f998d++;
            }
        }
    }

    /* JADX INFO: renamed from: x */
    public static void m283x(Pattern pattern, C0080b c0080b, ArrayList arrayList, boolean z2, InterfaceC0381d interfaceC0381d) {
        String lowerCase;
        for (C0080b c0080b2 : c0080b.f590e) {
            if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                return;
            }
            try {
                lowerCase = c0080b2.f586a.toLowerCase(Locale.getDefault());
            } catch (Exception unused) {
                lowerCase = c0080b2.f586a;
            }
            if (pattern.matcher(lowerCase).matches()) {
                arrayList.add(c0080b2);
            }
            if (c0080b2.m281b() && z2) {
                m283x(pattern, c0080b2, arrayList, true, interfaceC0381d);
            }
        }
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: a */
    public final void mo284a(long j2, String str) {
        clear();
        this.f592a = str;
        this.f593b = j2;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: b */
    public final float mo285b() {
        if (C0385h.m1081e(this.f592a)) {
            return -1.0f;
        }
        long j2 = this.f595d;
        if (j2 == 0) {
            return 1.0f;
        }
        return this.f593b / j2;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: c */
    public final synchronized void mo286c(String str, long j2, int i2, int i3) {
        C0080b c0080bM308z = m308z(i3, str);
        if (c0080bM308z == null) {
            return;
        }
        c0080bM308z.f588c = i2;
        if (j2 == -1) {
            j2 = this.f593b;
        }
        c0080bM308z.f587b = j2;
        if (c0080bM308z.m281b()) {
            this.f595d += c0080bM308z.f587b;
            this.f596e++;
        }
    }

    @Override // p014e0.InterfaceC0082d
    public final void clear() {
        this.f592a = null;
        this.f593b = 0L;
        this.f594c = new C0080b(null, 1);
        this.f595d = 0L;
        this.f596e = 0;
        this.f597f = null;
        this.f598g = null;
        this.f600i = 0;
        this.f601j = null;
        this.f602k = null;
        this.f603l = 0;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: d */
    public final int mo287d() {
        return this.f596e;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: e */
    public final long mo288e() {
        return this.f595d;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: f */
    public final int mo289f() {
        return this.f600i;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: g */
    public final int mo290g() {
        return 16777216;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: h */
    public final void mo291h() {
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: i */
    public final int mo292i(String str) {
        return -1;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: j */
    public final AbstractC0126e.b mo293j(String str, InterfaceC0381d interfaceC0381d) {
        C0080b c0080bM307y = m307y(str);
        if (c0080bM307y == null) {
            return null;
        }
        AbstractC0126e.b bVar = new AbstractC0126e.b();
        bVar.f995a = !c0080bM307y.m281b();
        bVar.f996b = c0080bM307y.f588c;
        if (c0080bM307y.m281b()) {
            bVar.f997c = 0L;
            for (C0080b c0080b : c0080bM307y.f590e) {
                if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                    return bVar;
                }
                if (c0080b.m281b()) {
                    m282A(c0080b, bVar, interfaceC0381d);
                } else {
                    bVar.f997c += c0080b.f587b;
                    bVar.f998d++;
                }
            }
        } else {
            bVar.f997c = c0080bM307y.f587b;
            bVar.f998d = 1;
        }
        return bVar;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: k */
    public final AbstractC0126e.b mo294k(ArrayList arrayList, InterfaceC0381d interfaceC0381d) {
        AbstractC0126e.b bVar = new AbstractC0126e.b();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                return null;
            }
            AbstractC0126e.b bVarMo293j = mo293j(str, interfaceC0381d);
            if (bVarMo293j != null) {
                bVar.f997c += bVarMo293j.f997c;
                bVar.f998d += bVarMo293j.f998d;
            }
        }
        return bVar;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: l */
    public final String mo295l() {
        return this.f592a;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: m */
    public final boolean mo296m(String str) {
        String str2 = this.f592a;
        if (str2 == null || str == null) {
            return false;
        }
        return str2.endsWith(str);
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: n */
    public final void mo297n(int i2) {
        if (this.f600i != 13) {
            this.f600i = i2;
        }
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: o */
    public final String mo298o() {
        return this.f598g;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: p */
    public final boolean mo299p() {
        return !C0385h.m1081e(this.f597f);
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: q */
    public final void mo300q(String str, ArrayList<C0046d> arrayList) {
        C0080b c0080bM307y = m307y(str);
        if (c0080bM307y == null || !c0080bM307y.m281b()) {
            return;
        }
        ArrayList<C0080b> arrayList2 = c0080bM307y.f590e;
        arrayList.ensureCapacity(arrayList2.size());
        for (C0080b c0080b : arrayList2) {
            String str2 = c0080b.f586a;
            byte b2 = c0080b.m281b() ? (byte) 4 : (byte) -1;
            int i2 = c0080b.f589d;
            C0046d c0046d = new C0046d(str2, b2, (i2 & 2) != 0 ? (byte) 28 : (byte) 0, c0080b.f588c, (i2 & 4) != 0 ? -2L : c0080b.f587b);
            ArrayList<C0080b> arrayList3 = c0080b.f590e;
            c0046d.f359h = arrayList3 == null ? null : new C0230h(arrayList3.size());
            arrayList.add(c0046d);
        }
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: r */
    public final List<C0080b> mo301r(String str, Pattern pattern, boolean z2, InterfaceC0381d interfaceC0381d) {
        C0080b c0080bM307y = m307y(str);
        if (c0080bM307y == null || !c0080bM307y.m281b()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        m283x(pattern, c0080bM307y, arrayList, z2, interfaceC0381d);
        return arrayList;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: s */
    public final void mo302s(String str, String str2, int i2, long j2, int i3) {
        this.f598g = str;
        this.f599h = str2;
        this.f595d = j2;
        this.f596e = i2;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: t */
    public final String mo303t() {
        String str = this.f597f;
        return str == null ? "" : str;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: u */
    public final String mo304u() {
        return this.f599h;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: v */
    public final long mo305v() {
        return this.f593b;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: w */
    public final void mo306w(String str) {
        this.f597f = str;
    }

    /* JADX INFO: renamed from: y */
    public final C0080b m307y(String str) {
        C0080b c0080bM280a;
        if (str == null) {
            return null;
        }
        String[] strArrM1084h = C0385h.m1084h(str, '/');
        int i2 = 0;
        if (strArrM1084h.length > 0 && strArrM1084h[0].isEmpty()) {
            i2 = 1;
        }
        C0080b c0080b = this.f594c;
        while (i2 < strArrM1084h.length && (c0080bM280a = c0080b.m280a(strArrM1084h[i2])) != null) {
            i2++;
            c0080b = c0080bM280a;
        }
        if (i2 != strArrM1084h.length) {
            return null;
        }
        return c0080b;
    }

    /* JADX INFO: renamed from: z */
    public final C0080b m308z(int i2, String str) {
        C0080b c0080b;
        String strSubstring;
        int i3;
        C0080b c0080b2;
        C0080b c0080bM280a;
        String str2 = this.f602k;
        boolean z2 = str2 != null && str.startsWith(str2);
        if (z2) {
            c0080b = this.f601j;
            strSubstring = str.substring(this.f602k.length());
            i3 = this.f603l;
        } else {
            c0080b = this.f594c;
            strSubstring = str;
            i3 = 0;
        }
        String[] strArrM1084h = C0385h.m1084h(strSubstring, '/');
        int i4 = (strArrM1084h.length <= 0 || !strArrM1084h[0].isEmpty()) ? 0 : 1;
        while (i4 < strArrM1084h.length && (c0080bM280a = c0080b.m280a(strArrM1084h[i4])) != null) {
            i4++;
            c0080b = c0080bM280a;
        }
        if (i4 != strArrM1084h.length) {
            while (i4 < strArrM1084h.length) {
                int i5 = i4 + 1;
                if (i5 != strArrM1084h.length) {
                    c0080b2 = new C0080b(strArrM1084h[i4], 1);
                } else {
                    if (!z2 || this.f603l != i3 + i4) {
                        try {
                            this.f601j = c0080b;
                            this.f603l = i3 + i4;
                            this.f602k = str.substring(0, str.lastIndexOf(47) + 1);
                        } catch (Exception unused) {
                            this.f602k = null;
                        }
                    }
                    c0080b2 = new C0080b(strArrM1084h[i4], i2);
                }
                ArrayList<C0080b> arrayList = c0080b.f590e;
                if (arrayList != null) {
                    c0080b2.f591f = c0080b;
                    arrayList.add(c0080b2);
                }
                i4 = i5;
                c0080b = c0080b2;
            }
        }
        return c0080b;
    }
}
