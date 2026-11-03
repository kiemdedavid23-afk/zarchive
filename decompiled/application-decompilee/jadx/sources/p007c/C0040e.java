package p007c;

import java.util.ArrayList;
import p004b.C0012a;
import p004b.C0013b;
import p004b.C0015d;
import p004b.C0016e;
import p004b.C0018g;

/* JADX INFO: renamed from: c.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0040e extends C0038c {

    /* JADX INFO: renamed from: M */
    public float f316M = -1.0f;

    /* JADX INFO: renamed from: N */
    public int f317N = -1;

    /* JADX INFO: renamed from: O */
    public int f318O = -1;

    /* JADX INFO: renamed from: P */
    public C0037b f319P = this.f286e;

    /* JADX INFO: renamed from: Q */
    public int f320Q = 0;

    public C0040e() {
        this.f293l.clear();
        this.f293l.add(this.f319P);
    }

    @Override // p007c.C0038c
    /* JADX INFO: renamed from: a */
    public final void mo144a(C0016e c0016e) {
        C0039d c0039d = (C0039d) this.f294m;
        if (c0039d == null) {
            return;
        }
        C0037b c0037bMo146c = c0039d.mo146c(C0037b.a.f261a);
        C0037b c0037bMo146c2 = c0039d.mo146c(C0037b.a.f263c);
        if (this.f320Q == 0) {
            c0037bMo146c = c0039d.mo146c(C0037b.a.f262b);
            c0037bMo146c2 = c0039d.mo146c(C0037b.a.f264d);
        }
        if (this.f317N != -1) {
            c0016e.m105c(C0015d.m82k(c0016e, c0016e.m112j(this.f319P), c0016e.m112j(c0037bMo146c), this.f317N, false));
            return;
        }
        if (this.f318O != -1) {
            c0016e.m105c(C0015d.m82k(c0016e, c0016e.m112j(this.f319P), c0016e.m112j(c0037bMo146c2), -this.f318O, false));
            return;
        }
        if (this.f316M != -1.0f) {
            C0018g c0018gM112j = c0016e.m112j(this.f319P);
            C0018g c0018gM112j2 = c0016e.m112j(c0037bMo146c);
            C0018g c0018gM112j3 = c0016e.m112j(c0037bMo146c2);
            float f2 = this.f316M;
            C0013b c0013bM113k = c0016e.m113k();
            C0012a c0012a = c0013bM113k.f107c;
            c0012a.m25c(c0018gM112j, -1.0f);
            c0012a.m25c(c0018gM112j2, 1.0f - f2);
            c0012a.m25c(c0018gM112j3, f2);
            c0016e.m105c(c0013bM113k);
        }
    }

    @Override // p007c.C0038c
    /* JADX INFO: renamed from: c */
    public final C0037b mo146c(C0037b.a aVar) {
        int iOrdinal = aVar.ordinal();
        if (iOrdinal != 1) {
            if (iOrdinal != 2) {
                if (iOrdinal != 3) {
                    if (iOrdinal != 4) {
                        return null;
                    }
                }
            }
            if (this.f320Q == 0) {
                return this.f319P;
            }
            return null;
        }
        if (this.f320Q == 1) {
            return this.f319P;
        }
        return null;
    }

    @Override // p007c.C0038c
    /* JADX INFO: renamed from: r */
    public final void mo161r(C0016e c0016e) {
        if (this.f294m == null) {
            return;
        }
        C0037b c0037b = this.f319P;
        c0016e.getClass();
        int iM102n = C0016e.m102n(c0037b);
        if (this.f320Q == 1) {
            this.f299r = iM102n;
            this.f300s = 0;
            m153j(this.f294m.m147d());
            m159p(0);
            return;
        }
        this.f299r = 0;
        this.f300s = iM102n;
        m159p(this.f294m.m148e());
        m153j(0);
    }

    /* JADX INFO: renamed from: s */
    public final void m167s(int i2) {
        if (this.f320Q == i2) {
            return;
        }
        this.f320Q = i2;
        ArrayList<C0037b> arrayList = this.f293l;
        arrayList.clear();
        if (this.f320Q == 1) {
            this.f319P = this.f285d;
        } else {
            this.f319P = this.f286e;
        }
        arrayList.add(this.f319P);
    }
}
