package p046s;

import java.io.IOException;
import java.io.InputStream;
import p048t.AbstractC0360b;
import p048t.C0364f;
import p048t.C0367i;
import p048t.C0368j;
import p048t.C0369k;

/* JADX INFO: renamed from: s.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0356b {

    /* JADX INFO: renamed from: a */
    public int f1963a;

    /* JADX INFO: renamed from: b */
    public boolean f1964b;

    /* JADX INFO: renamed from: c */
    public boolean f1965c;

    /* JADX INFO: renamed from: d */
    public boolean f1966d;

    /* JADX INFO: renamed from: f */
    public byte f1968f;

    /* JADX INFO: renamed from: g */
    public String f1969g;

    /* JADX INFO: renamed from: e */
    public boolean f1967e = true;

    /* JADX INFO: renamed from: i */
    public C0364f f1971i = null;

    /* JADX INFO: renamed from: h */
    public final AbstractC0360b[] f1970h = new AbstractC0360b[3];

    public C0356b() {
        m1018c();
    }

    /* JADX WARN: Code duplicated, block: B:111:0x00e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:17:0x0035  */
    /* JADX WARN: Code duplicated, block: B:19:0x003a  */
    /* JADX WARN: Code duplicated, block: B:37:0x0075  */
    /* JADX WARN: Code duplicated, block: B:39:0x007b  */
    /* JADX WARN: Code duplicated, block: B:48:0x008d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0095 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:53:0x0097  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:80:0x00ea A[LOOP:1: B:76:0x00d7->B:80:0x00ea, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:75:0x00d5, please report this as an issue */
    /* JADX INFO: renamed from: a */
    public static String m1016a(InputStream inputStream) throws IOException {
        boolean z2;
        int i2;
        int i3;
        int i4;
        int i5;
        byte b2;
        int i6;
        String strM1017b;
        byte[] bArr = new byte[4096];
        C0356b c0356b = new C0356b();
        int i7 = inputStream.read(bArr);
        AbstractC0360b[] abstractC0360bArr = c0356b.f1970h;
        if (i7 > 0 && !(z2 = c0356b.f1964b) && !z2) {
            if (i7 > 0) {
                c0356b.f1966d = true;
            }
            if (c0356b.f1965c) {
                c0356b.f1965c = false;
                if (i7 <= 3 || (strM1017b = m1017b(bArr)) == null) {
                    i2 = 0 + i7;
                    for (i3 = 0; i3 < i2; i3++) {
                        b2 = bArr[i3];
                        i6 = b2 & 255;
                        if ((i6 & 128) != 0 || i6 == 160) {
                            if (c0356b.f1963a == 1 && (i6 == 27 || (i6 == 123 && c0356b.f1968f == 126))) {
                                c0356b.f1963a = 2;
                            }
                            if (c0356b.f1963a == 1 && c0356b.f1967e) {
                                c0356b.f1967e = (i6 < 32 && i6 <= 126) || i6 == 10 || i6 == 13 || i6 == 9;
                            }
                            c0356b.f1968f = b2;
                        } else if (c0356b.f1963a != 3) {
                            c0356b.f1963a = 3;
                            if (c0356b.f1971i != null) {
                                c0356b.f1971i = null;
                            }
                            if (abstractC0360bArr[0] == null) {
                                abstractC0360bArr[0] = new C0368j();
                            }
                            if (abstractC0360bArr[1] == null) {
                                abstractC0360bArr[1] = new C0369k();
                            }
                            if (abstractC0360bArr[2] == null) {
                                abstractC0360bArr[2] = new C0367i();
                            }
                        }
                    }
                    i4 = c0356b.f1963a;
                    if (i4 == 2) {
                        if (c0356b.f1971i == null) {
                            c0356b.f1971i = new C0364f();
                        }
                        if (c0356b.f1971i.mo1048d(bArr, i7) != 2) {
                            c0356b.f1971i.getClass();
                        }
                        c0356b.f1964b = true;
                        c0356b.f1969g = c0356b.f1971i.f2029e;
                    } else if (i4 == 3) {
                        for (AbstractC0360b abstractC0360b : abstractC0360bArr) {
                            if (abstractC0360b.mo1048d(bArr, i7) == 2) {
                                c0356b.f1964b = true;
                                c0356b.f1969g = abstractC0360b.mo1045a();
                                break;
                            }
                        }
                    }
                } else {
                    c0356b.f1969g = strM1017b;
                    c0356b.f1964b = true;
                }
            } else {
                i2 = 0 + i7;
                while (i3 < i2) {
                    b2 = bArr[i3];
                    i6 = b2 & 255;
                    if ((i6 & 128) != 0) {
                        if (c0356b.f1963a == 1) {
                            c0356b.f1963a = 2;
                        }
                        if (c0356b.f1963a == 1) {
                            c0356b.f1967e = (i6 < 32 && i6 <= 126) || i6 == 10 || i6 == 13 || i6 == 9;
                        }
                        c0356b.f1968f = b2;
                    } else {
                        if (c0356b.f1963a == 1) {
                            c0356b.f1963a = 2;
                        }
                        if (c0356b.f1963a == 1) {
                            c0356b.f1967e = (i6 < 32 && i6 <= 126) || i6 == 10 || i6 == 13 || i6 == 9;
                        }
                        c0356b.f1968f = b2;
                    }
                }
                i4 = c0356b.f1963a;
                if (i4 == 2) {
                    if (c0356b.f1971i == null) {
                        c0356b.f1971i = new C0364f();
                    }
                    if (c0356b.f1971i.mo1048d(bArr, i7) != 2) {
                        c0356b.f1971i.getClass();
                    }
                    c0356b.f1964b = true;
                    c0356b.f1969g = c0356b.f1971i.f2029e;
                } else if (i4 == 3) {
                    while (i5 < r7) {
                        if (abstractC0360b.mo1048d(bArr, i7) == 2) {
                            c0356b.f1964b = true;
                            c0356b.f1969g = abstractC0360b.mo1045a();
                            break;
                        }
                    }
                }
            }
        }
        if (c0356b.f1966d) {
            if (c0356b.f1969g != null) {
                c0356b.f1964b = true;
            } else {
                int i8 = c0356b.f1963a;
                if (i8 == 3) {
                    float f2 = 0.0f;
                    int i9 = 0;
                    for (int i10 = 0; i10 < abstractC0360bArr.length; i10++) {
                        float fMo1046b = abstractC0360bArr[i10].mo1046b();
                        if (fMo1046b > f2) {
                            f2 = fMo1046b;
                            i9 = i10;
                        }
                    }
                    if (f2 > 0.2f) {
                        c0356b.f1969g = abstractC0360bArr[i9].mo1045a();
                    }
                } else if (i8 != 2 && i8 == 1) {
                    c0356b.f1969g = C0355a.f1936A;
                }
            }
        }
        String str = c0356b.f1969g;
        c0356b.m1018c();
        return str;
    }

    /* JADX INFO: renamed from: b */
    public static String m1017b(byte[] bArr) {
        if (bArr.length <= 3) {
            return null;
        }
        int i2 = bArr[0] & 255;
        int i3 = bArr[1] & 255;
        int i4 = bArr[2] & 255;
        int i5 = bArr[3] & 255;
        if (i2 == 0) {
            if (i3 == 0 && i4 == 254 && i5 == 255) {
                return C0355a.f1960x;
            }
            return null;
        }
        if (i2 == 239) {
            if (i3 == 187 && i4 == 191) {
                return C0355a.f1957u;
            }
            return null;
        }
        if (i2 == 254) {
            if (!(i3 == 255 && i4 == 0 && i5 == 0) && i3 == 255) {
                return C0355a.f1958v;
            }
            return null;
        }
        if (i2 != 255) {
            return null;
        }
        if (i3 == 254 && i4 == 0 && i5 == 0) {
            return C0355a.f1961y;
        }
        if (i3 == 254) {
            return C0355a.f1959w;
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public final void m1018c() {
        this.f1964b = false;
        this.f1965c = true;
        this.f1969g = null;
        this.f1966d = false;
        this.f1963a = 1;
        this.f1968f = (byte) 0;
        C0364f c0364f = this.f1971i;
        if (c0364f != null) {
            c0364f.mo1049e();
        }
        for (AbstractC0360b abstractC0360b : this.f1970h) {
            if (abstractC0360b != null) {
                abstractC0360b.mo1049e();
            }
        }
    }
}
