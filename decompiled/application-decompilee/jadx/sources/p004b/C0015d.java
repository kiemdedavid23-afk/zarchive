package p004b;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteDatabase;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p008c0.C0044b;
import p008c0.C0051i;
import p011d0.C0064b;
import p011d0.C0070h;
import p014e0.C0079a;
import p014e0.InterfaceC0082d;
import p020g0.C0128g;
import p020g0.C0129h;
import p020g0.InterfaceC0125d;
import p029k0.C0166c;
import p033m0.C0181d;
import p035n0.AbstractC0194a;
import p035n0.C0195b;
import p041q0.C0234a;
import p047s0.C0358b;
import p049t0.C0373a;
import p049t0.C0374b;
import p051u0.C0380c;
import p051u0.C0385h;
import p058y.C0433a;
import p058y.C0436d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

/* JADX INFO: renamed from: b.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0015d implements InterfaceC0125d {

    /* JADX INFO: renamed from: a */
    public static boolean f114a;

    /* JADX INFO: renamed from: b */
    public static HashMap f115b;

    /* JADX INFO: renamed from: c */
    public static final String[] f116c = {"/data/data/ru.zdevs.zarchiver/lib/libp7zbin.so", "/system/lib/ru.zdevs.zarchiver/libp7zbin.so", "/system/lib/libp7zbin.so"};

    /* JADX INFO: renamed from: d */
    public static final int[] f117d = new int[5];

    /* JADX INFO: renamed from: e */
    public static final byte[] f118e = new byte[5];

    /* JADX INFO: renamed from: f */
    public static final String[] f119f = new String[5];

    /* JADX INFO: renamed from: g */
    public static final int[] f120g = {R.attr.colorNMask};

    /* JADX INFO: renamed from: h */
    public static final int[] f121h = {android.R.attr.orientation, R.attr.layout_constraintBaseline_creator, R.attr.layout_constraintBaseline_toBaselineOf, R.attr.layout_constraintBottom_creator, R.attr.layout_constraintBottom_toBottomOf, R.attr.layout_constraintBottom_toTopOf, R.attr.layout_constraintDimensionRatio, R.attr.layout_constraintEnd_toEndOf, R.attr.layout_constraintEnd_toStartOf, R.attr.layout_constraintGuide_begin, R.attr.layout_constraintGuide_end, R.attr.layout_constraintGuide_percent, R.attr.layout_constraintHorizontal_bias, R.attr.layout_constraintHorizontal_chainStyle, R.attr.layout_constraintHorizontal_weight, R.attr.layout_constraintLeft_creator, R.attr.layout_constraintLeft_toLeftOf, R.attr.layout_constraintLeft_toRightOf, R.attr.layout_constraintRight_creator, R.attr.layout_constraintRight_toLeftOf, R.attr.layout_constraintRight_toRightOf, R.attr.layout_constraintStart_toEndOf, R.attr.layout_constraintStart_toStartOf, R.attr.layout_constraintTop_creator, R.attr.layout_constraintTop_toBottomOf, R.attr.layout_constraintTop_toTopOf, R.attr.layout_constraintVertical_bias, R.attr.layout_constraintVertical_chainStyle, R.attr.layout_constraintVertical_weight, R.attr.layout_editor_absoluteX, R.attr.layout_editor_absoluteY, R.attr.layout_goneMarginBottom, R.attr.layout_goneMarginEnd, R.attr.layout_goneMarginLeft, R.attr.layout_goneMarginRight, R.attr.layout_goneMarginStart, R.attr.layout_goneMarginTop};

    /* JADX INFO: renamed from: i */
    public static final int[] f122i = {android.R.attr.defaultValue, R.attr.folderSelect};

    /* JADX INFO: renamed from: j */
    public static final int[] f123j = {R.attr.srcCompat};

    /* JADX INFO: renamed from: k */
    public static final int[] f124k = {android.R.attr.defaultValue, R.attr.maxValue, R.attr.minValue};

    /* JADX INFO: renamed from: l */
    public static final int[] f125l = {R.attr.umanoAnchorOffset, R.attr.umanoDragView, R.attr.umanoFadeColor, R.attr.umanoFlingVelocity, R.attr.umanoPanelHeight};

    /* JADX INFO: renamed from: A */
    public static String m39A(String str) {
        int iLastIndexOf = str.lastIndexOf(47, str.length() - 2);
        return iLastIndexOf < 1 ? "" : str.substring(0, iLastIndexOf);
    }

    /* JADX INFO: renamed from: B */
    public static C0129h m40B(C0129h c0129h) {
        if (c0129h.m480g()) {
            return new C0129h(c0129h.f1013a, c0129h.f1015c, "/");
        }
        return new C0129h(c0129h.m485l() ? "rarch" : "arch", c0129h.f1015c, "/");
    }

    /* JADX INFO: renamed from: C */
    public static int m41C(int i2) {
        synchronized (f117d) {
            for (int i3 = 0; i3 < 5; i3++) {
                if (i3 != i2) {
                    if (!m49K(f117d[i3], 1048576)) {
                        return i3;
                    }
                }
            }
            return -1;
        }
    }

    /* JADX INFO: renamed from: D */
    public static String m42D(String str) {
        String strM91s = m91s(str);
        if ("001".equals(strM91s)) {
            String strM91s2 = m91s(m64Z(str));
            if (!C0385h.m1081e(strM91s2)) {
                return strM91s2 + '.' + strM91s;
            }
        } else if ("png".equals(strM91s)) {
            String strM91s3 = m91s(m64Z(str));
            if ("9".equals(strM91s3)) {
                return strM91s3 + '.' + strM91s;
            }
        }
        return strM91s;
    }

    /* JADX INFO: renamed from: E */
    public static byte m43E(String str) {
        if (str == null) {
            return (byte) 0;
        }
        if (f115b == null) {
            m55Q();
        }
        Byte b2 = (Byte) f115b.get(m91s(str));
        if (b2 == null) {
            return (byte) 0;
        }
        if (b2.byteValue() == 28) {
            b2 = (Byte) f115b.get(m91s(m64Z(str)));
            if (b2 == null || !m45G(b2.byteValue())) {
                return (byte) 0;
            }
        }
        return b2.byteValue();
    }

    /* JADX INFO: renamed from: F */
    public static boolean m44F(String str) {
        HashMap map = C0436d.f2223a;
        IBinder iBinder = (IBinder) map.get("activity");
        IBinder iBinder2 = null;
        if (iBinder == null) {
            try {
                iBinder = (IBinder) C0436d.f2224b.invoke(null, "activity");
            } catch (IllegalAccessException | InvocationTargetException e2) {
                Log.w("SystemServiceHelper", Log.getStackTraceString(e2));
            }
            map.put("activity", iBinder);
        }
        if (iBinder != null) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("android.app.IActivityManager");
                parcelObtain.writeInt(2);
                iBinder.transact(1599296841, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                IBinder strongBinder = parcelObtain2.readStrongBinder();
                if (strongBinder != null) {
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                    iBinder2 = strongBinder;
                } else {
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                }
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                    throw th2;
                }
            }
        }
        if (iBinder2 == null) {
            f114a = false;
            return false;
        }
        C0433a.m1156d(iBinder2, str);
        f114a = true;
        return true;
    }

    /* JADX INFO: renamed from: G */
    public static boolean m45G(byte b2) {
        return b2 == 1 || b2 == 17 || b2 == 18 || b2 == 19;
    }

    /* JADX INFO: renamed from: H */
    public static boolean m46H(byte b2) {
        return b2 == 1 || b2 == 17 || b2 == 18 || b2 == 19 || b2 == 6 || b2 == 20 || b2 == 2 || b2 == 27;
    }

    /* JADX INFO: renamed from: I */
    public static boolean m47I(String str) {
        String strM91s = m91s(str);
        return "jpg".equals(strM91s) || "jpeg".equals(strM91s);
    }

    /* JADX INFO: renamed from: J */
    public static boolean m48J(int i2) {
        boolean z2;
        int[] iArr = f117d;
        synchronized (iArr) {
            z2 = !m49K(iArr[i2], 1048576);
        }
        return z2;
    }

    /* JADX INFO: renamed from: K */
    public static boolean m49K(int i2, int i3) {
        return (i2 & i3) == i3;
    }

    /* JADX INFO: renamed from: L */
    public static boolean m50L(int i2, int i3) {
        return (i2 & i3) != 0;
    }

    /* JADX INFO: renamed from: M */
    public static boolean m51M(String str, String str2) {
        int length = str.length();
        int length2 = str2.length() - length;
        if (length2 < -1) {
            return false;
        }
        if (length == 0 && length2 != 0) {
            return false;
        }
        int iMin = Math.min(length, str2.length());
        int i2 = 0;
        char cCharAt = 0;
        while (true) {
            iMin--;
            if (iMin < 0) {
                if (length2 == 0) {
                    return true;
                }
                if (length2 < 0) {
                    return str.charAt(i2) == '/';
                }
                return cCharAt == '/' || (i2 < str2.length() && str2.charAt(i2) == '/');
            }
            cCharAt = str2.charAt(i2);
            int i3 = i2 + 1;
            if (str.charAt(i2) != cCharAt) {
                return false;
            }
            i2 = i3;
        }
    }

    /* JADX INFO: renamed from: N */
    public static boolean m52N(int i2, String str) {
        String strM91s;
        if (str == null || C0181d.m570k(str) || str.startsWith("/uri/")) {
            return false;
        }
        if (!C0079a.m266m().m278n(str)) {
            strM91s = null;
        } else {
            if (m50L(C0079a.m266m().m274h(), 48)) {
                return false;
            }
            strM91s = C0079a.m266m().m275i();
        }
        if (C0385h.m1081e(strM91s)) {
            strM91s = m91s(str);
        }
        if (i2 == 2) {
            return strM91s.equals("apk") || strM91s.equals("zip") || strM91s.equals("jar");
        }
        if (i2 == 4) {
            return strM91s.equals("apk") || strM91s.equals("zip") || strM91s.equals("mtz") || strM91s.equals("tar") || strM91s.equals("7z") || strM91s.equals("jar");
        }
        return strM91s.equals("apk") || strM91s.equals("zip") || strM91s.equals("7z") || strM91s.equals("tar") || strM91s.equals("jar") || strM91s.equals("wim");
    }

    /* JADX INFO: renamed from: O */
    public static boolean m53O(String str, boolean z2) {
        if (str == null) {
            return false;
        }
        String strM93u = m93u(str);
        return strM93u.equals("zip") || strM93u.equals("apk") || strM93u.equals("mtz") || strM93u.equals("7z") || strM93u.equals("bz") || strM93u.equals("rar") || strM93u.equals("bz2") || (strM93u.equals("xz") && z2);
    }

    /* JADX INFO: renamed from: P */
    public static boolean m54P(String str) {
        String strM91s = m91s(str);
        return "webp".equals(strM91s) || "webm".equals(strM91s);
    }

    /* JADX INFO: renamed from: Q */
    public static void m55Q() {
        HashMap map = new HashMap();
        f115b = map;
        map.put("7z", (byte) 19);
        f115b.put("jar", (byte) 1);
        f115b.put("zip", (byte) 18);
        f115b.put("rar", (byte) 17);
        f115b.put("gz", (byte) 1);
        f115b.put("tar", (byte) 1);
        f115b.put("cab", (byte) 1);
        f115b.put("tgz", (byte) 1);
        f115b.put("tbz", (byte) 1);
        f115b.put("txz", (byte) 1);
        f115b.put("bz", (byte) 1);
        f115b.put("bz2", (byte) 1);
        f115b.put("xz", (byte) 1);
        f115b.put("arj", (byte) 1);
        f115b.put("lzh", (byte) 1);
        f115b.put("lzo", (byte) 1);
        f115b.put("lha", (byte) 1);
        f115b.put("lzx", (byte) 1);
        f115b.put("lzma", (byte) 1);
        f115b.put("xar", (byte) 1);
        f115b.put("bzip2", (byte) 1);
        f115b.put("zipx", (byte) 18);
        f115b.put("deb", (byte) 1);
        f115b.put("wim", (byte) 1);
        f115b.put("mslz", (byte) 1);
        f115b.put("lz", (byte) 1);
        f115b.put("tlz", (byte) 1);
        f115b.put("tbz2", (byte) 1);
        f115b.put("lz4", (byte) 1);
        f115b.put("egg", (byte) 1);
        f115b.put("alz", (byte) 1);
        f115b.put("zstd", (byte) 1);
        f115b.put("tzstd", (byte) 1);
        f115b.put("zst", (byte) 1);
        f115b.put("rpm", (byte) 1);
        f115b.put("iso", (byte) 2);
        f115b.put("dmg", (byte) 2);
        f115b.put("img", (byte) 2);
        f115b.put("cpio", (byte) 2);
        f115b.put("cramfs", (byte) 2);
        f115b.put("ecm", (byte) 2);
        f115b.put("fat", (byte) 2);
        f115b.put("hfs", (byte) 2);
        f115b.put("squashfs", (byte) 2);
        f115b.put("vhd", (byte) 2);
        f115b.put("vdi", (byte) 2);
        f115b.put("vmdk", (byte) 2);
        f115b.put("udf", (byte) 2);
        f115b.put("png", (byte) 9);
        f115b.put("gif", (byte) 9);
        f115b.put("jpg", (byte) 9);
        f115b.put("jpeg", (byte) 9);
        f115b.put("bmp", (byte) 9);
        f115b.put("ico", (byte) 9);
        f115b.put("jp2", (byte) 9);
        f115b.put("pcx", (byte) 9);
        f115b.put("tga", (byte) 9);
        f115b.put("tiff", (byte) 9);
        f115b.put("webp", (byte) 9);
        f115b.put("webm", (byte) 9);
        f115b.put("heif", (byte) 9);
        f115b.put("heic", (byte) 9);
        f115b.put("htm", (byte) 12);
        f115b.put("html", (byte) 12);
        f115b.put("php", (byte) 12);
        f115b.put("mht", (byte) 12);
        f115b.put("mhtml", (byte) 12);
        f115b.put("doc", (byte) 5);
        f115b.put("docm", (byte) 5);
        f115b.put("docx", (byte) 5);
        f115b.put("dot", (byte) 5);
        f115b.put("dotm", (byte) 5);
        f115b.put("dotx", (byte) 5);
        f115b.put("rtf", (byte) 5);
        f115b.put("odt", (byte) 5);
        f115b.put("wps", (byte) 5);
        f115b.put("xls", (byte) 8);
        f115b.put("xlsx", (byte) 8);
        f115b.put("xmls", (byte) 8);
        f115b.put("ods", (byte) 8);
        f115b.put("csv", (byte) 8);
        f115b.put("pps", (byte) 10);
        f115b.put("ppsx", (byte) 10);
        f115b.put("ppt", (byte) 10);
        f115b.put("pptm", (byte) 10);
        f115b.put("pptx", (byte) 10);
        f115b.put("odp", (byte) 10);
        f115b.put("apk", (byte) 6);
        f115b.put("mp3", (byte) 7);
        f115b.put("wav", (byte) 7);
        f115b.put("ogg", (byte) 7);
        f115b.put("midi", (byte) 7);
        f115b.put("flac", (byte) 7);
        f115b.put("aac", (byte) 7);
        f115b.put("amr", (byte) 7);
        f115b.put("wma", (byte) 7);
        f115b.put("mpa", (byte) 7);
        f115b.put("ape", (byte) 7);
        f115b.put("mid", (byte) 7);
        f115b.put("m4a", (byte) 7);
        f115b.put("3gpp", (byte) 7);
        f115b.put("awb", (byte) 7);
        f115b.put("opus", (byte) 7);
        f115b.put("mpga", (byte) 7);
        f115b.put("pdf", (byte) 13);
        f115b.put("txt", (byte) 11);
        f115b.put("cfg", (byte) 11);
        f115b.put("ini", (byte) 11);
        f115b.put("log", (byte) 11);
        f115b.put("inf", (byte) 11);
        f115b.put("conf", (byte) 11);
        f115b.put("avi", (byte) 14);
        f115b.put("mpg", (byte) 14);
        f115b.put("3gp", (byte) 14);
        f115b.put("wmv", (byte) 14);
        f115b.put("mp4", (byte) 14);
        f115b.put("mkv", (byte) 14);
        f115b.put("m4v", (byte) 14);
        f115b.put("flv", (byte) 14);
        f115b.put("mov", (byte) 14);
        f115b.put("mpeg", (byte) 14);
        f115b.put("xml", (byte) 16);
        f115b.put("json", (byte) 16);
        f115b.put("fb2", (byte) 15);
        f115b.put("epub", (byte) 15);
        f115b.put("mobi", (byte) 15);
        f115b.put("prc", (byte) 15);
        f115b.put("azw", (byte) 15);
        f115b.put("cbz", (byte) 15);
        f115b.put("cbr", (byte) 15);
        f115b.put("djvu", (byte) 15);
        f115b.put("001", (byte) 28);
        f115b.put("apks", (byte) 20);
        f115b.put("xapk", (byte) 20);
        f115b.put("apkm", (byte) 20);
        f115b.put("so", (byte) 21);
        f115b.put("dex", (byte) 22);
        f115b.put("vdex", (byte) 22);
        f115b.put("obb", (byte) 23);
        f115b.put("nes", (byte) 24);
        f115b.put("nez", (byte) 24);
        f115b.put("nds", (byte) 24);
        f115b.put("fds", (byte) 24);
        f115b.put("gen", (byte) 24);
        f115b.put("n64", (byte) 24);
        f115b.put("z64", (byte) 24);
        f115b.put("gba", (byte) 24);
        f115b.put("sfc", (byte) 24);
        f115b.put("smc", (byte) 24);
        f115b.put("win", (byte) 25);
        f115b.put("win000", (byte) 25);
        f115b.put("win001", (byte) 25);
        f115b.put("ttf", (byte) 26);
        f115b.put("ttc", (byte) 26);
        f115b.put("otf", (byte) 26);
        f115b.put("mtz", (byte) 27);
        f115b.put("hwt", (byte) 27);
    }

    /* JADX INFO: renamed from: R */
    public static void m56R(ByteBuffer byteBuffer, long j2) {
        byteBuffer.position(m85m(j2));
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0094  */
    /* JADX INFO: renamed from: S */
    public static int m57S(AbstractC0194a abstractC0194a) {
        String str;
        byte b2;
        int iJAskOverwrite;
        byte bM79i0 = 0;
        while (true) {
            boolean z2 = true;
            try {
                String strM599k = abstractC0194a.m599k(true);
                if (strM599k == null) {
                    return bM79i0;
                }
                if (!strM599k.isEmpty() && strM599k.charAt(0) == '~') {
                    String[] strArrM1084h = C0385h.m1084h(strM599k, '\t');
                    if (strArrM1084h.length >= 2 && (str = strArrM1084h[1]) != null) {
                        int iHashCode = str.hashCode();
                        if (iHashCode != 77) {
                            if (iHashCode != 2085) {
                                if (iHashCode != 2094) {
                                    if (iHashCode != 2281) {
                                        if (iHashCode != 2560) {
                                            if (iHashCode != 2564) {
                                                if (iHashCode == 2671 && str.equals("TC")) {
                                                    b2 = 3;
                                                } else {
                                                    b2 = -1;
                                                }
                                            } else if (str.equals("PT")) {
                                                b2 = 0;
                                            } else {
                                                b2 = -1;
                                            }
                                        } else if (str.equals("PP")) {
                                            b2 = 1;
                                        } else {
                                            b2 = -1;
                                        }
                                    } else if (str.equals("GP")) {
                                        b2 = 6;
                                    } else {
                                        b2 = -1;
                                    }
                                } else if (str.equals("AO")) {
                                    b2 = 2;
                                } else {
                                    b2 = -1;
                                }
                            } else if (str.equals("AF")) {
                                b2 = 5;
                            } else {
                                b2 = -1;
                            }
                        } else if (str.equals("M")) {
                            b2 = 4;
                        } else {
                            b2 = -1;
                        }
                        String strJGetPassword = "";
                        switch (b2) {
                            case 0:
                                C2JBridge.jSetProcessText(abstractC0194a.f1183a, strArrM1084h[2]);
                                break;
                            case 1:
                                C2JBridge.jSetProcessPercent(abstractC0194a.f1183a, m79i0(0, strArrM1084h[2]));
                                break;
                            case 2:
                                if (strArrM1084h.length >= 7) {
                                    try {
                                        iJAskOverwrite = C2JBridge.jAskOverwrite(abstractC0194a.f1183a, strArrM1084h[6], m81j0(0L, strArrM1084h[2]), m79i0(0, strArrM1084h[3]), strArrM1084h[6], m81j0(0L, strArrM1084h[4]), m79i0(0, strArrM1084h[5]));
                                    } catch (Exception unused) {
                                        iJAskOverwrite = 8;
                                    }
                                    String str2 = (iJAskOverwrite & 1) != 0 ? "$Y" : "$";
                                    if ((iJAskOverwrite & 2) != 0) {
                                        str2 = str2 + 'N';
                                    }
                                    if ((iJAskOverwrite & 8) != 0) {
                                        str2 = str2 + 'C';
                                    }
                                    if ((iJAskOverwrite & 4) != 0) {
                                        str2 = str2 + 'R';
                                    }
                                    if ((iJAskOverwrite & 16) != 0) {
                                        str2 = str2 + 'A';
                                    }
                                    abstractC0194a.m601m(str2);
                                    break;
                                }
                                break;
                            case 3:
                                bM79i0 = (byte) (m79i0(0, strArrM1084h[2]) + 1);
                                if (bM79i0 != 1) {
                                    bM79i0 = 2;
                                }
                                int i2 = abstractC0194a.f1183a;
                                if (bM79i0 != 2) {
                                    z2 = false;
                                }
                                C2JBridge.jSetTaskCompleted(i2, z2);
                                break;
                            case 4:
                                C2JBridge.jShowMessage(abstractC0194a.f1183a, m79i0(0, strArrM1084h[2]), strArrM1084h.length > 3 ? strArrM1084h[3] : "");
                                break;
                            case 5:
                                C2JBridge.jAddFileToList(abstractC0194a.f1183a, strArrM1084h[5], -2, m81j0(0L, strArrM1084h[2]), m79i0(0, strArrM1084h[3]), m79i0(0, strArrM1084h[4]));
                                break;
                            case 6:
                                try {
                                    strJGetPassword = C2JBridge.jGetPassword(abstractC0194a.f1183a);
                                    break;
                                } catch (Exception unused2) {
                                }
                                abstractC0194a.m601m("#" + strJGetPassword);
                                break;
                        }
                    }
                }
            } catch (Exception unused3) {
            }
        }
    }

    /* JADX INFO: renamed from: T */
    public static byte[] m58T(InputStream inputStream) throws Throwable {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            while (true) {
                try {
                    int i2 = inputStream.read(bArr);
                    if (i2 == -1) {
                        byte[] byteArray = byteArrayOutputStream2.toByteArray();
                        byteArrayOutputStream2.close();
                        return byteArray;
                    }
                    byteArrayOutputStream2.write(bArr, 0, i2);
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: renamed from: U */
    public static short m59U(ByteBuffer byteBuffer) {
        return (short) (byteBuffer.get() & 255);
    }

    /* JADX INFO: renamed from: V */
    public static long m60V(ByteBuffer byteBuffer) {
        return ((long) byteBuffer.getInt()) & 4294967295L;
    }

    /* JADX INFO: renamed from: W */
    public static int m61W(ByteBuffer byteBuffer) {
        return byteBuffer.getShort() & 65535;
    }

    /* JADX INFO: renamed from: X */
    public static String m62X(String str) {
        String strSubstring = str;
        while (true) {
            try {
                int iLastIndexOf = strSubstring.lastIndexOf(46);
                if (iLastIndexOf <= 0) {
                    break;
                }
                byte bM43E = m43E(strSubstring);
                if (!m46H(bM43E) && bM43E != 25 && !strSubstring.endsWith(".part1")) {
                    break;
                }
                strSubstring = strSubstring.substring(0, iLastIndexOf);
            } catch (Exception unused) {
                return str;
            }
        }
        return strSubstring;
    }

    /* JADX INFO: renamed from: Y */
    public static String m63Y(String str) {
        int length = str.length();
        if (length <= 1) {
            return str;
        }
        int i2 = length - 1;
        return str.charAt(i2) == '/' ? str.substring(0, i2) : str;
    }

    /* JADX INFO: renamed from: Z */
    public static String m64Z(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : str;
    }

    /* JADX INFO: renamed from: a0 */
    public static String m65a0(String str) {
        return m63Y(m66b0(str));
    }

    /* JADX INFO: renamed from: b0 */
    public static String m66b0(String str) {
        return (str.length() <= 0 || str.charAt(0) != '/') ? str : str.substring(1);
    }

    /* JADX INFO: renamed from: c0 */
    public static void m67c0(AbstractC0194a abstractC0194a, C0129h c0129h, String str) {
        String strSubstring;
        int iIndexOf;
        StringBuilder sb = new StringBuilder();
        sb.append(C0380c.m1062b(c0129h.f1015c));
        sb.append(str == null ? "" : "/".concat(str));
        String string = sb.toString();
        int i2 = 0;
        try {
            ZApp zApp = ZApp.f1375c;
            if (zApp == null) {
                return;
            }
            int iIndexOf2 = string.indexOf("/Android/data");
            if (iIndexOf2 < 0) {
                iIndexOf2 = string.indexOf("/Android/obb");
            }
            if (iIndexOf2 <= 0 || (iIndexOf = string.indexOf("/", iIndexOf2 + 10)) <= 0) {
                strSubstring = null;
            } else {
                int i3 = iIndexOf + 1;
                int iIndexOf3 = string.indexOf("/", i3);
                if (iIndexOf3 < 0) {
                    iIndexOf3 = string.length();
                }
                strSubstring = string.substring(i3, iIndexOf3);
            }
            if (strSubstring != null) {
                try {
                    i2 = zApp.getPackageManager().getApplicationInfo(strSubstring, 0).uid;
                } catch (Exception unused) {
                }
            }
            if (i2 == 0) {
                i2 = zApp.getApplicationInfo().uid;
            }
        } catch (Exception unused2) {
        }
        if (i2 == 0) {
            return;
        }
        m71e0(abstractC0194a, string, "" + i2, null, true);
    }

    /* JADX INFO: renamed from: d */
    public static String m68d(String str) {
        int length = str.length();
        return (length <= 0 || str.charAt(length + (-1)) == '/') ? str : str.concat("/");
    }

    /* JADX INFO: renamed from: d0 */
    public static void m69d0(AbstractC0194a abstractC0194a, C0129h c0129h, String str) {
        if (abstractC0194a.m595f()) {
            StringBuilder sb = new StringBuilder();
            sb.append(C0380c.m1062b(c0129h.f1015c));
            sb.append(str == null ? "" : "/".concat(str));
            if (abstractC0194a.m592b("restorecon -R '" + sb.toString().replace("'", "'\\''") + "'")) {
                abstractC0194a.m599k(false);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002b  */
    /* JADX INFO: renamed from: e */
    public static void m70e(StringBuilder sb, String str, C0129h c0129h, boolean z2) {
        boolean z3;
        boolean z4 = false;
        if (m93u(str).equals("7z")) {
            z3 = true;
        } else {
            String strM91s = m91s(str);
            if (strM91s.equals("xz") || strM91s.equals("txz")) {
                z3 = true;
            } else {
                z3 = false;
            }
        }
        if (z3) {
            sb.append("\\-mf=off");
            String strMo304u = null;
            if (C0079a.m266m().m278n(str)) {
                C0079a c0079aM266m = C0079a.m266m();
                ReentrantReadWriteLock reentrantReadWriteLock = c0079aM266m.f582a;
                try {
                    reentrantReadWriteLock.readLock().lock();
                    InterfaceC0082d interfaceC0082d = c0079aM266m.f583b;
                    if (interfaceC0082d != null) {
                        strMo304u = interfaceC0082d.mo304u();
                    }
                } finally {
                    reentrantReadWriteLock.readLock().unlock();
                }
            }
            if (strMo304u != null && strMo304u.toUpperCase().contains("LZMA2")) {
                if (C0358b.m1035f(32)) {
                    sb.append("\\-m0=LZMA2");
                    z4 = true;
                } else {
                    sb.append("\\-m0=FLZMA2");
                }
            }
        }
        if (z4 || c0129h.m486m()) {
            sb.append("\\-mmt=1");
        } else if (m53O(str, true) && C0358b.m1030a() > 0) {
            sb.append("\\-mmt=");
            sb.append(C0358b.m1030a());
        }
        if (C0385h.m1081e(m91s(str))) {
            String strM93u = m93u(str);
            if (!C0385h.m1081e(strM93u)) {
                sb.append("\\-t");
                sb.append(strM93u);
            }
        }
        if (sb.indexOf("\\-p") < 0 && C0070h.m253d().m257e(str)) {
            if (!z2) {
                sb.append("\\-p");
                sb.append(C0070h.m253d().m255b(str, true));
                if (C0070h.m253d().m258f(str)) {
                    sb.append("\\-mhe");
                }
            } else if (C0070h.m253d().m258f(str)) {
                sb.append("\\-p");
                sb.append(C0070h.m253d().m255b(str, true));
                sb.append("\\-mhe");
            }
        }
        sb.append("\\-snl\\-snh");
    }

    /* JADX INFO: renamed from: e0 */
    public static boolean m71e0(AbstractC0194a abstractC0194a, String str, String str2, String str3, boolean z2) {
        StringBuilder sb = new StringBuilder("chown ");
        if (z2) {
            sb.append("-R ");
        }
        sb.append(str2);
        if (str3 != null) {
            sb.append(".");
            sb.append(str3);
        }
        sb.append(" '");
        sb.append(str.replace("'", "'\\''"));
        sb.append('\'');
        if (!abstractC0194a.m592b(sb.toString())) {
            return false;
        }
        abstractC0194a.m599k(false);
        return abstractC0194a.f1190h == 0;
    }

    /* JADX INFO: renamed from: f */
    public static void m72f(StringBuilder sb, int i2, boolean z2) {
        int iM237a;
        int i3 = 256;
        if (i2 > 0) {
            int i4 = C0358b.f1984f & 4080;
            if (i4 == 16) {
                sb.append("\\-m0=LZMA");
            } else if (i4 == 32) {
                sb.append("\\-m0=LZMA2");
            } else if (i4 == 64) {
                sb.append("\\-m0=FLZMA2");
            } else if (i4 == 128) {
                sb.append("\\-m0=ZSTD");
            } else if (i4 == 256) {
                sb.append("\\-m0=PPMD");
            } else if (i4 == 512) {
                sb.append("\\-m0=BZIP2");
            }
            if (((C0358b.f1984f & 112) != 0) && (iM237a = C0064b.m237a(i4, i2)) > 0) {
                sb.append("\\-md=");
                sb.append(iM237a);
                sb.append("m");
            }
        }
        if (z2) {
            sb.append("\\-mqs=on");
            sb.append("\\-ms=");
            if (i2 == 1) {
                i3 = 8;
            } else if (i2 == 3) {
                i3 = 16;
            } else if (i2 == 7) {
                i3 = 512;
            } else if (i2 == 9) {
                i3 = 1024;
            }
            sb.append(i3);
            sb.append('m');
        } else {
            sb.append("\\-ms=off");
        }
        sb.append("\\-mf=off");
    }

    /* JADX INFO: renamed from: f0 */
    public static boolean m73f0(String str, String str2, AbstractC0194a abstractC0194a, boolean z2) {
        StringBuilder sb = new StringBuilder();
        sb.append(m90r());
        sb.append(z2 ? " lp '" : " l '");
        sb.append(str.replace("'", "'\\''"));
        sb.append("' ");
        sb.append(str2);
        return abstractC0194a.m592b(sb.toString()) && m57S(abstractC0194a) == 2;
    }

    /* JADX INFO: renamed from: g */
    public static int m74g(CharSequence charSequence, CharSequence charSequence2) {
        int length = charSequence.length();
        int length2 = charSequence2.length();
        int iMin = Math.min(length2, length);
        int i2 = 0;
        for (int i3 = 0; i3 < iMin; i3++) {
            char cCharAt = charSequence.charAt(i3);
            char cCharAt2 = charSequence2.charAt(i3);
            int i4 = cCharAt - cCharAt2;
            if (i4 != 0) {
                cCharAt = m83k0(cCharAt);
                cCharAt2 = m83k0(cCharAt2);
                i4 = cCharAt - cCharAt2;
            }
            if (cCharAt <= '9' && cCharAt2 <= '9' && cCharAt >= '0' && cCharAt2 >= '0') {
                if (i2 == 0) {
                    i2 = i4;
                }
                boolean z2 = length2 - i3 < 2;
                if (length - i3 < 2) {
                    if (z2) {
                        return i2;
                    }
                    return -1;
                }
                if (z2) {
                    return 1;
                }
                int i5 = i3 + 1;
                char cCharAt3 = charSequence2.charAt(i5);
                boolean z3 = cCharAt3 > '9' || cCharAt3 < '0';
                char cCharAt4 = charSequence.charAt(i5);
                if (cCharAt4 > '9' || cCharAt4 < '0') {
                    if (z3 && i2 != 0) {
                        return i2;
                    }
                    if (!z3) {
                        return -1;
                    }
                } else if (z3) {
                    return 1;
                }
            } else {
                if (i4 != 0) {
                    return i4;
                }
                i2 = 0;
            }
        }
        return length - length2;
    }

    /* JADX INFO: renamed from: g0 */
    public static boolean m75g0(String str, String str2, String str3, String str4, AbstractC0194a abstractC0194a, boolean z2) {
        if (!abstractC0194a.m592b("cd '" + str4.replace("'", "'\\''") + "'")) {
            return false;
        }
        abstractC0194a.m599k(false);
        StringBuilder sb = new StringBuilder();
        sb.append(m90r());
        sb.append(z2 ? " a '" : " d '");
        sb.append(str.replace("'", "'\\''"));
        sb.append("' ");
        sb.append(str2);
        sb.append(" -- ");
        sb.append(str3);
        return abstractC0194a.m592b(sb.toString()) && m57S(abstractC0194a) == 2;
    }

    /* JADX INFO: renamed from: h */
    public static void m76h(Context context, String str, boolean z2) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (str.startsWith(".")) {
                str = "ru.zdevs.zarchiver".concat(str);
            }
            packageManager.setComponentEnabledSetting(new ComponentName("ru.zdevs.zarchiver", str), z2 ? 1 : 2, 1);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x006c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0070  */
    /* JADX INFO: renamed from: h0 */
    public static void m77h0(ZArchiverService zArchiverService, int i2, int i3) {
        int[] iArr = f117d;
        synchronized (iArr) {
            int i4 = iArr[i2];
            if ((i4 & 2097152) == 2097152) {
                if (i3 == 2162688 || i3 == 15) {
                    iArr[i2] = i4 & (-2097153);
                }
                if (i3 != 15) {
                    return;
                }
            }
            if (i3 == 2097152) {
                iArr[i2] = iArr[i2] | 2097152;
                return;
            }
            int i5 = iArr[i2];
            if ((i5 & 15) != 15 || i3 == 0) {
                iArr[i2] = i3;
            } else {
                iArr[i2] = i5 | i3;
            }
            if (i3 >= 255) {
                if ((i3 & 1048576) == 1048576) {
                    try {
                        if (C2JBridge.f1565n[i2] != null) {
                            C2JBridge.m801b(i2, null);
                        }
                        if (C2JBridge.f1564m[i2] != null) {
                            C2JBridge.m800a(i2, 18);
                        }
                    } catch (Exception unused) {
                    }
                    if (zArchiverService != null) {
                        try {
                            zArchiverService.mo754d(i2, 100);
                            zArchiverService.m892g(i2, 0);
                            return;
                        } catch (Exception unused2) {
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            byte b2 = f118e[i2];
            if (b2 == -127 || b2 == -121 || b2 == -117 || b2 == 1) {
                if (C2JBridge.f1554c) {
                    C2JBridge.cSetStatus(i2, (byte) i3);
                }
            } else if (b2 != 13) {
                if (b2 == 3) {
                    if (C2JBridge.f1554c) {
                        C2JBridge.cSetStatus(i2, (byte) i3);
                    }
                } else if (b2 != 4) {
                    if (b2 == 5 || b2 == 7 || b2 == 8) {
                        if (C2JBridge.f1554c) {
                            C2JBridge.cSetStatus(i2, (byte) i3);
                        }
                    } else if (b2 != 10) {
                        if (b2 != 11) {
                            return;
                        }
                        if (C2JBridge.f1554c) {
                            C2JBridge.cSetStatus(i2, (byte) i3);
                        }
                    }
                }
            }
            if (i3 == 15) {
                if (C2JBridge.f1565n[i2] != null) {
                    C2JBridge.m801b(i2, null);
                }
                if (C2JBridge.f1564m[i2] != null) {
                    C2JBridge.m800a(i2, 18);
                }
                C0234a.m677h(i2);
            }
        }
    }

    /* JADX INFO: renamed from: i */
    public static String m78i(String str, String str2) {
        if (str == null) {
            return m66b0(str2);
        }
        if (str2.isEmpty()) {
            return str;
        }
        boolean z2 = false;
        boolean z3 = str2.charAt(0) == '/';
        int length = str.length();
        if (length > 0 && str.charAt(length - 1) == '/') {
            z2 = true;
        }
        if (z2 != z3) {
            return str.concat(str2);
        }
        if (z3) {
            return str + str2.substring(1);
        }
        return str + "/" + str2;
    }

    /* JADX INFO: renamed from: i0 */
    public static int m79i0(int i2, String str) {
        if (str == null) {
            return i2;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return i2;
        }
    }

    /* JADX INFO: renamed from: j */
    public static C0013b m80j(C0016e c0016e, C0018g c0018g, C0018g c0018g2, int i2, float f2, C0018g c0018g3, C0018g c0018g4, int i3, boolean z2) {
        C0013b c0013bM113k = c0016e.m113k();
        c0013bM113k.m29a(c0018g, c0018g2, i2, f2, c0018g3, c0018g4, i3);
        if (z2) {
            C0018g c0018gM111i = c0016e.m111i();
            C0018g c0018gM111i2 = c0016e.m111i();
            C0012a c0012a = c0013bM113k.f107c;
            c0012a.m25c(c0018gM111i, 1.0f);
            c0012a.m25c(c0018gM111i2, -1.0f);
        }
        return c0013bM113k;
    }

    /* JADX INFO: renamed from: j0 */
    public static long m81j0(long j2, String str) {
        if (str == null) {
            return j2;
        }
        try {
            return Long.parseLong(str);
        } catch (Exception unused) {
            return j2;
        }
    }

    /* JADX INFO: renamed from: k */
    public static C0013b m82k(C0016e c0016e, C0018g c0018g, C0018g c0018g2, int i2, boolean z2) {
        C0013b c0013bM113k = c0016e.m113k();
        c0013bM113k.m32d(c0018g, c0018g2, i2);
        if (z2) {
            c0013bM113k.f107c.m25c(c0016e.m111i(), 1);
        }
        return c0013bM113k;
    }

    /* JADX INFO: renamed from: k0 */
    public static char m83k0(char c2) {
        if (c2 == '.') {
            return ' ';
        }
        if (c2 == ' ') {
            return '.';
        }
        if (c2 < 128) {
            return ('A' > c2 || c2 > 'Z') ? c2 : (char) (c2 + ' ');
        }
        return Character.toLowerCase(c2);
    }

    /* JADX INFO: renamed from: l */
    public static int m84l(Context context) throws Throwable {
        String str;
        Locale locale = context.getResources().getConfiguration().locale;
        String language = locale.getLanguage();
        if ("zh".equals(language)) {
            language = language + '_' + locale.getCountry();
        } else if ("en".equals(language)) {
            String id = Calendar.getInstance().getTimeZone().getID();
            if (id == null || id.startsWith("America")) {
                language = "en";
            } else {
                XmlResourceParser xmlResourceParser = null;
                try {
                    XmlResourceParser xml = context.getResources().getXml(R.xml.time_zones_by_country);
                    while (xml.getEventType() != 1) {
                        try {
                            if (xml.getEventType() == 2 && "timezone".equals(xml.getName())) {
                                String attributeValue = xml.getAttributeValue(null, "code");
                                if (xml.next() == 4 && id.equals(xml.getText()) && attributeValue.length() >= 2) {
                                    switch ((attributeValue.charAt(0) * 256) + attributeValue.charAt(1)) {
                                        case 24933:
                                        case 26988:
                                        case 29537:
                                        case 29561:
                                            str = "ar";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 25209:
                                        case 27514:
                                        case 29301:
                                        case 30049:
                                            str = "ru";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 25454:
                                        case 26731:
                                            str = "zh_CN";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 25701:
                                            str = "de";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 25971:
                                            str = "es";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 26226:
                                            str = "fr";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 27248:
                                            str = "ja";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 27504:
                                        case 27506:
                                            str = "ko";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 29815:
                                            str = "zh_TW";
                                            language = str;
                                            xml.close();
                                            break;
                                        default:
                                            if (id.startsWith("Europe")) {
                                                language = attributeValue;
                                            }
                                            xml.close();
                                            break;
                                    }
                                }
                            } else {
                                xml.next();
                            }
                        } catch (Exception unused) {
                            xmlResourceParser = xml;
                            if (xmlResourceParser != null) {
                                xmlResourceParser.close();
                            }
                        } catch (Throwable th) {
                            xmlResourceParser = xml;
                            th = th;
                            if (xmlResourceParser != null) {
                                xmlResourceParser.close();
                            }
                            throw th;
                        }
                    }
                    xml.close();
                } catch (Exception unused2) {
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        if (language.length() < 2) {
            return 866;
        }
        switch (language.charAt(1) + (language.charAt(0) * 256)) {
            case 24946:
                return 864;
            case 25191:
            case 28011:
            case 29554:
                return 855;
            case 25209:
            case 29301:
            case 30059:
                return 866;
            case 25459:
            case 26738:
            case 26741:
            case 28780:
                return 852;
            case 25964:
                return 737;
            case 25966:
                return 437;
            case 25972:
            case 27764:
            case 27766:
                return 775;
            case 26725:
                return 862;
            case 26995:
                return 861;
            case 27233:
                return 932;
            case 27503:
                return 949;
            case 28788:
                return 860;
            case 29800:
                return 874;
            case 29810:
                return 857;
            case 31336:
                return language.endsWith("_TW") ? 950 : 936;
            default:
                return 850;
        }
    }

    /* JADX INFO: renamed from: m */
    public static int m85m(long j2) {
        if (j2 < 0 || j2 > 2147483647L) {
            throw new ArithmeticException("unsigned integer overflow");
        }
        return (int) j2;
    }

    /* JADX INFO: renamed from: n */
    public static boolean m86n(String str, String str2) {
        int length = str.length() - str2.length();
        if (length != 0 && length != -1) {
            if (length != 1) {
                return false;
            }
            str2 = str;
            str = str2;
        }
        int length2 = str.length();
        int i2 = 0;
        while (true) {
            int i3 = length2 - 1;
            if (length2 == 0) {
                return length == 0 || str2.charAt(i2) == '/';
            }
            if (str.charAt(i2) != str2.charAt(i2)) {
                return false;
            }
            i2++;
            length2 = i3;
        }
    }

    /* JADX INFO: renamed from: o */
    public static List m87o() {
        Context contextM720c = ZApp.m720c(null);
        if (contextM720c == null) {
            return null;
        }
        PackageManager packageManager = contextM720c.getPackageManager();
        List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
        if (installedPackages != null && installedPackages.size() > 1) {
            return installedPackages;
        }
        ArrayList arrayList = new ArrayList();
        try {
            Process processExec = Runtime.getRuntime().exec("pm list packages");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()), 16384);
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(line.substring(line.indexOf(58) + 1), 0);
                        if (packageInfo != null) {
                            arrayList.add(packageInfo);
                        }
                    } catch (Throwable unused) {
                    }
                } catch (Throwable unused2) {
                    C0181d.m563d(bufferedReader);
                    return null;
                }
            }
            processExec.waitFor();
            C0181d.m563d(bufferedReader);
        } catch (Throwable unused3) {
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: p */
    public static C0374b m88p(int i2, String str) throws Throwable {
        SQLiteDatabase readableDatabase;
        Throwable th;
        Cursor cursor = null;
        C0374b c0374b = null;
        try {
            readableDatabase = new C0373a(ZApp.f1375c).getReadableDatabase();
        } catch (SQLiteCantOpenDatabaseException unused) {
            readableDatabase = null;
        }
        if (readableDatabase == null) {
            return null;
        }
        try {
            Cursor cursorQuery = i2 == 1000 ? readableDatabase.query("FA", null, "EXT = ?", new String[]{str}, null, null, "TYPE DESC") : readableDatabase.query("FA", null, "EXT = ? AND TYPE = ?", new String[]{str, String.valueOf(i2)}, null, null, null);
            try {
                if (cursorQuery.moveToNext()) {
                    c0374b = new C0374b();
                    cursorQuery.getInt(0);
                    c0374b.f2073a = cursorQuery.getString(1);
                    c0374b.f2074b = cursorQuery.getString(2);
                    c0374b.f2075c = cursorQuery.getString(3);
                    c0374b.f2076d = cursorQuery.getInt(4);
                    c0374b.f2077e = cursorQuery.getInt(5);
                }
                C0181d.m561b(cursorQuery);
                C0181d.m563d(readableDatabase);
                return c0374b;
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                C0181d.m561b(cursor);
                C0181d.m563d(readableDatabase);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: renamed from: q */
    public static C0129h m89q(C0129h c0129h) {
        if (c0129h.m480g()) {
            return new C0129h(c0129h.m481h() ? "root" : "file", c0129h.f1015c);
        }
        return c0129h;
    }

    /* JADX INFO: renamed from: r */
    public static String m90r() {
        File file = null;
        String string = null;
        for (int i2 = -2; i2 < 3; i2++) {
            if (i2 == -2) {
                string = "/data/data/ru.zdevs.zarchiver/bin/p7zbin";
            } else if (i2 != -1) {
                string = f116c[i2];
            } else {
                StringBuilder sb = new StringBuilder();
                if (C2JBridge.f1555d == null) {
                    C2JBridge.m802c(null);
                }
                sb.append(C2JBridge.f1555d);
                sb.append("/libp7zbin.so");
                string = sb.toString();
            }
            File file2 = new File(string);
            if (file2.exists()) {
                file = file2;
                break;
            }
        }
        if (file == null || !file.exists() || file.canExecute()) {
            return string;
        }
        File file3 = new File("/data/data/ru.zdevs.zarchiver/bin/p7zbin");
        if (file3.exists() && file3.length() == file.length()) {
            return "/data/data/ru.zdevs.zarchiver/bin/p7zbin";
        }
        if (file3.getParentFile() != null) {
            file3.getParentFile().mkdirs();
        }
        C0195b c0195b = new C0195b();
        c0195b.m592b("cp " + string + " /data/data/ru.zdevs.zarchiver/bin/p7zbin; chmod 755 '/data/data/ru.zdevs.zarchiver/bin/p7zbin'");
        c0195b.close();
        return "/data/data/ru.zdevs.zarchiver/bin/p7zbin";
    }

    /* JADX INFO: renamed from: s */
    public static String m91s(String str) {
        int i2;
        int iLastIndexOf = str.lastIndexOf(46);
        return (iLastIndexOf < 0 || str.length() <= (i2 = iLastIndexOf + 1)) ? "" : C0385h.m1085i(str.substring(i2));
    }

    /* JADX INFO: renamed from: t */
    public static Field m92t(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException | SecurityException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: u */
    public static String m93u(String str) {
        if (C0079a.m266m().m278n(str)) {
            String strM275i = C0079a.m266m().m275i();
            if (!C0385h.m1081e(strM275i)) {
                return strM275i;
            }
        }
        return m91s(str);
    }

    /* JADX INFO: renamed from: v */
    public static int m94v() {
        synchronized (f117d) {
            for (int i2 = 0; i2 < 5; i2++) {
                if (m49K(f117d[i2], 1048576)) {
                    return i2;
                }
            }
            return -1;
        }
    }

    /* JADX INFO: renamed from: w */
    public static Method m95w(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException | SecurityException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: x */
    public static String m96x(String str) {
        if (C0385h.m1081e(str)) {
            return "application/octet-stream";
        }
        String strM1085i = C0385h.m1085i(str);
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strM1085i);
        if (mimeTypeFromExtension != null) {
            return mimeTypeFromExtension;
        }
        if (strM1085i.equals("7z")) {
            return "application/x-7z-compressed";
        }
        if (strM1085i.equals("bz2")) {
            return "application/x-bzip2";
        }
        if (strM1085i.equals("gz")) {
            return "application/x-gzip";
        }
        if (strM1085i.equals("xz")) {
            return "application/x-xz";
        }
        if (strM1085i.equals("lz4")) {
            return "application/x-lz4";
        }
        if (strM1085i.equals("zst") || strM1085i.equals("zstd")) {
            return "application/zstd";
        }
        if (strM1085i.equals("mobi")) {
            return "application/x-mobipocket-ebook";
        }
        if (strM1085i.equals("fb2")) {
            return "application/x-fictionbook+xml";
        }
        if (f115b == null) {
            m55Q();
        }
        Byte b2 = (Byte) f115b.get(strM1085i);
        byte bByteValue = b2 == null ? (byte) 0 : b2.byteValue();
        if (bByteValue == 11) {
            return "text/".concat(strM1085i);
        }
        if (bByteValue == 5) {
            return "application/msword";
        }
        if (bByteValue == 8) {
            return "application/msexcel";
        }
        if (bByteValue == 10) {
            return "application/mspowerpoint";
        }
        if (bByteValue == 9) {
            return "image/".concat(strM1085i);
        }
        if (bByteValue == 7) {
            return "audio/".concat(strM1085i);
        }
        return bByteValue == 14 ? "video/".concat(strM1085i) : "application/x-".concat(strM1085i);
    }

    /* JADX INFO: renamed from: y */
    public static String m97y(String str) {
        int iLastIndexOf = str.lastIndexOf(47, str.length() - 2);
        return (iLastIndexOf == -1 || str.length() <= 1) ? str : m63Y(str.substring(iLastIndexOf + 1));
    }

    /* JADX INFO: renamed from: z */
    public static int m98z(OutputStream outputStream) {
        Method methodM95w;
        if (!(outputStream instanceof FileOutputStream)) {
            return -1;
        }
        try {
            FileDescriptor fd = ((FileOutputStream) outputStream).getFD();
            if (fd == null || (methodM95w = m95w(FileDescriptor.class, "getInt$", new Class[0])) == null) {
                return -1;
            }
            return ((Integer) methodM95w.invoke(fd, new Object[0])).intValue();
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override // p020g0.InterfaceC0125d
    /* JADX INFO: renamed from: a */
    public boolean mo99a(C0128g c0128g, C0129h c0129h, byte b2, int[] iArr, C0051i c0051i, boolean z2) {
        if (!c0129h.m484k()) {
            return false;
        }
        int iM544d = C0166c.m544d(c0129h);
        if (iArr.length == 1 && (!z2 || C0358b.m1041l(4096))) {
            c0128g.m471a(3);
        }
        c0128g.m471a(22);
        if (z2) {
            c0128g.m471a(24);
            if (!m49K(iM544d, 256)) {
                c0128g.m471a(25);
                c0128g.m471a(23);
            }
        }
        return true;
    }

    @Override // p020g0.InterfaceC0125d
    /* JADX INFO: renamed from: b */
    public boolean mo100b(C0128g c0128g, C0129h c0129h, byte b2, int[] iArr, C0044b c0044b) {
        if (!c0129h.m484k()) {
            return false;
        }
        int iM544d = C0166c.m544d(c0129h);
        c0128g.m471a(22);
        c0128g.m471a(24);
        if (!m49K(iM544d, 256)) {
            c0128g.m471a(25);
            c0128g.m471a(23);
            if (iArr.length == 1) {
                c0128g.m471a(27);
            }
        }
        return true;
    }

    @Override // p020g0.InterfaceC0125d
    /* JADX INFO: renamed from: c */
    public boolean mo101c(C0128g c0128g, C0129h c0129h, byte b2, int[] iArr, C0044b c0044b) {
        if (!c0129h.m484k()) {
            return false;
        }
        if (iArr.length > 1) {
            c0128g.m471a(24);
        } else {
            c0128g.m471a(3);
        }
        c0128g.m471a(22);
        return true;
    }
}
