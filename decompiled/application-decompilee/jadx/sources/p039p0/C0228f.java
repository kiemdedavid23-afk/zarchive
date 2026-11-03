package p039p0;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p004b.C0015d;
import p020g0.C0129h;
import p033m0.C0181d;
import p033m0.C0185h;
import p051u0.C0380c;
import p055w0.C0415f;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.p044io.SAF;

/* JADX INFO: renamed from: p0.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0228f {

    /* JADX INFO: renamed from: a */
    public static final String[] f1279a = {"_data"};

    /* JADX INFO: renamed from: b */
    public static final Pattern f1280b = Pattern.compile("(?i)^/storage/([^/]+)");

    /* JADX INFO: renamed from: p0.f$a */
    public static class a implements Runnable, MediaScannerConnection.MediaScannerConnectionClient {

        /* JADX INFO: renamed from: a */
        public final File f1281a;

        /* JADX INFO: renamed from: b */
        public final MediaScannerConnection f1282b;

        public a(File file) {
            this.f1281a = file;
            MediaScannerConnection mediaScannerConnection = new MediaScannerConnection(ZApp.m722e(), this);
            this.f1282b = mediaScannerConnection;
            mediaScannerConnection.connect();
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0066  */
        /* JADX INFO: renamed from: a */
        public final void m653a(File file) {
            String lowerCase;
            try {
                boolean zIsDirectory = file.isDirectory();
                MediaScannerConnection mediaScannerConnection = this.f1282b;
                if (!zIsDirectory) {
                    mediaScannerConnection.scanFile(file.getAbsolutePath(), null);
                    return;
                }
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    return;
                }
                for (File file2 : fileArrListFiles) {
                    if (file2.isDirectory()) {
                        m653a(file2);
                    } else {
                        mediaScannerConnection.scanFile(file2.getAbsolutePath(), null);
                    }
                }
            } catch (Exception unused) {
                String absolutePath = file.getAbsolutePath();
                String[] strArr = C0228f.f1279a;
                try {
                    Bundle bundle = new Bundle();
                    if (absolutePath != null) {
                        Matcher matcher = C0228f.f1280b.matcher(absolutePath);
                        if (matcher.find()) {
                            String strGroup = matcher.group(1);
                            if ("emulated".equals(strGroup)) {
                                lowerCase = "external_primary";
                            } else if (strGroup != null) {
                                lowerCase = strGroup.toLowerCase(Locale.ROOT);
                            } else {
                                lowerCase = "external";
                            }
                        } else {
                            lowerCase = "external";
                        }
                    } else {
                        lowerCase = "external";
                    }
                    bundle.putString("volume", lowerCase);
                    Intent intentPutExtras = new Intent("android.media.IMediaScannerService").putExtras(bundle);
                    intentPutExtras.setClassName("com.android.providers.media", "com.android.providers.media.MediaScannerService");
                    ZApp.m722e().startService(intentPutExtras);
                } catch (Throwable unused2) {
                }
            }
        }

        @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient
        public final void onMediaScannerConnected() {
            Executors.newSingleThreadExecutor().execute(this);
        }

        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        public final void onScanCompleted(String str, Uri uri) {
        }

        @Override // java.lang.Runnable
        public final void run() {
            m653a(this.f1281a);
            this.f1282b.disconnect();
        }
    }

    /* JADX INFO: renamed from: p0.f$b */
    public static class b implements Runnable {

        /* JADX INFO: renamed from: a */
        public final ContentResolver f1283a = ZApp.m722e().getContentResolver();

        /* JADX INFO: renamed from: b */
        public final String f1284b;

        public b(String str) {
            this.f1284b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ContentProviderClient contentProviderClientAcquireContentProviderClient;
            String str = this.f1284b;
            if (this.f1283a == null) {
                return;
            }
            try {
                ContentResolver contentResolver = ZApp.m722e().getContentResolver();
                Uri contentUri = MediaStore.Files.getContentUri("external");
                String strM78i = C0015d.m78i(str, ".nomedia");
                ContentValues contentValues = new ContentValues();
                contentValues.put("_data", strM78i);
                contentValues.put("format", (Integer) 0);
                contentResolver.insert(contentUri, contentValues);
            } catch (Throwable unused) {
            }
            if (Build.VERSION.SDK_INT == 30) {
                ContentProviderClient contentProviderClient = null;
                try {
                    contentProviderClientAcquireContentProviderClient = ZApp.m722e().getContentResolver().acquireContentProviderClient("media");
                    try {
                        contentProviderClientAcquireContentProviderClient.call("scan_file", C0015d.m39A(str), null);
                    } catch (Exception unused2) {
                        contentProviderClient = contentProviderClientAcquireContentProviderClient;
                        contentProviderClientAcquireContentProviderClient = contentProviderClient;
                    }
                } catch (Exception unused3) {
                }
                C0181d.m564e(contentProviderClientAcquireContentProviderClient);
            }
        }
    }

    /* JADX INFO: renamed from: p0.f$c */
    public static class c implements Runnable {

        /* JADX INFO: renamed from: a */
        public final ContentResolver f1285a = ZApp.m722e().getContentResolver();

        /* JADX INFO: renamed from: b */
        public final List<C0129h> f1286b;

        public c(ArrayList arrayList) {
            this.f1286b = arrayList;
        }

        @Override // java.lang.Runnable
        public final void run() {
            List<C0129h> list;
            if (this.f1285a == null || (list = this.f1286b) == null) {
                return;
            }
            for (C0129h c0129h : list) {
                if (C0228f.m651b(c0129h)) {
                    C0228f.m652c(c0129h.f1015c, true, true);
                }
            }
        }
    }

    /* JADX INFO: renamed from: p0.f$d */
    public static class d implements Runnable {

        /* JADX INFO: renamed from: a */
        public final ContentProviderClient f1287a = ZApp.m722e().getContentResolver().acquireContentProviderClient("media");

        /* JADX INFO: renamed from: b */
        public final File f1288b;

        public d(File file) {
            this.f1288b = file;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ContentProviderClient contentProviderClient = this.f1287a;
            if (contentProviderClient == null) {
                return;
            }
            Bundle bundle = new Bundle();
            File file = this.f1288b;
            bundle.putParcelable("android.intent.extra.STREAM", Uri.fromFile(file));
            try {
                try {
                    contentProviderClient.call("scan_file", file.getAbsolutePath(), bundle);
                } catch (Exception unused) {
                    bundle.putBoolean("android.intent.extra.originated_from_shell", false);
                    contentProviderClient.call("scan_volume", "external_primary", bundle);
                }
            } catch (Exception unused2) {
            }
            C0181d.m564e(contentProviderClient);
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m650a(String str, boolean z2) {
        try {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 29) {
                str = C0380c.m1061a(str);
            }
            if (z2) {
                File file = new File(str);
                if (file.isDirectory()) {
                    if (i2 < 29) {
                        new a(file);
                        return;
                    } else {
                        Executors.newSingleThreadExecutor().execute(new d(file));
                        return;
                    }
                }
            }
            MediaScannerConnection.scanFile(ZApp.m722e(), new String[]{str}, null, null);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: b */
    public static boolean m651b(C0129h c0129h) {
        if (!c0129h.m483j()) {
            return false;
        }
        String strReplace = c0129h.f1015c;
        if (Build.VERSION.SDK_INT >= 30) {
            strReplace = strReplace.replace(C0185h.f1157a, "");
        }
        if (C0415f.m1137e(strReplace)) {
            return false;
        }
        return !SAF.m866q(strReplace);
    }

    /* JADX INFO: renamed from: c */
    public static void m652c(String str, boolean z2, boolean z3) {
        String str2;
        String[] strArr;
        try {
            if (Build.VERSION.SDK_INT < 29) {
                str = C0380c.m1061a(str);
            }
            if (z3) {
                z3 = C0181d.m569j(str);
            }
            ContentResolver contentResolver = ZApp.m722e().getContentResolver();
            Uri uriBuild = MediaStore.Files.getContentUri("external").buildUpon().appendQueryParameter("includePending", "1").appendQueryParameter("deletedata", "false").build();
            if (!z3) {
                if (z2) {
                    str2 = "_data=? OR _data LIKE ?";
                    strArr = new String[]{str, str + "/%"};
                } else {
                    str2 = "_data=?";
                    strArr = new String[]{str};
                }
                contentResolver.delete(uriBuild, str2, strArr);
                return;
            }
            Cursor cursorQuery = null;
            try {
                String[] strArr2 = new String[1];
                cursorQuery = contentResolver.query(uriBuild, f1279a, "_data >= ? AND _data < ?", new String[]{str + "/", str + "0"}, null);
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(0);
                    if (!C0181d.m569j(string)) {
                        strArr2[0] = string;
                        contentResolver.delete(uriBuild, "_data = ?", strArr2);
                    }
                }
                C0181d.m561b(cursorQuery);
            } catch (Throwable th) {
                C0181d.m561b(cursorQuery);
                throw th;
            }
        } catch (Exception unused) {
        }
    }
}
