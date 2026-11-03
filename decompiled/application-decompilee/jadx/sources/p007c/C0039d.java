package p007c;

import java.util.ArrayList;
import java.util.Arrays;
import p004b.C0013b;
import p004b.C0016e;
import p004b.C0018g;

/* JADX INFO: renamed from: c.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0039d extends C0042g {

    /* JADX INFO: renamed from: O */
    public C0041f f309O;

    /* JADX INFO: renamed from: N */
    public final C0016e f308N = new C0016e();

    /* JADX INFO: renamed from: P */
    public int f310P = 0;

    /* JADX INFO: renamed from: Q */
    public int f311Q = 0;

    /* JADX INFO: renamed from: R */
    public C0038c[] f312R = new C0038c[4];

    /* JADX INFO: renamed from: S */
    public C0038c[] f313S = new C0038c[4];

    /* JADX INFO: renamed from: T */
    public C0038c[] f314T = new C0038c[4];

    /* JADX INFO: renamed from: U */
    public boolean f315U = true;

    @Override // p007c.C0042g, p007c.C0038c
    /* JADX INFO: renamed from: g */
    public final void mo150g() {
        this.f308N.m119r();
        super.mo150g();
    }

    @Override // p007c.C0042g
    /* JADX INFO: renamed from: s */
    public final void mo162s() {
        int i2 = this.f299r;
        int i3 = this.f300s;
        C0038c c0038c = this.f294m;
        C0016e c0016e = this.f308N;
        if (c0038c != null) {
            if (this.f309O == null) {
                this.f309O = new C0041f(this);
            }
            C0041f c0041f = this.f309O;
            c0041f.getClass();
            c0041f.f321a = this.f299r;
            c0041f.f322b = this.f300s;
            c0041f.f323c = m148e();
            c0041f.f324d = m147d();
            ArrayList<C0041f.a> arrayList = c0041f.f325e;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                C0041f.a aVar = arrayList.get(i4);
                C0037b c0037bMo146c = mo146c(aVar.f326a.f253b);
                aVar.f326a = c0037bMo146c;
                if (c0037bMo146c != null) {
                    aVar.f327b = c0037bMo146c.f254c;
                    aVar.f328c = c0037bMo146c.m140b();
                    C0037b c0037b = aVar.f326a;
                    aVar.f329d = c0037b.f257f;
                    aVar.f330e = c0037b.f259h;
                } else {
                    aVar.f327b = null;
                    aVar.f328c = 0;
                    aVar.f329d = 2;
                    aVar.f330e = 0;
                }
            }
            this.f299r = 0;
            this.f300s = 0;
            C0038c c0038c2 = this.f294m;
            if (c0038c2 != null && (c0038c2 instanceof C0039d)) {
            }
            ArrayList<C0037b> arrayList2 = this.f293l;
            int size2 = arrayList2.size();
            for (int i5 = 0; i5 < size2; i5++) {
                arrayList2.get(i5).m141c();
            }
            mo151h(c0016e.f135j);
        } else {
            this.f299r = 0;
            this.f300s = 0;
        }
        this.f310P = 0;
        this.f311Q = 0;
        ArrayList<C0038c> arrayList3 = this.f331M;
        int size3 = arrayList3.size();
        for (int i6 = 0; i6 < size3; i6++) {
            C0038c c0038c3 = arrayList3.get(i6);
            if (c0038c3 instanceof C0042g) {
                ((C0042g) c0038c3).mo162s();
            }
        }
        boolean zM164u = true;
        try {
            c0016e.m119r();
            zM164u = m164u(c0016e);
            if (zM164u) {
                c0016e.m117p();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (zM164u) {
            mo161r(c0016e);
            int size4 = arrayList3.size();
            for (int i7 = 0; i7 < size4; i7++) {
                arrayList3.get(i7).mo161r(c0016e);
            }
        } else {
            mo161r(c0016e);
        }
        if (this.f294m != null) {
            int iM148e = m148e();
            int iM147d = m147d();
            C0041f c0041f2 = this.f309O;
            this.f299r = c0041f2.f321a;
            this.f300s = c0041f2.f322b;
            m159p(c0041f2.f323c);
            m153j(c0041f2.f324d);
            ArrayList<C0041f.a> arrayList4 = c0041f2.f325e;
            int size5 = arrayList4.size();
            for (int i8 = 0; i8 < size5; i8++) {
                C0041f.a aVar2 = arrayList4.get(i8);
                mo146c(aVar2.f326a.f253b).m139a(aVar2.f327b, aVar2.f328c, -1, aVar2.f329d, aVar2.f330e, false);
            }
            m159p(iM148e + 0 + 0);
            m153j(iM147d + 0 + 0);
        } else {
            this.f299r = i2;
            this.f300s = i3;
        }
        mo151h(c0016e.f135j);
        C0038c c0038c4 = this.f294m;
        C0039d c0039d = this;
        while (c0038c4 != null) {
            C0038c c0038c5 = c0038c4.f294m;
            if (c0038c4 instanceof C0039d) {
                c0039d = (C0039d) c0038c4;
            }
            c0038c4 = c0038c5;
        }
        if (this == c0039d) {
            mo160q();
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m163t(C0038c c0038c, int i2) {
        int i3 = 0;
        if (i2 == 0) {
            while (true) {
                C0037b c0037b = c0038c.f285d;
                C0037b c0037b2 = c0037b.f254c;
                if (c0037b2 == null) {
                    break;
                }
                C0038c c0038c2 = c0037b2.f252a;
                C0037b c0037b3 = c0038c2.f287f.f254c;
                if (c0037b3 == null || c0037b3 != c0037b || c0038c2 == c0038c) {
                    break;
                } else {
                    c0038c = c0038c2;
                }
            }
            while (true) {
                int i4 = this.f310P;
                if (i3 >= i4) {
                    int i5 = i4 + 1;
                    C0038c[] c0038cArr = this.f314T;
                    if (i5 >= c0038cArr.length) {
                        this.f314T = (C0038c[]) Arrays.copyOf(c0038cArr, c0038cArr.length * 2);
                    }
                    C0038c[] c0038cArr2 = this.f314T;
                    int i6 = this.f310P;
                    c0038cArr2[i6] = c0038c;
                    this.f310P = i6 + 1;
                    return;
                }
                if (this.f314T[i3] == c0038c) {
                    return;
                } else {
                    i3++;
                }
            }
        } else {
            if (i2 != 1) {
                return;
            }
            while (true) {
                C0037b c0037b4 = c0038c.f286e;
                C0037b c0037b5 = c0037b4.f254c;
                if (c0037b5 == null) {
                    break;
                }
                C0038c c0038c3 = c0037b5.f252a;
                C0037b c0037b6 = c0038c3.f288g.f254c;
                if (c0037b6 == null || c0037b6 != c0037b4 || c0038c3 == c0038c) {
                    break;
                } else {
                    c0038c = c0038c3;
                }
            }
            while (true) {
                int i7 = this.f311Q;
                if (i3 >= i7) {
                    int i8 = i7 + 1;
                    C0038c[] c0038cArr3 = this.f313S;
                    if (i8 >= c0038cArr3.length) {
                        this.f313S = (C0038c[]) Arrays.copyOf(c0038cArr3, c0038cArr3.length * 2);
                    }
                    C0038c[] c0038cArr4 = this.f313S;
                    int i9 = this.f311Q;
                    c0038cArr4[i9] = c0038c;
                    this.f311Q = i9 + 1;
                    return;
                }
                if (this.f313S[i3] == c0038c) {
                    return;
                } else {
                    i3++;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:413:0x0853  */
    /* JADX WARN: Code duplicated, block: B:415:0x0867  */
    /* JADX WARN: Code duplicated, block: B:416:0x086b  */
    /* JADX WARN: Code duplicated, block: B:419:0x0872  */
    /* JADX WARN: Code duplicated, block: B:420:0x0876  */
    /* JADX WARN: Code duplicated, block: B:422:0x0879  */
    /* JADX WARN: Code duplicated, block: B:423:0x0881  */
    /* JADX WARN: Code duplicated, block: B:425:0x0884 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:426:0x0886  */
    /* JADX WARN: Code duplicated, block: B:429:0x088c  */
    /* JADX WARN: Code duplicated, block: B:430:0x088e  */
    /* JADX WARN: Code duplicated, block: B:437:0x089d  */
    /* JADX WARN: Code duplicated, block: B:439:0x08a7  */
    /* JADX WARN: Code duplicated, block: B:440:0x08aa  */
    /* JADX WARN: Code duplicated, block: B:442:0x08ad  */
    /* JADX WARN: Code duplicated, block: B:443:0x08b4  */
    /* JADX WARN: Code duplicated, block: B:445:0x08b8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:446:0x08ba  */
    /* JADX WARN: Code duplicated, block: B:448:0x08bf  */
    /* JADX WARN: Code duplicated, block: B:449:0x08c5  */
    /* JADX WARN: Code duplicated, block: B:452:0x08cc  */
    /* JADX WARN: Code duplicated, block: B:453:0x08d5  */
    /* JADX WARN: Code duplicated, block: B:456:0x08db  */
    /* JADX WARN: Code duplicated, block: B:457:0x08e4  */
    /* JADX WARN: Code duplicated, block: B:459:0x08e7 A[LOOP:10: B:406:0x0842->B:459:0x08e7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:473:0x0927  */
    /* JADX WARN: Code duplicated, block: B:522:0x08f2 A[SYNTHETIC] */
    /* JADX INFO: renamed from: u */
    public final boolean m164u(C0016e c0016e) {
        C0039d c0039d;
        int i2;
        int i3;
        int iM140b;
        C0037b c0037b;
        int iM140b2;
        C0037b c0037b2;
        C0018g c0018g;
        C0037b c0037b3;
        C0018g c0018g2;
        C0018g c0018g3;
        C0037b c0037b4;
        C0018g c0018g4;
        int iM140b3;
        char c2;
        C0037b c0037b5;
        C0037b c0037b6;
        C0038c c0038c;
        int iM140b4;
        boolean z2;
        int i4;
        int i5;
        int i6;
        C0037b c0037b7;
        C0037b c0037b8;
        C0037b c0037b9;
        C0037b c0037b10;
        C0037b c0037b11;
        C0037b c0037b12;
        int i7;
        float f2;
        C0037b c0037b13;
        C0037b c0037b14;
        boolean z3;
        int i8;
        int i9;
        float fM147d;
        C0037b c0037b15;
        int iM147d;
        float fM148e;
        C0037b c0037b16;
        int iM148e;
        C0039d c0039d2 = this;
        mo144a(c0016e);
        ArrayList<C0038c> arrayList = c0039d2.f331M;
        int size = arrayList.size();
        int i10 = 3;
        int i11 = 2;
        int i12 = 1;
        if (c0039d2.f315U) {
            int size2 = arrayList.size();
            int i13 = -1;
            if (c0039d2.f315U) {
                for (int i14 = 0; i14 < size2; i14++) {
                    C0038c c0038c2 = arrayList.get(i14);
                    c0038c2.f283b = -1;
                    c0038c2.f284c = -1;
                    if (c0038c2.f272C == 3 || c0038c2.f273D == 3) {
                        c0038c2.f283b = 1;
                        c0038c2.f284c = 1;
                    }
                }
                boolean z4 = false;
                int i15 = 0;
                int i16 = 0;
                while (!z4) {
                    int i17 = 0;
                    int i18 = 0;
                    int i19 = 0;
                    while (i17 < size2) {
                        C0038c c0038c3 = arrayList.get(i17);
                        if (c0038c3.f283b != i13) {
                            z3 = z4;
                            i8 = i11;
                        } else if (c0039d2.f272C == i11 || c0038c3.f272C == i10) {
                            c0038c3.f283b = i12;
                            z3 = z4;
                            i8 = i11;
                        } else {
                            C0037b c0037b17 = c0038c3.f285d;
                            C0037b c0037b18 = c0037b17.f254c;
                            C0037b c0037b19 = c0038c3.f287f;
                            if (c0037b18 == null || (c0037b16 = c0037b19.f254c) == null) {
                                z3 = z4;
                                if (c0037b18 == null || c0037b18.f252a != c0039d2) {
                                    C0037b c0037b20 = c0037b19.f254c;
                                    if (c0037b20 != null && c0037b20.f252a == c0039d2) {
                                        c0037b17.f260i = c0016e.m112j(c0037b17);
                                        c0037b19.f260i = c0016e.m112j(c0037b19);
                                        int iM148e2 = m148e() - c0037b19.m140b();
                                        int iM148e3 = iM148e2 - c0038c3.m148e();
                                        c0016e.m106d(c0037b17.f260i, iM148e3);
                                        c0016e.m106d(c0037b19.f260i, iM148e2);
                                        i11 = 2;
                                        c0038c3.f283b = 2;
                                        c0038c3.m154k(iM148e3, iM148e2);
                                        i8 = i11;
                                    } else if (c0037b18 == null || c0037b18.f252a.f283b != 2) {
                                        if (c0037b20 == null || c0037b20.f252a.f283b != 2) {
                                            boolean z5 = c0037b18 != null;
                                            boolean z6 = c0037b20 != null;
                                            if (!z5 && !z6) {
                                                if (c0038c3 instanceof C0040e) {
                                                    C0040e c0040e = (C0040e) c0038c3;
                                                    if (c0040e.f320Q == 1) {
                                                        c0037b17.f260i = c0016e.m112j(c0037b17);
                                                        c0037b19.f260i = c0016e.m112j(c0037b19);
                                                        int iM148e4 = c0040e.f317N;
                                                        if (iM148e4 != -1) {
                                                            fM148e = iM148e4;
                                                        } else if (c0040e.f318O != -1) {
                                                            iM148e4 = m148e() - c0040e.f318O;
                                                            fM148e = iM148e4;
                                                        } else {
                                                            fM148e = c0040e.f316M * m148e();
                                                        }
                                                        int i20 = (int) (fM148e + 0.5f);
                                                        c0016e.m106d(c0037b17.f260i, i20);
                                                        c0016e.m106d(c0037b19.f260i, i20);
                                                        c0038c3.f283b = 2;
                                                        c0038c3.f284c = 2;
                                                        c0038c3.m154k(i20, i20);
                                                        c0038c3.m157n(0, m147d());
                                                    }
                                                } else {
                                                    c0037b17.f260i = c0016e.m112j(c0037b17);
                                                    c0037b19.f260i = c0016e.m112j(c0037b19);
                                                    int i21 = c0038c3.f299r;
                                                    int iM148e5 = c0038c3.m148e() + i21;
                                                    c0016e.m106d(c0037b17.f260i, i21);
                                                    c0016e.m106d(c0037b19.f260i, iM148e5);
                                                    i8 = 2;
                                                    c0038c3.f283b = 2;
                                                }
                                            }
                                        } else {
                                            C0018g c0018g5 = c0037b20.f260i;
                                            c0037b17.f260i = c0016e.m112j(c0037b17);
                                            c0037b19.f260i = c0016e.m112j(c0037b19);
                                            int iM140b5 = (int) ((c0018g5.f144d - c0037b19.m140b()) + 0.5f);
                                            int iM148e6 = iM140b5 - c0038c3.m148e();
                                            c0016e.m106d(c0037b17.f260i, iM148e6);
                                            c0016e.m106d(c0037b19.f260i, iM140b5);
                                            c0038c3.f283b = 2;
                                            c0038c3.m154k(iM148e6, iM140b5);
                                        }
                                        i8 = 2;
                                    } else {
                                        C0018g c0018g6 = c0037b18.f260i;
                                        c0037b17.f260i = c0016e.m112j(c0037b17);
                                        c0037b19.f260i = c0016e.m112j(c0037b19);
                                        int iM140b6 = (int) (c0018g6.f144d + c0037b17.m140b() + 0.5f);
                                        int iM148e7 = c0038c3.m148e() + iM140b6;
                                        c0016e.m106d(c0037b17.f260i, iM140b6);
                                        c0016e.m106d(c0037b19.f260i, iM148e7);
                                        c0038c3.f283b = 2;
                                        c0038c3.m154k(iM140b6, iM148e7);
                                        i8 = 2;
                                    }
                                } else {
                                    int iM140b7 = c0037b17.m140b();
                                    int iM148e8 = c0038c3.m148e() + iM140b7;
                                    c0037b17.f260i = c0016e.m112j(c0037b17);
                                    c0037b19.f260i = c0016e.m112j(c0037b19);
                                    c0016e.m106d(c0037b17.f260i, iM140b7);
                                    c0016e.m106d(c0037b19.f260i, iM148e8);
                                    c0038c3.f283b = 2;
                                    c0038c3.m154k(iM140b7, iM148e8);
                                }
                            } else if (c0037b18.f252a == c0039d2 && c0037b16.f252a == c0039d2) {
                                int iM140b8 = c0037b17.m140b();
                                int iM140b9 = c0037b19.m140b();
                                z3 = z4;
                                if (c0039d2.f272C == i10) {
                                    iM148e = m148e() - iM140b9;
                                } else {
                                    iM140b8 += (int) (((((m148e() - iM140b8) - iM140b9) - c0038c3.m148e()) * c0038c3.f270A) + 0.5f);
                                    iM148e = c0038c3.m148e() + iM140b8;
                                }
                                c0037b17.f260i = c0016e.m112j(c0037b17);
                                c0037b19.f260i = c0016e.m112j(c0037b19);
                                c0016e.m106d(c0037b17.f260i, iM140b8);
                                c0016e.m106d(c0037b19.f260i, iM148e);
                                c0038c3.f283b = 2;
                                c0038c3.m154k(iM140b8, iM148e);
                            } else {
                                z3 = z4;
                                c0038c3.f283b = 1;
                            }
                            i11 = 2;
                            i8 = i11;
                        }
                        if (c0038c3.f284c != -1) {
                            i9 = size;
                        } else if (c0039d2.f273D == i8 || c0038c3.f273D == 3) {
                            c0038c3.f284c = 1;
                            i9 = size;
                        } else {
                            C0037b c0037b21 = c0038c3.f286e;
                            C0037b c0037b22 = c0037b21.f254c;
                            C0037b c0037b23 = c0038c3.f289h;
                            C0037b c0037b24 = c0038c3.f288g;
                            if (c0037b22 == null || (c0037b15 = c0037b24.f254c) == null) {
                                i9 = size;
                                if (c0037b22 == null || c0037b22.f252a != c0039d2) {
                                    C0037b c0037b25 = c0037b24.f254c;
                                    if (c0037b25 != null && c0037b25.f252a == c0039d2) {
                                        c0037b21.f260i = c0016e.m112j(c0037b21);
                                        c0037b24.f260i = c0016e.m112j(c0037b24);
                                        int iM147d2 = m147d() - c0037b24.m140b();
                                        int iM147d3 = iM147d2 - c0038c3.m147d();
                                        c0016e.m106d(c0037b21.f260i, iM147d3);
                                        c0016e.m106d(c0037b24.f260i, iM147d2);
                                        if (c0038c3.f307z > 0) {
                                            C0018g c0018gM112j = c0016e.m112j(c0037b23);
                                            c0037b23.f260i = c0018gM112j;
                                            c0016e.m106d(c0018gM112j, c0038c3.f307z + iM147d3);
                                        }
                                        c0038c3.f284c = 2;
                                        c0038c3.m157n(iM147d3, iM147d2);
                                    } else if (c0037b22 != null && c0037b22.f252a.f284c == 2) {
                                        C0018g c0018g7 = c0037b22.f260i;
                                        c0037b21.f260i = c0016e.m112j(c0037b21);
                                        c0037b24.f260i = c0016e.m112j(c0037b24);
                                        int iM140b10 = (int) (c0018g7.f144d + c0037b21.m140b() + 0.5f);
                                        int iM147d4 = c0038c3.m147d() + iM140b10;
                                        c0016e.m106d(c0037b21.f260i, iM140b10);
                                        c0016e.m106d(c0037b24.f260i, iM147d4);
                                        if (c0038c3.f307z > 0) {
                                            C0018g c0018gM112j2 = c0016e.m112j(c0037b23);
                                            c0037b23.f260i = c0018gM112j2;
                                            c0016e.m106d(c0018gM112j2, c0038c3.f307z + iM140b10);
                                        }
                                        c0038c3.f284c = 2;
                                        c0038c3.m157n(iM140b10, iM147d4);
                                    } else if (c0037b25 == null || c0037b25.f252a.f284c != 2) {
                                        C0037b c0037b26 = c0037b23.f254c;
                                        if (c0037b26 == null || c0037b26.f252a.f284c != 2) {
                                            boolean z7 = c0037b26 != null;
                                            boolean z8 = c0037b22 != null;
                                            boolean z9 = c0037b25 != null;
                                            if (!z7 && !z8 && !z9) {
                                                if (c0038c3 instanceof C0040e) {
                                                    C0040e c0040e2 = (C0040e) c0038c3;
                                                    if (c0040e2.f320Q == 0) {
                                                        c0037b21.f260i = c0016e.m112j(c0037b21);
                                                        c0037b24.f260i = c0016e.m112j(c0037b24);
                                                        int iM147d5 = c0040e2.f317N;
                                                        if (iM147d5 != -1) {
                                                            fM147d = iM147d5;
                                                        } else if (c0040e2.f318O != -1) {
                                                            iM147d5 = m147d() - c0040e2.f318O;
                                                            fM147d = iM147d5;
                                                        } else {
                                                            fM147d = c0040e2.f316M * m147d();
                                                        }
                                                        int i22 = (int) (fM147d + 0.5f);
                                                        c0016e.m106d(c0037b21.f260i, i22);
                                                        c0016e.m106d(c0037b24.f260i, i22);
                                                        c0038c3.f284c = 2;
                                                        c0038c3.f283b = 2;
                                                        c0038c3.m157n(i22, i22);
                                                        c0038c3.m154k(0, m148e());
                                                    }
                                                } else {
                                                    c0037b21.f260i = c0016e.m112j(c0037b21);
                                                    c0037b24.f260i = c0016e.m112j(c0037b24);
                                                    int i23 = c0038c3.f300s;
                                                    int iM147d6 = c0038c3.m147d() + i23;
                                                    c0016e.m106d(c0037b21.f260i, i23);
                                                    c0016e.m106d(c0037b24.f260i, iM147d6);
                                                    if (c0038c3.f307z > 0) {
                                                        C0018g c0018gM112j3 = c0016e.m112j(c0037b23);
                                                        c0037b23.f260i = c0018gM112j3;
                                                        c0016e.m106d(c0018gM112j3, i23 + c0038c3.f307z);
                                                    }
                                                    c0038c3.f284c = 2;
                                                }
                                            }
                                        } else {
                                            C0018g c0018g8 = c0037b26.f260i;
                                            c0037b21.f260i = c0016e.m112j(c0037b21);
                                            c0037b24.f260i = c0016e.m112j(c0037b24);
                                            int i24 = (int) ((c0018g8.f144d - c0038c3.f307z) + 0.5f);
                                            int iM147d7 = c0038c3.m147d() + i24;
                                            c0016e.m106d(c0037b21.f260i, i24);
                                            c0016e.m106d(c0037b24.f260i, iM147d7);
                                            C0018g c0018gM112j4 = c0016e.m112j(c0037b23);
                                            c0037b23.f260i = c0018gM112j4;
                                            c0016e.m106d(c0018gM112j4, c0038c3.f307z + i24);
                                            c0038c3.f284c = 2;
                                            c0038c3.m157n(i24, iM147d7);
                                        }
                                    } else {
                                        C0018g c0018g9 = c0037b25.f260i;
                                        c0037b21.f260i = c0016e.m112j(c0037b21);
                                        c0037b24.f260i = c0016e.m112j(c0037b24);
                                        int iM140b11 = (int) ((c0018g9.f144d - c0037b24.m140b()) + 0.5f);
                                        int iM147d8 = iM140b11 - c0038c3.m147d();
                                        c0016e.m106d(c0037b21.f260i, iM147d8);
                                        c0016e.m106d(c0037b24.f260i, iM140b11);
                                        if (c0038c3.f307z > 0) {
                                            C0018g c0018gM112j5 = c0016e.m112j(c0037b23);
                                            c0037b23.f260i = c0018gM112j5;
                                            c0016e.m106d(c0018gM112j5, c0038c3.f307z + iM147d8);
                                        }
                                        c0038c3.f284c = 2;
                                        c0038c3.m157n(iM147d8, iM140b11);
                                    }
                                } else {
                                    int iM140b12 = c0037b21.m140b();
                                    int iM147d9 = c0038c3.m147d() + iM140b12;
                                    c0037b21.f260i = c0016e.m112j(c0037b21);
                                    c0037b24.f260i = c0016e.m112j(c0037b24);
                                    c0016e.m106d(c0037b21.f260i, iM140b12);
                                    c0016e.m106d(c0037b24.f260i, iM147d9);
                                    if (c0038c3.f307z > 0) {
                                        C0018g c0018gM112j6 = c0016e.m112j(c0037b23);
                                        c0037b23.f260i = c0018gM112j6;
                                        c0016e.m106d(c0018gM112j6, c0038c3.f307z + iM140b12);
                                    }
                                    c0038c3.f284c = 2;
                                    c0038c3.m157n(iM140b12, iM147d9);
                                }
                            } else if (c0037b22.f252a == c0039d2 && c0037b15.f252a == c0039d2) {
                                int iM140b13 = c0037b21.m140b();
                                int iM140b14 = c0037b24.m140b();
                                i9 = size;
                                if (c0039d2.f273D == 3) {
                                    iM147d = c0038c3.m147d();
                                } else {
                                    iM140b13 = (int) (((((m147d() - iM140b13) - iM140b14) - c0038c3.m147d()) * c0038c3.f271B) + iM140b13 + 0.5f);
                                    iM147d = c0038c3.m147d();
                                }
                                int i25 = iM147d + iM140b13;
                                c0037b21.f260i = c0016e.m112j(c0037b21);
                                c0037b24.f260i = c0016e.m112j(c0037b24);
                                c0016e.m106d(c0037b21.f260i, iM140b13);
                                c0016e.m106d(c0037b24.f260i, i25);
                                if (c0038c3.f307z > 0) {
                                    C0018g c0018gM112j7 = c0016e.m112j(c0037b23);
                                    c0037b23.f260i = c0018gM112j7;
                                    c0016e.m106d(c0018gM112j7, c0038c3.f307z + iM140b13);
                                }
                                c0038c3.f284c = 2;
                                c0038c3.m157n(iM140b13, i25);
                            } else {
                                i9 = size;
                                c0038c3.f284c = 1;
                            }
                        }
                        if (c0038c3.f284c == -1) {
                            i18++;
                        }
                        if (c0038c3.f283b == -1) {
                            i19++;
                        }
                        i17++;
                        i13 = -1;
                        i10 = 3;
                        i11 = 2;
                        c0039d2 = this;
                        z4 = z3;
                        size = i9;
                        i12 = 1;
                    }
                    int i26 = size;
                    int i27 = i19;
                    z4 = ((i18 == 0 && i27 == 0) || (i15 == i18 && i16 == i27)) ? true : z4;
                    i13 = -1;
                    i10 = 3;
                    i11 = 2;
                    c0039d2 = this;
                    i16 = i27;
                    i15 = i18;
                    size = i26;
                    i12 = 1;
                }
            }
            i2 = size;
            int i28 = 0;
            int i29 = 0;
            for (int i30 = 0; i30 < size2; i30++) {
                C0038c c0038c4 = arrayList.get(i30);
                if (this.f315U) {
                    int i31 = c0038c4.f283b;
                    if (i31 == 1 || i31 == -1) {
                        i28++;
                    }
                    int i32 = c0038c4.f284c;
                    if (i32 == 1 || i32 == -1) {
                        i29++;
                    }
                } else {
                    c0038c4.f283b = 1;
                    c0038c4.f284c = 1;
                }
            }
            c0039d = this;
            if (c0039d.f315U && i28 == 0 && i29 == 0) {
                return false;
            }
        } else {
            c0039d = c0039d2;
            i2 = size;
        }
        int i33 = i2;
        for (int i34 = 0; i34 < i33; i34++) {
            C0038c c0038c5 = arrayList.get(i34);
            if (c0038c5 instanceof C0039d) {
                int i35 = c0038c5.f272C;
                int i36 = c0038c5.f273D;
                if (i35 == 2) {
                    c0038c5.m155l(1);
                }
                if (i36 == 2) {
                    c0038c5.m158o(1);
                }
                c0038c5.mo144a(c0016e);
                if (i35 == 2) {
                    c0038c5.m155l(i35);
                }
                if (i36 == 2) {
                    c0038c5.m158o(i36);
                }
            } else {
                c0038c5.mo144a(c0016e);
            }
        }
        if (c0039d.f310P > 0) {
            int i37 = 0;
            while (i37 < c0039d.f310P) {
                C0038c c0038c6 = c0039d.f314T[i37];
                int iM166w = c0039d.m166w(c0038c6, 0);
                int i38 = c0038c6.f276G;
                boolean z10 = i38 == 2;
                boolean z11 = c0039d.f272C == 2;
                float f3 = 0.0f;
                C0038c c0038c7 = null;
                if (!c0038c6.f278I || z10 || z11 || i38 != 0) {
                    if (iM166w == 0 || z10) {
                        i3 = i37;
                        C0038c c0038c8 = c0038c6;
                        C0038c c0038c9 = null;
                        while (true) {
                            if (c0038c9 != null) {
                                C0037b c0037b27 = c0038c8.f285d.f254c;
                                if (c0037b27 == null || c0037b27.f252a != c0038c9) {
                                    c2 = 3;
                                    break;
                                }
                                iM140b = c0038c8.f285d.m140b();
                                c0037b = c0038c8.f287f;
                                iM140b2 = c0037b.m140b();
                                c0037b2 = c0038c8.f285d;
                                c0018g = c0037b2.f260i;
                                c0037b3 = c0037b2.f254c;
                                if (c0037b3 != null) {
                                    c0018g2 = c0037b3.f260i;
                                } else {
                                    c0018g2 = null;
                                }
                                c0018g3 = c0037b.f260i;
                                c0037b4 = c0037b.f254c;
                                if (c0037b4 != null) {
                                    c0018g4 = c0037b4.f260i;
                                } else {
                                    c0018g4 = null;
                                }
                                if (c0038c9 != null) {
                                    iM140b3 = c0038c9.f287f.m140b() + iM140b;
                                } else {
                                    iM140b3 = iM140b;
                                }
                                if (c0018g2 != null) {
                                    if (c0038c8 == c0038c6) {
                                        i5 = 1;
                                        if (c0038c8.f276G != 1) {
                                            c0016e.m107e(c0018g, c0018g2, iM140b3, 3);
                                        }
                                    } else {
                                        i5 = 1;
                                    }
                                    if (z10) {
                                    }
                                    c0016e.m108f(c0018g, c0018g2, iM140b3, i5);
                                }
                                if (c0018g4 == null) {
                                    c0037b5 = c0037b.f254c.f252a.f285d;
                                    c0037b6 = c0037b5.f254c;
                                    if (c0037b6 != null) {
                                        c0038c = c0037b6.f252a;
                                    } else {
                                        c0038c = null;
                                    }
                                    if (c0038c == c0038c8) {
                                        iM140b4 = c0037b5.m140b() + iM140b2;
                                        z2 = false;
                                    } else {
                                        iM140b4 = iM140b2;
                                        z2 = true;
                                    }
                                    if (z10) {
                                        if (z2) {
                                            i4 = 1;
                                            if (c0038c6.f276G == 1) {
                                                c0016e.m107e(c0018g3, c0018g4, -iM140b4, 3);
                                            }
                                        } else {
                                            i4 = 1;
                                        }
                                        c0016e.m109g(c0018g3, c0018g4, -iM140b4, i4);
                                        if (c0018g2 != null) {
                                            c0016e.m104b(c0018g, c0018g2, iM140b, 0.5f, c0018g4, c0018g3, iM140b2);
                                        }
                                    }
                                }
                                c2 = 3;
                                if (c0038c8.f272C == 3) {
                                    c0016e.m107e(c0037b.f260i, c0037b2.f260i, 0, 3);
                                }
                                if (c0018g4 != null) {
                                    c0038c9 = c0038c8;
                                    break;
                                }
                                C0038c c0038c10 = c0038c8;
                                c0038c8 = c0037b.f254c.f252a;
                                c0038c9 = c0038c10;
                            } else {
                                iM140b = c0038c8.f285d.m140b();
                                c0037b = c0038c8.f287f;
                                iM140b2 = c0037b.m140b();
                                c0037b2 = c0038c8.f285d;
                                c0018g = c0037b2.f260i;
                                c0037b3 = c0037b2.f254c;
                                if (c0037b3 != null) {
                                    c0018g2 = c0037b3.f260i;
                                } else {
                                    c0018g2 = null;
                                }
                                c0018g3 = c0037b.f260i;
                                c0037b4 = c0037b.f254c;
                                if (c0037b4 != null) {
                                    c0018g4 = c0037b4.f260i;
                                } else {
                                    c0018g4 = null;
                                }
                                if (c0038c9 != null) {
                                    iM140b3 = c0038c9.f287f.m140b() + iM140b;
                                } else {
                                    iM140b3 = iM140b;
                                }
                                if (c0018g2 != null) {
                                    if (c0038c8 == c0038c6) {
                                        i5 = 1;
                                        if (c0038c8.f276G != 1) {
                                            c0016e.m107e(c0018g, c0018g2, iM140b3, 3);
                                        }
                                    } else {
                                        i5 = 1;
                                    }
                                    if (z10 || c0038c8 == c0038c6) {
                                        c0016e.m108f(c0018g, c0018g2, iM140b3, i5);
                                    } else {
                                        c0016e.m107e(c0018g, c0018g2, iM140b3, 3);
                                    }
                                }
                                if (c0018g4 == null) {
                                    c0037b5 = c0037b.f254c.f252a.f285d;
                                    c0037b6 = c0037b5.f254c;
                                    if (c0037b6 != null) {
                                        c0038c = c0037b6.f252a;
                                    } else {
                                        c0038c = null;
                                    }
                                    if (c0038c == c0038c8) {
                                        iM140b4 = c0037b5.m140b() + iM140b2;
                                        z2 = false;
                                    } else {
                                        iM140b4 = iM140b2;
                                        z2 = true;
                                    }
                                    if (z10) {
                                        if (z2) {
                                            i4 = 1;
                                            if (c0038c6.f276G == 1) {
                                                c0016e.m107e(c0018g3, c0018g4, -iM140b4, 3);
                                            }
                                        } else {
                                            i4 = 1;
                                        }
                                        c0016e.m109g(c0018g3, c0018g4, -iM140b4, i4);
                                        if (c0018g2 != null) {
                                            c0016e.m104b(c0018g, c0018g2, iM140b, 0.5f, c0018g4, c0018g3, iM140b2);
                                        }
                                    }
                                }
                                c2 = 3;
                                if (c0038c8.f272C == 3) {
                                    c0016e.m107e(c0037b.f260i, c0037b2.f260i, 0, 3);
                                }
                                if (c0018g4 != null) {
                                    c0038c9 = c0038c8;
                                    break;
                                }
                                C0038c c0038c11 = c0038c8;
                                c0038c8 = c0037b.f254c.f252a;
                                c0038c9 = c0038c11;
                            }
                        }
                        if (z10) {
                            C0037b c0037b28 = c0038c6.f285d;
                            int iM140b15 = c0037b28.m140b();
                            int iM140b16 = c0038c9.f287f.m140b();
                            C0018g c0018g10 = c0037b28.f260i;
                            C0037b c0037b29 = c0037b28.f254c;
                            C0018g c0018g11 = c0037b29 != null ? c0037b29.f260i : null;
                            C0037b c0037b30 = c0038c9.f287f;
                            C0018g c0018g12 = c0037b30.f260i;
                            C0037b c0037b31 = c0037b30.f254c;
                            C0018g c0018g13 = c0037b31 != null ? c0037b31.f260i : null;
                            if (c0018g11 != null && c0018g13 != null) {
                                c0016e.m104b(c0018g10, c0018g11, iM140b15, c0038c6.f270A, c0018g13, c0018g12, iM140b16);
                            }
                        }
                    } else {
                        while (true) {
                            if (c0038c7 != null) {
                                C0037b c0037b32 = c0038c6.f285d.f254c;
                                if (c0037b32 == null || c0037b32.f252a != c0038c7) {
                                    break;
                                }
                            }
                            int i39 = i37;
                            int i40 = iM166w;
                            int i41 = c0038c6.f272C;
                            C0037b c0037b33 = c0038c6.f285d;
                            C0037b c0037b34 = c0038c6.f287f;
                            if (i41 != 3) {
                                int iM140b17 = c0037b33.m140b();
                                if (c0038c7 != null) {
                                    iM140b17 += c0038c7.f287f.m140b();
                                }
                                C0037b c0037b35 = c0037b33.f254c;
                                c0016e.m108f(c0037b33.f260i, c0037b35.f260i, iM140b17, c0037b35.f252a.f272C == 3 ? 1 : 2);
                                int iM140b18 = c0037b34.m140b();
                                C0037b c0037b36 = c0037b34.f254c.f252a.f285d;
                                C0037b c0037b37 = c0037b36.f254c;
                                if (c0037b37 != null && c0037b37.f252a == c0038c6) {
                                    iM140b18 += c0037b36.m140b();
                                }
                                C0037b c0037b38 = c0037b34.f254c;
                                c0016e.m109g(c0037b34.f260i, c0037b38.f260i, -iM140b18, c0037b38.f252a.f272C == 3 ? 1 : 2);
                            } else {
                                f3 += c0038c6.f280K;
                                c0016e.m108f(c0037b34.f260i, c0037b33.f260i, 0, 0);
                                c0016e.m109g(c0037b34.f260i, c0037b34.f254c.f260i, 0, 0);
                            }
                            C0038c c0038c12 = c0037b34.f254c.f252a;
                            c0039d = this;
                            c0038c7 = c0038c6;
                            iM166w = i40;
                            c0038c6 = c0038c12;
                            i37 = i39;
                        }
                        if (iM166w != 1) {
                            int i42 = 0;
                            while (true) {
                                int i43 = iM166w - 1;
                                if (i42 >= i43) {
                                    break;
                                }
                                C0038c[] c0038cArr = c0039d.f312R;
                                C0038c c0038c13 = c0038cArr[i42];
                                i42++;
                                C0038c c0038c14 = c0038cArr[i42];
                                C0037b c0037b39 = c0038c13.f285d;
                                C0018g c0018g14 = c0037b39.f260i;
                                C0037b c0037b40 = c0038c13.f287f;
                                C0018g c0018g15 = c0037b40.f260i;
                                C0018g c0018g16 = c0038c14.f285d.f260i;
                                C0037b c0037b41 = c0038c14.f287f;
                                C0018g c0018g17 = c0037b41.f260i;
                                int iM140b19 = c0037b39.m140b();
                                int i44 = iM166w;
                                C0037b c0037b42 = c0038c13.f285d;
                                C0037b c0037b43 = c0037b42.f254c;
                                if (c0037b43 != null) {
                                    C0037b c0037b44 = c0037b43.f252a.f287f;
                                    i6 = i37;
                                    C0037b c0037b45 = c0037b44.f254c;
                                    if (c0037b45 != null && c0037b45.f252a == c0038c13) {
                                        iM140b19 += c0037b44.m140b();
                                    }
                                } else {
                                    i6 = i37;
                                }
                                c0016e.m108f(c0018g14, c0037b42.f254c.f260i, iM140b19, 1);
                                int iM140b20 = c0037b40.m140b();
                                C0037b c0037b46 = c0037b40.f254c;
                                if (c0037b46 != null && (c0037b12 = (c0037b11 = c0037b46.f252a.f285d).f254c) != null && c0037b12.f252a == c0038c13) {
                                    iM140b20 += c0037b11.m140b();
                                }
                                c0016e.m109g(c0018g15, c0037b40.f254c.f260i, -iM140b20, 1);
                                C0037b c0037b47 = c0038c14.f285d;
                                if (i42 == i43) {
                                    int iM140b21 = c0037b47.m140b();
                                    C0037b c0037b48 = c0037b47.f254c;
                                    if (c0037b48 != null && (c0037b10 = (c0037b9 = c0037b48.f252a.f287f).f254c) != null && c0037b10.f252a == c0038c14) {
                                        iM140b21 += c0037b9.m140b();
                                    }
                                    c0016e.m108f(c0018g16, c0037b47.f254c.f260i, iM140b21, 1);
                                    int iM140b22 = c0037b41.m140b();
                                    C0037b c0037b49 = c0037b41.f254c;
                                    if (c0037b49 != null && (c0037b8 = (c0037b7 = c0037b49.f252a.f285d).f254c) != null && c0037b8.f252a == c0038c14) {
                                        iM140b22 += c0037b7.m140b();
                                    }
                                    c0016e.m109g(c0018g17, c0037b41.f254c.f260i, -iM140b22, 1);
                                }
                                C0013b c0013bM113k = c0016e.m113k();
                                c0013bM113k.m30b(c0038c13.f280K, f3, c0038c14.f280K, c0018g14, c0037b42.m140b(), c0018g15, c0037b40.m140b(), c0018g16, c0037b47.m140b(), c0018g17, c0037b41.m140b());
                                c0016e.m105c(c0013bM113k);
                                c0039d = this;
                                iM166w = i44;
                                i37 = i6;
                            }
                        } else {
                            C0038c c0038c15 = c0039d.f312R[0];
                            int iM140b23 = c0038c15.f285d.m140b();
                            C0037b c0037b50 = c0038c15.f285d;
                            C0037b c0037b51 = c0037b50.f254c;
                            if (c0037b51 != null) {
                                iM140b23 += c0037b51.m140b();
                            }
                            c0016e.m107e(c0037b50.f260i, c0037b50.f254c.f260i, iM140b23, 0);
                            C0037b c0037b52 = c0038c15.f287f;
                            int iM140b24 = c0037b52.m140b();
                            C0037b c0037b53 = c0037b52.f254c;
                            if (c0037b53 != null) {
                                iM140b24 += c0037b53.m140b();
                            }
                            c0016e.m107e(c0037b52.f260i, c0037b52.f254c.f260i, -iM140b24, 0);
                        }
                    }
                    c0039d = this;
                    i37 = i3 + 1;
                } else {
                    float f4 = 0.0f;
                    C0038c c0038c16 = c0038c6;
                    c0038c16 = null;
                    int i45 = 0;
                    int iM140b25 = 0;
                    while (c0038c16 != null) {
                        i45++;
                        int i46 = c0038c16.f272C;
                        C0037b c0037b54 = c0038c16.f287f;
                        if (i46 != 3) {
                            int iM148e9 = c0038c16.m148e() + iM140b25;
                            C0037b c0037b55 = c0038c16.f285d;
                            iM140b25 = (c0037b54.f254c != null ? c0037b54.m140b() : 0) + iM148e9 + (c0037b55.f254c != null ? c0037b55.m140b() : 0);
                        } else {
                            f4 += c0038c16.f280K;
                        }
                        C0037b c0037b56 = c0037b54.f254c;
                        C0038c c0038c17 = c0037b56 != null ? c0037b56.f252a : null;
                        c0038c16 = (c0038c17 == null || ((c0037b14 = c0038c17.f285d.f254c) != null && c0037b14.f252a == c0038c16)) ? c0038c17 : null;
                    }
                    if (c0038c16 != null) {
                        C0037b c0037b57 = c0038c16.f287f.f254c;
                        i7 = (c0037b57 == null || c0037b57.f252a != c0039d) ? c0037b57 != null ? c0037b57.f252a.f299r : 0 : c0039d.f299r + c0039d.f295n;
                    } else {
                        i7 = 0;
                    }
                    float f5 = (i7 + 0) - iM140b25;
                    float f6 = f5 / (i45 + 1);
                    if (iM166w == 0) {
                        f2 = f6;
                    } else {
                        f2 = f5 / iM166w;
                        f6 = 0.0f;
                    }
                    while (c0038c6 != null) {
                        C0037b c0037b58 = c0038c6.f285d;
                        int iM140b26 = c0037b58.f254c != null ? c0037b58.m140b() : 0;
                        C0037b c0037b59 = c0038c6.f287f;
                        int iM140b27 = c0037b59.f254c != null ? c0037b59.m140b() : 0;
                        float f7 = iM140b26;
                        float f8 = f6 + f7;
                        c0016e.m106d(c0037b58.f260i, (int) (f8 + 0.5f));
                        float fM148e2 = (c0038c6.f272C == 3 ? (f4 == 0.0f ? f2 - f7 : ((c0038c6.f280K * f5) / f4) - f7) - iM140b27 : c0038c6.m148e()) + f8;
                        c0016e.m106d(c0037b59.f260i, (int) (fM148e2 + 0.5f));
                        if (iM166w == 0) {
                            fM148e2 += f2;
                        }
                        f6 = iM140b27 + fM148e2;
                        C0037b c0037b60 = c0037b59.f254c;
                        C0038c c0038c18 = c0037b60 != null ? c0037b60.f252a : null;
                        if (c0038c18 != null && (c0037b13 = c0038c18.f285d.f254c) != null && c0037b13.f252a != c0038c6) {
                            c0038c18 = null;
                        }
                        c0038c6 = c0038c18 == c0039d ? null : c0038c18;
                    }
                }
                i3 = i37;
                c0039d = this;
                i37 = i3 + 1;
            }
        }
        if (this.f311Q <= 0) {
            return true;
        }
        m165v(c0016e);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:175:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:177:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:178:0x0301  */
    /* JADX WARN: Code duplicated, block: B:181:0x0309  */
    /* JADX WARN: Code duplicated, block: B:182:0x030d  */
    /* JADX WARN: Code duplicated, block: B:184:0x0311  */
    /* JADX WARN: Code duplicated, block: B:185:0x0319  */
    /* JADX WARN: Code duplicated, block: B:187:0x031c  */
    /* JADX WARN: Code duplicated, block: B:195:0x0331  */
    /* JADX WARN: Code duplicated, block: B:197:0x033b  */
    /* JADX WARN: Code duplicated, block: B:198:0x033e  */
    /* JADX WARN: Code duplicated, block: B:200:0x0342  */
    /* JADX WARN: Code duplicated, block: B:201:0x0349  */
    /* JADX WARN: Code duplicated, block: B:203:0x034d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:204:0x034f  */
    /* JADX WARN: Code duplicated, block: B:206:0x0354  */
    /* JADX WARN: Code duplicated, block: B:207:0x0359  */
    /* JADX WARN: Code duplicated, block: B:210:0x0360  */
    /* JADX WARN: Code duplicated, block: B:211:0x036c A[PHI: r5
      0x036c: PHI (r5v4 int) = (r5v2 int), (r5v5 int) binds: [B:209:0x035e, B:206:0x0354] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:212:0x0370  */
    /* JADX WARN: Code duplicated, block: B:215:0x0377  */
    /* JADX WARN: Code duplicated, block: B:216:0x0380  */
    /* JADX WARN: Code duplicated, block: B:218:0x0383 A[LOOP:5: B:168:0x02d9->B:218:0x0383, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:262:0x038e A[SYNTHETIC] */
    /* JADX INFO: renamed from: v */
    public final void m165v(C0016e c0016e) {
        int i2;
        int iM140b;
        C0037b c0037b;
        int iM140b2;
        C0037b c0037b2;
        C0018g c0018g;
        C0037b c0037b3;
        C0018g c0018g2;
        C0018g c0018g3;
        C0037b c0037b4;
        C0018g c0018g4;
        int iM140b3;
        int i3;
        C0037b c0037b5;
        C0037b c0037b6;
        C0038c c0038c;
        int iM140b4;
        boolean z2;
        int i4;
        int i5;
        C0037b c0037b7;
        C0037b c0037b8;
        C0037b c0037b9;
        C0037b c0037b10;
        C0037b c0037b11;
        C0037b c0037b12;
        int i6;
        float f2;
        float fM147d;
        C0037b c0037b13;
        C0037b c0037b14;
        int i7 = 0;
        int i8 = 0;
        while (i8 < this.f311Q) {
            C0038c c0038c2 = this.f313S[i8];
            int i9 = 1;
            int iM166w = m166w(c0038c2, 1);
            int i10 = c0038c2.f277H;
            int i11 = i10 == 2 ? 1 : i7;
            int i12 = this.f273D == 2 ? 1 : i7;
            float f3 = 0.0f;
            if (c0038c2.f279J && i11 == 0 && i12 == 0 && i10 == 0) {
                float f4 = 0.0f;
                int i13 = i7;
                int iM140b5 = i13;
                C0038c c0038c3 = c0038c2;
                c0038c3 = null;
                while (c0038c3 != null) {
                    i13++;
                    int i14 = c0038c3.f273D;
                    C0037b c0037b15 = c0038c3.f288g;
                    if (i14 != 3) {
                        int iM147d = c0038c3.m147d() + iM140b5;
                        C0037b c0037b16 = c0038c3.f286e;
                        iM140b5 = (c0037b15.f254c != null ? c0037b15.m140b() : i7) + iM147d + (c0037b16.f254c != null ? c0037b16.m140b() : i7);
                    } else {
                        f4 += c0038c3.f281L;
                    }
                    C0037b c0037b17 = c0037b15.f254c;
                    C0038c c0038c4 = c0037b17 != null ? c0037b17.f252a : null;
                    c0038c3 = (c0038c4 == null || ((c0037b14 = c0038c4.f286e.f254c) != null && c0037b14.f252a == c0038c3)) ? c0038c4 : null;
                }
                if (c0038c3 != null) {
                    C0037b c0037b18 = c0038c3.f288g.f254c;
                    i6 = c0037b18 != null ? c0037b18.f252a.f299r : i7;
                    if (c0037b18 != null && c0037b18.f252a == this) {
                        i6 = this.f296o + this.f300s;
                    }
                } else {
                    i6 = i7;
                }
                float f5 = (i6 - i7) - iM140b5;
                float f6 = f5 / (i13 + 1);
                if (iM166w == 0) {
                    f2 = f6;
                } else {
                    f2 = f5 / iM166w;
                    f6 = 0.0f;
                }
                while (c0038c2 != null) {
                    C0037b c0037b19 = c0038c2.f286e;
                    int iM140b6 = c0037b19.f254c != null ? c0037b19.m140b() : i7;
                    C0037b c0037b20 = c0038c2.f288g;
                    int iM140b7 = c0037b20.f254c != null ? c0037b20.m140b() : i7;
                    float f7 = iM140b6;
                    float f8 = f6 + f7;
                    c0016e.m106d(c0037b19.f260i, (int) (f8 + 0.5f));
                    if (c0038c2.f273D == 3) {
                        fM147d = (f4 == 0.0f ? f2 - f7 : ((c0038c2.f281L * f5) / f4) - f7) - iM140b7;
                    } else {
                        fM147d = c0038c2.m147d();
                    }
                    float f9 = fM147d + f8;
                    c0016e.m106d(c0037b20.f260i, (int) (f9 + 0.5f));
                    if (iM166w == 0) {
                        f9 += f2;
                    }
                    f6 = iM140b7 + f9;
                    C0037b c0037b21 = c0037b20.f254c;
                    C0038c c0038c5 = c0037b21 != null ? c0037b21.f252a : null;
                    if (c0038c5 != null && (c0037b13 = c0038c5.f286e.f254c) != null && c0037b13.f252a != c0038c2) {
                        c0038c5 = null;
                    }
                    c0038c2 = c0038c5 == this ? null : c0038c5;
                    i7 = 0;
                }
            } else {
                if (iM166w != 0 && i11 == 0) {
                    C0038c c0038c6 = null;
                    while (true) {
                        if (c0038c6 != null) {
                            C0037b c0037b22 = c0038c2.f286e.f254c;
                            if (c0037b22 == null || c0037b22.f252a != c0038c6) {
                                break;
                            }
                        }
                        int i15 = iM166w;
                        int i16 = i8;
                        int i17 = c0038c2.f273D;
                        C0037b c0037b23 = c0038c2.f286e;
                        C0037b c0037b24 = c0038c2.f288g;
                        if (i17 != 3) {
                            int iM140b8 = c0037b23.m140b();
                            if (c0038c6 != null) {
                                iM140b8 += c0038c6.f288g.m140b();
                            }
                            C0037b c0037b25 = c0037b23.f254c;
                            c0016e.m108f(c0037b23.f260i, c0037b25.f260i, iM140b8, c0037b25.f252a.f273D == 3 ? 1 : 2);
                            int iM140b9 = c0037b24.m140b();
                            C0037b c0037b26 = c0037b24.f254c.f252a.f286e;
                            C0037b c0037b27 = c0037b26.f254c;
                            if (c0037b27 != null && c0037b27.f252a == c0038c2) {
                                iM140b9 += c0037b26.m140b();
                            }
                            C0037b c0037b28 = c0037b24.f254c;
                            c0016e.m109g(c0037b24.f260i, c0037b28.f260i, -iM140b9, c0037b28.f252a.f273D == 3 ? 1 : 2);
                        } else {
                            f3 += c0038c2.f281L;
                            c0016e.m108f(c0037b24.f260i, c0037b23.f260i, 0, 0);
                            c0016e.m109g(c0037b24.f260i, c0037b24.f254c.f260i, 0, 0);
                        }
                        c0038c6 = c0038c2;
                        iM166w = i15;
                        i8 = i16;
                        i9 = 1;
                        c0038c2 = c0037b24.f254c.f252a;
                        this = this;
                    }
                    if (iM166w != i9) {
                        int i18 = 0;
                        while (true) {
                            int i19 = iM166w - 1;
                            if (i18 >= i19) {
                                break;
                            }
                            C0038c[] c0038cArr = this.f312R;
                            C0038c c0038c7 = c0038cArr[i18];
                            i18++;
                            C0038c c0038c8 = c0038cArr[i18];
                            C0037b c0037b29 = c0038c7.f286e;
                            C0018g c0018g5 = c0037b29.f260i;
                            C0037b c0037b30 = c0038c7.f288g;
                            C0018g c0018g6 = c0037b30.f260i;
                            C0018g c0018g7 = c0038c8.f286e.f260i;
                            C0037b c0037b31 = c0038c8.f288g;
                            C0018g c0018g8 = c0037b31.f260i;
                            int iM140b10 = c0037b29.m140b();
                            C0037b c0037b32 = c0038c7.f286e;
                            int i20 = iM166w;
                            C0037b c0037b33 = c0037b32.f254c;
                            if (c0037b33 != null) {
                                C0037b c0037b34 = c0037b33.f252a.f288g;
                                i5 = i8;
                                C0037b c0037b35 = c0037b34.f254c;
                                if (c0037b35 != null && c0037b35.f252a == c0038c7) {
                                    iM140b10 += c0037b34.m140b();
                                }
                            } else {
                                i5 = i8;
                            }
                            c0016e.m108f(c0018g5, c0037b32.f254c.f260i, iM140b10, 1);
                            int iM140b11 = c0037b30.m140b();
                            C0037b c0037b36 = c0037b30.f254c;
                            if (c0037b36 != null && (c0037b12 = (c0037b11 = c0037b36.f252a.f286e).f254c) != null && c0037b12.f252a == c0038c7) {
                                iM140b11 += c0037b11.m140b();
                            }
                            c0016e.m109g(c0018g6, c0037b30.f254c.f260i, -iM140b11, 1);
                            C0037b c0037b37 = c0038c8.f286e;
                            if (i18 == i19) {
                                int iM140b12 = c0037b37.m140b();
                                C0037b c0037b38 = c0037b37.f254c;
                                if (c0037b38 != null && (c0037b10 = (c0037b9 = c0037b38.f252a.f288g).f254c) != null && c0037b10.f252a == c0038c8) {
                                    iM140b12 += c0037b9.m140b();
                                }
                                c0016e.m108f(c0018g7, c0037b37.f254c.f260i, iM140b12, 1);
                                int iM140b13 = c0037b31.m140b();
                                C0037b c0037b39 = c0037b31.f254c;
                                if (c0037b39 != null && (c0037b8 = (c0037b7 = c0037b39.f252a.f286e).f254c) != null && c0037b8.f252a == c0038c8) {
                                    iM140b13 += c0037b7.m140b();
                                }
                                c0016e.m109g(c0018g8, c0037b31.f254c.f260i, -iM140b13, 1);
                            }
                            C0013b c0013bM113k = c0016e.m113k();
                            c0013bM113k.m30b(c0038c7.f281L, f3, c0038c8.f281L, c0018g5, c0037b32.m140b(), c0018g6, c0037b30.m140b(), c0018g7, c0037b37.m140b(), c0018g8, c0037b31.m140b());
                            c0016e.m105c(c0013bM113k);
                            this = this;
                            iM166w = i20;
                            i8 = i5;
                        }
                    } else {
                        C0038c c0038c9 = this.f312R[0];
                        int iM140b14 = c0038c9.f286e.m140b();
                        C0037b c0037b40 = c0038c9.f286e;
                        C0037b c0037b41 = c0037b40.f254c;
                        if (c0037b41 != null) {
                            iM140b14 += c0037b41.m140b();
                        }
                        c0016e.m107e(c0037b40.f260i, c0037b40.f254c.f260i, iM140b14, 0);
                        C0037b c0037b42 = c0038c9.f288g;
                        int iM140b15 = c0037b42.m140b();
                        C0037b c0037b43 = c0037b42.f254c;
                        if (c0037b43 != null) {
                            iM140b15 += c0037b43.m140b();
                        }
                        c0016e.m107e(c0037b42.f260i, c0037b42.f254c.f260i, -iM140b15, 0);
                        i3 = 0;
                        i2 = i8;
                    }
                } else {
                    i2 = i8;
                    C0038c c0038c10 = c0038c2;
                    C0038c c0038c11 = null;
                    while (true) {
                        if (c0038c11 != null) {
                            C0037b c0037b44 = c0038c10.f286e.f254c;
                            if (c0037b44 != null && c0037b44.f252a == c0038c11) {
                                iM140b = c0038c10.f286e.m140b();
                                c0037b = c0038c10.f288g;
                                iM140b2 = c0037b.m140b();
                                c0037b2 = c0038c10.f286e;
                                c0018g = c0037b2.f260i;
                                c0037b3 = c0037b2.f254c;
                                if (c0037b3 != null) {
                                    c0018g2 = c0037b3.f260i;
                                } else {
                                    c0018g2 = null;
                                }
                                c0018g3 = c0037b.f260i;
                                c0037b4 = c0037b.f254c;
                                if (c0037b4 != null) {
                                    c0018g4 = c0037b4.f260i;
                                } else {
                                    c0018g4 = null;
                                }
                                if (c0038c11 != null) {
                                    iM140b3 = c0038c11.f288g.m140b() + iM140b;
                                } else {
                                    iM140b3 = iM140b;
                                }
                                if (c0018g2 != null) {
                                    if (c0038c10 == c0038c2) {
                                        c0016e.m108f(c0018g, c0018g2, iM140b3, 1);
                                    } else {
                                        c0016e.m108f(c0018g, c0018g2, iM140b3, 1);
                                    }
                                }
                                if (c0018g4 == null) {
                                    c0037b5 = c0037b.f254c.f252a.f286e;
                                    c0037b6 = c0037b5.f254c;
                                    if (c0037b6 != null) {
                                        c0038c = c0037b6.f252a;
                                    } else {
                                        c0038c = null;
                                    }
                                    if (c0038c == c0038c10) {
                                        iM140b4 = c0037b5.m140b() + iM140b2;
                                        z2 = false;
                                    } else {
                                        iM140b4 = iM140b2;
                                        z2 = true;
                                    }
                                    if (i11 == 0) {
                                        if (z2) {
                                            i4 = 1;
                                            if (c0038c2.f277H == 1) {
                                                c0016e.m107e(c0018g3, c0018g4, -iM140b4, 3);
                                            }
                                        } else {
                                            i4 = 1;
                                        }
                                        c0016e.m109g(c0018g3, c0018g4, -iM140b4, i4);
                                        if (c0018g2 != null) {
                                            c0016e.m104b(c0018g, c0018g2, iM140b, 0.5f, c0018g4, c0018g3, iM140b2);
                                        }
                                    }
                                }
                                if (c0038c10.f273D == 3) {
                                    C0018g c0018g9 = c0037b.f260i;
                                    C0018g c0018g10 = c0037b2.f260i;
                                    i3 = 0;
                                    c0016e.m107e(c0018g9, c0018g10, 0, 3);
                                } else {
                                    i3 = 0;
                                }
                                if (c0018g4 != null) {
                                    c0038c11 = c0038c10;
                                    break;
                                } else {
                                    C0038c c0038c12 = c0038c10;
                                    c0038c10 = c0037b.f254c.f252a;
                                    c0038c11 = c0038c12;
                                }
                            } else {
                                i3 = 0;
                                break;
                            }
                        } else {
                            iM140b = c0038c10.f286e.m140b();
                            c0037b = c0038c10.f288g;
                            iM140b2 = c0037b.m140b();
                            c0037b2 = c0038c10.f286e;
                            c0018g = c0037b2.f260i;
                            c0037b3 = c0037b2.f254c;
                            if (c0037b3 != null) {
                                c0018g2 = c0037b3.f260i;
                            } else {
                                c0018g2 = null;
                            }
                            c0018g3 = c0037b.f260i;
                            c0037b4 = c0037b.f254c;
                            if (c0037b4 != null) {
                                c0018g4 = c0037b4.f260i;
                            } else {
                                c0018g4 = null;
                            }
                            if (c0038c11 != null) {
                                iM140b3 = c0038c11.f288g.m140b() + iM140b;
                            } else {
                                iM140b3 = iM140b;
                            }
                            if (c0018g2 != null) {
                                if ((c0038c10 == c0038c2 || c0038c10.f277H != 1) && (i11 == 0 || c0038c10 == c0038c2)) {
                                    c0016e.m108f(c0018g, c0018g2, iM140b3, 1);
                                } else {
                                    c0016e.m107e(c0018g, c0018g2, iM140b3, 3);
                                }
                            }
                            if (c0018g4 == null) {
                                c0037b5 = c0037b.f254c.f252a.f286e;
                                c0037b6 = c0037b5.f254c;
                                if (c0037b6 != null) {
                                    c0038c = c0037b6.f252a;
                                } else {
                                    c0038c = null;
                                }
                                if (c0038c == c0038c10) {
                                    iM140b4 = c0037b5.m140b() + iM140b2;
                                    z2 = false;
                                } else {
                                    iM140b4 = iM140b2;
                                    z2 = true;
                                }
                                if (i11 == 0) {
                                    if (z2) {
                                        i4 = 1;
                                        if (c0038c2.f277H == 1) {
                                            c0016e.m107e(c0018g3, c0018g4, -iM140b4, 3);
                                        }
                                    } else {
                                        i4 = 1;
                                    }
                                    c0016e.m109g(c0018g3, c0018g4, -iM140b4, i4);
                                    if (c0018g2 != null) {
                                        c0016e.m104b(c0018g, c0018g2, iM140b, 0.5f, c0018g4, c0018g3, iM140b2);
                                    }
                                }
                            }
                            if (c0038c10.f273D == 3) {
                                C0018g c0018g11 = c0037b.f260i;
                                C0018g c0018g12 = c0037b2.f260i;
                                i3 = 0;
                                c0016e.m107e(c0018g11, c0018g12, 0, 3);
                            } else {
                                i3 = 0;
                            }
                            if (c0018g4 != null) {
                                c0038c11 = c0038c10;
                                break;
                            } else {
                                C0038c c0038c13 = c0038c10;
                                c0038c10 = c0037b.f254c.f252a;
                                c0038c11 = c0038c13;
                            }
                        }
                    }
                    if (i11 != 0) {
                        C0037b c0037b45 = c0038c2.f286e;
                        int iM140b16 = c0037b45.m140b();
                        int iM140b17 = c0038c11.f288g.m140b();
                        C0018g c0018g13 = c0037b45.f260i;
                        C0037b c0037b46 = c0037b45.f254c;
                        C0018g c0018g14 = c0037b46 != null ? c0037b46.f260i : null;
                        C0037b c0037b47 = c0038c11.f288g;
                        C0018g c0018g15 = c0037b47.f260i;
                        C0037b c0037b48 = c0037b47.f254c;
                        C0018g c0018g16 = c0037b48 != null ? c0037b48.f260i : null;
                        if (c0018g14 != null && c0018g16 != null) {
                            c0016e.m104b(c0018g13, c0018g14, iM140b16, c0038c2.f271B, c0018g16, c0018g15, iM140b17);
                        }
                    }
                }
                i8 = i2 + 1;
                i7 = i3;
            }
            i2 = i8;
            i3 = 0;
            i8 = i2 + 1;
            i7 = i3;
        }
    }

    /* JADX INFO: renamed from: w */
    public final int m166w(C0038c c0038c, int i2) {
        int i3;
        C0037b c0037b;
        C0037b c0037b2;
        boolean z2 = true;
        if (i2 == 0) {
            C0037b c0037b3 = c0038c.f285d.f254c;
            if (c0037b3 == null || c0037b3.f252a == this) {
                i3 = 0;
            } else {
                z2 = false;
                i3 = 0;
            }
            while (true) {
                c0037b2 = c0038c.f287f;
                if (c0037b2.f254c != null) {
                    if (c0038c.f272C == 3) {
                        int i4 = i3 + 1;
                        C0038c[] c0038cArr = this.f312R;
                        if (i4 >= c0038cArr.length) {
                            this.f312R = (C0038c[]) Arrays.copyOf(c0038cArr, c0038cArr.length * 2);
                        }
                        this.f312R[i3] = c0038c;
                        i3 = i4;
                    }
                    C0038c c0038c2 = c0037b2.f254c.f252a;
                    C0037b c0037b4 = c0038c2.f285d.f254c;
                    if (c0037b4 == null || c0037b4.f252a != c0038c || c0038c2 == c0038c) {
                        break;
                    }
                    c0038c = c0038c2;
                } else {
                    break;
                }
            }
            C0037b c0037b5 = c0037b2.f254c;
            c0038c.f278I = (c0037b5 == null || c0037b5.f252a == this) ? z2 : false;
        } else {
            C0037b c0037b6 = c0038c.f286e.f254c;
            if (c0037b6 == null || c0037b6.f252a == this) {
                i3 = 0;
            } else {
                z2 = false;
                i3 = 0;
            }
            while (true) {
                c0037b = c0038c.f288g;
                if (c0037b.f254c != null) {
                    if (c0038c.f273D == 3) {
                        int i5 = i3 + 1;
                        C0038c[] c0038cArr2 = this.f312R;
                        if (i5 >= c0038cArr2.length) {
                            this.f312R = (C0038c[]) Arrays.copyOf(c0038cArr2, c0038cArr2.length * 2);
                        }
                        this.f312R[i3] = c0038c;
                        i3 = i5;
                    }
                    C0038c c0038c3 = c0037b.f254c.f252a;
                    C0037b c0037b7 = c0038c3.f286e.f254c;
                    if (c0037b7 == null || c0037b7.f252a != c0038c || c0038c3 == c0038c) {
                        break;
                    }
                    c0038c = c0038c3;
                } else {
                    break;
                }
            }
            C0037b c0037b8 = c0037b.f254c;
            c0038c.f279J = (c0037b8 == null || c0037b8.f252a == this) ? z2 : false;
        }
        return i3;
    }
}
