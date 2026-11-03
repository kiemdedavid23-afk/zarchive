package p060z;

import android.graphics.Point;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.io.File;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import p004b.C0015d;
import p008c0.C0043a;
import p008c0.C0044b;
import p008c0.C0046d;
import p014e0.InterfaceC0082d;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p020g0.InterfaceC0123b;
import p033m0.C0181d;
import p039p0.C0230h;
import p047s0.C0358b;
import p051u0.C0385h;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p055w0.C0412c;
import p055w0.C0415f;
import ru.zdevs.zarchiver.C0305b;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.archiver.C2JBridge;

/* JADX INFO: renamed from: z.h0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0468h0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final C0479n f2290e;

    /* JADX INFO: renamed from: f */
    public final C0305b f2291f;

    /* JADX INFO: renamed from: g */
    public int f2292g;

    /* JADX INFO: renamed from: h */
    public final Point f2293h;

    /* JADX INFO: renamed from: i */
    public final String f2294i;

    /* JADX INFO: renamed from: j */
    public final C0044b f2295j;

    public C0468h0(C0305b c0305b, C0129h c0129h, boolean z2, String str, int i2, int i3, Point point, C0044b c0044b) {
        this.f2290e = new C0479n(c0305b.f1593b, c0129h, z2, i2);
        this.f2291f = c0305b;
        this.f2292g = i3;
        this.f2294i = str;
        this.f2293h = point;
        this.f2295j = c0044b;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: e */
    public final void mo369e() {
        C0479n c0479n = this.f2290e;
        if (c0479n.f2318b.m480g()) {
            String str = c0479n.f2318b.f1015c;
            InterfaceC0082d interfaceC0082d = C2JBridge.f1556e;
            if (interfaceC0082d != null && (str == null || interfaceC0082d.mo296m(str))) {
                if (C2JBridge.f1554c) {
                    C2JBridge.cSetStatus(0, 15);
                }
                C2JBridge.f1556e = null;
            }
        }
        super.mo369e();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0061  */
    /* JADX WARN: Code duplicated, block: B:189:0x03a6  */
    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        int iMo437d;
        InterfaceC0123b interfaceC0123b;
        C0044b c0044b;
        int size;
        int i2;
        C0043a c0043a;
        int i3;
        long j2;
        String str;
        String str2;
        int iM1207m;
        C0412c.a aVarM1113g;
        boolean z2;
        Thread threadCurrentThread = Thread.currentThread();
        int priority = threadCurrentThread.getPriority();
        threadCurrentThread.setPriority(10);
        if (C0015d.f115b == null) {
            C0015d.m55Q();
        }
        C0393a.b bVar = null;
        if (this.f2290e.f2318b.m488o() && (aVarM1113g = C0412c.m1113g(this.f2290e.f2318b.f1015c)) != null && !aVarM1113g.m1131f()) {
            String string = PreferenceManager.getDefaultSharedPreferences(ZApp.f1375c).getString("sNonRequestPermission", null);
            if (string != null) {
                if (string.contains("~!@" + aVarM1113g.m1126a() + "~!@")) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            if (!z2) {
                C0479n c0479n = this.f2290e;
                c0479n.f2323g = aVarM1113g;
                if (c0479n.f2318b.m486m()) {
                    this.f2292g |= 2;
                }
            }
        }
        this.f2290e.f2324h = new C0044b(0);
        C0479n c0479n2 = this.f2290e;
        C0129h c0129h = c0479n2.f2318b;
        C0044b c0044b2 = c0479n2.f2324h;
        int i4 = this.f2292g;
        if (C0358b.m1036g(1)) {
            i4 |= 4;
        }
        InterfaceC0123b[] interfaceC0123bArrM451b = AbstractC0126e.m451b();
        int length = interfaceC0123bArrM451b.length;
        int i5 = 0;
        while (true) {
            if (i5 >= length) {
                iMo437d = 0;
                break;
            }
            InterfaceC0123b interfaceC0123b2 = interfaceC0123bArrM451b[i5];
            if (interfaceC0123b2.mo435b(c0129h, c0044b2, i4)) {
                iMo437d = interfaceC0123b2.mo437d();
                break;
            }
            i5++;
        }
        c0479n2.f2322f = iMo437d;
        if (this.f2290e.f2324h.size() > 1) {
            AbstractC0126e.m458i(this.f2291f.f1599h, this.f2290e.f2324h);
        }
        C0479n c0479n3 = this.f2290e;
        c0479n3.f2326j = C0415f.m1136d(c0479n3.f2318b, false);
        if (this.f2294i != null) {
            int size2 = this.f2290e.f2324h.size();
            int i6 = 0;
            while (i6 < size2 && !this.f2294i.equals(this.f2290e.f2324h.get(i6).f352a)) {
                i6++;
            }
            if (C0015d.m49K(this.f2292g, 8)) {
                this.f2290e.f2320d = i6;
            } else if (this.f2293h != null) {
                this.f2290e.f2320d = 0;
                if (i6 < size2 && i6 > (iM1207m = m1207m() / 2)) {
                    C0479n c0479n4 = this.f2290e;
                    int i7 = i6 - iM1207m;
                    c0479n4.f2320d = i7;
                    Point point = this.f2293h;
                    int i8 = (point != null && this.f2291f.f1598g == R.layout.item_file_grid) ? point.x / (((int) (C0358b.f1989k * 1.6f)) + 10) : 1;
                    if (i8 > 1) {
                        c0479n4.f2320d = (i7 % i8) + i7;
                    } else {
                        c0479n4.f2320d = i7 + 1;
                    }
                }
            }
        }
        C0129h c0129h2 = this.f2290e.f2318b;
        DateFormat dateFormat = C0046d.f350i;
        boolean z3 = c0129h2.m483j() && !c0129h2.m485l();
        boolean z4 = this.f2291f.f1598g == R.layout.item_file_detail && C0015d.m49K(AbstractC0126e.m452c(this.f2290e.f2318b), 16);
        if (z3 || z4) {
            String str3 = this.f2290e.f2318b.f1015c + "/";
            C0129h c0129h3 = this.f2290e.f2318b;
            InterfaceC0123b[] interfaceC0123bArrM451b2 = AbstractC0126e.m451b();
            int length2 = interfaceC0123bArrM451b2.length;
            int i9 = 0;
            while (true) {
                if (i9 >= length2) {
                    interfaceC0123b = null;
                    break;
                }
                interfaceC0123b = interfaceC0123bArrM451b2[i9];
                if (interfaceC0123b.mo443j(c0129h3)) {
                    break;
                }
                i9++;
            }
            if (interfaceC0123b == null) {
                z4 = false;
            }
            int iMax = Math.max(this.f2290e.f2320d, 0);
            int iMin = Math.min(m1207m() + iMax, this.f2290e.f2324h.size());
            int i10 = iMax;
            while (i10 < iMin) {
                if (isCancelled()) {
                    threadCurrentThread.setPriority(priority);
                    return bVar;
                }
                C0046d c0046d = this.f2290e.f2324h.get(i10);
                if (z4 && c0046d.m185f() && !c0046d.m186g()) {
                    int iMo434a = interfaceC0123b.mo434a(c0046d.f352a, this.f2290e.f2318b);
                    if (iMo434a >= 0) {
                        c0046d.f359h = new C0230h(iMo434a);
                    }
                } else if (z3) {
                    c0046d.m180a(str3);
                }
                i10++;
                bVar = null;
            }
            if (iMax != 0 || iMin != this.f2290e.f2324h.size()) {
                if (z3) {
                    this.f2292g |= 256;
                }
                if (z4) {
                    this.f2292g |= 512;
                }
            }
        }
        if (C0015d.m49K(this.f2292g, 64) && this.f2290e.f2324h.size() < 30000) {
            int i11 = this.f2291f.f1599h;
            if (i11 != 0) {
                String str4 = "DIR";
                if (i11 == 16) {
                    C0479n c0479n5 = this.f2290e;
                    C0044b c0044b3 = c0479n5.f2324h;
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    int size3 = c0044b3.size();
                    boolean z5 = false;
                    for (int i12 = 0; i12 < size3; i12++) {
                        C0046d c0046d2 = c0044b3.get(i12);
                        if (c0046d2.m186g()) {
                            z5 = true;
                        } else {
                            String str5 = c0046d2.f352a;
                            if (!TextUtils.isEmpty(str5) && !c0046d2.m186g()) {
                                String upperCase = c0046d2.m185f() ? "DIR" : C0015d.m91s(str5).toUpperCase();
                                if (!linkedHashMap.containsKey(upperCase)) {
                                    linkedHashMap.put(upperCase, Integer.valueOf(z5 ? i12 - 1 : i12));
                                    z5 = false;
                                }
                            }
                        }
                    }
                    c0479n5.f2325i = new C0043a((Integer[]) linkedHashMap.values().toArray(new Integer[0]), (String[]) linkedHashMap.keySet().toArray(new String[0]));
                } else if (i11 == 32) {
                    C0479n c0479n6 = this.f2290e;
                    C0044b c0044b4 = c0479n6.f2324h;
                    int size4 = c0044b4.size();
                    if (size4 < 2) {
                        c0043a = null;
                    } else {
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        long j3 = -1;
                        int i13 = 0;
                        while (i13 < size4) {
                            C0046d c0046d3 = c0044b4.get(i13);
                            if (c0046d3.m185f()) {
                                i3 = size4;
                                j2 = 0;
                            } else {
                                i3 = size4;
                                long j4 = c0046d3.f355d;
                                if (j4 < 1024) {
                                    j2 = 1024;
                                } else if (j4 < 10240) {
                                    j2 = 10240;
                                } else if (j4 < 102400) {
                                    j2 = 102400;
                                } else if (j4 < 1048576) {
                                    j2 = 1048576;
                                } else if (j4 < 10485760) {
                                    j2 = 10485760;
                                } else if (j4 < 104857600) {
                                    j2 = 104857600;
                                } else if (j4 < 1073741824) {
                                    j2 = 1073741824;
                                } else {
                                    j2 = j4 < 10737418240L ? 10737418240L : 107374182400L;
                                }
                            }
                            if (j2 != j3) {
                                if (c0046d3.m185f()) {
                                    str2 = str4;
                                    str = str2;
                                } else {
                                    long j5 = c0046d3.f355d;
                                    if (j5 < 1024) {
                                        str2 = "1" + C0385h.f2091d;
                                    } else if (j5 < 10240) {
                                        str2 = "1" + C0385h.f2090c;
                                    } else if (j5 < 102400) {
                                        str2 = "10" + C0385h.f2090c;
                                    } else {
                                        str = str4;
                                        if (j5 < 1048576) {
                                            str2 = "100" + C0385h.f2090c;
                                        } else if (j5 < 10485760) {
                                            str2 = "1" + C0385h.f2089b;
                                        } else if (j5 < 104857600) {
                                            str2 = "10" + C0385h.f2089b;
                                        } else if (j5 < 1073741824) {
                                            str2 = "100" + C0385h.f2089b;
                                        } else if (j5 < 10737418240L) {
                                            str2 = "1" + C0385h.f2088a;
                                        } else {
                                            str2 = "10" + C0385h.f2088a;
                                        }
                                    }
                                    str = str4;
                                }
                                arrayList.add(str2);
                                arrayList2.add(Integer.valueOf(i13));
                                j3 = j2;
                            } else {
                                str = str4;
                            }
                            i13++;
                            str4 = str;
                            size4 = i3;
                        }
                        if (arrayList2.size() < 3) {
                            c0043a = null;
                        } else {
                            c0043a = new C0043a((Integer[]) arrayList2.toArray(new Integer[0]), (String[]) arrayList.toArray(new String[0]));
                        }
                    }
                    c0479n6.f2325i = c0043a;
                }
            } else {
                C0479n c0479n7 = this.f2290e;
                C0044b c0044b5 = c0479n7.f2324h;
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                int size5 = c0044b5.size();
                char c2 = 0;
                boolean z6 = false;
                for (int i14 = 0; i14 < size5; i14++) {
                    C0046d c0046d4 = c0044b5.get(i14);
                    if (c0046d4.m186g()) {
                        z6 = true;
                    } else {
                        String str6 = c0046d4.f352a;
                        if (!TextUtils.isEmpty(str6)) {
                            char cCharAt = str6.charAt(0);
                            char upperCase2 = c0046d4.m185f() ? Character.toUpperCase(cCharAt) : Character.toLowerCase(cCharAt);
                            if (upperCase2 != c2) {
                                arrayList3.add(str6.substring(0, 1).toUpperCase());
                                arrayList4.add(Integer.valueOf(z6 ? i14 - 1 : i14));
                                c2 = upperCase2;
                                z6 = false;
                            }
                        }
                    }
                }
                if (Build.VERSION.SDK_INT >= 26 && (size = arrayList4.size()) > 1 && (i2 = size5 / size) > 2) {
                    int i15 = i2 * 2;
                    int i16 = i2 / 2;
                    int i17 = 0;
                    while (i17 < size) {
                        int iIntValue = ((Integer) arrayList4.get(i17)).intValue();
                        int i18 = i17 + 1;
                        int iIntValue2 = (i18 < size ? ((Integer) arrayList4.get(i18)).intValue() : size5) - iIntValue;
                        if (iIntValue2 > i15) {
                            int i19 = (iIntValue2 / i2) * 2;
                            String str7 = (String) arrayList3.get(i17);
                            int i20 = iIntValue2;
                            int i21 = 0;
                            while (i21 < i19) {
                                int i22 = i21 + 1;
                                int i23 = ((iIntValue2 / (i19 + 1)) * i22) + iIntValue;
                                if (Math.abs(i23 - i20) >= i16) {
                                    i17++;
                                    if (i17 < size) {
                                        arrayList4.add(i17, Integer.valueOf(i23));
                                        arrayList3.add(i17, str7);
                                    } else {
                                        arrayList4.add(Integer.valueOf(i23));
                                        arrayList3.add(str7);
                                    }
                                    size++;
                                    i20 = i23;
                                }
                                i21 = i22;
                            }
                        }
                        i17++;
                        size5 = size5;
                    }
                }
                C0043a c0043a2 = new C0043a((ArrayList<Integer>) arrayList4, (ArrayList<String>) arrayList3);
                c0479n7.f2325i = c0043a2;
            }
        }
        if (C0015d.m49K(this.f2292g, 16) && (c0044b = this.f2295j) != null && c0044b.f334a > 0) {
            int size6 = this.f2290e.f2324h.size();
            int size7 = this.f2295j.size();
            int i24 = 0;
            for (int i25 = 0; i25 < size7; i25++) {
                C0046d c0046d5 = this.f2295j.get(i25);
                if (c0046d5.f358g) {
                    int i26 = i24;
                    while (i26 < size6) {
                        if (c0046d5.f352a.equals(this.f2290e.f2324h.get(i26).f352a)) {
                            this.f2290e.f2324h.m174g(i26);
                            i26++;
                            break;
                        }
                        i26++;
                    }
                    if (i26 >= size6) {
                        i26 = 0;
                        while (i26 < i24) {
                            if (c0046d5.f352a.equals(this.f2290e.f2324h.get(i26).f352a)) {
                                this.f2290e.f2324h.m174g(i26);
                                i26++;
                                break;
                            }
                            i26++;
                        }
                    }
                    if (isCancelled()) {
                        threadCurrentThread.setPriority(priority);
                        return null;
                    }
                    i24 = i26;
                }
            }
        }
        if (C0181d.f1138a == null) {
            C0181d.m566g();
            if (Build.VERSION.SDK_INT < 31) {
                try {
                    new File(C0181d.f1138a, ".nomedia").createNewFile();
                } catch (Exception unused) {
                }
            }
        }
        threadCurrentThread.setPriority(priority);
        C0479n c0479n8 = this.f2290e;
        c0479n8.f2319c = this.f2292g;
        return c0479n8;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: i */
    public final int mo1099i() {
        return this.f2290e.f2317a;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 1;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: k */
    public final void mo1100k() {
        C0479n c0479n;
        C0393a c0393a = this.f2112a;
        if (c0393a == null || (c0479n = this.f2290e) == null) {
            return;
        }
        c0393a.m1091b(c0479n, false);
    }

    /* JADX INFO: renamed from: m */
    public final int m1207m() {
        Point point = this.f2293h;
        if (point == null) {
            return 10;
        }
        if (this.f2291f.f1598g != R.layout.item_file_grid) {
            return point.y / C0358b.f1989k;
        }
        int i2 = ((int) (C0358b.f1989k * 1.6f)) + 10;
        return (point.x / i2) * (point.y / ((C0358b.f1990l * 3) + i2));
    }
}
