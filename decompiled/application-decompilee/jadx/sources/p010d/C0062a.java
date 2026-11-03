package p010d;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: renamed from: d.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0062a {
    /* JADX WARN: Code duplicated, block: B:11:0x002c  */
    /* JADX WARN: Code duplicated, block: B:17:0x0042  */
    /* JADX WARN: Code duplicated, block: B:39:0x008c A[PHI: r14
      0x008c: PHI (r14v3 int) = (r14v1 int), (r14v1 int), (r14v6 int) binds: [B:28:0x0075, B:31:0x007b, B:37:0x0087] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:45:0x0099 A[Catch: NumberFormatException -> 0x00c2, TryCatch #0 {NumberFormatException -> 0x00c2, blocks: (B:22:0x0054, B:25:0x0069, B:27:0x006f, B:31:0x007b, B:43:0x0093, B:45:0x0099, B:48:0x00a9, B:51:0x00b0, B:52:0x00bc, B:53:0x00c1), top: B:68:0x0054 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a9 A[Catch: NumberFormatException -> 0x00c2, TryCatch #0 {NumberFormatException -> 0x00c2, blocks: (B:22:0x0054, B:25:0x0069, B:27:0x006f, B:31:0x007b, B:43:0x0093, B:45:0x0099, B:48:0x00a9, B:51:0x00b0, B:52:0x00bc, B:53:0x00c1), top: B:68:0x0054 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:73:0x00ea A[SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0085, code lost:
    
        if (r17 == 0) goto L37;
     */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static a[] m229a(String str) {
        int i2;
        String strTrim;
        float[] fArr;
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        while (i5 < str.length()) {
            while (i5 < str.length()) {
                char cCharAt = str.charAt(i5);
                if ((cCharAt - 'Z') * (cCharAt - 'A') > 0) {
                    if ((cCharAt - 'z') * (cCharAt - 'a') > 0) {
                        continue;
                    } else if (cCharAt != 'e' && cCharAt != 'E') {
                        strTrim = str.substring(i4, i5).trim();
                        if (strTrim.length() <= 0) {
                            if (strTrim.charAt(i3) != 'z' || strTrim.charAt(i3) == 'Z') {
                                fArr = new float[i3];
                            } else {
                                try {
                                    int length = strTrim.length();
                                    float[] fArr2 = new float[length];
                                    int length2 = strTrim.length();
                                    int i6 = i3;
                                    int i7 = 1;
                                    while (i7 < length2) {
                                        int i8 = i3;
                                        int i9 = i8;
                                        int i10 = i9;
                                        int i11 = i10;
                                        int i12 = i7;
                                        while (i12 < strTrim.length()) {
                                            char cCharAt2 = strTrim.charAt(i12);
                                            if (cCharAt2 == ' ') {
                                                i10 = 1;
                                                i11 = 0;
                                            } else if (cCharAt2 == 'E' || cCharAt2 == 'e') {
                                                i11 = 1;
                                            } else {
                                                switch (cCharAt2) {
                                                    case ',':
                                                        i10 = 1;
                                                        break;
                                                    case '-':
                                                        if (i12 != i7) {
                                                        }
                                                        break;
                                                    case '.':
                                                        if (i9 != 0) {
                                                            i8 = 1;
                                                            i10 = 1;
                                                        } else {
                                                            i9 = 1;
                                                        }
                                                        break;
                                                }
                                                i11 = 0;
                                            }
                                            if (i10 != 0) {
                                                if (i7 < i12) {
                                                    fArr2[i6] = Float.parseFloat(strTrim.substring(i7, i12));
                                                    i6++;
                                                }
                                                if (i8 != 0) {
                                                    i12++;
                                                }
                                                i7 = i12;
                                                i3 = 0;
                                            } else {
                                                i12++;
                                            }
                                        }
                                        if (i7 < i12) {
                                            fArr2[i6] = Float.parseFloat(strTrim.substring(i7, i12));
                                            i6++;
                                        }
                                        if (i8 != 0) {
                                            i12++;
                                        }
                                        i7 = i12;
                                        i3 = 0;
                                    }
                                    if (i6 < 0) {
                                        throw new IllegalArgumentException();
                                    }
                                    fArr = new float[i6];
                                    System.arraycopy(fArr2, 0, fArr, 0, Math.min(i6, length));
                                    i3 = 0;
                                } catch (NumberFormatException e2) {
                                    throw new RuntimeException("error in parsing \"" + strTrim + "\"", e2);
                                }
                            }
                            arrayList.add(new a(strTrim.charAt(i3), fArr));
                        }
                        i4 = i5;
                        i5++;
                        i3 = 0;
                    }
                } else if (cCharAt != 'e') {
                    continue;
                }
                i5++;
            }
            strTrim = str.substring(i4, i5).trim();
            if (strTrim.length() <= 0) {
                if (strTrim.charAt(i3) != 'z') {
                    fArr = new float[i3];
                } else {
                    fArr = new float[i3];
                }
                arrayList.add(new a(strTrim.charAt(i3), fArr));
            }
            i4 = i5;
            i5++;
            i3 = 0;
        }
        if (i5 - i4 != 1 || i4 >= str.length()) {
            i2 = 0;
        } else {
            i2 = 0;
            arrayList.add(new a(str.charAt(i4), new float[0]));
        }
        return (a[]) arrayList.toArray(new a[i2]);
    }

    /* JADX INFO: renamed from: d.a$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public final char f445a;

        /* JADX INFO: renamed from: b */
        public final float[] f446b;

        public a(char c2, float[] fArr) {
            this.f445a = c2;
            this.f446b = fArr;
        }

        /* JADX INFO: renamed from: a */
        public static void m230a(Path path, float f2, float f3, float f4, float f5, float f6, float f7, float f8, boolean z2, boolean z3) {
            double d2;
            double d3;
            double radians = Math.toRadians(f8);
            double dCos = Math.cos(radians);
            double dSin = Math.sin(radians);
            double d4 = f2;
            double d5 = f3;
            double d6 = (d5 * dSin) + (d4 * dCos);
            double d7 = d4;
            double d8 = f6;
            double d9 = d6 / d8;
            double d10 = f7;
            double d11 = ((d5 * dCos) + (((double) (-f2)) * dSin)) / d10;
            double d12 = d5;
            double d13 = f5;
            double d14 = ((d13 * dSin) + (((double) f4) * dCos)) / d8;
            double d15 = ((d13 * dCos) + (((double) (-f4)) * dSin)) / d10;
            double d16 = d9 - d14;
            double d17 = d11 - d15;
            double d18 = (d9 + d14) / 2.0d;
            double d19 = (d11 + d15) / 2.0d;
            double d20 = (d17 * d17) + (d16 * d16);
            if (d20 == 0.0d) {
                Log.w("PathParser", " Points are coincident");
                return;
            }
            double d21 = (1.0d / d20) - 0.25d;
            if (d21 < 0.0d) {
                Log.w("PathParser", "Points are too far apart " + d20);
                float fSqrt = (float) (Math.sqrt(d20) / 1.99999d);
                m230a(path, f2, f3, f4, f5, f6 * fSqrt, f7 * fSqrt, f8, z2, z3);
                return;
            }
            double dSqrt = Math.sqrt(d21);
            double d22 = d16 * dSqrt;
            double d23 = dSqrt * d17;
            if (z2 == z3) {
                d2 = d18 - d23;
                d3 = d19 + d22;
            } else {
                d2 = d18 + d23;
                d3 = d19 - d22;
            }
            double dAtan2 = Math.atan2(d11 - d3, d9 - d2);
            double dAtan3 = Math.atan2(d15 - d3, d14 - d2) - dAtan2;
            if (z3 != (dAtan3 >= 0.0d)) {
                dAtan3 = dAtan3 > 0.0d ? dAtan3 - 6.283185307179586d : dAtan3 + 6.283185307179586d;
            }
            double d24 = d2 * d8;
            double d25 = d3 * d10;
            double d26 = (d24 * dCos) - (d25 * dSin);
            double d27 = (d25 * dCos) + (d24 * dSin);
            int iCeil = (int) Math.ceil(Math.abs((dAtan3 * 4.0d) / 3.141592653589793d));
            double dCos2 = Math.cos(radians);
            double dSin2 = Math.sin(radians);
            double dCos3 = Math.cos(dAtan2);
            double dSin3 = Math.sin(dAtan2);
            double d28 = -d8;
            double d29 = d28 * dCos2;
            double d30 = d10 * dSin2;
            double d31 = (d29 * dSin3) - (d30 * dCos3);
            double d32 = d28 * dSin2;
            double d33 = d10 * dCos2;
            double d34 = (dCos3 * d33) + (dSin3 * d32);
            double d35 = d33;
            double d36 = dAtan3 / ((double) iCeil);
            int i2 = 0;
            while (i2 < iCeil) {
                double d37 = dAtan2 + d36;
                double dSin4 = Math.sin(d37);
                double dCos4 = Math.cos(d37);
                double d38 = d36;
                double d39 = (((d8 * dCos2) * dCos4) + d26) - (d30 * dSin4);
                double d40 = d35;
                double d41 = d26;
                double d42 = (d40 * dSin4) + (d8 * dSin2 * dCos4) + d27;
                double d43 = (d29 * dSin4) - (d30 * dCos4);
                double d44 = (dCos4 * d40) + (dSin4 * d32);
                double d45 = d37 - dAtan2;
                double dTan = Math.tan(d45 / 2.0d);
                double dSqrt2 = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d45)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((d31 * dSqrt2) + d7), (float) ((d34 * dSqrt2) + d12), (float) (d39 - (dSqrt2 * d43)), (float) (d42 - (dSqrt2 * d44)), (float) d39, (float) d42);
                i2++;
                dAtan2 = d37;
                d32 = d32;
                dCos2 = dCos2;
                iCeil = iCeil;
                d34 = d44;
                d8 = d8;
                d31 = d43;
                d7 = d39;
                d12 = d42;
                d26 = d41;
                d36 = d38;
                d35 = d40;
            }
        }

        public a(a aVar) {
            this.f445a = aVar.f445a;
            float[] fArr = aVar.f446b;
            int length = fArr.length;
            if (length >= 0) {
                int iMin = Math.min(length, fArr.length);
                float[] fArr2 = new float[length];
                System.arraycopy(fArr, 0, fArr2, 0, iMin);
                this.f446b = fArr2;
                return;
            }
            throw new IllegalArgumentException();
        }
    }
}
