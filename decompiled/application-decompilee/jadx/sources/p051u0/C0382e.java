package p051u0;

import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.StrictMode;
import android.p003os.FileUriExposedException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import p004b.C0015d;
import p011d0.C0070h;
import p014e0.C0079a;
import p020g0.C0129h;
import p021g1.C0137h;
import p033m0.C0181d;
import p047s0.C0358b;
import p049t0.C0374b;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.activity.OpenAsDlg;
import ru.zdevs.zarchiver.p044io.KitKatExtSD;
import ru.zdevs.zarchiver.p044io.SAF;
import ru.zdevs.zarchiver.provider.ArchiveFileProvider;
import ru.zdevs.zarchiver.provider.FileProvider;
import ru.zdevs.zarchiver.provider.PluginFileProvider;

/* JADX INFO: renamed from: u0.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0382e {

    /* JADX INFO: renamed from: u0.e$a */
    public static class a extends Exception {
        public a() {
            super("Need file://");
        }
    }

    /* JADX INFO: renamed from: a */
    public static Uri m1063a(ZArchiver zArchiver, C0129h c0129h, long j2, String str) {
        return (c0129h.m480g() || c0129h.m484k() || c0129h.m486m() || c0129h.m485l()) ? m1064b(zArchiver, c0129h, j2, str) : SAF.m857h(zArchiver, c0129h, true);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0023 A[PHI: r15
      0x0023: PHI (r15v4 java.lang.String) = (r15v0 java.lang.String), (r15v13 java.lang.String) binds: [B:7:0x000f, B:9:0x001f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: b */
    public static Uri m1064b(Context context, C0129h c0129h, long j2, String str) {
        String str2;
        if (c0129h.m480g()) {
            if (Build.VERSION.SDK_INT < 26) {
                return null;
            }
            if (str == null) {
                str = C0070h.m253d().m255b(c0129h.f1015c, false);
                if (str.isEmpty()) {
                    str2 = null;
                } else {
                    str2 = str;
                }
            } else {
                str2 = str;
            }
            String strM275i = C0079a.m266m().m278n(c0129h.f1015c) ? C0079a.m266m().m275i() : null;
            int i2 = C0358b.f1985g << 16;
            if (C0358b.m1035f(4)) {
                i2 |= 4;
            }
            return ArchiveFileProvider.m878d(context, c0129h, strM275i, j2, str2, i2);
        }
        if (c0129h.m484k()) {
            if (Build.VERSION.SDK_INT < 26) {
                return null;
            }
            if ("plglocal".equals(c0129h.f1013a)) {
                String strM478e = c0129h.m478e();
                String[] strArr = PluginFileProvider.f1651a;
                return new Uri.Builder().scheme("content").authority("ru.zdevs.zarchiver.plugin").path(c0129h.toString()).fragment(strM478e).build();
            }
            String[] strArr2 = FileProvider.f1650a;
            return new Uri.Builder().scheme("content").authority("ru.zdevs.zarchiver.external").path("/u/" + c0129h.f1014b + '/' + c0129h.f1017e + c0129h.f1015c).build();
        }
        if (c0129h.m486m()) {
            return SAF.m861l(0, c0129h.m491r());
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 24) {
            return KitKatExtSD.m849c(c0129h);
        }
        if (!c0129h.m485l()) {
            return FileProvider.m882c(c0129h.m491r());
        }
        if (i3 < 26 || !C0358b.m1038i(c0129h.m491r())) {
            return KitKatExtSD.m849c(c0129h);
        }
        String strM491r = c0129h.m491r();
        int i4 = C0358b.f1991m;
        String[] strArr3 = FileProvider.f1650a;
        return new Uri.Builder().scheme("content").authority("ru.zdevs.zarchiver.external").path(strM491r).fragment("R:" + j2 + ":0:" + i4).build();
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00a9  */
    /* JADX INFO: renamed from: c */
    public static void m1065c(ZArchiver zArchiver, C0129h c0129h, long j2, String str, C0374b c0374b, Bundle bundle) throws a {
        Uri uriM1063a;
        Intent intent;
        String strM96x = C0015d.m96x(C0015d.m91s(c0129h.m478e()));
        boolean z2 = true;
        boolean z3 = false;
        if (c0374b != null) {
            if (c0374b.f2076d == 0) {
                uriM1063a = KitKatExtSD.m849c(c0129h);
                if (uriM1063a == null && c0129h.m480g()) {
                    throw new a();
                }
            } else {
                uriM1063a = m1063a(zArchiver, c0129h, j2, str);
                z3 = true;
            }
            if (uriM1063a != null) {
                intent = new Intent("android.intent.action.VIEW");
                intent.setClassName(c0374b.f2074b, c0374b.f2075c);
                intent.setDataAndType(uriM1063a, "*/*");
            } else {
                intent = null;
            }
        } else {
            uriM1063a = null;
            intent = null;
        }
        if (uriM1063a == null) {
            uriM1063a = m1063a(zArchiver, c0129h, j2, str);
            if (uriM1063a == null) {
                return;
            } else {
                z3 = true;
            }
        }
        if (intent == null) {
            intent = new Intent("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setDataAndType(uriM1063a, strM96x);
        }
        intent.addFlags(268435456);
        intent.putExtra("isZA", true);
        intent.putExtras(bundle);
        if (c0129h.m483j()) {
            intent.putExtra("AbsolutePath", c0129h.m491r());
        }
        if (Build.VERSION.SDK_INT >= 24 && !"file".equals(uriM1063a.getScheme())) {
            intent.addFlags(1);
            if (c0129h.m488o()) {
                if (!C0181d.m570k(c0129h.f1015c)) {
                    intent.addFlags(2);
                }
            }
        }
        int iM1069g = m1069g(zArchiver, intent);
        if (iM1069g == -2) {
            uriM1063a = m1063a(zArchiver, c0129h, j2, str);
            intent.setDataAndType(uriM1063a, intent.getType());
            iM1069g = m1069g(zArchiver, intent);
        } else {
            z2 = z3;
        }
        if (iM1069g != 0) {
            m1066d(zArchiver, c0129h, z2 ? uriM1063a : null, j2, str, bundle);
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m1066d(ZArchiver zArchiver, C0129h c0129h, Uri uri, long j2, String str, Bundle bundle) {
        Uri uriM1063a;
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = zArchiver.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.putExtra("isZA", true);
        intent.setDataAndType(KitKatExtSD.m849c(c0129h), "*/*");
        if (c0129h.m483j() && m1068f()) {
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 131072)) {
                if (resolveInfo.activityInfo.applicationInfo.targetSdkVersion <= 28) {
                    Intent intent2 = new Intent(intent);
                    intent2.setPackage(resolveInfo.activityInfo.packageName);
                    ActivityInfo activityInfo = resolveInfo.activityInfo;
                    intent2.setClassName(activityInfo.packageName, activityInfo.name);
                    arrayList.add(intent2);
                }
            }
        }
        if (uri == null) {
            uriM1063a = m1063a(zArchiver, c0129h, j2, str);
            if (uriM1063a == null) {
                return;
            }
        } else {
            uriM1063a = uri;
        }
        intent.setDataAndType(uriM1063a, "*/*");
        intent.putExtra("AbsolutePath", c0129h.m491r());
        if (Build.VERSION.SDK_INT >= 24 && !"file".equals(uriM1063a.getScheme())) {
            intent.setFlags(1);
            if (c0129h.m488o() && !C0181d.m570k(c0129h.f1015c)) {
                intent.addFlags(2);
            }
        }
        for (ResolveInfo resolveInfo2 : packageManager.queryIntentActivities(intent, 131072)) {
            Intent intent3 = new Intent(intent);
            intent3.setPackage(resolveInfo2.activityInfo.packageName);
            ActivityInfo activityInfo2 = resolveInfo2.activityInfo;
            intent3.setClassName(activityInfo2.packageName, activityInfo2.name);
            arrayList.add(intent3);
        }
        Intent intent4 = new Intent(zArchiver, (Class<?>) OpenAsDlg.class);
        intent4.addFlags(1077936128);
        intent4.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
        intent4.putExtra("OpenAsDlg.EXTRA_FILE_NAME", c0129h.m478e());
        intent4.putExtra("OpenAsDlg.EXTRA_EXTRA", bundle);
        zArchiver.startActivity(intent4);
    }

    /* JADX INFO: renamed from: e */
    public static void m1067e(Context context, Uri uri, String str) {
        if (uri == null) {
            ZApp.m725i(R.string.ERROR_UNSUPORTED_METOD);
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setFlags(268435456);
        intent.setType("*/*");
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.putExtra("android.intent.extra.SUBJECT", str);
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setClipData(ClipData.newRawUri(null, uri));
            intent.addFlags(1);
        }
        C0137h.m502d(context, Intent.createChooser(intent, context.getResources().getString(R.string.MENU_SHARE)));
    }

    /* JADX INFO: renamed from: f */
    public static boolean m1068f() {
        Object objInvoke;
        try {
            Method methodM95w = C0015d.m95w(StrictMode.class, "disableDeathOnFileUriExposure", new Class[0]);
            if (methodM95w != null) {
                methodM95w.invoke(null, new Object[0]);
                return true;
            }
        } catch (Exception unused) {
        }
        try {
            Method methodM95w2 = C0015d.m95w(StrictMode.class, "vmFileUriExposureEnabled", new Class[0]);
            if (methodM95w2 != null && (objInvoke = methodM95w2.invoke(null, new Object[0])) != null) {
                return ((Boolean) objInvoke).booleanValue();
            }
        } catch (Exception unused2) {
        }
        return false;
    }

    /* JADX INFO: renamed from: g */
    public static int m1069g(Context context, Intent intent) {
        try {
            context.startActivity(intent);
            return 0;
        } catch (ActivityNotFoundException unused) {
            return -1;
        } catch (SecurityException unused2) {
            ZApp.m725i(R.string.MES_ACCESS_DENIED);
            return -3;
        } catch (Throwable th) {
            if (Build.VERSION.SDK_INT >= 24 && (th instanceof FileUriExposedException)) {
                return -2;
            }
            ZApp.m726j("Failed to start activity: " + th.getMessage());
            return -100;
        }
    }
}
