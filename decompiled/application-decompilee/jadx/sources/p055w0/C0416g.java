package p055w0;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.os.storage.StorageVolume;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import p021g1.RunnableC0136g;
import p053v0.AbstractCallableC0395c;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: w0.g */
/* JADX INFO: loaded from: classes.dex */
public final class C0416g {
    /* JADX INFO: renamed from: a */
    public static String m1140a(Context context) {
        PackageInfo packageInfoM1141b = m1141b(context);
        if (packageInfoM1141b == null) {
            return null;
        }
        return "Files: SDK " + packageInfoM1141b.applicationInfo.targetSdkVersion + " V " + packageInfoM1141b.getLongVersionCode();
    }

    /* JADX INFO: renamed from: b */
    public static PackageInfo m1141b(Context context) {
        try {
            try {
                return context.getPackageManager().getPackageInfo("com.google.android.documentsui", 0);
            } catch (Exception unused) {
                return context.getPackageManager().getPackageInfo("com.android.documentsui", 0);
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    /* JADX INFO: renamed from: c */
    public static int m1142c(Context context) {
        if (Build.VERSION.SDK_INT < 30) {
            return 0;
        }
        PackageInfo packageInfoM1141b = m1141b(context);
        if (packageInfoM1141b == null) {
            return 1;
        }
        if (m1143d(packageInfoM1141b)) {
            return 0;
        }
        String str = packageInfoM1141b.applicationInfo.sourceDir;
        if (str != null && str.startsWith("/data/app/")) {
            try {
                String str2 = packageInfoM1141b.packageName.contains(".google.") ? "DocumentsUIGoogle" : "DocumentsUI";
                if (m1143d(context.getPackageManager().getPackageArchiveInfo("/system/priv-app/" + str2 + "/" + str2 + ".apk", 0))) {
                    return 2;
                }
            } catch (Exception unused) {
            }
        }
        return 1;
    }

    /* JADX INFO: renamed from: d */
    public static boolean m1143d(PackageInfo packageInfo) {
        if (packageInfo.applicationInfo.targetSdkVersion < 34) {
            return true;
        }
        long longVersionCode = packageInfo.getLongVersionCode();
        if (longVersionCode <= 340819010 || longVersionCode == 990090000) {
            try {
                return new SimpleDateFormat("yyyy-MM-dd").parse(Build.VERSION.SECURITY_PATCH).getTime() < 1706745600000L;
            } catch (ParseException unused) {
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: e */
    public static void m1144e(ZArchiver zArchiver, StorageVolume storageVolume, int i2) {
        Intent intentCreateAccessIntent = storageVolume.createAccessIntent(null);
        if (intentCreateAccessIntent != null) {
            try {
                zArchiver.startActivityForResult(intentCreateAccessIntent, i2);
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        m1146g(zArchiver, null, i2);
    }

    /* JADX INFO: renamed from: f */
    public static void m1145f(Activity activity, String str, boolean z2, int i2) {
        Uri uri = Uri.parse("content://com.android.externalstorage.documents/document/primary");
        Intent intent = new Intent(z2 ? "android.intent.action.CREATE_DOCUMENT" : "android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("text/plain");
        if (str != null) {
            intent.putExtra("android.intent.extra.TITLE", str);
        }
        intent.putExtra("android.intent.extra.LOCAL_ONLY", true);
        intent.putExtra("android.content.extra.SHOW_ADVANCED", true);
        intent.putExtra("android.provider.extra.INITIAL_URI", uri);
        m1149j(activity, intent, i2);
    }

    /* JADX INFO: renamed from: g */
    public static void m1146g(ZArchiver zArchiver, Uri uri, int i2) {
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
        intent.setFlags(67);
        intent.putExtra("android.intent.extra.LOCAL_ONLY", true);
        intent.putExtra("android.content.extra.SHOW_ADVANCED", true);
        intent.putExtra("android.provider.extra.SHOW_ADVANCED", true);
        if (uri != null) {
            intent.putExtra("android.provider.extra.INITIAL_URI", uri);
        }
        m1149j(zArchiver, intent, i2);
    }

    /* JADX INFO: renamed from: h */
    public static void m1147h(ZArchiver zArchiver, C0412c.a aVar, String str, int i2) {
        Uri uri;
        if (aVar != null) {
            StringBuilder sb = new StringBuilder("content://com.android.externalstorage.documents/document/");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(aVar.m1126a());
            sb2.append(":");
            if (str == null) {
                str = "";
            }
            sb2.append(str);
            sb.append(Uri.encode(sb2.toString()));
            uri = Uri.parse(sb.toString());
        } else {
            uri = null;
        }
        m1146g(zArchiver, uri, i2);
    }

    /* JADX INFO: renamed from: i */
    public static void m1148i(ZArchiver zArchiver, StorageVolume storageVolume, int i2) {
        try {
            m1149j(zArchiver, storageVolume.createOpenDocumentTreeIntent(), i2);
        } catch (Exception e2) {
            e2.printStackTrace();
            m1146g(zArchiver, null, i2);
        }
    }

    /* JADX INFO: renamed from: j */
    public static void m1149j(Activity activity, Intent intent, int i2) {
        String action = intent.getAction();
        if (action != null && action.startsWith("android.intent.action.")) {
            action = action.substring(22);
        }
        AbstractCallableC0395c.m1097h(new RunnableC0136g(activity, intent, i2, "Failed to call " + action + ". The Files (documnetui) application may be frozen."));
    }
}
