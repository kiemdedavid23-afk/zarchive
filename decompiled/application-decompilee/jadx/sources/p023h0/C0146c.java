package p023h0;

import android.os.Build;
import p004b.C0015d;
import p008c0.C0044b;
import p008c0.C0051i;
import p011d0.C0064b;
import p020g0.C0128g;
import p020g0.C0129h;
import p020g0.InterfaceC0125d;
import p047s0.C0358b;

/* JADX INFO: renamed from: h0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0146c implements InterfaceC0125d {
    /* JADX INFO: renamed from: d */
    public static boolean m506d(C0044b c0044b, C0129h c0129h, int[] iArr) {
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        long jMax = 0;
        for (int i2 : iArr) {
            if (c0044b.get(i2).m185f()) {
                return false;
            }
            jMax = Math.max(jMax, c0044b.get(i2).f355d);
        }
        return C0064b.m244h(c0129h, jMax);
    }

    @Override // p020g0.InterfaceC0125d
    /* JADX INFO: renamed from: a */
    public final boolean mo99a(C0128g c0128g, C0129h c0129h, byte b2, int[] iArr, C0051i c0051i, boolean z2) {
        if (!c0129h.m480g() || iArr.length == 0) {
            return false;
        }
        String str = c0129h.f1015c;
        if (iArr.length == 1 && (!z2 || C0358b.m1041l(4096))) {
            byte bM183d = c0051i.get(iArr[0]).m183d();
            if (bM183d == 6 || bM183d == 20) {
                c0128g.m471a(12);
            } else {
                c0128g.m471a(3);
            }
        }
        c0128g.m471a(5);
        if (z2) {
            c0128g.m471a(22);
            if (C0015d.m52N(1, str)) {
                c0128g.m471a(56);
                if (iArr.length == 1) {
                    c0128g.m471a(57);
                }
            }
            c0128g.m471a(24);
            if (m506d(c0051i, c0129h, iArr)) {
                c0128g.m471a(20);
            }
        }
        return true;
    }

    @Override // p020g0.InterfaceC0125d
    /* JADX INFO: renamed from: b */
    public final boolean mo100b(C0128g c0128g, C0129h c0129h, byte b2, int[] iArr, C0044b c0044b) {
        if (!c0129h.m480g()) {
            return false;
        }
        String str = c0129h.f1015c;
        if (C0358b.m1041l(4096)) {
            c0128g.m471a(5);
        }
        c0128g.m471a(22);
        c0128g.m471a(24);
        if (iArr.length == 1 && C0015d.m52N(4, str)) {
            c0128g.m471a(57);
        }
        if (C0015d.m52N(1, str)) {
            c0128g.m471a(56);
        }
        if (m506d(c0044b, c0129h, iArr)) {
            c0128g.m471a(20);
        }
        return true;
    }

    @Override // p020g0.InterfaceC0125d
    /* JADX INFO: renamed from: c */
    public final boolean mo101c(C0128g c0128g, C0129h c0129h, byte b2, int[] iArr, C0044b c0044b) {
        if (!c0129h.m480g()) {
            return false;
        }
        if (iArr.length == 1) {
            byte bM183d = c0044b.get(iArr[0]).m183d();
            if (bM183d == 6 || bM183d == 20) {
                c0128g.m471a(12);
            } else {
                c0128g.m471a(3);
            }
        }
        c0128g.m471a(5);
        return true;
    }
}
