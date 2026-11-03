package ru.zdevs.zarchiver;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Objects;
import p004b.C0015d;
import p008c0.AbstractViewOnClickListenerC0050h;
import p008c0.C0043a;
import p008c0.C0044b;
import p008c0.C0045c;
import p008c0.C0047e;
import p008c0.C0051i;
import p020g0.C0129h;
import p047s0.C0358b;
import p055w0.C0412c;
import p055w0.C0415f;
import p060z.C0449a;
import ru.zdevs.zarchiver.p044io.SAF;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0305b {

    /* JADX INFO: renamed from: a */
    public final Object f1592a = new Object();

    /* JADX INFO: renamed from: b */
    public final int f1593b;

    /* JADX INFO: renamed from: c */
    public C0129h f1594c;

    /* JADX INFO: renamed from: d */
    public byte f1595d;

    /* JADX INFO: renamed from: e */
    public int f1596e;

    /* JADX INFO: renamed from: f */
    public int f1597f;

    /* JADX INFO: renamed from: g */
    public int f1598g;

    /* JADX INFO: renamed from: h */
    public int f1599h;

    /* JADX INFO: renamed from: i */
    public boolean f1600i;

    /* JADX INFO: renamed from: j */
    public long f1601j;

    /* JADX INFO: renamed from: k */
    public long f1602k;

    /* JADX INFO: renamed from: l */
    public long f1603l;

    /* JADX INFO: renamed from: m */
    public int f1604m;

    /* JADX INFO: renamed from: n */
    public int f1605n;

    /* JADX INFO: renamed from: o */
    public String f1606o;

    /* JADX INFO: renamed from: p */
    public String[] f1607p;

    /* JADX INFO: renamed from: q */
    public C0044b f1608q;

    /* JADX INFO: renamed from: r */
    public C0051i f1609r;

    /* JADX INFO: renamed from: s */
    public C0043a f1610s;

    /* JADX INFO: renamed from: t */
    public final ArrayList<a> f1611t;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.b$a */
    public static class a implements Comparable<a> {

        /* JADX INFO: renamed from: a */
        public final C0129h f1612a;

        /* JADX INFO: renamed from: b */
        public final char f1613b;

        /* JADX INFO: renamed from: c */
        public final int f1614c;

        /* JADX INFO: renamed from: d */
        public final boolean f1615d;

        public a(C0129h c0129h, char c2, int i2, boolean z2) {
            this.f1612a = c0129h;
            this.f1613b = c2;
            this.f1614c = i2;
            this.f1615d = z2;
        }

        @Override // java.lang.Comparable
        public final int compareTo(a aVar) {
            a aVar2 = aVar;
            if (aVar2 == null) {
                return 1;
            }
            boolean z2 = aVar2.f1615d;
            boolean z3 = this.f1615d;
            if (z3 != z2) {
                return z3 ? 1 : -1;
            }
            return this.f1612a.compareTo(aVar2.f1612a);
        }

        public final String toString() {
            return "Path: " + this.f1612a + " Pos: " + this.f1614c + " Action: " + String.format("0x%x", Integer.valueOf(this.f1613b));
        }
    }

    public C0305b(int i2) {
        this.f1593b = i2;
        String str = C0358b.f1980b[i2];
        if (str == null) {
            this.f1594c = new C0129h("/sdcard");
        } else {
            this.f1594c = new C0129h(str);
        }
        this.f1595d = (byte) 0;
        this.f1596e = 0;
        m833n();
        this.f1601j = -2L;
        this.f1603l = -1L;
        this.f1602k = -1L;
        this.f1605n = 0;
        this.f1604m = 0;
        this.f1608q = new C0044b(0);
        this.f1610s = null;
        this.f1597f = 0;
        this.f1606o = null;
        this.f1607p = null;
        this.f1609r = null;
        this.f1611t = new ArrayList<>();
    }

    /* JADX INFO: renamed from: a */
    public final C0449a m820a(int[] iArr) {
        String[] strArrM1133a;
        synchronized (this.f1592a) {
            if (m828i()) {
                return new C0449a(iArr, this.f1609r);
            }
            C0129h c0129hM862m = (Build.VERSION.SDK_INT >= 33 && this.f1594c.m483j() && m825f() == 2 && (strArrM1133a = C0415f.m1133a(this.f1594c.f1015c)) != null && strArrM1133a[1].equals(strArrM1133a[2])) ? SAF.m862m(strArrM1133a[0], strArrM1133a[1], true, true) : this.f1594c;
            return new C0449a(this.f1608q, c0129hM862m, iArr);
        }
    }

    /* JADX INFO: renamed from: b */
    public final AbstractViewOnClickListenerC0050h m821b(Context context, AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050h) {
        byte b2 = 0;
        if (m828i()) {
            if (abstractViewOnClickListenerC0050h != null && abstractViewOnClickListenerC0050h.mo176c() == R.layout.item_file_search) {
                b2 = 1;
            }
            C0047e c0047e = b2 != 0 ? (C0047e) abstractViewOnClickListenerC0050h : new C0047e(context, this);
            c0047e.m198l(this.f1609r, this.f1594c, true);
            return c0047e;
        }
        C0045c c0045c = abstractViewOnClickListenerC0050h == null || abstractViewOnClickListenerC0050h.mo176c() != this.f1598g ? new C0045c(context, this, abstractViewOnClickListenerC0050h) : (C0045c) abstractViewOnClickListenerC0050h;
        C0044b c0044b = this.f1608q;
        C0129h c0129h = this.f1594c;
        C0043a c0043a = this.f1610s;
        c0045c.m198l(c0044b, c0129h, c0045c.f338o != R.layout.item_file_grid);
        if (c0045c.f378m != null && !c0045c.f341r.equals(c0129h)) {
            c0045c.f378m.f1291c = c0129h.m480g() ? (byte) 3 : (byte) 0;
        }
        c0045c.f341r = c0129h;
        c0045c.f342s = c0043a;
        return c0045c;
    }

    /* JADX INFO: renamed from: c */
    public final int m822c() {
        if (this.f1596e == 0) {
            C0129h c0129h = this.f1594c;
            if (c0129h == null) {
                this.f1596e = 32768;
            } else {
                if (c0129h.m485l()) {
                    this.f1596e = 2;
                    if (C0415f.m1137e(this.f1594c.f1015c)) {
                        this.f1596e |= 128;
                    }
                } else if (this.f1594c.m483j()) {
                    this.f1596e = 1;
                } else if (this.f1594c.m480g()) {
                    this.f1596e = 4;
                } else if (this.f1594c.m486m()) {
                    this.f1596e = 16;
                } else if (this.f1594c.m484k()) {
                    this.f1596e = 64;
                } else {
                    this.f1596e = 32768;
                }
                if (this.f1594c.m482i()) {
                    this.f1596e |= 32;
                }
            }
        }
        return this.f1596e;
    }

    /* JADX INFO: renamed from: d */
    public final a m823d() {
        ArrayList<a> arrayList = this.f1611t;
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList.remove(arrayList.size() - 1);
    }

    /* JADX INFO: renamed from: e */
    public final int m824e() {
        return m828i() ? this.f1605n : this.f1604m;
    }

    /* JADX INFO: renamed from: f */
    public final byte m825f() {
        if (this.f1595d == 0) {
            this.f1595d = C0415f.m1136d(this.f1594c, false);
        }
        return this.f1595d;
    }

    /* JADX INFO: renamed from: g */
    public final boolean m826g(int i2) {
        return C0015d.m50L(m822c(), i2);
    }

    /* JADX INFO: renamed from: h */
    public final boolean m827h() {
        if (C0358b.m1041l(8192)) {
            return this.f1611t.isEmpty();
        }
        if (m826g(32772)) {
            return false;
        }
        String str = this.f1594c.f1015c;
        return ((str.isEmpty() || str.equals("/")) && m826g(1)) || str.equals(C0358b.f1980b[this.f1593b]) || C0412c.m1113g(str) != null;
    }

    /* JADX INFO: renamed from: i */
    public final boolean m828i() {
        return C0015d.m49K(this.f1597f, 1) && this.f1609r != null;
    }

    /* JADX INFO: renamed from: j */
    public final void m829j(Bundle bundle, String str) {
        bundle.putParcelable(str.concat("path"), this.f1594c);
        bundle.putInt(str.concat("flag"), this.f1597f);
        bundle.putString(str.concat("find"), this.f1606o);
    }

    /* JADX INFO: renamed from: k */
    public final void m830k(Bundle bundle, String str) {
        C0129h c0129h = (C0129h) bundle.getParcelable(str.concat("path"));
        if (c0129h == null) {
            return;
        }
        this.f1597f = bundle.getInt(str.concat("flag"));
        this.f1594c = c0129h;
        this.f1606o = bundle.getString(str.concat("find"));
    }

    /* JADX INFO: renamed from: l */
    public final void m831l(C0129h c0129h, byte b2, int i2) {
        this.f1594c = c0129h;
        this.f1595d = b2;
        this.f1596e = 0;
        this.f1604m = i2;
        this.f1601j = -2L;
        this.f1603l = -1L;
        this.f1602k = -1L;
    }

    /* JADX INFO: renamed from: m */
    public final void m832m(char c2, int i2) {
        boolean zM1041l = C0358b.m1041l(8192);
        ArrayList<a> arrayList = this.f1611t;
        if (zM1041l || !arrayList.isEmpty()) {
            C0129h c0129h = this.f1594c;
            boolean zM828i = m828i();
            a aVar = new a(c0129h, c2, i2, zM828i);
            a aVar2 = arrayList.isEmpty() ? null : arrayList.get(arrayList.size() - 1);
            int iCompareTo = 1;
            if (aVar2 != null) {
                iCompareTo = zM828i != aVar2.f1615d ? zM828i ? 1 : -1 : c0129h.compareTo(aVar2.f1612a);
            }
            if (iCompareTo != 0) {
                arrayList.add(aVar);
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    Objects.toString(arrayList.get(i3).f1612a);
                }
            }
        }
    }

    /* JADX INFO: renamed from: n */
    public final void m833n() {
        int i2;
        int i3 = C0358b.f1988j;
        int i4 = i3 & 3840;
        if (i4 != 512) {
            i2 = i4 != 768 ? R.layout.item_file_detail : R.layout.item_file_grid;
        } else {
            i2 = R.layout.item_file_compact;
        }
        this.f1598g = i2;
        this.f1599h = i3 & 248;
        this.f1600i = C0358b.m1036g(4);
    }
}
