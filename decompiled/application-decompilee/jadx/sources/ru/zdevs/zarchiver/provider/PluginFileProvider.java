package ru.zdevs.zarchiver.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.FileNotFoundException;
import p004b.C0015d;
import p020g0.C0129h;
import p021g1.C0132c;
import p029k0.C0166c;
import p033m0.C0181d;
import p051u0.C0385h;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: loaded from: classes.dex */
public class PluginFileProvider extends ContentProvider {

    /* JADX INFO: renamed from: a */
    public static final String[] f1651a = {"_display_name", "_size"};

    /* JADX INFO: renamed from: a */
    public static String m886a(Uri uri) {
        return C0181d.m566g() + '/' + uri.getFragment();
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("No support updates");
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        String mimeTypeFromExtension;
        String strM91s = C0015d.m91s(uri.getFragment());
        return (!C0385h.m1081e(strM91s) || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strM91s)) == null) ? "application/octet-stream" : mimeTypeFromExtension;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No support inserts");
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        Context applicationContext = ZApp.f1375c;
        if (applicationContext == null) {
            if (getContext() != null) {
                applicationContext = getContext().getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = getContext();
                }
            } else {
                applicationContext = null;
            }
        }
        if (applicationContext == null) {
            return true;
        }
        C0166c.m548h(applicationContext);
        return true;
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        String strSubstring;
        String strSubstring2;
        String strSubstring3;
        String strSubstring4;
        String strSubstring5;
        String strM886a = m886a(uri);
        int iM497b = C0132c.m497b(str);
        if (C0015d.m49K(iM497b, 268435456) && !C0015d.m49K(iM497b, 536870912)) {
            return ParcelFileDescriptor.open(new File(strM886a), iM497b);
        }
        if (!C0015d.m49K(iM497b, 536870912)) {
            throw new IllegalArgumentException("Invalid mode: " + str);
        }
        String path = uri.getPath();
        boolean zStartsWith = path.startsWith("/");
        int iIndexOf = path.indexOf(":/");
        C0129h c0129h = null;
        strSubstring = null;
        String strSubstring6 = null;
        if (iIndexOf >= 0) {
            String strSubstring7 = path.substring(zStartsWith ? 1 : 0, iIndexOf);
            int i2 = iIndexOf + 2;
            int iIndexOf2 = path.indexOf(47, i2);
            if (iIndexOf2 > i2) {
                strSubstring = path.substring(i2, iIndexOf2);
                i2 = iIndexOf2;
            } else {
                strSubstring = null;
            }
            int iIndexOf3 = path.indexOf(35, i2);
            int iIndexOf4 = iIndexOf3 < 0 ? path.indexOf(36, i2) : path.indexOf(36, iIndexOf3 + 1);
            if (iIndexOf3 > i2) {
                strSubstring2 = path.substring(i2, iIndexOf3);
                if (iIndexOf4 > iIndexOf3) {
                    strSubstring4 = path.substring(iIndexOf3 + 1, iIndexOf4);
                    strSubstring5 = path.substring(iIndexOf4);
                } else {
                    strSubstring3 = path.substring(iIndexOf3 + 1);
                }
                C0129h c0129h2 = new C0129h(strSubstring7, strSubstring2, strSubstring4, strSubstring);
                c0129h2.f1016d = strSubstring5;
                c0129h = c0129h2;
            } else {
                if (iIndexOf4 > i2) {
                    strSubstring2 = path.substring(i2, iIndexOf4);
                    strSubstring6 = path.substring(iIndexOf4);
                } else {
                    strSubstring2 = path.substring(i2);
                }
                strSubstring3 = "";
            }
            String str2 = strSubstring6;
            strSubstring4 = strSubstring3;
            strSubstring5 = str2;
            C0129h c0129h3 = new C0129h(strSubstring7, strSubstring2, strSubstring4, strSubstring);
            c0129h3.f1016d = strSubstring5;
            c0129h = c0129h3;
        }
        if (c0129h == null) {
            throw new FileNotFoundException();
        }
        if (C0015d.m49K(C0166c.m544d(c0129h), 256)) {
            throw new IllegalArgumentException("ZArchiver: Remote storage is read only");
        }
        throw new IllegalArgumentException("ZArchiver: Edit file is supported only in Donation/Pro version");
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i2;
        String strM886a = m886a(uri);
        String[] strArr3 = strArr == null ? f1651a : strArr;
        try {
            File file = new File(strM886a);
            if (!file.exists()) {
                return null;
            }
            int length = strArr3.length;
            String[] strArr4 = new String[length];
            int length2 = strArr3.length;
            Object[] objArr = new Object[length2];
            int i3 = 0;
            for (String str3 : strArr3) {
                if ("_display_name".equals(str3)) {
                    strArr4[i3] = "_display_name";
                    i2 = i3 + 1;
                    objArr[i3] = C0015d.m97y(strM886a);
                } else {
                    if ("_size".equals(str3)) {
                        strArr4[i3] = "_size";
                        i2 = i3 + 1;
                        objArr[i3] = Long.valueOf(file.length());
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
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public final void shutdown() {
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No support updates");
    }
}
