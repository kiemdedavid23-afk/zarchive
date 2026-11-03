package ru.zdevs.zarchiver.archiver.content;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import p004b.C0015d;
import p008c0.C0046d;
import p014e0.C0080b;
import p014e0.InterfaceC0082d;
import p020g0.AbstractC0126e;
import p051u0.C0385h;
import p051u0.InterfaceC0381d;

/* JADX INFO: loaded from: classes.dex */
public class ContentNative implements InterfaceC0082d {

    /* JADX INFO: renamed from: j */
    public static long f1580j;

    /* JADX INFO: renamed from: k */
    public static ArrayList<C0046d> f1581k;

    /* JADX INFO: renamed from: l */
    public static AbstractC0126e.b f1582l;

    /* JADX INFO: renamed from: a */
    public String f1583a;

    /* JADX INFO: renamed from: b */
    public long f1584b;

    /* JADX INFO: renamed from: c */
    public long f1585c;

    /* JADX INFO: renamed from: d */
    public int f1586d;

    /* JADX INFO: renamed from: e */
    public int f1587e;

    /* JADX INFO: renamed from: f */
    public String f1588f;

    /* JADX INFO: renamed from: g */
    public String f1589g;

    /* JADX INFO: renamed from: h */
    public String f1590h;

    /* JADX INFO: renamed from: i */
    public int f1591i;

    public ContentNative() {
        clear();
    }

    private static native void cClear();

    private static native void cGetInfo(String str);

    private static native int cGetItemCount(String str);

    private static native void cGetList(String str);

    private static native boolean cIsArchive(String str);

    private static native void cListStart(String str);

    public static void jAdd(String str, int i2, long j2, int i3, int i4) {
        long j3;
        long j4;
        ArrayList<C0046d> arrayList = f1581k;
        if (arrayList != null) {
            String string = i2 >= 0 ? Integer.toString(i2) : null;
            byte b2 = (i4 & 1) != 0 ? (byte) 4 : (byte) -1;
            byte b3 = (i4 & 2) != 0 ? (byte) 28 : (byte) 0;
            long j5 = ((long) i3) * 1000;
            if ((i4 & 4) == 0) {
                if (j2 == -1) {
                    j4 = f1580j;
                } else {
                    j3 = j2;
                }
                arrayList.add(new C0046d(str, string, b2, b3, j5, j3));
            }
            j4 = -2;
            j3 = j4;
            arrayList.add(new C0046d(str, string, b2, b3, j5, j3));
        }
    }

    public static void jSetFileInfo(long j2, int i2, int i3, int i4) {
        AbstractC0126e.b bVar = f1582l;
        if (bVar != null) {
            if (j2 == -1) {
                j2 = f1580j;
            }
            bVar.f997c = j2;
            bVar.f998d = i2;
            bVar.f996b = ((long) i3) * 1000;
            bVar.f995a = (i4 & 1) == 0;
            bVar.f999e = (i4 & 4) != 0;
        }
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: a */
    public final void mo284a(long j2, String str) {
        clear();
        this.f1583a = str;
        this.f1584b = j2;
        if (C0015d.m91s(str).startsWith("0")) {
            this.f1587e = 32;
        } else {
            this.f1587e = 0;
        }
        cListStart(this.f1583a);
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: b */
    public final float mo285b() {
        if (C0385h.m1081e(this.f1583a)) {
            return -1.0f;
        }
        long j2 = this.f1585c;
        if (j2 == 0) {
            return 1.0f;
        }
        return this.f1584b / j2;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: c */
    public final synchronized void mo286c(String str, long j2, int i2, int i3) {
    }

    @Override // p014e0.InterfaceC0082d
    public final void clear() {
        this.f1583a = null;
        this.f1584b = 0L;
        f1581k = null;
        this.f1585c = 0L;
        this.f1586d = 0;
        this.f1588f = null;
        this.f1589g = null;
        this.f1591i = 0;
        cClear();
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: d */
    public final int mo287d() {
        return this.f1586d;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: e */
    public final long mo288e() {
        return this.f1585c;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: f */
    public final int mo289f() {
        return this.f1591i;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: g */
    public final int mo290g() {
        return this.f1587e;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: h */
    public final void mo291h() {
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: i */
    public final int mo292i(String str) {
        return cGetItemCount(str);
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: j */
    public final AbstractC0126e.b mo293j(String str, InterfaceC0381d interfaceC0381d) {
        f1580j = this.f1584b;
        AbstractC0126e.b bVar = new AbstractC0126e.b();
        f1582l = bVar;
        cGetInfo(str);
        f1582l = null;
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
            bVar.f997c += bVarMo293j.f997c;
            bVar.f998d += bVarMo293j.f998d;
        }
        return bVar;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: l */
    public final String mo295l() {
        return this.f1583a;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: m */
    public final boolean mo296m(String str) {
        String str2 = this.f1583a;
        return str2 != null && str != null && str2.endsWith(str) && cIsArchive(this.f1583a);
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: n */
    public final void mo297n(int i2) {
        if (this.f1591i != 13) {
            this.f1591i = i2;
        }
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: o */
    public final String mo298o() {
        return this.f1589g;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: p */
    public final boolean mo299p() {
        return !C0385h.m1081e(this.f1588f);
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: q */
    public final void mo300q(String str, ArrayList<C0046d> arrayList) {
        f1580j = this.f1584b;
        f1581k = arrayList;
        cGetList(str);
        f1581k = null;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: r */
    public final List<C0080b> mo301r(String str, Pattern pattern, boolean z2, InterfaceC0381d interfaceC0381d) {
        return null;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: s */
    public final void mo302s(String str, String str2, int i2, long j2, int i3) {
        this.f1589g = str;
        this.f1590h = str2;
        this.f1586d = i2;
        this.f1585c = j2;
        this.f1587e = (this.f1587e & 32) | i3;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: t */
    public final String mo303t() {
        String str = this.f1588f;
        return str == null ? "" : str;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: u */
    public final String mo304u() {
        return this.f1590h;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: v */
    public final long mo305v() {
        return this.f1584b;
    }

    @Override // p014e0.InterfaceC0082d
    /* JADX INFO: renamed from: w */
    public final void mo306w(String str) {
        this.f1588f = str;
    }
}
