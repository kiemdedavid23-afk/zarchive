package p025i0;

import java.io.File;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import p004b.C0015d;
import p008c0.C0044b;
import p008c0.C0046d;
import p008c0.C0051i;
import p020g0.AbstractC0126e;
import p020g0.C0128g;
import p020g0.C0129h;
import p020g0.InterfaceC0125d;
import p033m0.C0181d;
import p034n.C0188b;
import p034n.C0191e;
import p047s0.C0358b;
import p055w0.C0415f;

/* JADX INFO: renamed from: i0.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0153f implements InterfaceC0125d {
    /* JADX WARN: Code duplicated, block: B:42:0x0073  */
    /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: d */
    public static int m517d(int[] iArr, C0044b c0044b) {
        int i2 = 7;
        boolean z2 = false;
        boolean z3 = true;
        for (int i3 : iArr) {
            C0046d c0046d = c0044b.get(i3);
            if (c0046d.m185f()) {
                i2 = (i2 & 32) | 16;
                if (z2) {
                    return i2 | 512;
                }
                return i2;
            }
            byte bM183d = c0046d.m183d();
            byte b2 = c0046d.f357f;
            if (bM183d != 6) {
                i2 &= -5;
            }
            if (bM183d == 6 || bM183d == 20) {
                i2 |= 32;
            } else if (!C0015d.m45G(bM183d) && bM183d != 2 && b2 != 30) {
                i2 = bM183d == 27 ? i2 | 256 : i2 & (-3);
            } else if (z3 && (b2 == 29 || b2 == 30)) {
                if (b2 == 30) {
                    i2 |= 256;
                }
                String str = c0046d.f352a;
                if (str.lastIndexOf(46) < str.length() - 5) {
                    z3 = false;
                }
            }
        }
        z2 = z3;
        if (z2) {
            return i2 | 512;
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p020g0.InterfaceC0125d
    /* JADX INFO: renamed from: a */
    public final boolean mo99a(C0128g c0128g, C0129h c0129h, byte b2, int[] iArr, C0051i c0051i, boolean z2) {
        byte b3 = b2;
        if (!c0129h.m483j()) {
            return false;
        }
        try {
            int iM517d = m517d(iArr, c0051i);
            Object[] objArr = c0129h.m485l() ? (char) 2 : (char) 1;
            boolean zM1038i = C0358b.m1038i(c0129h.f1015c);
            if (iArr.length == 1 && C0015d.m49K(iM517d, 1) && (!z2 || C0358b.m1041l(4096))) {
                if (C0015d.m49K(iM517d, 32)) {
                    c0128g.m471a(12);
                }
                if (!C0015d.m49K(iM517d, 2) || C0015d.m49K(iM517d, 256)) {
                    c0128g.m471a(3);
                    if (C0015d.m49K(iM517d, 256)) {
                        c0128g.m471a(0);
                    }
                    if (C0015d.m49K(iM517d, 32)) {
                        c0128g.m471a(18);
                    }
                }
            }
            if (C0015d.m49K(iM517d, 2) && (iArr.length > 1 || !z2 || (C0358b.m1041l(2048) && !C0015d.m49K(iM517d, 32)))) {
                if (iArr.length == 1) {
                    c0128g.m471a(!C0015d.m49K(iM517d, 256) ? 1 : 0);
                }
                c0128g.m471a(5);
                if (!c0129h.m485l()) {
                    c0128g.m471a(11);
                }
            }
            c0128g.m471a(8);
            if (z2) {
                if (iArr.length == 1 && C0015d.m49K(iM517d, 1)) {
                    c0128g.m471a(22);
                }
                c0128g.m471a(24);
                if (b3 != 1 && (!zM1038i || b3 != 3)) {
                    int length = iArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length) {
                            byte bM1136d = C0415f.m1136d(c0051i.get(iArr[i2]).f365k, false);
                            if (bM1136d != 1 && (!zM1038i || bM1136d != 3)) {
                                b3 = 4;
                                break;
                            }
                            i2++;
                        } else {
                            b3 = 1;
                            break;
                        }
                    }
                }
                if (b3 == 1 || (zM1038i && b3 == 3)) {
                    c0128g.m471a(25);
                    c0128g.m471a(23);
                    if (iArr.length == 1) {
                        c0128g.m471a(27);
                    }
                }
                if (iArr.length > 1 || !C0015d.m49K(iM517d, 1)) {
                    c0128g.m471a(22);
                }
                if (C0015d.m49K(iM517d, 1) && objArr == 1) {
                    c0128g.m471a(20);
                }
            }
            return true;
        } catch (IndexOutOfBoundsException unused) {
            return false;
        }
    }

    @Override // p020g0.InterfaceC0125d
    /* JADX INFO: renamed from: b */
    public final boolean mo100b(C0128g c0128g, C0129h c0129h, byte b2, int[] iArr, C0044b c0044b) {
        if (!c0129h.m483j()) {
            return false;
        }
        try {
            int iM517d = m517d(iArr, c0044b);
            char c2 = c0129h.m485l() ? (char) 2 : (char) 1;
            boolean zM1038i = C0358b.m1038i(c0129h.f1015c);
            if (iArr.length == 1) {
                if ((C0015d.m49K(iM517d, 2) && !C0015d.m50L(iM517d, 288) && C0358b.m1041l(2048)) || (C0015d.m50L(iM517d, 288) && C0358b.m1041l(4096))) {
                    boolean zM50L = C0015d.m50L(iM517d, 288);
                    if (zM50L) {
                        c0128g.m471a(1);
                    } else if (c2 == 1) {
                        c0128g.m471a(11);
                    }
                    if (b2 == 1 || (zM1038i && b2 == 3)) {
                        if (b2 == 1) {
                            if (!zM50L) {
                                c0128g.m471a(6);
                            }
                            c0128g.m471a(7);
                        }
                        c0128g.m471a(5);
                    }
                }
                if (!C0015d.m50L(iM517d, 18)) {
                    c0128g.m471a(18);
                }
                if ((C0015d.m49K(iM517d, 16) || (C0358b.m1041l(4096) && !C0015d.m50L(iM517d, 2))) && (b2 == 1 || C0358b.f1979a != null)) {
                    c0128g.m472b(9, "*.zip");
                    c0128g.m472b(10, "*.7z");
                }
            }
            c0128g.m471a(8);
            if (!C0015d.m49K(iM517d, 16)) {
                c0128g.m471a(22);
            }
            c0128g.m471a(24);
            if (b2 == 1 || (zM1038i && b2 == 3)) {
                c0128g.m471a(25);
                c0128g.m471a(23);
                if (iArr.length == 1) {
                    c0128g.m471a(27);
                }
            } else if (b2 == 2 && iArr.length == 1) {
                c0128g.m471a(23);
                c0128g.m471a(27);
            }
            if (C0015d.m49K(iM517d, 16)) {
                c0128g.m471a(22);
            }
            if (b2 != 1 && zM1038i && C0015d.m49K(AbstractC0126e.m452c(c0129h), 8)) {
                c0128g.m471a(98);
            }
            if (C0015d.m49K(iM517d, 1) && c2 == 1) {
                c0128g.m471a(20);
            }
            if (iArr.length == 1 && C0015d.m49K(iM517d, 16)) {
                c0128g.m471a(70);
            }
            return true;
        } catch (IndexOutOfBoundsException unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:118:0x0103 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:121:0x010b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x00e4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ec A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:62:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ff A[PHI: r10 r12
      0x00ff: PHI (r10v3 java.lang.Long) = (r10v2 java.lang.Long), (r10v2 java.lang.Long), (r10v2 java.lang.Long), (r10v5 java.lang.Long), (r10v5 java.lang.Long) binds: [B:55:0x00e1, B:63:0x00f5, B:65:0x00fd, B:59:0x00ea, B:60:0x00ec] A[DONT_GENERATE, DONT_INLINE]
      0x00ff: PHI (r12v3 java.lang.String) = 
      (r12v2 java.lang.String)
      (r12v2 java.lang.String)
      (r12v2 java.lang.String)
      (r12v5 java.lang.String)
      (r12v5 java.lang.String)
     binds: [B:55:0x00e1, B:63:0x00f5, B:65:0x00fd, B:59:0x00ea, B:60:0x00ec] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:69:0x0105  */
    /* JADX WARN: Code duplicated, block: B:71:0x0109  */
    /* JADX WARN: Code duplicated, block: B:76:0x011a  */
    /* JADX WARN: Code duplicated, block: B:79:0x0126  */
    /* JADX WARN: Code duplicated, block: B:81:0x012a  */
    /* JADX WARN: Code duplicated, block: B:87:0x0141  */
    /* JADX WARN: Code duplicated, block: B:89:0x014d  */
    /* JADX WARN: Code duplicated, block: B:92:0x0158  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p020g0.InterfaceC0125d
    /* JADX INFO: renamed from: c */
    public final boolean mo101c(C0128g c0128g, C0129h c0129h, byte b2, int[] iArr, C0044b c0044b) throws Throwable {
        int i2;
        ZipFile zipFile;
        String str;
        C0191e c0191e;
        ZipFile zipFile2;
        C0191e c0191e2;
        int i3 = 0;
        if (!c0129h.m483j()) {
            return false;
        }
        int i4 = 1;
        Object[] objArr = c0129h.m485l() ? (char) 2 : (char) 1;
        try {
            int iM517d = m517d(iArr, c0044b);
            if (iArr.length == 1 && C0015d.m49K(iM517d, 1)) {
                if (C0015d.m49K(iM517d, 32)) {
                    c0128g.m471a(12);
                }
                if (!C0015d.m49K(iM517d, 2) || C0015d.m49K(iM517d, 256)) {
                    c0128g.m471a(3);
                }
            } else if (C0015d.m49K(iM517d, 4)) {
                String str2 = c0129h.f1015c + "/";
                int length = iArr.length;
                int i5 = 0;
                Long l2 = null;
                String str3 = null;
                while (true) {
                    if (i3 >= length) {
                        i2 = i4;
                        break;
                    }
                    String str4 = str2 + c0044b.get(iArr[i3]).f352a;
                    if (str4 != null) {
                        try {
                            try {
                                str = str2;
                                try {
                                    zipFile2 = new ZipFile(new File(str4), 1);
                                    try {
                                        ZipEntry entry = zipFile2.getEntry("AndroidManifest.xml");
                                        if (entry == null) {
                                            C0181d.m565f(zipFile2);
                                        } else {
                                            byte[] bArrM58T = C0015d.m58T(zipFile2.getInputStream(entry));
                                            C0181d.m565f(zipFile2);
                                            if (bArrM58T != null) {
                                                c0191e2 = new C0191e();
                                                C0188b c0188b = new C0188b(ByteBuffer.wrap(bArrM58T), null);
                                                Locale locale = Locale.US;
                                                if (locale != null) {
                                                    c0188b.f1169f = locale;
                                                }
                                                c0188b.f1167d = c0191e2;
                                                c0188b.m586a();
                                            }
                                            if (c0191e2 != null) {
                                                i5 = -1;
                                            } else if (str3 == null) {
                                                str3 = c0191e2.f1178a;
                                                l2 = c0191e2.f1179b;
                                                if (str3 != null || l2 == null) {
                                                    i5 = -1;
                                                }
                                            } else if (str3.equals(c0191e2.f1178a) || !l2.equals(c0191e2.f1179b)) {
                                                i5 = -1;
                                            }
                                            if (i5 < 0) {
                                                i2 = 1;
                                                break;
                                            }
                                            if (c0191e2.f1180c != null) {
                                                i5++;
                                            }
                                            i3++;
                                            str2 = str;
                                            i4 = 1;
                                        }
                                        c0191e2 = null;
                                    } catch (Exception unused) {
                                        c0191e = null;
                                        C0181d.m565f(zipFile2);
                                        c0191e2 = c0191e;
                                    } catch (Throwable th) {
                                        th = th;
                                        zipFile = zipFile2;
                                        C0181d.m565f(zipFile);
                                        throw th;
                                    }
                                } catch (Exception unused2) {
                                    c0191e = null;
                                    zipFile2 = null;
                                    C0181d.m565f(zipFile2);
                                    c0191e2 = c0191e;
                                    if (c0191e2 != null) {
                                        i5 = -1;
                                    } else if (str3 == null) {
                                        str3 = c0191e2.f1178a;
                                        l2 = c0191e2.f1179b;
                                        if (str3 != null) {
                                            i5 = -1;
                                        } else {
                                            i5 = -1;
                                        }
                                    } else if (str3.equals(c0191e2.f1178a)) {
                                        i5 = -1;
                                    } else {
                                        i5 = -1;
                                    }
                                    if (i5 < 0) {
                                        i2 = 1;
                                        if (i5 + i2 == iArr.length) {
                                            c0128g.m471a(12);
                                        }
                                        if (C0015d.m49K(iM517d, 2)) {
                                            if (iArr.length == 1) {
                                                c0128g.m471a(!C0015d.m50L(iM517d, 288) ? 1 : 0);
                                            }
                                            if (b2 != 1) {
                                                c0128g.m471a(6);
                                                if (C0015d.m49K(iM517d, 512)) {
                                                    c0128g.m471a(7);
                                                }
                                            } else {
                                                c0128g.m471a(6);
                                                if (C0015d.m49K(iM517d, 512)) {
                                                    c0128g.m471a(7);
                                                }
                                            }
                                            c0128g.m471a(5);
                                            if (objArr == 1) {
                                                c0128g.m471a(11);
                                            }
                                        }
                                        if (C0015d.m49K(iM517d, 2)) {
                                            c0128g.m472b(9, "*.zip");
                                            c0128g.m472b(10, "*.7z");
                                        } else {
                                            c0128g.m472b(9, "*.zip");
                                            c0128g.m472b(10, "*.7z");
                                        }
                                        c0128g.m471a(8);
                                        return true;
                                    }
                                    if (c0191e2.f1180c != null) {
                                        i5++;
                                    }
                                    i3++;
                                    str2 = str;
                                    i4 = 1;
                                }
                            } catch (Exception unused3) {
                                str = str2;
                            }
                            if (c0191e2 != null) {
                                i5 = -1;
                            } else if (str3 == null) {
                                str3 = c0191e2.f1178a;
                                l2 = c0191e2.f1179b;
                                if (str3 != null) {
                                    i5 = -1;
                                } else {
                                    i5 = -1;
                                }
                            } else if (str3.equals(c0191e2.f1178a)) {
                                i5 = -1;
                            } else {
                                i5 = -1;
                            }
                            if (i5 < 0) {
                                i2 = 1;
                                break;
                            }
                            if (c0191e2.f1180c != null) {
                                i5++;
                            }
                            i3++;
                            str2 = str;
                            i4 = 1;
                        } catch (Throwable th2) {
                            th = th2;
                            zipFile = null;
                        }
                    } else {
                        str = str2;
                        c0191e = null;
                    }
                    c0191e2 = c0191e;
                    if (c0191e2 != null) {
                        i5 = -1;
                    } else if (str3 == null) {
                        str3 = c0191e2.f1178a;
                        l2 = c0191e2.f1179b;
                        if (str3 != null) {
                            i5 = -1;
                        } else {
                            i5 = -1;
                        }
                    } else if (str3.equals(c0191e2.f1178a)) {
                        i5 = -1;
                    } else {
                        i5 = -1;
                    }
                    if (i5 < 0) {
                        i2 = 1;
                        break;
                    }
                    if (c0191e2.f1180c != null) {
                        i5++;
                    }
                    i3++;
                    str2 = str;
                    i4 = 1;
                }
                if (i5 + i2 == iArr.length) {
                    c0128g.m471a(12);
                }
            }
            if (C0015d.m49K(iM517d, 2)) {
                if (iArr.length == 1) {
                    c0128g.m471a(!C0015d.m50L(iM517d, 288) ? 1 : 0);
                }
                if (b2 != 1 || (C0358b.m1038i(c0129h.f1015c) && b2 == 3)) {
                    c0128g.m471a(6);
                    if (C0015d.m49K(iM517d, 512)) {
                        c0128g.m471a(7);
                    }
                }
                c0128g.m471a(5);
                if (objArr == 1) {
                    c0128g.m471a(11);
                }
            }
            if ((C0015d.m49K(iM517d, 2) || C0015d.m49K(iM517d, 32)) && (b2 == 1 || C0358b.f1979a != null || (c0129h.m483j() && C0415f.m1139g(c0129h.f1015c) != 2))) {
                c0128g.m472b(9, "*.zip");
                c0128g.m472b(10, "*.7z");
            }
            c0128g.m471a(8);
            return true;
        } catch (IndexOutOfBoundsException unused4) {
            return false;
        }
    }
}
