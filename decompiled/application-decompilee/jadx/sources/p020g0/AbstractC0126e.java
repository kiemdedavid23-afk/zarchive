package p020g0;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p004b.C0015d;
import p008c0.C0044b;
import p021g1.C0133d;
import p023h0.C0144a;
import p025i0.C0149b;
import p025i0.C0150c;
import p027j0.C0158a;
import p031l0.C0172a;
import p051u0.InterfaceC0381d;

/* JADX INFO: renamed from: g0.e */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0126e {

    /* JADX INFO: renamed from: a */
    public static InterfaceC0123b[] f991a;

    /* JADX INFO: renamed from: g0.e$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public final long f992a;

        /* JADX INFO: renamed from: b */
        public final long f993b;

        /* JADX INFO: renamed from: c */
        public final String f994c;

        public a(String str, long j2, long j3) {
            this.f992a = j2;
            this.f993b = j3;
            this.f994c = str;
        }
    }

    /* JADX INFO: renamed from: g0.e$b */
    public static class b {

        /* JADX INFO: renamed from: a */
        public boolean f995a = false;

        /* JADX INFO: renamed from: c */
        public long f997c = 0;

        /* JADX INFO: renamed from: b */
        public long f996b = 0;

        /* JADX INFO: renamed from: d */
        public int f998d = 0;

        /* JADX INFO: renamed from: e */
        public boolean f999e = false;

        /* JADX INFO: renamed from: f */
        public String f1000f = null;

        /* JADX INFO: renamed from: h */
        public String f1002h = null;

        /* JADX INFO: renamed from: g */
        public String f1001g = null;

        /* JADX INFO: renamed from: i */
        public int f1003i = -1;
    }

    /* JADX INFO: renamed from: g0.e$c */
    public interface c {
        /* JADX INFO: renamed from: b */
        void mo460b(int i2);

        /* JADX INFO: renamed from: d */
        void mo461d(b bVar, C0129h c0129h, String str, String str2);
    }

    /* JADX INFO: renamed from: a */
    public static int[] m450a(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if ("[APK]".equals(str)) {
                arrayList.add(6);
                arrayList.add(20);
            } else if ("[ARC]".equals(str)) {
                arrayList.add(1);
                arrayList.add(2);
                arrayList.add(17);
                arrayList.add(18);
                arrayList.add(19);
            } else if ("[MP3]".equals(str)) {
                arrayList.add(7);
            } else if ("[DOC]".equals(str)) {
                arrayList.add(5);
                arrayList.add(8);
                arrayList.add(10);
                arrayList.add(13);
                arrayList.add(11);
                arrayList.add(12);
            } else if ("[IMG]".equals(str)) {
                arrayList.add(9);
            } else if ("[VID]".equals(str)) {
                arrayList.add(14);
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        Collections.sort(arrayList);
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
        }
        return iArr;
    }

    /* JADX INFO: renamed from: b */
    public static synchronized InterfaceC0123b[] m451b() {
        if (f991a == null) {
            InterfaceC0123b[] interfaceC0123bArr = new InterfaceC0123b[5];
            f991a = interfaceC0123bArr;
            interfaceC0123bArr[0] = new C0144a();
            interfaceC0123bArr[1] = new C0149b();
            interfaceC0123bArr[2] = new C0172a();
            interfaceC0123bArr[3] = new C0158a();
            interfaceC0123bArr[1 + 3] = new C0150c();
        }
        return f991a;
    }

    /* JADX INFO: renamed from: c */
    public static int m452c(C0129h c0129h) {
        for (InterfaceC0123b interfaceC0123b : m451b()) {
            if (interfaceC0123b.mo443j(c0129h)) {
                return interfaceC0123b.mo439f(c0129h);
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: d */
    public static a m453d(C0129h c0129h) {
        for (InterfaceC0123b interfaceC0123b : m451b()) {
            a aVarMo441h = interfaceC0123b.mo441h(c0129h);
            if (aVarMo441h != null) {
                return aVarMo441h;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: e */
    public static b m454e(C0129h c0129h, InterfaceC0381d interfaceC0381d) {
        if (c0129h == null) {
            return null;
        }
        for (InterfaceC0123b interfaceC0123b : m451b()) {
            b bVarMo438e = interfaceC0123b.mo438e(c0129h, interfaceC0381d);
            if (bVarMo438e != null) {
                return bVarMo438e;
            }
            if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                break;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    public static b m455f(C0129h c0129h, String[] strArr, InterfaceC0381d interfaceC0381d) {
        if (c0129h != null && strArr != null) {
            for (InterfaceC0123b interfaceC0123b : m451b()) {
                b bVarMo444k = interfaceC0123b.mo444k(c0129h, strArr, interfaceC0381d);
                if (bVarMo444k != null) {
                    return bVarMo444k;
                }
                if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                    break;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: g */
    public static boolean m456g(String str, int[] iArr) {
        if (iArr == null) {
            return true;
        }
        byte bM43E = C0015d.m43E(str);
        if (bM43E == 0) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == bM43E) {
                return true;
            }
            if (i2 > bM43E) {
                break;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: h */
    public static void m457h(C0129h c0129h, String str, int[] iArr, int i2, c cVar, InterfaceC0381d interfaceC0381d) {
        if (cVar == null) {
            return;
        }
        InterfaceC0123b[] interfaceC0123bArrM451b = m451b();
        int length = interfaceC0123bArrM451b.length;
        for (int i3 = 0; i3 < length && !interfaceC0123bArrM451b[i3].mo442i(c0129h, str, iArr, i2, cVar, interfaceC0381d); i3++) {
            if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                return;
            }
        }
    }

    /* JADX INFO: renamed from: i */
    public static void m458i(int i2, C0044b c0044b) {
        C0133d c0133dM459j = m459j(c0044b, i2);
        synchronized (c0044b) {
            c0044b.f336c = null;
            Collections.sort(c0044b, c0133dM459j);
        }
    }

    /* JADX INFO: renamed from: j */
    public static C0133d m459j(List list, int i2) {
        int i3 = i2 & 240;
        boolean zM49K = C0015d.m49K(i2, 8);
        if (list.size() > 10000) {
            if (i3 == 16) {
                return new C0133d(7, zM49K);
            }
            if (i3 != 32) {
                return i3 != 48 ? new C0133d(3, zM49K) : new C0133d(1, zM49K);
            }
            return new C0133d(5, zM49K);
        }
        if (i3 == 16) {
            return new C0133d(6, zM49K);
        }
        if (i3 != 32) {
            return i3 != 48 ? new C0133d(2, zM49K) : new C0133d(0, zM49K);
        }
        return new C0133d(4, zM49K);
    }
}
