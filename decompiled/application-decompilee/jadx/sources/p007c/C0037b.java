package p007c;

import java.util.HashSet;
import p004b.C0018g;

/* JADX INFO: renamed from: c.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0037b {

    /* JADX INFO: renamed from: a */
    public final C0038c f252a;

    /* JADX INFO: renamed from: b */
    public final a f253b;

    /* JADX INFO: renamed from: c */
    public C0037b f254c;

    /* JADX INFO: renamed from: d */
    public int f255d = 0;

    /* JADX INFO: renamed from: e */
    public int f256e = -1;

    /* JADX INFO: renamed from: f */
    public int f257f = 1;

    /* JADX INFO: renamed from: g */
    public int f258g = 1;

    /* JADX INFO: renamed from: h */
    public int f259h = 0;

    /* JADX INFO: renamed from: i */
    public C0018g f260i;

    /* JADX INFO: renamed from: c.b$a */
    public enum a {
        /* JADX INFO: Fake field, exist only in values array */
        EF0,
        f261a,
        f262b,
        f263c,
        f264d,
        f265e,
        f266f,
        f267g,
        f268h;

        a() {
        }
    }

    public C0037b(C0038c c0038c, a aVar) {
        this.f252a = c0038c;
        this.f253b = aVar;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0058  */
    /* JADX WARN: Code duplicated, block: B:45:0x0063  */
    /* JADX WARN: Code duplicated, block: B:48:0x0068  */
    /* JADX WARN: Code duplicated, block: B:51:0x006d  */
    /* JADX WARN: Code duplicated, block: B:57:0x0078  */
    /* JADX WARN: Code duplicated, block: B:60:0x007d  */
    /* JADX WARN: Code duplicated, block: B:63:0x0082  */
    /* JADX WARN: Code duplicated, block: B:64:0x0084  */
    /* JADX INFO: renamed from: a */
    public final boolean m139a(C0037b c0037b, int i2, int i3, int i4, int i5, boolean z2) {
        boolean z3;
        if (c0037b == null) {
            this.f254c = null;
            this.f255d = 0;
            this.f256e = -1;
            this.f257f = 1;
            this.f259h = 2;
            return true;
        }
        if (!z2) {
            a aVar = a.f265e;
            C0038c c0038c = c0037b.f252a;
            a aVar2 = c0037b.f253b;
            a aVar3 = this.f253b;
            if (aVar2 == aVar3) {
                if (aVar3 != a.f266f) {
                    if (aVar3 == aVar) {
                        if (c0038c.f307z > 0) {
                            if (!(this.f252a.f307z > 0)) {
                            }
                        }
                    }
                    z3 = true;
                }
                z3 = false;
            } else {
                int iOrdinal = aVar3.ordinal();
                a aVar4 = a.f267g;
                if (iOrdinal != 1) {
                    a aVar5 = a.f268h;
                    if (iOrdinal == 2) {
                        if (aVar2 != a.f262b || aVar2 == a.f264d) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (c0038c instanceof C0040e) {
                            if (!z3 || aVar2 == aVar5) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                        }
                    } else if (iOrdinal == 3) {
                        if (aVar2 != a.f261a || aVar2 == a.f263c) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (c0038c instanceof C0040e) {
                            if (!z3 || aVar2 == aVar4) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                        }
                    } else if (iOrdinal == 4) {
                        if (aVar2 != a.f262b) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (c0038c instanceof C0040e) {
                            if (z3) {
                            }
                            z3 = true;
                        }
                    } else if (iOrdinal != 6 || aVar2 == aVar || aVar2 == aVar4 || aVar2 == aVar5) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                } else {
                    if (aVar2 != a.f261a) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (c0038c instanceof C0040e) {
                        if (z3) {
                        }
                        z3 = true;
                    }
                }
            }
            if (!z3) {
                return false;
            }
        }
        this.f254c = c0037b;
        if (i2 > 0) {
            this.f255d = i2;
        } else {
            this.f255d = 0;
        }
        this.f256e = i3;
        this.f257f = i4;
        this.f259h = i5;
        return true;
    }

    /* JADX INFO: renamed from: b */
    public final int m140b() {
        C0037b c0037b;
        if (this.f252a.f275F == 8) {
            return 0;
        }
        int i2 = this.f256e;
        return (i2 <= -1 || (c0037b = this.f254c) == null || c0037b.f252a.f275F != 8) ? this.f255d : i2;
    }

    /* JADX INFO: renamed from: c */
    public final void m141c() {
        this.f254c = null;
        this.f255d = 0;
        this.f256e = -1;
        this.f257f = 2;
        this.f259h = 0;
        this.f258g = 1;
    }

    /* JADX INFO: renamed from: d */
    public final void m142d() {
        C0018g c0018g = this.f260i;
        if (c0018g == null) {
            this.f260i = new C0018g(1);
        } else {
            c0018g.m121b();
        }
    }

    /* JADX INFO: renamed from: e */
    public final String m143e(HashSet<C0037b> hashSet) {
        String str;
        if (!hashSet.add(this)) {
            return "<-";
        }
        StringBuilder sb = new StringBuilder("null:");
        this.f252a.getClass();
        sb.append(this.f253b.toString());
        if (this.f254c != null) {
            str = " connected to " + this.f254c.m143e(hashSet);
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    public final String toString() {
        String str;
        HashSet<C0037b> hashSet = new HashSet<>();
        StringBuilder sb = new StringBuilder("null:");
        this.f252a.getClass();
        sb.append(this.f253b.toString());
        if (this.f254c != null) {
            str = " connected to " + this.f254c.m143e(hashSet);
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }
}
