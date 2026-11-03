package ru.zdevs.zarchiver.p044io;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.BufferedOutputStream;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import p004b.C0015d;
import p033m0.C0181d;
import p051u0.C0383f;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: loaded from: classes.dex */
public class ZAIO {

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.io.ZAIO$a */
    public static class C0310a extends Thread {

        /* JADX INFO: renamed from: a */
        public final InputStream f1643a;

        /* JADX INFO: renamed from: b */
        public final ParcelFileDescriptor f1644b;

        public C0310a(InputStream inputStream, ParcelFileDescriptor parcelFileDescriptor) {
            this.f1643a = inputStream;
            this.f1644b = parcelFileDescriptor;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            InputStream inputStream = this.f1643a;
            byte[] bArr = new byte[8192];
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(this.f1644b.getFileDescriptor()));
            while (true) {
                try {
                    int i2 = inputStream.read(bArr);
                    if (i2 < 0) {
                        break;
                    } else {
                        bufferedOutputStream.write(bArr, 0, i2);
                    }
                } catch (Exception unused) {
                }
            }
            bufferedOutputStream.flush();
            C0181d.m563d(inputStream);
            C0181d.m563d(bufferedOutputStream);
        }
    }

    /* JADX INFO: renamed from: a */
    public static String m872a(Uri uri) {
        if (uri == null || !"content".equals(uri.getScheme())) {
            return null;
        }
        String strReplace = uri.toString().replace("content://", "/uri/");
        int i2 = 0;
        while (i2 < 14) {
            StringBuilder sb = new StringBuilder();
            sb.append(i2 < 10 ? "$0" : "$");
            sb.append(i2);
            strReplace = strReplace.replace(String.valueOf("\"*+,:;<=>?\\[]|".charAt(i2)), sb.toString());
            i2++;
        }
        String strReplace2 = strReplace.replace("%2F", "%2F/");
        String strM1072c = C0383f.m1072c(null, uri);
        if (strM1072c == null || strReplace2.endsWith(strM1072c)) {
            return strReplace2;
        }
        return strReplace2 + "$$/" + C0015d.m97y(strM1072c);
    }

    /* JADX INFO: renamed from: b */
    public static long m873b(Uri uri) {
        Cursor cursor = null;
        try {
            Cursor cursorQuery = ZApp.m718a().query(uri, new String[]{"_size"}, null, null, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return 0L;
            }
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_size");
            cursorQuery.moveToFirst();
            long j2 = cursorQuery.getLong(columnIndexOrThrow);
            cursorQuery.close();
            return j2;
        } catch (Exception unused) {
            if (0 != 0) {
                cursor.close();
            }
            return 0L;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: c */
    public static Uri m874c(String str) {
        int i2 = 0;
        if (str.startsWith("/SAF")) {
            return SAF.m861l(0, str);
        }
        int iLastIndexOf = str.lastIndexOf("$$/");
        if (iLastIndexOf > 0) {
            str = str.substring(0, iLastIndexOf);
        }
        String strReplace = ("content://" + str.substring(5)).replace("%2F/", "%2F");
        while (i2 < 14) {
            StringBuilder sb = new StringBuilder();
            sb.append(i2 < 10 ? "$0" : "$");
            sb.append(i2);
            strReplace = strReplace.replace(sb.toString(), String.valueOf("\"*+,:;<=>?\\[]|".charAt(i2)));
            i2++;
        }
        return Uri.parse(strReplace);
    }

    /* JADX INFO: renamed from: d */
    public static String m875d(int i2) {
        String str;
        if ((i2 & 2) != 0) {
            str = "rw";
        } else if ((i2 & 1) != 0) {
            str = "w";
        } else {
            str = (i2 & 1024) == 1024 ? "ra" : "r";
        }
        return (i2 & 512) == 512 ? str.concat("t") : str;
    }

    /* JADX INFO: renamed from: e */
    public static ParcelFileDescriptor m876e(Uri uri, String str) {
        InputStream inputStreamOpenInputStream;
        FileDescriptor fd;
        ParcelFileDescriptor parcelFileDescriptorDup;
        ContentResolver contentResolverM718a = ZApp.m718a();
        try {
            return contentResolverM718a.openFileDescriptor(uri, str);
        } catch (Exception unused) {
            try {
                AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolverM718a.openAssetFileDescriptor(uri, str);
                if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                    return null;
                }
                return assetFileDescriptorOpenAssetFileDescriptor.getParcelFileDescriptor();
            } catch (Exception unused2) {
                try {
                    if (str.charAt(0) == 'w' || (inputStreamOpenInputStream = ZApp.m718a().openInputStream(uri)) == null) {
                        return null;
                    }
                    if ((inputStreamOpenInputStream instanceof FileInputStream) && (fd = ((FileInputStream) inputStreamOpenInputStream).getFD()) != null && (parcelFileDescriptorDup = ParcelFileDescriptor.dup(fd)) != null) {
                        inputStreamOpenInputStream.close();
                        return parcelFileDescriptorDup;
                    }
                    ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
                    new C0310a(inputStreamOpenInputStream, parcelFileDescriptorArrCreatePipe[1]).start();
                    return parcelFileDescriptorArrCreatePipe[0];
                } catch (Exception unused3) {
                    return null;
                }
            }
        }
    }

    public static long getSize(String str) {
        Uri uriM874c = m874c(str);
        if (uriM874c == null) {
            return 0L;
        }
        return m873b(uriM874c);
    }

    public static int openFd(String str, int i2) {
        Uri uriM874c = m874c(str);
        if (uriM874c == null) {
            return -1;
        }
        ParcelFileDescriptor parcelFileDescriptorM876e = m876e(uriM874c, m875d(i2));
        if (parcelFileDescriptorM876e == null) {
            return -3;
        }
        return parcelFileDescriptorM876e.detachFd();
    }
}
