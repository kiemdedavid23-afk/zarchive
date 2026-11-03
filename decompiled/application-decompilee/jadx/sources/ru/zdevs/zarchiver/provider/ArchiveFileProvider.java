package ru.zdevs.zarchiver.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.webkit.MimeTypeMap;
import java.io.FileNotFoundException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import p004b.C0015d;
import p020g0.C0129h;
import p021g1.C0132c;
import p024i.C0147a;
import p033m0.C0181d;
import p051u0.C0385h;
import p055w0.C0412c;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.archiver.NArc;

/* JADX INFO: loaded from: classes.dex */
public class ArchiveFileProvider extends ContentProvider {

    /* JADX INFO: renamed from: a */
    public static final String[] f1645a = {"_display_name", "_size"};

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.provider.ArchiveFileProvider$a */
    public static class C0311a {

        /* JADX INFO: renamed from: a */
        public final C0129h f1646a;

        /* JADX INFO: renamed from: b */
        public final String f1647b;

        /* JADX INFO: renamed from: c */
        public final int f1648c;

        /* JADX INFO: renamed from: d */
        public final long f1649d;

        public C0311a(C0129h c0129h, String str, int i2, long j2) {
            this.f1646a = c0129h;
            this.f1647b = str;
            this.f1648c = i2;
            this.f1649d = j2;
        }
    }

    /* JADX INFO: renamed from: b */
    public static C0311a m877b(Context context, Uri uri) {
        String strSubstring;
        int i2;
        String strSubstring2;
        String strM496a;
        String path = uri.getPath();
        if (path == null) {
            throw new IllegalStateException("Incorrect Uri");
        }
        int iIndexOf = path.indexOf("&FILE=");
        String strSubstring3 = null;
        if (iIndexOf > 0) {
            strSubstring = path.substring(iIndexOf + 6);
            path = path.substring(0, iIndexOf);
        } else {
            strSubstring = null;
        }
        int iIndexOf2 = path.indexOf("&L=");
        long jM81j0 = -2;
        if (iIndexOf2 > 0) {
            jM81j0 = C0015d.m81j0(-2L, path.substring(iIndexOf2 + 3));
            path = path.substring(0, iIndexOf2);
        }
        long j2 = jM81j0;
        int iIndexOf3 = path.indexOf("&S=");
        if (iIndexOf3 > 0) {
            int iM79i0 = C0015d.m79i0(0, path.substring(iIndexOf3 + 3));
            path = path.substring(0, iIndexOf3);
            i2 = iM79i0;
        } else {
            i2 = 0;
        }
        int iIndexOf4 = path.indexOf("&ID=");
        if (iIndexOf4 > 0) {
            strSubstring2 = path.substring(iIndexOf4 + 4);
            path = path.substring(0, iIndexOf4);
        } else {
            strSubstring2 = null;
        }
        int iIndexOf5 = path.indexOf("&TYPE=");
        if (iIndexOf5 > 0) {
            strSubstring3 = path.substring(iIndexOf5 + 6);
            path = path.substring(0, iIndexOf5);
        }
        String fragment = uri.getFragment();
        if (fragment != null) {
            try {
                strM496a = C0132c.m496a(context, path, fragment);
            } catch (C0132c.a | ParseException unused) {
                throw new IllegalStateException("Password expired");
            }
        } else {
            strM496a = fragment;
        }
        if (strSubstring == null && strSubstring2 == null) {
            throw new IllegalStateException("Incorrect Uri");
        }
        if (strSubstring == null) {
            strSubstring = "";
        }
        C0129h c0129h = new C0129h("arch", path, strSubstring);
        c0129h.f1016d = strSubstring2;
        c0129h.f1014b = strSubstring3;
        c0129h.f1018f = 0;
        return new C0311a(c0129h, strM496a, i2, j2);
    }

    /* JADX INFO: renamed from: d */
    public static Uri m878d(Context context, C0129h c0129h, String str, long j2, String str2, int i2) {
        String string;
        StringBuilder sb = new StringBuilder(c0129h.f1015c);
        if (str != null) {
            sb.append("&TYPE=");
            sb.append(str);
        }
        if (c0129h.f1016d != null) {
            sb.append("&ID=");
            sb.append(c0129h.f1016d);
        }
        sb.append("&S=");
        sb.append(i2);
        sb.append("&L=");
        sb.append(j2);
        sb.append("&FILE=");
        sb.append(c0129h.f1017e);
        Uri.Builder builderPath = new Uri.Builder().scheme("content").authority("ru.zdevs.zarchiver.archive").path(sb.toString());
        String str3 = c0129h.f1015c;
        if (str2 == null) {
            string = null;
        } else {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmm", Locale.ENGLISH);
            Calendar calendar = Calendar.getInstance();
            C0147a c0147a = new C0147a(context);
            String str4 = simpleDateFormat.format(calendar.getTime());
            StringBuilder sb2 = new StringBuilder("DP");
            sb2.append(c0147a.m509b(str4 + c0147a.m509b(str2, C0147a.m507c(str4)), C0147a.m507c(str3)));
            string = sb2.toString();
        }
        return builderPath.fragment(string).build();
    }

    /* JADX INFO: renamed from: a */
    public final Context m879a() {
        ZApp zApp = ZApp.f1375c;
        if (zApp != null) {
            return zApp;
        }
        if (getContext() == null) {
            return null;
        }
        Context applicationContext = getContext().getApplicationContext();
        return applicationContext != null ? applicationContext : getContext();
    }

    /* JADX INFO: renamed from: c */
    public final C0311a m880c(Uri uri) {
        Context context = getContext();
        if (context != null) {
            return m877b(context, uri);
        }
        throw new IllegalStateException("No Context attached");
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("No support updates");
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        String mimeTypeFromExtension;
        String strM91s = C0015d.m91s(m880c(uri).f1646a.f1017e);
        return (!C0385h.m1081e(strM91s) || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strM91s)) == null) ? "application/octet-stream" : mimeTypeFromExtension;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No support inserts");
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        Context contextM879a = m879a();
        if (contextM879a != null) {
            ZApp.m719b(contextM879a);
        }
        C0412c.m1109c(contextM879a);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:67:0x00e2  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        boolean z2;
        C0311a c0311aM880c = m880c(uri);
        C0129h c0129h = c0311aM880c.f1646a;
        int iM79i0 = C0015d.m79i0(-1, c0129h.f1016d);
        String str2 = c0129h.f1015c;
        boolean z3 = false;
        if ((str2 != null && str2.startsWith("/uri/")) != false) {
            ZApp.m719b(getContext());
        }
        if (C2JBridge.f1554c || C2JBridge.m804e()) {
            int i2 = c0311aM880c.f1648c;
            C2JBridge.cSetOption(1, i2 >> 16);
            C2JBridge.cSetOption(4, C0015d.m49K(i2, 4) ? 1 : 0);
        }
        if ((str.indexOf(114) != -1 && str.indexOf(119) == -1) != true) {
            if ((str.indexOf(119) != -1) != true) {
                throw new IllegalArgumentException("Invalid mode: ".concat(str));
            }
            String str3 = c0129h.f1014b;
            if (str3 != null) {
                if (!(str3.equals("apk") || str3.equals("zip") || str3.equals("7z") || str3.equals("tar") || str3.equals("jar") || str3.equals("wim"))) {
                    if (c0129h.f1014b == null) {
                    }
                    throw new IllegalArgumentException("ZArchiver: Operation not supported for this type of archive");
                }
            } else if (c0129h.f1014b == null || !C0015d.m52N(1, c0129h.f1015c)) {
                throw new IllegalArgumentException("ZArchiver: Operation not supported for this type of archive");
            }
            throw new IllegalArgumentException("ZArchiver: Edit file is supported only in Donation/Pro version");
        }
        NArc nArcM806k = null;
        try {
            nArcM806k = NArc.m806k(c0129h.f1015c, c0129h.f1014b, c0311aM880c.f1647b);
            z2 = false;
            for (int i3 = 0; i3 < 2 && nArcM806k != null; i3++) {
                try {
                    try {
                        try {
                            ParcelFileDescriptor parcelFileDescriptorM812e = nArcM806k.m812e(m879a(), iM79i0, c0129h.f1017e, 2097152, true);
                            if (parcelFileDescriptorM812e == null) {
                                break;
                            }
                            return parcelFileDescriptorM812e;
                        } catch (NArc.NArcPasswordException unused) {
                            ZApp.m725i(R.string.ERROR_WRONG_PASSWORD);
                        }
                    } catch (OutOfMemoryError unused2) {
                        System.gc();
                        if (i3 == 1) {
                            z2 = true;
                        }
                    }
                } catch (Exception unused3) {
                    z3 = z2;
                    z2 = z3;
                }
            }
        } catch (Exception unused4) {
        }
        C0181d.m563d(nArcM806k);
        if (z2) {
            throw new IllegalArgumentException("ZArchiver: File is too big for direct open");
        }
        throw new FileNotFoundException();
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i2;
        C0311a c0311aM880c = m880c(uri);
        String[] strArr3 = strArr == null ? f1645a : strArr;
        String strM478e = c0311aM880c.f1646a.m478e();
        int length = strArr3.length;
        String[] strArr4 = new String[length];
        int length2 = strArr3.length;
        Object[] objArr = new Object[length2];
        int i3 = 0;
        for (String str3 : strArr3) {
            strArr4[i3] = str3;
            if ("_display_name".equals(str3)) {
                i2 = i3 + 1;
                objArr[i3] = strM478e;
            } else if ("_size".equals(str3)) {
                i2 = i3 + 1;
                long j2 = c0311aM880c.f1649d;
                if (j2 <= 0) {
                    j2 = 0;
                }
                objArr[i3] = Long.valueOf(j2);
            } else {
                if ("mime_type".equals(str3)) {
                    i2 = i3 + 1;
                    objArr[i3] = C0015d.m96x(strM478e);
                }
            }
            i3 = i2;
        }
        if (length != i3) {
            String[] strArr5 = new String[i3];
            System.arraycopy(strArr4, 0, strArr5, 0, i3);
            strArr4 = strArr5;
        }
        if (length2 != i3) {
            Object[] objArr2 = new Object[i3];
            System.arraycopy(objArr, 0, objArr2, 0, i3);
            objArr = objArr2;
        }
        MatrixCursor matrixCursor = new MatrixCursor(strArr4, 1);
        matrixCursor.addRow(objArr);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public final void shutdown() {
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No support updates");
    }
}
