package p031l0;

import p004b.C0015d;
import p008c0.C0044b;
import p008c0.C0051i;
import p020g0.C0128g;
import p020g0.C0129h;
import p020g0.InterfaceC0125d;
import p025i0.C0153f;
import p047s0.C0358b;
import p055w0.C0412c;
import ru.zdevs.zarchiver.p044io.SAF;

/* JADX INFO: renamed from: l0.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0176e implements InterfaceC0125d {
    @Override // p020g0.InterfaceC0125d
    /* JADX INFO: renamed from: a */
    public final boolean mo99a(C0128g c0128g, C0129h c0129h, byte b2, int[] iArr, C0051i c0051i, boolean z2) {
        if (!c0129h.m486m()) {
            return false;
        }
        try {
            int iM517d = C0153f.m517d(iArr, c0051i);
            if (iArr.length == 1 && C0015d.m49K(iM517d, 1) && (!z2 || C0358b.m1041l(4096))) {
                if (C0015d.m49K(iM517d, 32)) {
                    c0128g.m471a(12);
                }
                if (!C0015d.m49K(iM517d, 2) || C0015d.m49K(iM517d, 256) || C0015d.m49K(iM517d, 32)) {
                    c0128g.m471a(18);
                }
            }
            if (C0015d.m49K(iM517d, 2) && (iArr.length > 1 || !z2 || (C0358b.m1041l(2048) && !C0015d.m49K(iM517d, 32)))) {
                if (iArr.length == 1) {
                    c0128g.m471a(1);
                }
                c0128g.m471a(11);
                c0128g.m471a(5);
            }
            c0128g.m471a(8);
            c0128g.m471a(22);
            c0128g.m471a(24);
            c0128g.m471a(25);
            c0128g.m471a(23);
            return true;
        } catch (IndexOutOfBoundsException unused) {
            return false;
        }
    }

    @Override // p020g0.InterfaceC0125d
    /* JADX INFO: renamed from: b */
    public final boolean mo100b(C0128g c0128g, C0129h c0129h, byte b2, int[] iArr, C0044b c0044b) {
        String[] strArrM856g;
        C0412c.a aVarM1112f;
        if (!c0129h.m486m()) {
            return false;
        }
        try {
            int iM517d = C0153f.m517d(iArr, c0044b);
            if (iArr.length == 1) {
                if ((C0015d.m49K(iM517d, 2) && !C0015d.m50L(iM517d, 288) && C0358b.m1041l(2048)) || (C0015d.m50L(iM517d, 288) && C0358b.m1041l(4096))) {
                    if (C0015d.m50L(iM517d, 288)) {
                        c0128g.m471a(1);
                    } else {
                        c0128g.m471a(11);
                        c0128g.m471a(6);
                    }
                    c0128g.m471a(7);
                    c0128g.m471a(5);
                }
                if (!C0015d.m50L(iM517d, 18)) {
                    c0128g.m471a(18);
                }
                if (C0015d.m49K(iM517d, 16) || (C0358b.m1041l(4096) && !C0015d.m50L(iM517d, 2))) {
                    c0128g.m472b(9, "*.zip");
                    c0128g.m472b(10, "*.7z");
                }
                c0128g.m471a(8);
                if (!C0015d.m49K(iM517d, 16)) {
                    c0128g.m471a(22);
                }
                c0128g.m471a(24);
                c0128g.m471a(25);
                c0128g.m471a(23);
                c0128g.m471a(27);
                if (C0015d.m49K(iM517d, 16)) {
                    c0128g.m471a(22);
                }
                if (C0015d.m49K(iM517d, 16) && (strArrM856g = SAF.m856g(c0129h.f1015c)) != null && (aVarM1112f = C0412c.m1112f(strArrM856g[0])) != null && aVarM1112f.f2155d != 4) {
                    c0128g.m471a(70);
                }
            } else {
                c0128g.m471a(8);
                c0128g.m471a(22);
                c0128g.m471a(24);
                c0128g.m471a(25);
                c0128g.m471a(23);
            }
            return true;
        } catch (IndexOutOfBoundsException unused) {
            return false;
        }
    }

    @Override // p020g0.InterfaceC0125d
    /* JADX INFO: renamed from: c */
    public final boolean mo101c(C0128g c0128g, C0129h c0129h, byte b2, int[] iArr, C0044b c0044b) {
        if (!c0129h.m486m()) {
            return false;
        }
        try {
            int iM517d = C0153f.m517d(iArr, c0044b);
            if (iArr.length == 1 && C0015d.m49K(iM517d, 1)) {
                if (C0015d.m49K(iM517d, 32)) {
                    c0128g.m471a(12);
                }
                if (!C0015d.m49K(iM517d, 2) || C0015d.m49K(iM517d, 256)) {
                    c0128g.m471a(3);
                }
            }
            if (C0015d.m49K(iM517d, 2)) {
                if (iArr.length == 1) {
                    c0128g.m471a(!C0015d.m50L(iM517d, 288) ? 1 : 0);
                }
                c0128g.m471a(6);
                if (C0015d.m49K(iM517d, 512)) {
                    c0128g.m471a(7);
                }
                c0128g.m471a(5);
                c0128g.m471a(11);
            }
            if (!C0015d.m49K(iM517d, 2) || C0015d.m49K(iM517d, 32)) {
                c0128g.m472b(9, "*.zip");
                c0128g.m472b(10, "*.7z");
            }
            c0128g.m471a(8);
            return true;
        } catch (IndexOutOfBoundsException unused) {
            return false;
        }
    }
}
