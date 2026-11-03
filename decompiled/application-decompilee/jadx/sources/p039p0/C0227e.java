package p039p0;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.pdf.PdfRenderer;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.system.OsConstants;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Locale;
import p004b.C0014c;
import p004b.C0015d;
import p011d0.C0068f;
import p014e0.C0079a;
import p020g0.AbstractC0126e;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p025i0.C0154g;
import p028k.C0160a;
import p028k.C0161b;
import p030l.C0169a;
import p033m0.C0181d;
import p035n0.AbstractC0194a;
import p055w0.C0412c;
import p059y0.C0438b;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.archiver.NArc;

/* JADX INFO: renamed from: p0.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0227e {

    /* JADX INFO: renamed from: p0.e$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public final Bitmap f1275a;

        /* JADX INFO: renamed from: b */
        public final int[] f1276b;

        /* JADX INFO: renamed from: c */
        public final String[] f1277c;

        /* JADX INFO: renamed from: d */
        public int f1278d = 0;

        public a(Bitmap bitmap, int[] iArr, String[] strArr) {
            this.f1275a = bitmap;
            this.f1276b = iArr;
            this.f1277c = strArr;
        }
    }

    /* JADX INFO: renamed from: a */
    public static String m640a(String str) {
        if (str == null) {
            return null;
        }
        try {
            int i2 = (int) (Long.parseLong(str) / 1000);
            Locale locale = Locale.ENGLISH;
            String str2 = String.format(locale, "%02d", Integer.valueOf(i2 % 60));
            int i3 = i2 / 60;
            String str3 = String.format(locale, "%02d", Integer.valueOf(i3 % 60)) + ":" + str2;
            int i4 = i3 / 60;
            if (i4 <= 0) {
                return str3;
            }
            return String.format(locale, "%02d", Integer.valueOf(i4 % 60)) + ":" + str3;
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX INFO: renamed from: b */
    public static a m641b(int i2, int i3, C0129h c0129h) {
        Bitmap bitmapM624f;
        if (c0129h.m488o() && C0015d.m49K(i2, 1)) {
            String strM491r = c0129h.m491r();
            try {
                try {
                    if ("apks".equals(C0015d.m91s(strM491r))) {
                        bitmapM624f = C0223a.m623e(i3, strM491r);
                    } else {
                        bitmapM624f = C0223a.m624f(strM491r);
                        if (bitmapM624f != null) {
                            try {
                                if (bitmapM624f.getWidth() <= i3) {
                                    bitmapM624f = Bitmap.createScaledBitmap(bitmapM624f, i3, i3, true);
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                } catch (OutOfMemoryError unused2) {
                    return null;
                }
            } catch (Exception unused3) {
                bitmapM624f = null;
            }
            if (bitmapM624f != null) {
                return new a(bitmapM624f, null, null);
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public static a m642c(C0129h c0129h, int i2, int i3, byte[] bArr) throws Throwable {
        int[] iArr;
        String[] strArr;
        InputStream inputStreamMo430w;
        InputStream inputStream = null;
        if (C0015d.m49K(i2, 2)) {
            iArr = new int[]{R.string.FINFO_BOOK_AUTOR, R.string.FINFO_BOOK_TITLE, R.string.FINFO_MEDIA_GENRE};
            strArr = new String[3];
        } else if (C0015d.m49K(i2, 4)) {
            iArr = new int[]{R.string.FINFO_BOOK_TITLE};
            strArr = new String[1];
        } else {
            iArr = null;
            strArr = null;
        }
        String strM478e = c0129h.m478e();
        try {
            if (c0129h.m480g()) {
                NArc nArcM269c = C0079a.m266m().m269c();
                if (nArcM269c == null) {
                    return null;
                }
                inputStreamMo430w = nArcM269c.m815h(C0015d.m79i0(-1, c0129h.f1016d), c0129h.f1017e);
            } else {
                inputStreamMo430w = c0129h.m486m() ? AbstractC0127f.m463u(c0129h).mo430w() : AbstractC0127f.m463u(c0129h).mo430w();
            }
            try {
                try {
                    if (inputStreamMo430w == null) {
                        c0129h.m478e();
                        C0181d.m563d(inputStreamMo430w);
                        return null;
                    }
                    C0014c c0014c = new C0014c(1);
                    c0014c.m38b(inputStreamMo430w, C0015d.m91s(strM478e), true);
                    byte[] bArr2 = (byte[]) c0014c.f113e;
                    Bitmap bitmapM633c = bArr2 != null ? C0224b.m633c(bArr2, i3, bArr) : null;
                    if (iArr != null) {
                        if (iArr.length > 1) {
                            strArr[0] = c0014c.m37a(0);
                            strArr[1] = c0014c.m37a(2);
                            strArr[2] = c0014c.m37a(3);
                        } else {
                            String strM37a = c0014c.m37a(1);
                            String strM37a2 = c0014c.m37a(2);
                            if (strM37a2 != null || strM37a != null) {
                                StringBuilder sb = new StringBuilder();
                                if (strM37a != null) {
                                    sb.append(strM37a);
                                    if (strM37a2 != null) {
                                        sb.append(" - ");
                                        sb.append(strM37a2);
                                    }
                                } else {
                                    sb.append(strM37a2);
                                }
                                strArr[0] = sb.toString();
                            }
                        }
                    }
                    if (bitmapM633c != null || iArr != null) {
                        a aVar = new a(bitmapM633c, iArr, strArr);
                        C0181d.m563d(inputStreamMo430w);
                        return aVar;
                    }
                    C0181d.m563d(inputStreamMo430w);
                    return null;
                } catch (Throwable th) {
                    th = th;
                    inputStream = inputStreamMo430w;
                    C0181d.m563d(inputStream);
                    throw th;
                }
            } catch (Exception | OutOfMemoryError unused) {
            }
        } catch (Exception | OutOfMemoryError unused2) {
            inputStreamMo430w = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x0183 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:154:0x0228 A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, Exception | OutOfMemoryError -> 0x0162, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:156:0x022d A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, Exception | OutOfMemoryError -> 0x0162, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:157:0x023b  */
    /* JADX WARN: Code duplicated, block: B:159:0x0241  */
    /* JADX WARN: Code duplicated, block: B:162:0x0258 A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, Exception | OutOfMemoryError -> 0x0162, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:165:0x0261 A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, Exception | OutOfMemoryError -> 0x0162, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:166:0x0265 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:167:0x0267 A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, Exception | OutOfMemoryError -> 0x0162, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:168:0x0270 A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, Exception | OutOfMemoryError -> 0x0162, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:170:0x0276 A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, Exception | OutOfMemoryError -> 0x0162, TRY_LEAVE, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:180:0x0292  */
    /* JADX WARN: Code duplicated, block: B:181:0x0294 A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, Exception | OutOfMemoryError -> 0x0162, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:186:0x02b9 A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, Exception | OutOfMemoryError -> 0x0162, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:188:0x02ca A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, Exception | OutOfMemoryError -> 0x0162, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:189:0x02cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:190:0x02d1 A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, Exception | OutOfMemoryError -> 0x0162, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:191:0x02e2 A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, Exception | OutOfMemoryError -> 0x0162, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:193:0x02e8 A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, Exception | OutOfMemoryError -> 0x0162, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:196:0x02f2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:198:0x02f6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:74:0x00ff A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x010b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:86:0x0121 A[Catch: all -> 0x0104, Exception | OutOfMemoryError -> 0x0162, Exception | OutOfMemoryError -> 0x0162, TryCatch #3 {all -> 0x0104, blocks: (B:72:0x00f9, B:74:0x00ff, B:81:0x010f, B:84:0x0119, B:86:0x0121, B:88:0x0127, B:103:0x0155, B:109:0x016a, B:91:0x0136, B:94:0x013c, B:118:0x0185, B:121:0x018d, B:133:0x01bf, B:136:0x01d1, B:137:0x01e6, B:139:0x01ea, B:142:0x01ff, B:144:0x0205, B:146:0x020b, B:152:0x0222, B:154:0x0228, B:156:0x022d, B:160:0x0243, B:162:0x0258, B:163:0x025c, B:165:0x0261, B:178:0x028d, B:181:0x0294, B:183:0x0299, B:184:0x02b2, B:186:0x02b9, B:188:0x02ca, B:190:0x02d1, B:191:0x02e2, B:193:0x02e8, B:194:0x02eb, B:199:0x02f8, B:200:0x02fd, B:167:0x0267, B:168:0x0270, B:170:0x0276, B:177:0x028a, B:148:0x0214, B:150:0x0219, B:122:0x0193, B:125:0x0199, B:127:0x01a3, B:128:0x01ae, B:129:0x01b4), top: B:212:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0134 A[ADDED_TO_REGION] */
    /* JADX INFO: renamed from: d */
    public static a m643d(C0129h c0129h, long j2, int i2, int i3, byte[] bArr) throws Throwable {
        String[] strArr;
        int[] iArr;
        ParcelFileDescriptor parcelFileDescriptor;
        InputStream inputStreamMo430w;
        ParcelFileDescriptor parcelFileDescriptorMo429v;
        ParcelFileDescriptor parcelFileDescriptorMo429v2;
        String strM491r;
        boolean zM47I;
        Bitmap bitmapM636f;
        int i4;
        BitmapFactory.Options options;
        BufferedInputStream bufferedInputStream;
        a aVar;
        C0226d c0226d;
        int i5;
        Bitmap bitmapM644e;
        BufferedInputStream bufferedInputStream2;
        InputStream inputStream = null;
        if (C0015d.m49K(i2, 2)) {
            iArr = new int[]{R.string.FINFO_IMAGE_SIZE, R.string.FINFO_IMAGE_CAMERA_MAKE, R.string.FINFO_IMAGE_CAMERA_MODEL};
            strArr = new String[3];
        } else if (C0015d.m49K(i2, 4)) {
            iArr = new int[]{R.string.FINFO_IMAGE_SIZE};
            strArr = new String[1];
        } else {
            strArr = null;
            iArr = null;
        }
        String strM478e = c0129h.m478e();
        try {
            try {
                if (c0129h.m484k()) {
                    try {
                        try {
                            if (!C0015d.m49K(AbstractC0126e.m452c(c0129h), 1)) {
                                if (!C0015d.m49K(i2, 1)) {
                                    return null;
                                }
                                try {
                                    parcelFileDescriptorMo429v = AbstractC0127f.m463u(c0129h).mo429v(36864);
                                    try {
                                        Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptorMo429v.getFileDescriptor());
                                        if (bitmapDecodeFileDescriptor != null) {
                                            a aVar2 = new a(bitmapDecodeFileDescriptor, iArr, strArr);
                                            C0181d.m562c(parcelFileDescriptorMo429v);
                                            return aVar2;
                                        }
                                    } catch (Exception unused) {
                                    } catch (Throwable th) {
                                        th = th;
                                        C0181d.m562c(parcelFileDescriptorMo429v);
                                        throw th;
                                    }
                                } catch (Exception unused2) {
                                    parcelFileDescriptorMo429v = null;
                                } catch (Throwable th2) {
                                    th = th2;
                                    parcelFileDescriptorMo429v = null;
                                }
                                C0181d.m562c(parcelFileDescriptorMo429v);
                                return null;
                            }
                        } catch (Exception | OutOfMemoryError unused3) {
                            inputStreamMo430w = null;
                            parcelFileDescriptor = null;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        parcelFileDescriptor = null;
                        C0181d.m563d(inputStream);
                        C0181d.m562c(parcelFileDescriptor);
                        throw th;
                    }
                }
                if (c0129h.m480g()) {
                    NArc nArcM269c = C0079a.m266m().m269c();
                    if (nArcM269c == null) {
                        return null;
                    }
                    inputStreamMo430w = nArcM269c.m815h(C0015d.m79i0(-1, c0129h.f1016d), c0129h.f1017e);
                } else {
                    if (!c0129h.m486m()) {
                        if (Build.VERSION.SDK_INT >= 24 || strArr == null || strArr.length == 1 || !c0129h.m483j()) {
                            try {
                                parcelFileDescriptorMo429v2 = AbstractC0127f.m463u(c0129h).mo429v(268435456);
                            } catch (Exception unused4) {
                                parcelFileDescriptorMo429v2 = null;
                            }
                            if (parcelFileDescriptorMo429v2 != null) {
                                try {
                                    if (Os.lseek(parcelFileDescriptorMo429v2.getFileDescriptor(), 0L, OsConstants.SEEK_SET) != 0) {
                                        throw new Exception("Seek error! Unsupported path!");
                                    }
                                } catch (Exception | OutOfMemoryError unused5) {
                                    parcelFileDescriptor = parcelFileDescriptorMo429v2;
                                    inputStreamMo430w = null;
                                } catch (Throwable th4) {
                                    th = th4;
                                    parcelFileDescriptor = parcelFileDescriptorMo429v2;
                                    C0181d.m563d(inputStream);
                                    C0181d.m562c(parcelFileDescriptor);
                                    throw th;
                                }
                            }
                            parcelFileDescriptor = parcelFileDescriptorMo429v2;
                            inputStreamMo430w = null;
                        } else {
                            inputStreamMo430w = null;
                            parcelFileDescriptor = null;
                        }
                        if (inputStreamMo430w == null && parcelFileDescriptor == null) {
                            try {
                                try {
                                    if (c0129h.m483j()) {
                                        strM491r = c0129h.m491r();
                                    }
                                    if (inputStreamMo430w != null && parcelFileDescriptor == null && strM491r == null) {
                                        c0129h.m478e();
                                        C0181d.m563d(inputStreamMo430w);
                                        C0181d.m562c(parcelFileDescriptor);
                                        return null;
                                    }
                                    zM47I = C0015d.m47I(strM478e);
                                    if (inputStreamMo430w != null && !inputStreamMo430w.markSupported()) {
                                        boolean zM480g = c0129h.m480g();
                                        if ((j2 <= 2097152 || zM480g) && Build.VERSION.SDK_INT >= 24 && zM47I) {
                                            bufferedInputStream2 = new BufferedInputStream(inputStreamMo430w, 131072);
                                            try {
                                                bufferedInputStream2.mark(5242880);
                                                inputStreamMo430w = bufferedInputStream2;
                                            } catch (Exception | OutOfMemoryError unused6) {
                                                inputStreamMo430w = bufferedInputStream2;
                                            } catch (Throwable th5) {
                                                th = th5;
                                                inputStream = bufferedInputStream2;
                                                C0181d.m563d(inputStream);
                                                C0181d.m562c(parcelFileDescriptor);
                                                throw th;
                                            }
                                        } else if ((j2 > 131072 || zM480g) && C0015d.m54P(strM478e)) {
                                            if (j2 <= 5242880) {
                                                BufferedInputStream bufferedInputStream3 = new BufferedInputStream(inputStreamMo430w, ((int) j2) + 1);
                                                try {
                                                    bufferedInputStream3.mark(5242880);
                                                    inputStreamMo430w = bufferedInputStream3;
                                                } catch (Exception | OutOfMemoryError unused7) {
                                                    inputStreamMo430w = bufferedInputStream3;
                                                } catch (Throwable th6) {
                                                    th = th6;
                                                    inputStream = bufferedInputStream3;
                                                    C0181d.m563d(inputStream);
                                                    C0181d.m562c(parcelFileDescriptor);
                                                    throw th;
                                                }
                                            }
                                            C0181d.m563d(inputStreamMo430w);
                                            C0181d.m562c(parcelFileDescriptor);
                                            return null;
                                        }
                                    }
                                    if (zM47I || !(inputStreamMo430w == null || inputStreamMo430w.markSupported())) {
                                        bitmapM636f = null;
                                        i4 = 0;
                                        options = new BitmapFactory.Options();
                                        options.inTempStorage = bArr;
                                        if (!"png".equals(C0015d.m91s(strM478e))) {
                                            options.inPreferredConfig = Bitmap.Config.RGB_565;
                                        }
                                        options.inJustDecodeBounds = true;
                                        if (strM491r != null) {
                                            BitmapFactory.decodeFile(strM491r, options);
                                        } else if (parcelFileDescriptor != null) {
                                            BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                                        } else {
                                            if (!inputStreamMo430w.markSupported()) {
                                                bufferedInputStream = new BufferedInputStream(inputStreamMo430w, 131072);
                                                try {
                                                    bufferedInputStream.mark(131072);
                                                    inputStreamMo430w = bufferedInputStream;
                                                } catch (Exception | OutOfMemoryError unused8) {
                                                    inputStreamMo430w = bufferedInputStream;
                                                } catch (Throwable th7) {
                                                    th = th7;
                                                    inputStream = bufferedInputStream;
                                                    C0181d.m563d(inputStream);
                                                    C0181d.m562c(parcelFileDescriptor);
                                                    throw th;
                                                }
                                            }
                                            BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                                        }
                                        if (options.outWidth != -1) {
                                            if (strArr != null && strArr[0] == null) {
                                                strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                                            }
                                            if (C0015d.m49K(i2, 1)) {
                                                options.inJustDecodeBounds = false;
                                                options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                                                if (strM491r != null) {
                                                    bitmapM636f = BitmapFactory.decodeFile(strM491r, options);
                                                } else if (parcelFileDescriptor != null) {
                                                    FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
                                                    Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_SET);
                                                    bitmapM636f = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                                                } else {
                                                    if (inputStreamMo430w.markSupported()) {
                                                        inputStreamMo430w.reset();
                                                    }
                                                    bitmapM636f = BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                                                }
                                            }
                                        }
                                        if (bitmapM636f == null || iArr != null) {
                                            if (i4 != 0 && bitmapM636f != null) {
                                                bitmapM636f = C0224b.m636f(bitmapM636f, i4);
                                            }
                                            aVar = new a(bitmapM636f, iArr, strArr);
                                        }
                                        C0181d.m563d(inputStreamMo430w);
                                        C0181d.m562c(parcelFileDescriptor);
                                        return null;
                                    }
                                    if (strM491r != null) {
                                        c0226d = new C0226d(strM491r);
                                    } else {
                                        int i6 = Build.VERSION.SDK_INT;
                                        if (i6 < 24) {
                                            c0226d = null;
                                        } else if (parcelFileDescriptor != null) {
                                            int i7 = C0226d.f1273b;
                                            FileDescriptor fileDescriptor2 = parcelFileDescriptor.getFileDescriptor();
                                            c0226d = i6 < 28 ? new C0226d(new FileInputStream(fileDescriptor2)) : new C0226d(fileDescriptor2);
                                        } else {
                                            c0226d = new C0226d(inputStreamMo430w);
                                        }
                                    }
                                    if (c0226d != null) {
                                        if (strArr != null) {
                                            int attributeInt = c0226d.getAttributeInt("ImageWidth", 0);
                                            int attributeInt2 = c0226d.getAttributeInt("ImageLength", 0);
                                            if (attributeInt > 0 && attributeInt2 > 0) {
                                                strArr[0] = "" + attributeInt + "x" + attributeInt2;
                                            }
                                            if (strArr.length > 1) {
                                                strArr[1] = c0226d.getAttribute("Make");
                                                strArr[2] = c0226d.getAttribute("Model");
                                                i5 = 1;
                                            } else {
                                                i5 = 1;
                                            }
                                        } else {
                                            i5 = 1;
                                        }
                                        if (C0015d.m49K(i2, i5)) {
                                            bitmapM644e = m644e(c0226d, i3, bArr);
                                            if (bitmapM644e != null) {
                                                aVar = new a(bitmapM644e, iArr, strArr);
                                            } else {
                                                int iM647h = m647h(c0226d);
                                                if (inputStreamMo430w != null) {
                                                    inputStreamMo430w.reset();
                                                }
                                                if (parcelFileDescriptor != null) {
                                                    Os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                                                }
                                                i4 = iM647h;
                                                bitmapM636f = bitmapM644e;
                                            }
                                        } else if (strArr == null || strArr[0] != null) {
                                            bitmapM644e = null;
                                            int iM647h2 = m647h(c0226d);
                                            if (inputStreamMo430w != null) {
                                                inputStreamMo430w.reset();
                                            }
                                            if (parcelFileDescriptor != null) {
                                                Os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                                            }
                                            i4 = iM647h2;
                                            bitmapM636f = bitmapM644e;
                                        } else {
                                            aVar = new a(null, iArr, strArr);
                                        }
                                    } else {
                                        bitmapM636f = null;
                                        i4 = 0;
                                    }
                                    options = new BitmapFactory.Options();
                                    options.inTempStorage = bArr;
                                    if (!"png".equals(C0015d.m91s(strM478e))) {
                                        options.inPreferredConfig = Bitmap.Config.RGB_565;
                                    }
                                    options.inJustDecodeBounds = true;
                                    if (strM491r != null) {
                                        BitmapFactory.decodeFile(strM491r, options);
                                    } else if (parcelFileDescriptor != null) {
                                        BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                                    } else {
                                        if (!inputStreamMo430w.markSupported()) {
                                            bufferedInputStream = new BufferedInputStream(inputStreamMo430w, 131072);
                                            bufferedInputStream.mark(131072);
                                            inputStreamMo430w = bufferedInputStream;
                                        }
                                        BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                                    }
                                    if (options.outWidth != -1) {
                                        if (strArr != null) {
                                            strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                                        }
                                        if (C0015d.m49K(i2, 1)) {
                                            options.inJustDecodeBounds = false;
                                            options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                                            if (strM491r != null) {
                                                bitmapM636f = BitmapFactory.decodeFile(strM491r, options);
                                            } else if (parcelFileDescriptor != null) {
                                                FileDescriptor fileDescriptor3 = parcelFileDescriptor.getFileDescriptor();
                                                Os.lseek(fileDescriptor3, 0L, OsConstants.SEEK_SET);
                                                bitmapM636f = BitmapFactory.decodeFileDescriptor(fileDescriptor3, null, options);
                                            } else {
                                                if (inputStreamMo430w.markSupported()) {
                                                    inputStreamMo430w.reset();
                                                }
                                                bitmapM636f = BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                                            }
                                        }
                                    }
                                    if (bitmapM636f == null) {
                                    }
                                    if (i4 != 0) {
                                        bitmapM636f = C0224b.m636f(bitmapM636f, i4);
                                    }
                                    aVar = new a(bitmapM636f, iArr, strArr);
                                    C0181d.m563d(inputStreamMo430w);
                                    C0181d.m562c(parcelFileDescriptor);
                                    return aVar;
                                } catch (Throwable th8) {
                                    th = th8;
                                    inputStream = inputStreamMo430w;
                                    C0181d.m563d(inputStream);
                                    C0181d.m562c(parcelFileDescriptor);
                                    throw th;
                                }
                            } catch (Exception | OutOfMemoryError unused9) {
                            }
                        }
                        strM491r = null;
                        if (inputStreamMo430w != null) {
                        }
                        zM47I = C0015d.m47I(strM478e);
                        if (inputStreamMo430w != null) {
                            boolean zM480g2 = c0129h.m480g();
                            if (j2 <= 2097152) {
                            }
                            bufferedInputStream2 = new BufferedInputStream(inputStreamMo430w, 131072);
                            bufferedInputStream2.mark(5242880);
                            inputStreamMo430w = bufferedInputStream2;
                        }
                        if (zM47I) {
                            bitmapM636f = null;
                            i4 = 0;
                            options = new BitmapFactory.Options();
                            options.inTempStorage = bArr;
                            if (!"png".equals(C0015d.m91s(strM478e))) {
                                options.inPreferredConfig = Bitmap.Config.RGB_565;
                            }
                            options.inJustDecodeBounds = true;
                            if (strM491r != null) {
                                BitmapFactory.decodeFile(strM491r, options);
                            } else if (parcelFileDescriptor != null) {
                                BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                            } else {
                                if (!inputStreamMo430w.markSupported()) {
                                    bufferedInputStream = new BufferedInputStream(inputStreamMo430w, 131072);
                                    bufferedInputStream.mark(131072);
                                    inputStreamMo430w = bufferedInputStream;
                                }
                                BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                            }
                            if (options.outWidth != -1) {
                                if (strArr != null) {
                                    strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                                }
                                if (C0015d.m49K(i2, 1)) {
                                    options.inJustDecodeBounds = false;
                                    options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                                    if (strM491r != null) {
                                        bitmapM636f = BitmapFactory.decodeFile(strM491r, options);
                                    } else if (parcelFileDescriptor != null) {
                                        FileDescriptor fileDescriptor4 = parcelFileDescriptor.getFileDescriptor();
                                        Os.lseek(fileDescriptor4, 0L, OsConstants.SEEK_SET);
                                        bitmapM636f = BitmapFactory.decodeFileDescriptor(fileDescriptor4, null, options);
                                    } else {
                                        if (inputStreamMo430w.markSupported()) {
                                            inputStreamMo430w.reset();
                                        }
                                        bitmapM636f = BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                                    }
                                }
                            }
                            if (bitmapM636f == null) {
                            }
                            if (i4 != 0) {
                                bitmapM636f = C0224b.m636f(bitmapM636f, i4);
                            }
                            aVar = new a(bitmapM636f, iArr, strArr);
                        } else {
                            bitmapM636f = null;
                            i4 = 0;
                            options = new BitmapFactory.Options();
                            options.inTempStorage = bArr;
                            if (!"png".equals(C0015d.m91s(strM478e))) {
                                options.inPreferredConfig = Bitmap.Config.RGB_565;
                            }
                            options.inJustDecodeBounds = true;
                            if (strM491r != null) {
                                BitmapFactory.decodeFile(strM491r, options);
                            } else if (parcelFileDescriptor != null) {
                                BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                            } else {
                                if (!inputStreamMo430w.markSupported()) {
                                    bufferedInputStream = new BufferedInputStream(inputStreamMo430w, 131072);
                                    bufferedInputStream.mark(131072);
                                    inputStreamMo430w = bufferedInputStream;
                                }
                                BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                            }
                            if (options.outWidth != -1) {
                                if (strArr != null) {
                                    strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                                }
                                if (C0015d.m49K(i2, 1)) {
                                    options.inJustDecodeBounds = false;
                                    options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                                    if (strM491r != null) {
                                        bitmapM636f = BitmapFactory.decodeFile(strM491r, options);
                                    } else if (parcelFileDescriptor != null) {
                                        FileDescriptor fileDescriptor5 = parcelFileDescriptor.getFileDescriptor();
                                        Os.lseek(fileDescriptor5, 0L, OsConstants.SEEK_SET);
                                        bitmapM636f = BitmapFactory.decodeFileDescriptor(fileDescriptor5, null, options);
                                    } else {
                                        if (inputStreamMo430w.markSupported()) {
                                            inputStreamMo430w.reset();
                                        }
                                        bitmapM636f = BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                                    }
                                }
                            }
                            if (bitmapM636f == null) {
                            }
                            if (i4 != 0) {
                                bitmapM636f = C0224b.m636f(bitmapM636f, i4);
                            }
                            aVar = new a(bitmapM636f, iArr, strArr);
                        }
                        C0181d.m563d(inputStreamMo430w);
                        C0181d.m562c(parcelFileDescriptor);
                        return aVar;
                    }
                    inputStreamMo430w = AbstractC0127f.m463u(c0129h).mo430w();
                }
                parcelFileDescriptor = null;
                if (inputStreamMo430w == null) {
                    if (c0129h.m483j()) {
                        strM491r = c0129h.m491r();
                    }
                    if (inputStreamMo430w != null) {
                    }
                    zM47I = C0015d.m47I(strM478e);
                    if (inputStreamMo430w != null) {
                        boolean zM480g3 = c0129h.m480g();
                        if (j2 <= 2097152) {
                        }
                        bufferedInputStream2 = new BufferedInputStream(inputStreamMo430w, 131072);
                        bufferedInputStream2.mark(5242880);
                        inputStreamMo430w = bufferedInputStream2;
                    }
                    if (zM47I) {
                        bitmapM636f = null;
                        i4 = 0;
                        options = new BitmapFactory.Options();
                        options.inTempStorage = bArr;
                        if (!"png".equals(C0015d.m91s(strM478e))) {
                            options.inPreferredConfig = Bitmap.Config.RGB_565;
                        }
                        options.inJustDecodeBounds = true;
                        if (strM491r != null) {
                            BitmapFactory.decodeFile(strM491r, options);
                        } else if (parcelFileDescriptor != null) {
                            BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                        } else {
                            if (!inputStreamMo430w.markSupported()) {
                                bufferedInputStream = new BufferedInputStream(inputStreamMo430w, 131072);
                                bufferedInputStream.mark(131072);
                                inputStreamMo430w = bufferedInputStream;
                            }
                            BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                        }
                        if (options.outWidth != -1) {
                            if (strArr != null) {
                                strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                            }
                            if (C0015d.m49K(i2, 1)) {
                                options.inJustDecodeBounds = false;
                                options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                                if (strM491r != null) {
                                    bitmapM636f = BitmapFactory.decodeFile(strM491r, options);
                                } else if (parcelFileDescriptor != null) {
                                    FileDescriptor fileDescriptor6 = parcelFileDescriptor.getFileDescriptor();
                                    Os.lseek(fileDescriptor6, 0L, OsConstants.SEEK_SET);
                                    bitmapM636f = BitmapFactory.decodeFileDescriptor(fileDescriptor6, null, options);
                                } else {
                                    if (inputStreamMo430w.markSupported()) {
                                        inputStreamMo430w.reset();
                                    }
                                    bitmapM636f = BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                                }
                            }
                        }
                        if (bitmapM636f == null) {
                        }
                        if (i4 != 0) {
                            bitmapM636f = C0224b.m636f(bitmapM636f, i4);
                        }
                        aVar = new a(bitmapM636f, iArr, strArr);
                    } else {
                        bitmapM636f = null;
                        i4 = 0;
                        options = new BitmapFactory.Options();
                        options.inTempStorage = bArr;
                        if (!"png".equals(C0015d.m91s(strM478e))) {
                            options.inPreferredConfig = Bitmap.Config.RGB_565;
                        }
                        options.inJustDecodeBounds = true;
                        if (strM491r != null) {
                            BitmapFactory.decodeFile(strM491r, options);
                        } else if (parcelFileDescriptor != null) {
                            BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                        } else {
                            if (!inputStreamMo430w.markSupported()) {
                                bufferedInputStream = new BufferedInputStream(inputStreamMo430w, 131072);
                                bufferedInputStream.mark(131072);
                                inputStreamMo430w = bufferedInputStream;
                            }
                            BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                        }
                        if (options.outWidth != -1) {
                            if (strArr != null) {
                                strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                            }
                            if (C0015d.m49K(i2, 1)) {
                                options.inJustDecodeBounds = false;
                                options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                                if (strM491r != null) {
                                    bitmapM636f = BitmapFactory.decodeFile(strM491r, options);
                                } else if (parcelFileDescriptor != null) {
                                    FileDescriptor fileDescriptor7 = parcelFileDescriptor.getFileDescriptor();
                                    Os.lseek(fileDescriptor7, 0L, OsConstants.SEEK_SET);
                                    bitmapM636f = BitmapFactory.decodeFileDescriptor(fileDescriptor7, null, options);
                                } else {
                                    if (inputStreamMo430w.markSupported()) {
                                        inputStreamMo430w.reset();
                                    }
                                    bitmapM636f = BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                                }
                            }
                        }
                        if (bitmapM636f == null) {
                        }
                        if (i4 != 0) {
                            bitmapM636f = C0224b.m636f(bitmapM636f, i4);
                        }
                        aVar = new a(bitmapM636f, iArr, strArr);
                    }
                    C0181d.m563d(inputStreamMo430w);
                    C0181d.m562c(parcelFileDescriptor);
                    return aVar;
                }
                strM491r = null;
                if (inputStreamMo430w != null) {
                }
                zM47I = C0015d.m47I(strM478e);
                if (inputStreamMo430w != null) {
                    boolean zM480g4 = c0129h.m480g();
                    if (j2 <= 2097152) {
                    }
                    bufferedInputStream2 = new BufferedInputStream(inputStreamMo430w, 131072);
                    bufferedInputStream2.mark(5242880);
                    inputStreamMo430w = bufferedInputStream2;
                }
                if (zM47I) {
                    bitmapM636f = null;
                    i4 = 0;
                    options = new BitmapFactory.Options();
                    options.inTempStorage = bArr;
                    if (!"png".equals(C0015d.m91s(strM478e))) {
                        options.inPreferredConfig = Bitmap.Config.RGB_565;
                    }
                    options.inJustDecodeBounds = true;
                    if (strM491r != null) {
                        BitmapFactory.decodeFile(strM491r, options);
                    } else if (parcelFileDescriptor != null) {
                        BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                    } else {
                        if (!inputStreamMo430w.markSupported()) {
                            bufferedInputStream = new BufferedInputStream(inputStreamMo430w, 131072);
                            bufferedInputStream.mark(131072);
                            inputStreamMo430w = bufferedInputStream;
                        }
                        BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                    }
                    if (options.outWidth != -1) {
                        if (strArr != null) {
                            strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                        }
                        if (C0015d.m49K(i2, 1)) {
                            options.inJustDecodeBounds = false;
                            options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                            if (strM491r != null) {
                                bitmapM636f = BitmapFactory.decodeFile(strM491r, options);
                            } else if (parcelFileDescriptor != null) {
                                FileDescriptor fileDescriptor8 = parcelFileDescriptor.getFileDescriptor();
                                Os.lseek(fileDescriptor8, 0L, OsConstants.SEEK_SET);
                                bitmapM636f = BitmapFactory.decodeFileDescriptor(fileDescriptor8, null, options);
                            } else {
                                if (inputStreamMo430w.markSupported()) {
                                    inputStreamMo430w.reset();
                                }
                                bitmapM636f = BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                            }
                        }
                    }
                    if (bitmapM636f == null) {
                    }
                    if (i4 != 0) {
                        bitmapM636f = C0224b.m636f(bitmapM636f, i4);
                    }
                    aVar = new a(bitmapM636f, iArr, strArr);
                } else {
                    bitmapM636f = null;
                    i4 = 0;
                    options = new BitmapFactory.Options();
                    options.inTempStorage = bArr;
                    if (!"png".equals(C0015d.m91s(strM478e))) {
                        options.inPreferredConfig = Bitmap.Config.RGB_565;
                    }
                    options.inJustDecodeBounds = true;
                    if (strM491r != null) {
                        BitmapFactory.decodeFile(strM491r, options);
                    } else if (parcelFileDescriptor != null) {
                        BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
                    } else {
                        if (!inputStreamMo430w.markSupported()) {
                            bufferedInputStream = new BufferedInputStream(inputStreamMo430w, 131072);
                            bufferedInputStream.mark(131072);
                            inputStreamMo430w = bufferedInputStream;
                        }
                        BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                    }
                    if (options.outWidth != -1) {
                        if (strArr != null) {
                            strArr[0] = "" + options.outWidth + "x" + options.outHeight;
                        }
                        if (C0015d.m49K(i2, 1)) {
                            options.inJustDecodeBounds = false;
                            options.inSampleSize = Math.min(options.outWidth / i3, options.outHeight / i3);
                            if (strM491r != null) {
                                bitmapM636f = BitmapFactory.decodeFile(strM491r, options);
                            } else if (parcelFileDescriptor != null) {
                                FileDescriptor fileDescriptor9 = parcelFileDescriptor.getFileDescriptor();
                                Os.lseek(fileDescriptor9, 0L, OsConstants.SEEK_SET);
                                bitmapM636f = BitmapFactory.decodeFileDescriptor(fileDescriptor9, null, options);
                            } else {
                                if (inputStreamMo430w.markSupported()) {
                                    inputStreamMo430w.reset();
                                }
                                bitmapM636f = BitmapFactory.decodeStream(inputStreamMo430w, null, options);
                            }
                        }
                    }
                    if (bitmapM636f == null) {
                    }
                    if (i4 != 0) {
                        bitmapM636f = C0224b.m636f(bitmapM636f, i4);
                    }
                    aVar = new a(bitmapM636f, iArr, strArr);
                }
                C0181d.m563d(inputStreamMo430w);
                C0181d.m562c(parcelFileDescriptor);
                return aVar;
            } catch (Exception | OutOfMemoryError unused10) {
                inputStreamMo430w = null;
                parcelFileDescriptor = null;
            }
        } catch (Throwable th9) {
            th = th9;
            inputStream = null;
            parcelFileDescriptor = null;
        }
    }

    /* JADX INFO: renamed from: e */
    public static Bitmap m644e(C0226d c0226d, int i2, byte[] bArr) {
        byte[] thumbnail;
        int iM647h;
        try {
            if (!c0226d.hasThumbnail() || (thumbnail = c0226d.getThumbnail()) == null) {
                return null;
            }
            Bitmap bitmapM633c = C0224b.m633c(thumbnail, i2, bArr);
            return (bitmapM633c == null || (iM647h = m647h(c0226d)) == 0) ? bitmapM633c : C0224b.m636f(bitmapM633c, iM647h);
        } catch (Exception unused) {
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:262:0x0410 A[PHI: r14
      0x0410: PHI (r14v20 java.io.InputStream) = (r14v17 java.io.InputStream), (r14v26 java.io.InputStream) binds: [B:220:0x035b, B:241:0x03a6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:264:0x0413 A[Catch: all -> 0x03a2, Exception | OutOfMemoryError -> 0x047e, TRY_LEAVE, TryCatch #2 {all -> 0x03a2, blocks: (B:206:0x032f, B:221:0x035d, B:230:0x037e, B:243:0x03aa, B:246:0x03af, B:250:0x03c3, B:252:0x03ca, B:254:0x03e4, B:256:0x03fe, B:258:0x0401, B:260:0x0406, B:261:0x040a, B:264:0x0413, B:247:0x03b6, B:233:0x038d, B:235:0x0393, B:237:0x039b, B:227:0x036e), top: B:387:0x032f }] */
    /* JADX WARN: Code duplicated, block: B:272:0x0424  */
    /* JADX WARN: Code duplicated, block: B:274:0x0427 A[Catch: all -> 0x0422, Exception | OutOfMemoryError -> 0x048d, TryCatch #32 {Exception | OutOfMemoryError -> 0x048d, all -> 0x0422, blocks: (B:278:0x0431, B:280:0x0435, B:282:0x043d, B:283:0x046f, B:265:0x0418, B:267:0x041c, B:274:0x0427), top: B:413:0x0418 }] */
    /* JADX WARN: Code duplicated, block: B:275:0x042c  */
    /* JADX WARN: Code duplicated, block: B:277:0x042f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:282:0x043d A[Catch: all -> 0x0422, Exception | OutOfMemoryError -> 0x048d, TryCatch #32 {Exception | OutOfMemoryError -> 0x048d, all -> 0x0422, blocks: (B:278:0x0431, B:280:0x0435, B:282:0x043d, B:283:0x046f, B:265:0x0418, B:267:0x041c, B:274:0x0427), top: B:413:0x0418 }] */
    /* JADX WARN: Code duplicated, block: B:283:0x046f A[Catch: all -> 0x0422, Exception | OutOfMemoryError -> 0x048d, TRY_LEAVE, TryCatch #32 {Exception | OutOfMemoryError -> 0x048d, all -> 0x0422, blocks: (B:278:0x0431, B:280:0x0435, B:282:0x043d, B:283:0x046f, B:265:0x0418, B:267:0x041c, B:274:0x0427), top: B:413:0x0418 }] */
    /* JADX WARN: Code duplicated, block: B:297:0x0495 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:343:0x055e  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b4 A[Catch: all -> 0x0100, Exception -> 0x010e, TryCatch #15 {all -> 0x0100, blocks: (B:25:0x004b, B:27:0x0058, B:29:0x005e, B:33:0x007c, B:35:0x0082, B:36:0x008d, B:48:0x00a7, B:50:0x00b4, B:53:0x00c4, B:54:0x00da, B:56:0x00e9, B:39:0x0091, B:41:0x0097, B:42:0x009b, B:30:0x0067), top: B:399:0x004b }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00e9 A[Catch: all -> 0x0100, Exception -> 0x010e, TRY_LEAVE, TryCatch #15 {all -> 0x0100, blocks: (B:25:0x004b, B:27:0x0058, B:29:0x005e, B:33:0x007c, B:35:0x0082, B:36:0x008d, B:48:0x00a7, B:50:0x00b4, B:53:0x00c4, B:54:0x00da, B:56:0x00e9, B:39:0x0091, B:41:0x0097, B:42:0x009b, B:30:0x0067), top: B:399:0x004b }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0126 A[Catch: Exception -> 0x017b, TryCatch #26 {Exception -> 0x017b, blocks: (B:21:0x0040, B:74:0x0126, B:76:0x012c, B:78:0x0132, B:82:0x0175, B:69:0x0110, B:64:0x0106, B:65:0x0109, B:70:0x0114, B:72:0x011a), top: B:407:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0170  */
    /* JADX WARN: Code duplicated, block: B:81:0x0173 A[ADDED_TO_REGION] */
    /* JADX WARN: Instruction removed from duplicated block: B:282:0x043d, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:56:0x00e9, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v44 */
    /* JADX WARN: Type inference failed for: r4v45 */
    /* JADX WARN: Type inference failed for: r4v46 */
    /* JADX WARN: Type inference failed for: r4v47 */
    /* JADX WARN: Type inference failed for: r4v48 */
    /* JADX WARN: Type inference failed for: r4v50 */
    /* JADX WARN: Type inference failed for: r4v52 */
    /* JADX WARN: Type inference failed for: r4v53 */
    /* JADX WARN: Type inference failed for: r4v55, types: [int[]] */
    /* JADX WARN: Type inference failed for: r4v56 */
    /* JADX WARN: Type inference failed for: r4v72 */
    /* JADX WARN: Type inference failed for: r4v73 */
    /* JADX INFO: renamed from: f */
    public static a m645f(C0129h c0129h, long j2, int i2, int i3, int i4, byte[] bArr) {
        int[] iArr;
        String[] strArr;
        String str;
        String strSubstring;
        PackageInfo packageInfo;
        Bitmap bitmapM1163d;
        String strSubstring2;
        String[] strArr2;
        int[] iArr2;
        InputStream inputStreamM649j;
        Bitmap bitmapM622d;
        C0160a c0160a;
        String strM491r;
        InputStream inputStream;
        C0160a c0160a2;
        C0169a c0169a;
        boolean z2;
        PackageManager packageManager;
        PackageInfo packageArchiveInfo;
        Drawable drawableLoadIcon;
        C0412c.a aVarM1111e;
        C0169a c0169a2;
        MediaMetadataRetriever mediaMetadataRetriever;
        MediaMetadataRetriever mediaMetadataRetriever2;
        int[] iArr3;
        String[] strArr3;
        byte[] embeddedPicture;
        ParcelFileDescriptor parcelFileDescriptorM648i;
        PdfRenderer pdfRenderer;
        PdfRenderer pdfRenderer2;
        int i5;
        boolean z3;
        MediaMetadataRetriever mediaMetadataRetriever3;
        Bitmap scaledFrameAtTime;
        String[] strArr4;
        int i6;
        String strExtractMetadata;
        String strExtractMetadata2;
        long jM81j0;
        ?? r4 = i3;
        boolean z4 = true;
        if (i2 == 4) {
            if (C0015d.m50L(r4 == true ? 1 : 0, 6)) {
                iArr = new int[]{R.string.FINFO_APK_NAME};
                strArr = new String[1];
            } else {
                iArr = null;
                strArr = null;
            }
            try {
                PackageManager packageManager2 = ZApp.m722e().getPackageManager();
                String strM491r2 = c0129h.m491r();
                int i7 = Build.VERSION.SDK_INT;
                if (i7 >= 30 && strM491r2.startsWith("/data/app")) {
                    if (i7 >= 34) {
                        AbstractC0194a abstractC0194aM589c = AbstractC0194a.m589c(0);
                        ArrayList<String> arrayListM519b = C0154g.m519b(strM491r2, abstractC0194aM589c);
                        C0181d.m563d(abstractC0194aM589c);
                        strSubstring2 = arrayListM519b.isEmpty() ? null : arrayListM519b.get(0);
                    } else {
                        String[] list = new File(strM491r2).list();
                        if (list != null && list.length >= 1) {
                            strSubstring2 = list[0];
                        }
                    }
                    if (strSubstring2 != null) {
                        int iIndexOf = strSubstring2.indexOf(45);
                        if (iIndexOf > 0) {
                            strSubstring2 = strSubstring2.substring(0, iIndexOf);
                        }
                        strSubstring = strSubstring2;
                        str = null;
                    }
                    return null;
                }
                if (strM491r2.contains("/app/") || strM491r2.contains("/priv-app/")) {
                    String strM97y = C0015d.m97y(strM491r2);
                    if (strM97y.indexOf(45) <= 0) {
                        z4 = false;
                    }
                    if (z4) {
                        strM97y = "base";
                    }
                    str = strM491r2 + '/' + strM97y + ".apk";
                } else {
                    String strM97y2 = C0015d.m97y(strM491r2);
                    if (i7 <= 26) {
                        str = strM491r2 + '/' + strM97y2 + ".apk";
                        if (!C0181d.m569j(str)) {
                            str = null;
                        }
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        int iIndexOf2 = strM97y2.indexOf(45);
                        strSubstring = iIndexOf2 > 0 ? strM97y2.substring(0, iIndexOf2) : strM97y2;
                    }
                }
                strSubstring = null;
                if (str != null) {
                    packageInfo = packageManager2.getPackageArchiveInfo(str, 0);
                    if (packageInfo != null) {
                        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                        applicationInfo.sourceDir = str;
                        applicationInfo.publicSourceDir = str;
                    }
                } else {
                    packageInfo = packageManager2.getPackageInfo(strSubstring, 0);
                }
                if (packageInfo != null && (bitmapM1163d = C0438b.m1163d(C0438b.m1160a(4), packageInfo.applicationInfo.loadUnbadgedIcon(packageManager2))) != null) {
                    if (strArr != null) {
                        strArr[0] = packageManager2.getApplicationLabel(packageInfo.applicationInfo).toString();
                    }
                    return new a(bitmapM1163d, iArr, strArr);
                }
            } catch (Exception | OutOfMemoryError unused) {
            }
            return null;
        }
        if (i2 == 9) {
            return m643d(c0129h, j2, i3, i4, bArr);
        }
        if (i2 == 20) {
            return m641b(r4 == true ? 1 : 0, i4, c0129h);
        }
        if (i2 == 6) {
            C0160a c0160a3 = null;
            if (C0015d.m49K(r4 == true ? 1 : 0, 2)) {
                iArr2 = new int[]{R.string.FINFO_APK_NAME, R.string.FINFO_APK_VERSION, R.string.FINFO_APK_VERSION_CODE, R.string.FINFO_APK_SDK, R.string.FINFO_ARCHIVE_TYPE};
                strArr2 = new String[5];
            } else if (C0015d.m49K(r4 == true ? 1 : 0, 4)) {
                iArr2 = new int[]{R.string.FINFO_APK_VERSION};
                strArr2 = new String[1];
            } else {
                strArr2 = null;
                iArr2 = null;
            }
            try {
                try {
                    try {
                        if (c0129h.m483j()) {
                            strM491r = c0129h.m491r();
                            inputStreamM649j = null;
                        } else {
                            inputStreamM649j = m649j(c0129h, j2, iArr2 != null && iArr2.length > 1);
                            strM491r = null;
                        }
                        try {
                            try {
                                if (C0015d.m49K(r4 == true ? 1 : 0, 1)) {
                                    if (strM491r == null) {
                                        bitmapM622d = null;
                                        if (inputStreamM649j != null) {
                                            c0160a = new C0160a(inputStreamM649j, 1);
                                            try {
                                                c0169a = c0160a.f1067d;
                                                if (c0169a != null || c0169a.f1102a == null) {
                                                    z2 = false;
                                                } else {
                                                    z2 = true;
                                                }
                                                if (z2) {
                                                    bitmapM622d = C0223a.m622d(c0160a, i4);
                                                }
                                            } catch (Exception | OutOfMemoryError unused2) {
                                            } catch (Throwable th) {
                                                th = th;
                                                inputStream = inputStreamM649j;
                                                c0160a2 = c0160a;
                                                C0160a c0160a4 = c0160a2;
                                                inputStreamM649j = inputStream;
                                                c0160a3 = c0160a4;
                                                C0181d.m563d(inputStreamM649j);
                                                C0181d.m563d(c0160a3);
                                                throw th;
                                            }
                                        } else {
                                            c0160a = null;
                                        }
                                        if (iArr2 != null) {
                                            if (iArr2[0] != R.string.FINFO_APK_VERSION) {
                                                strArr2[0] = c0169a2.f1102a;
                                                strArr2[1] = c0169a2.f1105d;
                                                strArr2[2] = "" + c0169a2.f1106e;
                                                strArr2[3] = "API " + c0169a2.f1108g + "+";
                                                strArr2[4] = c0169a2.f1107f;
                                            } else {
                                                strArr2[0] = c0169a2.f1105d;
                                            }
                                        }
                                        C0181d.m563d(inputStreamM649j);
                                        C0181d.m563d(c0160a);
                                        if (bitmapM622d == null) {
                                        }
                                        return new a(bitmapM622d, iArr2, strArr2);
                                    }
                                    int i8 = Build.VERSION.SDK_INT;
                                    if (i8 >= 30 || j2 < 2147483648L) {
                                        packageManager = ZApp.m722e().getPackageManager();
                                        packageArchiveInfo = packageManager.getPackageArchiveInfo(strM491r, 1);
                                    } else {
                                        packageManager = null;
                                        packageArchiveInfo = null;
                                    }
                                    if (packageArchiveInfo != null) {
                                        ApplicationInfo applicationInfo2 = packageArchiveInfo.applicationInfo;
                                        applicationInfo2.sourceDir = strM491r;
                                        applicationInfo2.publicSourceDir = strM491r;
                                        drawableLoadIcon = applicationInfo2.loadIcon(packageManager);
                                    } else {
                                        if (i8 >= 24 && i8 < 30 && (aVarM1111e = C0412c.m1111e(strM491r)) != null && C0015d.m49K(aVarM1111e.f2157f, 2)) {
                                            inputStreamM649j = new FileInputStream(strM491r);
                                        }
                                        drawableLoadIcon = null;
                                    }
                                    if (drawableLoadIcon != null) {
                                        bitmapM622d = (i8 < 26 || (drawableLoadIcon instanceof BitmapDrawable)) ? Bitmap.createScaledBitmap(((BitmapDrawable) drawableLoadIcon).getBitmap(), i4, i4, true) : C0224b.m632b((AdaptiveIconDrawable) drawableLoadIcon, i4);
                                        if (iArr2 != null) {
                                            try {
                                                if (iArr2[0] != R.string.FINFO_APK_VERSION) {
                                                    strArr2[0] = packageArchiveInfo.packageName;
                                                    strArr2[1] = packageArchiveInfo.versionName;
                                                    strArr2[2] = "" + packageArchiveInfo.versionCode;
                                                    if (i8 >= 24) {
                                                        strArr2[3] = "API " + packageArchiveInfo.applicationInfo.minSdkVersion + "+";
                                                        String[] strArr5 = packageArchiveInfo.splitNames;
                                                        strArr2[4] = (strArr5 == null || strArr5.length <= 0) ? null : strArr5[0];
                                                    }
                                                } else {
                                                    strArr2[0] = packageArchiveInfo.versionName;
                                                }
                                            } catch (Exception | OutOfMemoryError unused3) {
                                                c0160a = null;
                                            }
                                        }
                                        C0181d.m563d(inputStreamM649j);
                                        C0181d.m563d(c0160a);
                                        if (bitmapM622d == null) {
                                        }
                                        return new a(bitmapM622d, iArr2, strArr2);
                                    }
                                    bitmapM622d = null;
                                    if (inputStreamM649j != null) {
                                        c0160a = new C0160a(inputStreamM649j, 1);
                                        c0169a = c0160a.f1067d;
                                        if (c0169a != null) {
                                            z2 = false;
                                        } else {
                                            z2 = false;
                                        }
                                        if (z2) {
                                            bitmapM622d = C0223a.m622d(c0160a, i4);
                                        }
                                    } else {
                                        c0160a = null;
                                    }
                                    if (iArr2 != null) {
                                        if (iArr2[0] != R.string.FINFO_APK_VERSION) {
                                            strArr2[0] = c0169a2.f1102a;
                                            strArr2[1] = c0169a2.f1105d;
                                            strArr2[2] = "" + c0169a2.f1106e;
                                            strArr2[3] = "API " + c0169a2.f1108g + "+";
                                            strArr2[4] = c0169a2.f1107f;
                                        } else {
                                            strArr2[0] = c0169a2.f1105d;
                                        }
                                    }
                                    C0181d.m563d(inputStreamM649j);
                                    C0181d.m563d(c0160a);
                                    if (bitmapM622d == null) {
                                    }
                                    return new a(bitmapM622d, iArr2, strArr2);
                                }
                                if (iArr2 != null) {
                                    try {
                                        if (strM491r != null) {
                                            c0160a = new C0161b(strM491r);
                                        } else if (inputStreamM649j != null) {
                                            c0160a = new C0160a(inputStreamM649j, 0);
                                        }
                                        bitmapM622d = null;
                                        if (iArr2 != null && c0160a != null && (c0169a2 = c0160a.f1067d) != null) {
                                            if (iArr2[0] != R.string.FINFO_APK_VERSION) {
                                                strArr2[0] = c0169a2.f1102a;
                                                strArr2[1] = c0169a2.f1105d;
                                                strArr2[2] = "" + c0169a2.f1106e;
                                                strArr2[3] = "API " + c0169a2.f1108g + "+";
                                                strArr2[4] = c0169a2.f1107f;
                                            } else {
                                                strArr2[0] = c0169a2.f1105d;
                                            }
                                        }
                                        C0181d.m563d(inputStreamM649j);
                                        C0181d.m563d(c0160a);
                                        if (bitmapM622d == null || iArr2 != null) {
                                            return new a(bitmapM622d, iArr2, strArr2);
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        inputStream = inputStreamM649j;
                                        c0160a2 = null;
                                        C0160a c0160a5 = c0160a2;
                                        inputStreamM649j = inputStream;
                                        c0160a3 = c0160a5;
                                        C0181d.m563d(inputStreamM649j);
                                        C0181d.m563d(c0160a3);
                                        throw th;
                                    }
                                }
                                C0181d.m563d(inputStreamM649j);
                            } catch (Throwable th3) {
                                th = th3;
                                c0160a3 = null;
                                C0181d.m563d(inputStreamM649j);
                                C0181d.m563d(c0160a3);
                                throw th;
                            }
                        } catch (Exception | OutOfMemoryError unused4) {
                            bitmapM622d = null;
                        }
                        return null;
                    } catch (Throwable th4) {
                        th = th4;
                        inputStreamM649j = null;
                    }
                } catch (Exception | OutOfMemoryError unused5) {
                    bitmapM622d = null;
                    c0160a = null;
                    inputStreamM649j = null;
                }
            } catch (Throwable th5) {
                th = th5;
                inputStreamM649j = null;
            }
        } else {
            if (i2 == 7) {
                if (c0129h.m483j()) {
                    try {
                        mediaMetadataRetriever2 = new MediaMetadataRetriever();
                        try {
                            mediaMetadataRetriever2.setDataSource(c0129h.m491r());
                            Bitmap bitmapM633c = (!C0015d.m49K(r4 == true ? 1 : 0, 1) || (embeddedPicture = mediaMetadataRetriever2.getEmbeddedPicture()) == null) ? null : C0224b.m633c(embeddedPicture, i4, bArr);
                            if (C0015d.m49K(r4 == true ? 1 : 0, 2)) {
                                iArr3 = new int[]{R.string.FINFO_MEDIA_DURATION, R.string.FINFO_MEDIA_TITLE, R.string.FINFO_MEDIA_ARTIST, R.string.FINFO_MEDIA_GENRE, R.string.FINFO_MEDIA_BITRATE};
                                strArr3 = new String[5];
                            } else if (C0015d.m49K(r4 == true ? 1 : 0, 4)) {
                                iArr3 = new int[]{R.string.FINFO_MEDIA_DURATION};
                                strArr3 = new String[1];
                            } else {
                                iArr3 = null;
                                strArr3 = null;
                            }
                            if (iArr3 != null) {
                                strArr3[0] = m640a(mediaMetadataRetriever2.extractMetadata(9));
                                if (iArr3.length > 1) {
                                    strArr3[1] = mediaMetadataRetriever2.extractMetadata(7);
                                    strArr3[2] = mediaMetadataRetriever2.extractMetadata(2);
                                    strArr3[3] = mediaMetadataRetriever2.extractMetadata(6);
                                    strArr3[4] = mediaMetadataRetriever2.extractMetadata(20);
                                }
                            }
                            if (bitmapM633c != null || iArr3 != null) {
                                a aVar = new a(bitmapM633c, iArr3, strArr3);
                                try {
                                    mediaMetadataRetriever2.release();
                                } catch (IOException unused6) {
                                }
                                return aVar;
                            }
                        } catch (Exception unused7) {
                            if (mediaMetadataRetriever2 != null) {
                            }
                            return null;
                        } catch (Throwable th6) {
                            th = th6;
                            mediaMetadataRetriever = mediaMetadataRetriever2;
                            if (mediaMetadataRetriever != null) {
                                try {
                                    mediaMetadataRetriever.release();
                                } catch (IOException unused8) {
                                }
                            }
                            throw th;
                        }
                    } catch (Exception unused9) {
                        mediaMetadataRetriever2 = null;
                    } catch (Throwable th7) {
                        th = th7;
                        mediaMetadataRetriever = null;
                    }
                    try {
                        mediaMetadataRetriever2.release();
                    } catch (IOException unused10) {
                    }
                }
                return null;
            }
            switch (i2) {
                case 13:
                    try {
                        parcelFileDescriptorM648i = m648i(c0129h, j2);
                        if (parcelFileDescriptorM648i == null) {
                            C0181d.m562c(parcelFileDescriptorM648i);
                            return null;
                        }
                        try {
                            try {
                                try {
                                    if (c0129h.m488o()) {
                                        try {
                                            byte[] bArr2 = new byte[8];
                                            FileDescriptor fileDescriptor = parcelFileDescriptorM648i.getFileDescriptor();
                                            bArr2[0] = 0;
                                            if (Os.read(fileDescriptor, bArr2, 0, 8) >= 4 && bArr2[0] == 37 && bArr2[1] == 80 && bArr2[2] == 68 && bArr2[3] == 70 && Os.lseek(fileDescriptor, -8, OsConstants.SEEK_END) > 0 && Os.read(fileDescriptor, bArr2, 0, 8) >= 4) {
                                                while (true) {
                                                    if (i5 < 5) {
                                                        if (bArr2[i5] == 69) {
                                                            int i9 = i5 + 1;
                                                            i5 = (bArr2[i9] == 79 && bArr2[i5 + 2] == 70) ? i9 : 0;
                                                        }
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                }
                                                if (z3) {
                                                    Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_SET);
                                                    break;
                                                }
                                            }
                                        } catch (Exception unused11) {
                                        }
                                        C0181d.m562c(parcelFileDescriptorM648i);
                                        return null;
                                    }
                                    Bitmap bitmapM646g = C0015d.m49K(r4 == true ? 1 : 0, 1) ? m646g(pdfRenderer, i4) : null;
                                    if (C0015d.m50L(r4 == true ? 1 : 0, 6)) {
                                        a aVar2 = new a(bitmapM646g, new int[]{R.string.FINFO_BOOK_PAGES}, new String[]{String.valueOf(pdfRenderer.getPageCount())});
                                        C0181d.m564e(pdfRenderer);
                                        C0181d.m562c(parcelFileDescriptorM648i);
                                        return aVar2;
                                    }
                                } catch (Exception unused12) {
                                } catch (Throwable th8) {
                                    th = th8;
                                    pdfRenderer2 = pdfRenderer;
                                    C0181d.m564e(pdfRenderer2);
                                    C0181d.m562c(parcelFileDescriptorM648i);
                                    throw th;
                                }
                                pdfRenderer = new PdfRenderer(parcelFileDescriptorM648i);
                            } catch (Throwable th9) {
                                th = th9;
                                pdfRenderer2 = null;
                                C0181d.m564e(pdfRenderer2);
                                C0181d.m562c(parcelFileDescriptorM648i);
                                throw th;
                            }
                            break;
                        } catch (Exception unused13) {
                            pdfRenderer = null;
                        }
                        C0181d.m564e(pdfRenderer);
                        C0181d.m562c(parcelFileDescriptorM648i);
                        return null;
                    } catch (Exception unused14) {
                        parcelFileDescriptorM648i = null;
                    } catch (Throwable th10) {
                        th = th10;
                        parcelFileDescriptorM648i = null;
                    }
                    break;
                case 14:
                    if (!c0129h.m483j()) {
                        return null;
                    }
                    try {
                        if (Build.VERSION.SDK_INT >= 27) {
                            try {
                                mediaMetadataRetriever3 = new MediaMetadataRetriever();
                                try {
                                    try {
                                        mediaMetadataRetriever3.setDataSource(c0129h.m491r());
                                        if (C0015d.m49K(r4 == true ? 1 : 0, 1)) {
                                            byte[] embeddedPicture2 = mediaMetadataRetriever3.getEmbeddedPicture();
                                            if (embeddedPicture2 != null) {
                                                scaledFrameAtTime = C0224b.m633c(embeddedPicture2, i4, null);
                                                i6 = 20;
                                            } else {
                                                i6 = 20;
                                                scaledFrameAtTime = mediaMetadataRetriever3.getScaledFrameAtTime(-1L, 0, i4, i4);
                                            }
                                        } else {
                                            i6 = 20;
                                            scaledFrameAtTime = null;
                                        }
                                        try {
                                            try {
                                                if (C0015d.m49K(r4 == true ? 1 : 0, 2)) {
                                                    strArr4 = new String[3];
                                                    r4 = new int[]{R.string.FINFO_MEDIA_DURATION, R.string.FINFO_IMAGE_SIZE, R.string.FINFO_MEDIA_BITRATE};
                                                } else {
                                                    if (C0015d.m49K(r4 == true ? 1 : 0, 4)) {
                                                        strArr4 = new String[1];
                                                        r4 = new int[]{R.string.FINFO_MEDIA_DURATION};
                                                    } else {
                                                        r4 = 0;
                                                        strArr4 = null;
                                                    }
                                                    if (r4 != 0) {
                                                        try {
                                                            strArr4[0] = m640a(mediaMetadataRetriever3.extractMetadata(9));
                                                            if (r4.length > 1) {
                                                                strExtractMetadata = mediaMetadataRetriever3.extractMetadata(19);
                                                                strExtractMetadata2 = mediaMetadataRetriever3.extractMetadata(18);
                                                                if (strExtractMetadata != null && strExtractMetadata2 != null) {
                                                                    strArr4[1] = strExtractMetadata2 + "x" + strExtractMetadata;
                                                                }
                                                                jM81j0 = C0015d.m81j0(r8, mediaMetadataRetriever3.extractMetadata(i6)) / 1024;
                                                                if (jM81j0 > 0) {
                                                                    strArr4[2] = jM81j0 + " kb/s";
                                                                }
                                                            }
                                                        } catch (Exception unused15) {
                                                            if (mediaMetadataRetriever3 != null) {
                                                            }
                                                            if (scaledFrameAtTime != null) {
                                                                scaledFrameAtTime = null;
                                                            } else {
                                                                scaledFrameAtTime = null;
                                                            }
                                                            if (scaledFrameAtTime == null) {
                                                            }
                                                            return new a(scaledFrameAtTime, r4, strArr4);
                                                        }
                                                    }
                                                    mediaMetadataRetriever3.release();
                                                }
                                                if (r4 != 0) {
                                                    strArr4[0] = m640a(mediaMetadataRetriever3.extractMetadata(9));
                                                    if (r4.length > 1) {
                                                        strExtractMetadata = mediaMetadataRetriever3.extractMetadata(19);
                                                        strExtractMetadata2 = mediaMetadataRetriever3.extractMetadata(18);
                                                        if (strExtractMetadata != null) {
                                                            strArr4[1] = strExtractMetadata2 + "x" + strExtractMetadata;
                                                        }
                                                        jM81j0 = C0015d.m81j0(r8, mediaMetadataRetriever3.extractMetadata(i6)) / 1024;
                                                        if (jM81j0 > 0) {
                                                            strArr4[2] = jM81j0 + " kb/s";
                                                        }
                                                    }
                                                }
                                            } catch (Exception unused16) {
                                                strArr4 = null;
                                            }
                                        } catch (Exception unused17) {
                                            r4 = 0;
                                            strArr4 = null;
                                        }
                                    } catch (Throwable th11) {
                                        th = th11;
                                        if (mediaMetadataRetriever3 != null) {
                                            mediaMetadataRetriever3.release();
                                        }
                                        throw th;
                                    }
                                } catch (Exception unused18) {
                                    r4 = 0;
                                    scaledFrameAtTime = null;
                                    strArr4 = null;
                                    if (mediaMetadataRetriever3 != null) {
                                        mediaMetadataRetriever3.release();
                                    }
                                    if (scaledFrameAtTime != null) {
                                        scaledFrameAtTime = null;
                                    } else {
                                        scaledFrameAtTime = null;
                                    }
                                    if (scaledFrameAtTime == null) {
                                    }
                                    return new a(scaledFrameAtTime, r4, strArr4);
                                }
                            } catch (Exception unused19) {
                                mediaMetadataRetriever3 = null;
                            } catch (Throwable th12) {
                                th = th12;
                                mediaMetadataRetriever3 = null;
                            }
                            mediaMetadataRetriever3.release();
                            break;
                        } else {
                            if (!C0015d.m49K(r4 == true ? 1 : 0, 1)) {
                                return null;
                            }
                            scaledFrameAtTime = ThumbnailUtils.createVideoThumbnail(c0129h.m491r(), 3);
                            r4 = 0;
                            strArr4 = null;
                        }
                        if (scaledFrameAtTime != null || scaledFrameAtTime.getWidth() == 0 || scaledFrameAtTime.getHeight() == 0) {
                            scaledFrameAtTime = null;
                        } else {
                            Canvas canvas = new Canvas(scaledFrameAtTime);
                            int iMin = Math.min(scaledFrameAtTime.getWidth(), scaledFrameAtTime.getHeight()) / 4;
                            canvas.drawBitmap(C0438b.m1164e(ZApp.m722e(), 31), (Rect) null, new Rect((scaledFrameAtTime.getWidth() / 2) - iMin, (scaledFrameAtTime.getHeight() / 2) - iMin, (scaledFrameAtTime.getWidth() / 2) + iMin, (scaledFrameAtTime.getHeight() / 2) + iMin), (Paint) null);
                        }
                        if (scaledFrameAtTime == null || r4 != 0) {
                            return new a(scaledFrameAtTime, r4, strArr4);
                        }
                        return null;
                    } catch (Exception unused20) {
                        return null;
                    }
                case 15:
                    return m642c(c0129h, r4 == true ? 1 : 0, i4, bArr);
                default:
                    return null;
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public static Bitmap m646g(PdfRenderer pdfRenderer, int i2) {
        PdfRenderer.Page pageOpenPage;
        try {
            if (pdfRenderer.getPageCount() > 0 && (pageOpenPage = pdfRenderer.openPage(0)) != null && pageOpenPage.getHeight() != 0 && pageOpenPage.getWidth() != 0) {
                float f2 = i2;
                float fMax = Math.max(f2 / pageOpenPage.getHeight(), f2 / pageOpenPage.getWidth());
                Matrix matrix = new Matrix();
                matrix.setScale(fMax, fMax);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) (pageOpenPage.getWidth() * fMax), (int) (pageOpenPage.getHeight() * fMax), Bitmap.Config.ARGB_8888);
                pageOpenPage.render(bitmapCreateBitmap, null, matrix, 1);
                pageOpenPage.close();
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), bitmapCreateBitmap.getConfig());
                bitmapCreateBitmap2.eraseColor(-1);
                new Canvas(bitmapCreateBitmap2).drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, (Paint) null);
                bitmapCreateBitmap.recycle();
                return bitmapCreateBitmap2;
            }
        } catch (Exception | OutOfMemoryError unused) {
        }
        return null;
    }

    /* JADX INFO: renamed from: h */
    public static int m647h(C0226d c0226d) {
        int attributeInt = c0226d.getAttributeInt("Orientation", 1);
        if (attributeInt == 3) {
            return 180;
        }
        if (attributeInt != 6) {
            return attributeInt != 8 ? 0 : 270;
        }
        return 90;
    }

    /* JADX INFO: renamed from: i */
    public static ParcelFileDescriptor m648i(C0129h c0129h, long j2) {
        NArc nArcM269c;
        try {
            if (c0129h.m488o()) {
                return AbstractC0127f.m463u(c0129h).mo429v(268435456);
            }
            if (Build.VERSION.SDK_INT < 26 || !c0129h.m480g() || j2 == 0 || j2 > 524288 || (nArcM269c = C0079a.m266m().m269c()) == null) {
                return null;
            }
            String str = c0129h.f1016d;
            return str != null ? nArcM269c.m811d(Integer.parseInt(str), null, 524288) : nArcM269c.m811d(-1, c0129h.f1017e, 524288);
        } catch (Exception unused) {
        }
        return null;
    }

    /* JADX INFO: renamed from: j */
    public static InputStream m649j(C0129h c0129h, long j2, boolean z2) {
        try {
            if (c0129h.m488o()) {
                return AbstractC0127f.m463u(c0129h).mo430w();
            }
            if (Build.VERSION.SDK_INT >= 26 && c0129h.m480g() && j2 != 0 && j2 <= 31457280) {
                NArc nArcM807l = z2 ? NArc.m807l(c0129h.f1015c) : C0079a.m266m().m269c();
                if (nArcM807l == null) {
                    return null;
                }
                C0068f c0068fM815h = nArcM807l.m815h(C0015d.m79i0(-1, c0129h.f1016d), c0129h.f1017e);
                if (c0068fM815h != null && z2) {
                    c0068fM815h.f487f = true;
                }
                return c0068fM815h;
            }
            return null;
        } catch (Exception unused) {
        }
    }
}
