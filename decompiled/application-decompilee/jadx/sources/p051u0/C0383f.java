package p051u0;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.system.Os;
import java.io.File;
import java.net.URLDecoder;
import java.util.Iterator;
import p033m0.C0181d;
import p055w0.C0412c;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: u0.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0383f {

    /* JADX INFO: renamed from: a */
    public static final String[] f2087a = {"/storage/emulated/", "/sdcard/"};

    /* JADX INFO: renamed from: a */
    public static boolean m1070a(String str) {
        return str != null && new File(str).exists();
    }

    /* JADX INFO: renamed from: b */
    public static String m1071b(Uri uri, String str, String[] strArr) throws Throwable {
        Throwable th;
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = ZApp.m722e().getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        cursorQuery.close();
                        return string;
                    }
                } catch (Exception unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    cursor = cursorQuery;
                    if (cursor == null) {
                        throw th;
                    }
                    cursor.close();
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: renamed from: c */
    public static String m1072c(Context context, Uri uri) {
        Context contextM720c = ZApp.m720c(context);
        if (contextM720c == null) {
            return null;
        }
        try {
            Cursor cursorQuery = contextM720c.getContentResolver().query(uri, null, null, null, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
            try {
                int columnIndex = cursorQuery.getColumnIndex("_display_name");
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(columnIndex);
                cursorQuery.close();
                return string;
            } catch (Throwable th) {
                try {
                    cursorQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: d */
    public static String m1073d(Context context, Uri uri) throws Throwable {
        Throwable th;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        ParcelFileDescriptor parcelFileDescriptor = null;
        try {
            parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r");
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                C0181d.m562c(parcelFileDescriptorOpenFileDescriptor);
                return null;
            }
            try {
                String str = Os.readlink("/proc/self/fd/" + parcelFileDescriptorOpenFileDescriptor.getFd());
                C0181d.m562c(parcelFileDescriptorOpenFileDescriptor);
                return str;
            } catch (Exception unused) {
                C0181d.m562c(parcelFileDescriptorOpenFileDescriptor);
                return null;
            } catch (Throwable th2) {
                th = th2;
                parcelFileDescriptor = parcelFileDescriptorOpenFileDescriptor;
                C0181d.m562c(parcelFileDescriptor);
                throw th;
            }
        } catch (Exception unused2) {
            parcelFileDescriptorOpenFileDescriptor = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: renamed from: e */
    public static String m1074e(Context context, Uri uri) {
        Uri uri2 = null;
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if ("com.android.externalstorage.documents".equals(uri.getAuthority())) {
                String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                String str = strArrSplit[0];
                if ("primary".equalsIgnoreCase(str)) {
                    return Environment.getExternalStorageDirectory() + "/" + strArrSplit[1];
                }
                if ("home".equalsIgnoreCase(str)) {
                    return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS) + "/" + strArrSplit[1];
                }
                C0412c.a aVarM1112f = C0412c.m1112f(str);
                if (aVarM1112f != null) {
                    return aVarM1112f.f2153b + "/" + strArrSplit[1];
                }
            } else {
                if ("com.android.providers.downloads.documents".equals(uri.getAuthority())) {
                    return m1071b(ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.parseLong(DocumentsContract.getDocumentId(uri))), null, null);
                }
                if ("com.android.providers.media.documents".equals(uri.getAuthority())) {
                    String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
                    String str2 = strArrSplit2[0];
                    if ("image".equals(str2)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if ("video".equals(str2)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str2)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return m1071b(uri2, "_id=?", new String[]{strArrSplit2[1]});
                }
            }
        } else if ("content".equalsIgnoreCase(uri.getScheme())) {
            return "com.google.android.apps.photos.content".equals(uri.getAuthority()) ? uri.getLastPathSegment() : m1071b(uri, null, null);
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    public static String m1075f(Context context, Uri uri) {
        String strM1074e;
        if (uri == null) {
            return null;
        }
        if ("file".equals(uri.getScheme())) {
            return uri.getPath();
        }
        if (!"content".equals(uri.getScheme())) {
            return null;
        }
        uri.toString();
        Context contextM720c = ZApp.m720c(context);
        if (contextM720c != null) {
            try {
                strM1074e = m1074e(contextM720c, uri);
            } catch (Exception unused) {
                strM1074e = null;
            }
            if (m1070a(strM1074e)) {
                return strM1074e;
            }
            String strM1073d = m1073d(contextM720c, uri);
            if (m1070a(strM1073d)) {
                return strM1073d;
            }
        }
        String query = uri.getQuery();
        if (query != null && query.contains("file://")) {
            String strDecode = URLDecoder.decode(query.substring(query.indexOf("file://") + 7));
            if (m1070a(strDecode)) {
                return strDecode;
            }
        }
        String string = uri.toString();
        int iIndexOf = string.indexOf("%3A");
        if (iIndexOf > 0) {
            String strDecode2 = URLDecoder.decode(string.substring(iIndexOf + 3));
            Iterator it = C0412c.m1117k().iterator();
            while (it.hasNext()) {
                File file = new File(((C0412c.a) it.next()).f2153b, strDecode2);
                if (file.exists()) {
                    return file.getAbsolutePath();
                }
            }
        }
        String[] strArr = f2087a;
        for (int i2 = 0; i2 < 2; i2++) {
            int iIndexOf2 = string.indexOf(strArr[i2]);
            if (iIndexOf2 >= 0) {
                int iIndexOf3 = string.indexOf("?", iIndexOf2);
                if (iIndexOf3 < 0) {
                    iIndexOf3 = string.length();
                }
                String strDecode3 = URLDecoder.decode(string.substring(iIndexOf2, iIndexOf3));
                if (m1070a(strDecode3)) {
                    return strDecode3;
                }
            }
        }
        return null;
    }
}
