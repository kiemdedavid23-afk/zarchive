package ru.zdevs.zarchiver.p044io;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.system.OsConstants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.InvalidPropertiesFormatException;
import java.util.Objects;
import p004b.C0015d;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p033m0.C0178a;
import p033m0.C0181d;
import p051u0.C0379b;
import p051u0.C0385h;
import p051u0.InterfaceC0381d;
import p055w0.C0412c;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.provider.FileProvider;

/* JADX INFO: loaded from: classes.dex */
public class SAF {

    /* JADX INFO: renamed from: a */
    public static final String[] f1633a = {"mime_type"};

    /* JADX INFO: renamed from: b */
    public static final String[] f1634b = {"_display_name", "mime_type", "_size", "last_modified", "document_id"};

    /* JADX INFO: renamed from: c */
    public static final String[] f1635c = {"mime_type", "last_modified", "_size"};

    /* JADX INFO: renamed from: d */
    public static final String[] f1636d = {"_display_name", "mime_type", "_size"};

    /* JADX INFO: renamed from: e */
    public static int f1637e = 0;

    public static class DIR {
        public final String name;
        public final long size;
        public final long time;
        public final int type;

        public DIR(String str, int i2, long j2, long j3) {
            this.name = str;
            this.type = i2;
            this.size = j2;
            this.time = j3;
        }
    }

    public static class STAT {
        public final long date;
        public final int perm;
        public final long size;

        public STAT(long j2, long j3, int i2) {
            this.size = j2;
            this.date = j3;
            this.perm = i2;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.io.SAF$a */
    public static class C0309a {

        /* JADX INFO: renamed from: a */
        public String f1638a;

        /* JADX INFO: renamed from: b */
        public boolean f1639b;

        /* JADX INFO: renamed from: c */
        public long f1640c;

        /* JADX INFO: renamed from: d */
        public long f1641d;

        /* JADX INFO: renamed from: e */
        public Uri f1642e;
    }

    /* JADX INFO: renamed from: a */
    public static Uri m850a(String str, String str2, int i2) {
        if (i2 == 1) {
            return Uri.parse(String.format("content://com.android.externalstorage.documents/tree/%s/document/%s%s/children", str, str, Uri.encode(str2)));
        }
        return i2 == 0 ? Uri.parse(String.format("content://com.android.externalstorage.documents/tree/%s/document/%s%s", str, str, Uri.encode(str2))) : Uri.parse(String.format("content://com.android.externalstorage.documents/tree/%s", str));
    }

    /* JADX INFO: renamed from: b */
    public static void m851b(Uri uri, String[] strArr, AbstractC0126e.b bVar, InterfaceC0381d interfaceC0381d, int i2) {
        Cursor cursorM868s;
        if (i2 <= 30 && (cursorM868s = m868s(DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri)), strArr)) != null) {
            while (cursorM868s.moveToNext()) {
                if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                    return;
                }
                if ("vnd.android.document/directory".equals(cursorM868s.getString(0))) {
                    m851b(DocumentsContract.buildDocumentUriUsingTree(uri, cursorM868s.getString(2)), strArr, bVar, interfaceC0381d, 1 + i2);
                } else {
                    bVar.f998d++;
                    bVar.f997c = cursorM868s.getLong(1) + bVar.f997c;
                }
            }
            C0181d.m561b(cursorM868s);
        }
    }

    /* JADX INFO: renamed from: c */
    public static int m852c(String str) {
        String strM63Y = C0015d.m63Y(C0015d.m66b0(str));
        if (!strM63Y.startsWith("Android/")) {
            return 0;
        }
        int i2 = Build.VERSION.SDK_INT >= 33 ? 3 : 2;
        int iIndexOf = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            iIndexOf = strM63Y.indexOf(47, iIndexOf + 1);
            if (iIndexOf < 0) {
                if (i3 + 1 != i2) {
                    break;
                }
                return strM63Y.length();
            }
        }
        return iIndexOf;
    }

    public static int close(int i2) {
        return 0;
    }

    /* JADX INFO: renamed from: d */
    public static int m853d(Exception exc) {
        String message = exc.getMessage();
        if (message != null) {
            if (message.contains("Permission denied") || message.contains("There are no permissions") || message.contains("EACCES")) {
                return OsConstants.EACCES;
            }
            if (message.contains("No such file or directory") || message.contains("ENOENT")) {
                return OsConstants.ENOENT;
            }
            if (message.contains("I/O error") || message.contains("EIO")) {
                return OsConstants.EIO;
            }
            if (message.contains("Not a directory") || message.contains("ENOTDIR")) {
                return OsConstants.ENOTDIR;
            }
            if (message.contains("Invalid argument") || message.contains("EINVAL")) {
                return OsConstants.EINVAL;
            }
            if (message.contains("No space left on device") || message.contains("ENOSPC")) {
                return OsConstants.ENOSPC;
            }
            if (message.contains("Read only file system") || message.contains("EROFS")) {
                return OsConstants.EROFS;
            }
            if (message.contains("Illegal seek") || message.contains("ESPIPE")) {
                return OsConstants.ESPIPE;
            }
            if (message.contains("Bad file number") || message.contains("EBADF")) {
                return OsConstants.EBADF;
            }
            if (message.contains("Bad address") || message.contains("EFAULT")) {
                return OsConstants.EFAULT;
            }
            if (message.contains("File exists") || message.contains("EEXIST")) {
                return OsConstants.EEXIST;
            }
            if (message.contains("Is a directory") || message.contains("EISDIR")) {
                return OsConstants.EISDIR;
            }
        }
        if (exc instanceof IllegalStateException) {
            return OsConstants.EACCES;
        }
        if (exc instanceof InvalidPropertiesFormatException) {
            return OsConstants.EINVAL;
        }
        return exc instanceof IOException ? OsConstants.EIO : OsConstants.EPERM;
    }

    /* JADX INFO: renamed from: e */
    public static C0309a m854e(String str) {
        Uri uriM861l = m861l(0, str);
        C0309a c0309a = null;
        if (uriM861l == null) {
            return null;
        }
        Cursor cursorM868s = m868s(uriM861l, f1634b);
        if (cursorM868s != null) {
            if (cursorM868s.moveToFirst()) {
                c0309a = new C0309a();
                c0309a.f1638a = cursorM868s.getString(0);
                c0309a.f1639b = "vnd.android.document/directory".equals(cursorM868s.getString(1));
                c0309a.f1640c = cursorM868s.getLong(3);
                c0309a.f1641d = cursorM868s.getLong(2);
                String string = cursorM868s.getString(4);
                if (string != null) {
                    c0309a.f1642e = DocumentsContract.buildDocumentUriUsingTree(uriM861l, string);
                }
            }
            C0181d.m561b(cursorM868s);
        }
        return c0309a;
    }

    public static int errno() {
        return f1637e;
    }

    /* JADX INFO: renamed from: f */
    public static C0309a m855f(Uri uri) {
        String[] strArr = f1636d;
        Cursor cursorM868s = m868s(uri, strArr);
        C0309a c0309a = null;
        if (cursorM868s == null) {
            return null;
        }
        if (cursorM868s.moveToFirst()) {
            c0309a = new C0309a();
            int columnIndex = cursorM868s.getColumnIndex(strArr[0]);
            if (columnIndex != -1) {
                c0309a.f1638a = cursorM868s.getString(columnIndex);
            }
            String[] strArr2 = f1634b;
            int columnIndex2 = cursorM868s.getColumnIndex(strArr2[1]);
            if (columnIndex2 != -1) {
                c0309a.f1639b = "vnd.android.document/directory".equals(cursorM868s.getString(columnIndex2));
            }
            int columnIndex3 = cursorM868s.getColumnIndex(strArr2[2]);
            if (columnIndex3 != -1) {
                c0309a.f1641d = cursorM868s.getLong(columnIndex3);
            }
        }
        C0181d.m561b(cursorM868s);
        return c0309a;
    }

    /* JADX INFO: renamed from: g */
    public static String[] m856g(String str) {
        if (str == null || str.length() < 6 || !str.startsWith("/SAF")) {
            return null;
        }
        int iIndexOf = str.indexOf(47, 5);
        int iIndexOf2 = str.indexOf("%3A", 5);
        if (iIndexOf > 0 && iIndexOf2 > iIndexOf) {
            iIndexOf2 = -1;
        }
        String[] strArr = new String[2];
        if (iIndexOf2 != -1) {
            strArr[0] = str.substring(5, iIndexOf2);
            int i2 = iIndexOf2 + 3;
            strArr[1] = Uri.decode(iIndexOf != -1 ? str.substring(i2, iIndexOf) : str.substring(i2));
        } else if (iIndexOf != -1) {
            strArr[0] = str.substring(5, iIndexOf);
        } else {
            strArr[0] = str.substring(5);
        }
        return strArr;
    }

    /* JADX INFO: renamed from: h */
    public static Uri m857h(Context context, C0129h c0129h, boolean z2) {
        Uri uriM859j;
        Uri uriM861l;
        String strM491r = c0129h.m491r();
        if (strM491r.startsWith("/SAF") && (uriM861l = m861l(0, strM491r)) != null) {
            return uriM861l;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            return (!z2 || C0181d.m570k(strM491r) || !C0379b.m1059f() || (uriM859j = m859j(context, strM491r)) == null) ? FileProvider.m882c(strM491r) : uriM859j;
        }
        return KitKatExtSD.m849c(c0129h);
    }

    /* JADX INFO: renamed from: i */
    public static String m858i(String str) {
        int iM852c;
        if (str == null || Build.VERSION.SDK_INT < 30 || (iM852c = m852c(str)) < 0) {
            return null;
        }
        return str.substring(0, iM852c);
    }

    /* JADX INFO: renamed from: j */
    public static Uri m859j(Context context, String str) throws Throwable {
        Cursor cursorQuery;
        Uri contentUri;
        Cursor cursor = null;
        try {
            byte bM43E = C0015d.m43E(str);
            if (bM43E == 14) {
                contentUri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            } else if (bM43E == 7) {
                contentUri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
            } else {
                contentUri = bM43E == 9 ? MediaStore.Images.Media.EXTERNAL_CONTENT_URI : MediaStore.Files.getContentUri("external");
            }
            cursorQuery = context.getContentResolver().query(contentUri, new String[]{"_id"}, "_data=? ", new String[]{str}, null);
            if (cursorQuery == null) {
                C0181d.m561b(cursorQuery);
                return null;
            }
            try {
                if (!cursorQuery.moveToFirst()) {
                    C0181d.m561b(cursorQuery);
                    return null;
                }
                Uri uriWithAppendedPath = Uri.withAppendedPath(contentUri, cursorQuery.getString(0));
                C0181d.m561b(cursorQuery);
                return uriWithAppendedPath;
            } catch (Exception unused) {
                C0181d.m561b(cursorQuery);
                return null;
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                C0181d.m561b(cursor);
                throw th;
            }
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: renamed from: k */
    public static Uri m860k(int i2, String str) throws FileNotFoundException, InvalidPropertiesFormatException {
        String strM1126a;
        String strM1127b;
        String strConcat;
        String str2;
        if (str == null) {
            throw new InvalidPropertiesFormatException("Path is NULL");
        }
        boolean zStartsWith = str.startsWith("/SAF");
        if (!zStartsWith) {
            C0412c.a aVarM1111e = C0412c.m1111e(str);
            if (aVarM1111e == null) {
                throw new InvalidPropertiesFormatException("SAF Storage not found");
            }
            if (!aVarM1111e.m1129d(null)) {
                if (aVarM1111e.m1130e()) {
                    throw new InvalidPropertiesFormatException("Incorrect SAF Storage found");
                }
                throw new FileNotFoundException("There are no permissions to access the SAF: " + aVarM1111e.f2153b);
            }
            strM1126a = aVarM1111e.m1126a();
            if (strM1126a == null) {
                throw new InvalidPropertiesFormatException("Incorrect Storage ID");
            }
            strM1127b = aVarM1111e.m1127b(str);
            if (strM1127b == null) {
                strConcat = strM1126a;
                str2 = "";
            } else {
                String str3 = strM1126a;
                str2 = strM1127b;
                strConcat = str3;
            }
        } else {
            if (str.length() <= 5) {
                throw new InvalidPropertiesFormatException("Invalid SAF path");
            }
            int iIndexOf = str.indexOf(47, 5);
            if (iIndexOf == -1) {
                strConcat = str.substring(5);
                str2 = "";
            } else {
                strM1126a = str.substring(5, iIndexOf);
                strM1127b = C0015d.m63Y(str.substring(iIndexOf));
                String str4 = strM1126a;
                str2 = strM1127b;
                strConcat = str4;
            }
        }
        if (!strConcat.contains("%3A")) {
            strConcat = strConcat.concat("%3A");
        }
        if (i2 != 2 && i2 != 3) {
            return m850a(strConcat, str2, i2);
        }
        if (zStartsWith) {
            Uri uriM850a = m850a(strConcat, str2, 0);
            if (m865p(uriM850a)) {
                return uriM850a;
            }
        } else if (C0181d.m569j(str)) {
            return m850a(strConcat, str2, 0);
        }
        return DocumentsContract.createDocument(ZApp.m718a(), m850a(strConcat, C0015d.m39A(str2), 0), i2 == 3 ? "vnd.android.document/directory" : "", C0015d.m97y(str2));
    }

    /* JADX INFO: renamed from: l */
    public static Uri m861l(int i2, String str) {
        try {
            f1637e = 0;
            return m860k(i2, str);
        } catch (Exception e2) {
            f1637e = m853d(e2);
            return null;
        }
    }

    /* JADX INFO: renamed from: m */
    public static C0129h m862m(String str, String str2, boolean z2, boolean z3) {
        if (str2 == null || str == null) {
            return null;
        }
        int length = z2 ? str2.length() : m852c(str2);
        if (length < 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder("/SAF/");
        sb.append(Uri.encode(str + ":" + str2.substring(0, length)));
        sb.append(z3 ? "%2F" : "");
        String string = sb.toString();
        if (length < str2.length()) {
            string = string + str2.substring(length);
        }
        return new C0129h("saf", string);
    }

    public static int mkdir(String str) {
        if (C0412c.f2151c || str == null) {
            return -OsConstants.EACCES;
        }
        if ("/SAF".equals(str) || m861l(3, str) != null) {
            return 0;
        }
        int i2 = f1637e;
        if (i2 == 0) {
            i2 = OsConstants.EPERM;
        }
        return -i2;
    }

    public static int mkdirs(String str, int i2) {
        int length;
        int iM853d;
        if (str != null) {
            if (str.startsWith("/SAF")) {
                if (m865p(m861l(0, str))) {
                    return 0;
                }
                length = str.indexOf(47, 5);
            } else {
                if (new File(str).exists()) {
                    return 0;
                }
                C0412c.a aVarM1111e = C0412c.m1111e(str);
                length = aVarM1111e != null ? aVarM1111e.f2153b.length() : str.length();
            }
            int length2 = str.length() - i2;
            if (length2 > length && i2 != 0 && str.charAt(length2) == '/') {
                length = length2;
            }
            Uri uriM861l = m861l(0, str.substring(0, length));
            if (uriM861l == null) {
                int i3 = f1637e;
                if (i3 == 0) {
                    i3 = OsConstants.EPERM;
                }
                return -i3;
            }
            String[] strArrM1084h = C0385h.m1084h(str.substring(length), '/');
            Uri uri = null;
            int i4 = 0;
            while (true) {
                if (i4 >= strArrM1084h.length) {
                    uriM861l = uri;
                    break;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(uriM861l);
                sb.append(Uri.encode("/" + strArrM1084h[i4]));
                Uri uri2 = Uri.parse(sb.toString());
                if (!m865p(uri2)) {
                    break;
                }
                i4++;
                uri = uriM861l;
                uriM861l = uri2;
            }
            while (i4 < strArrM1084h.length && uriM861l != null) {
                try {
                    uriM861l = DocumentsContract.createDocument(ZApp.m718a(), uriM861l, "vnd.android.document/directory", strArrM1084h[i4]);
                    i4++;
                } catch (Exception e2) {
                    iM853d = m853d(e2);
                }
            }
            return 0;
        }
        iM853d = OsConstants.EPERM;
        return -iM853d;
    }

    /* JADX INFO: renamed from: n */
    public static C0129h m863n(C0412c.a aVar, String str) {
        if (aVar.m1126a() == null) {
            return null;
        }
        return m862m(aVar.m1126a(), str, false, false);
    }

    /* JADX INFO: renamed from: o */
    public static String m864o(String str) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30 && i2 < 34 && str != null && str.startsWith("/SAF")) {
            int iIndexOf = str.indexOf(47, 5);
            String strSubstring = iIndexOf == -1 ? str.substring(5) : str.substring(5, iIndexOf);
            if (!strSubstring.startsWith("primary") && strSubstring.contains("%3AAndroid")) {
                return strSubstring.substring(0, strSubstring.indexOf("%3A"));
            }
        }
        return null;
    }

    public static int open(String str, int i2) {
        if (C0412c.f2151c) {
            f1637e = 0;
            return -1;
        }
        try {
            Uri uriM860k = ((OsConstants.O_CREAT | OsConstants.O_WRONLY) & i2) != 0 ? m860k(2, str) : m860k(0, str);
            ContentResolver contentResolverM718a = ZApp.m718a();
            synchronized (contentResolverM718a) {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolverM718a.openFileDescriptor(uriM860k, ZAIO.m875d(i2));
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    return parcelFileDescriptorOpenFileDescriptor.detachFd();
                }
                f1637e = OsConstants.EIO;
                return -1;
            }
        } catch (Exception e2) {
            f1637e = m853d(e2);
            return -1;
        }
    }

    public static DIR[] opendir(String str) {
        if (C0412c.f2151c) {
            f1637e = OsConstants.EACCES;
            return null;
        }
        if (str == null || !str.startsWith("/SAF")) {
            f1637e = OsConstants.EINVAL;
            return null;
        }
        Uri uriM861l = m861l(1, str);
        Cursor cursorM868s = uriM861l == null ? null : m868s(uriM861l, f1634b);
        if (cursorM868s == null) {
            f1637e = OsConstants.EPERM;
            return null;
        }
        try {
            DIR[] dirArr = new DIR[cursorM868s.getCount()];
            int i2 = 0;
            while (cursorM868s.moveToNext()) {
                int i3 = i2 + 1;
                dirArr[i2] = new DIR(cursorM868s.getString(0), "vnd.android.document/directory".equals(cursorM868s.getString(1)) ? 4 : 8, cursorM868s.getLong(2), cursorM868s.getLong(3));
                i2 = i3;
            }
            C0181d.m561b(cursorM868s);
            return dirArr;
        } catch (Throwable th) {
            C0181d.m561b(cursorM868s);
            throw th;
        }
    }

    /* JADX INFO: renamed from: p */
    public static boolean m865p(Uri uri) {
        boolean z2 = false;
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = ZApp.m718a().query(uri, f1633a, null, null, null);
                if (cursorQuery != null && cursorQuery.moveToFirst()) {
                    z2 = true;
                }
                return z2;
            } catch (IllegalArgumentException unused) {
                return false;
            } catch (Exception unused2) {
                Objects.toString(uri);
                return false;
            }
        } finally {
            C0181d.m561b(cursorQuery);
        }
    }

    /* JADX INFO: renamed from: q */
    public static boolean m866q(String str) {
        if (!C0412c.f2151c && str != null) {
            if (str.startsWith("/SAF")) {
                return true;
            }
            C0412c.a aVarM1111e = C0412c.m1111e(str);
            if (aVarM1111e != null && C0015d.m49K(aVarM1111e.f2157f, 8)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: r */
    public static ArrayList m867r(Uri uri, String str) {
        Uri uriBuildChildDocumentsUriUsingTree;
        Cursor cursorM868s;
        if (uri == null) {
            uri = m861l(0, str);
        }
        if (uri == null || (cursorM868s = m868s((uriBuildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri))), f1634b)) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(cursorM868s.getCount());
        while (cursorM868s.moveToNext()) {
            C0309a c0309a = new C0309a();
            c0309a.f1638a = cursorM868s.getString(0);
            c0309a.f1639b = "vnd.android.document/directory".equals(cursorM868s.getString(1));
            c0309a.f1640c = cursorM868s.getLong(3);
            c0309a.f1641d = cursorM868s.getLong(2);
            c0309a.f1642e = DocumentsContract.buildDocumentUriUsingTree(uriBuildChildDocumentsUriUsingTree, cursorM868s.getString(4));
            arrayList.add(c0309a);
        }
        C0181d.m561b(cursorM868s);
        return arrayList;
    }

    public static int remove(String str) {
        int iM853d;
        if (C0412c.f2151c) {
            iM853d = OsConstants.EACCES;
        } else {
            Uri uriM861l = m861l(0, str);
            if (uriM861l == null) {
                int i2 = f1637e;
                if (i2 == 0) {
                    i2 = OsConstants.EPERM;
                }
                return -i2;
            }
            try {
                if (DocumentsContract.deleteDocument(ZApp.m718a(), uriM861l)) {
                    return 0;
                }
                return -OsConstants.EPERM;
            } catch (Exception e2) {
                iM853d = m853d(e2);
            }
        }
        return -iM853d;
    }

    public static int rename(String str, String str2) {
        int iM853d;
        if (C0412c.f2151c) {
            iM853d = OsConstants.EACCES;
        } else {
            try {
                int iLastIndexOf = str.lastIndexOf(47);
                String strSubstring = str.substring(iLastIndexOf + 1);
                String strSubstring2 = str.substring(0, iLastIndexOf);
                int iLastIndexOf2 = str2.lastIndexOf(47);
                String strSubstring3 = str2.substring(iLastIndexOf2 + 1);
                String strSubstring4 = str2.substring(0, iLastIndexOf2);
                boolean zM869t = !strSubstring2.equals(strSubstring4) ? m869t(strSubstring2, strSubstring, strSubstring4) : true;
                if (zM869t && !strSubstring.equals(strSubstring3)) {
                    zM869t = m871v(strSubstring4, strSubstring, strSubstring3);
                }
                if (zM869t) {
                    return 0;
                }
                return -OsConstants.EPERM;
            } catch (Exception e2) {
                iM853d = m853d(e2);
            }
        }
        return -iM853d;
    }

    /* JADX INFO: renamed from: s */
    public static Cursor m868s(Uri uri, String[] strArr) {
        try {
            return ZApp.m718a().query(uri, strArr, null, null, null);
        } catch (Exception unused) {
            Objects.toString(uri);
            return null;
        }
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x006e: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]) (LINE:111), block:B:32:0x006e */
    public static STAT stat(String str) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor;
        Cursor cursor2 = null;
        if (!str.startsWith("/SAF")) {
            f1637e = OsConstants.EINVAL;
            return null;
        }
        Uri uriM861l = m861l(0, str);
        try {
            try {
                cursorQuery = ZApp.m718a().query(uriM861l, f1635c, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            STAT stat = new STAT(cursorQuery.getLong(2), cursorQuery.getLong(1), "vnd.android.document/directory".equals(cursorQuery.getString(0)) ? OsConstants.S_IFDIR : OsConstants.S_IFREG);
                            C0181d.m561b(cursorQuery);
                            return stat;
                        }
                    } catch (IllegalArgumentException unused) {
                        f1637e = OsConstants.ENOENT;
                    } catch (Exception e2) {
                        e = e2;
                        Objects.toString(uriM861l);
                        f1637e = m853d(e);
                    }
                }
                f1637e = OsConstants.EPERM;
            } catch (Throwable th) {
                th = th;
                cursor2 = cursor;
                C0181d.m561b(cursor2);
                throw th;
            }
        } catch (IllegalArgumentException unused2) {
            cursorQuery = null;
        } catch (Exception e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            C0181d.m561b(cursor2);
            throw th;
        }
        C0181d.m561b(cursorQuery);
        return null;
    }

    /* JADX INFO: renamed from: t */
    public static boolean m869t(String str, String str2, String str3) {
        if (C0412c.f2151c || Build.VERSION.SDK_INT < 24 || str == null || str2 == null || str3 == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("/");
        sb.append(str2);
        return DocumentsContract.moveDocument(ZApp.m718a(), m860k(0, sb.toString()), m860k(0, str), m860k(0, str3)) != null;
    }

    /* JADX INFO: renamed from: u */
    public static OutputStream m870u(String str, boolean z2) throws FileNotFoundException, InvalidPropertiesFormatException {
        if (C0412c.f2151c) {
            return null;
        }
        String strM864o = m864o(str);
        if (Build.VERSION.SDK_INT < 30 || strM864o == null) {
            return ZApp.m718a().openOutputStream(m860k(2, str));
        }
        C0412c.a aVarM1112f = C0412c.m1112f(strM864o);
        if (aVarM1112f == null) {
            aVarM1112f = C0412c.m1115i();
        }
        C0129h c0129hM863n = m863n(aVarM1112f, "Android/data/ru.zdevs.zarchiver/cache");
        if (c0129hM863n == null) {
            return null;
        }
        Uri uriM860k = m860k(3, c0129hM863n.f1015c);
        Uri uriM860k2 = m860k(2, c0129hM863n.f1015c + '/' + C0015d.m97y(str));
        OutputStream outputStreamOpenOutputStream = ZApp.m718a().openOutputStream(uriM860k2);
        if (outputStreamOpenOutputStream != null) {
            return new C0178a(outputStreamOpenOutputStream, uriM860k2, uriM860k, C0015d.m39A(str), z2);
        }
        return null;
    }

    /* JADX INFO: renamed from: v */
    public static boolean m871v(String str, String str2, String str3) throws FileNotFoundException {
        if (C0412c.f2151c || str == null || str2 == null || str3 == null) {
            return false;
        }
        try {
            return DocumentsContract.renameDocument(ZApp.m718a(), m860k(0, C0015d.m78i(str, str2)), str3) != null;
        } catch (FileNotFoundException e2) {
            if (str.startsWith("/SAF") || new File(C0015d.m78i(str, str3)).exists()) {
                return true;
            }
            throw e2;
        }
    }
}
