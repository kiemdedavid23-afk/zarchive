package p025i0;

import android.content.pm.PackageInfo;
import android.os.Build;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import p004b.C0015d;
import p033m0.C0181d;
import p035n0.AbstractC0194a;
import p051u0.C0385h;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: i0.g */
/* JADX INFO: loaded from: classes.dex */
public final class C0154g {

    /* JADX INFO: renamed from: a */
    public static String[] f1057a;

    /* JADX INFO: renamed from: a */
    public static String[] m518a(String str, boolean z2) {
        List<PackageInfo> listM87o;
        boolean zM569j;
        int i2 = Build.VERSION.SDK_INT;
        ArrayList arrayList = null;
        if (i2 < 33 || (listM87o = C0015d.m87o()) == null) {
            return null;
        }
        boolean z3 = !z2 || i2 >= 34;
        for (PackageInfo packageInfo : listM87o) {
            String str2 = str + "/" + packageInfo.packageName;
            if (!z3) {
                zM569j = C0181d.m569j(str2);
            } else if (z3) {
                zM569j = C0181d.m568i(str2);
            }
            if (zM569j) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(packageInfo.packageName);
            }
        }
        return arrayList != null ? (String[]) arrayList.toArray(new String[0]) : new String[0];
    }

    /* JADX INFO: renamed from: b */
    public static ArrayList<String> m519b(String str, AbstractC0194a abstractC0194a) {
        if (str.startsWith("/data/app/") || str.startsWith("/apex/")) {
            ArrayList<String> arrayList = new ArrayList<>();
            String strM68d = C0015d.m68d(str);
            int length = strM68d.length();
            if (abstractC0194a.m592b("pm list packages -f | grep ".concat(strM68d))) {
                while (true) {
                    String strM599k = abstractC0194a.m599k(true);
                    if (strM599k == null) {
                        break;
                    }
                    if (strM599k.startsWith("package:")) {
                        String strSubstring = strM599k.substring(8);
                        if (strSubstring.startsWith(strM68d)) {
                            try {
                                arrayList.add(strSubstring.substring(length, strSubstring.indexOf(47, length + 1)));
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
            return arrayList;
        }
        if (f1057a == null) {
            synchronized (C0154g.class) {
                ZApp zApp = ZApp.f1375c;
                if (zApp != null && f1057a == null) {
                    ArrayList arrayList2 = new ArrayList();
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(zApp.getAssets().open("tree")));
                        while (bufferedReader.ready()) {
                            arrayList2.add(bufferedReader.readLine());
                        }
                        bufferedReader.close();
                    } catch (Exception unused2) {
                    }
                    f1057a = (String[]) arrayList2.toArray(new String[0]);
                }
            }
        }
        if (f1057a == null) {
            return new ArrayList<>(0);
        }
        String[] strArrM1084h = C0385h.m1084h(str, '/');
        ArrayList<String> arrayList3 = new ArrayList<>();
        int i2 = 0;
        for (String str2 : f1057a) {
            if (i2 >= strArrM1084h.length) {
                if (i2 > 0 && str2.charAt(i2 - 1) == '/') {
                    break;
                }
                if (str2.charAt(i2) == '/') {
                    arrayList3.add(str2.substring(i2 + 1, str2.length() - 1));
                }
            } else if (str2.charAt(i2) == '/') {
                String str3 = strArrM1084h[i2];
                if ((str2.length() - i2) - 2 == str3.length()) {
                    int i3 = i2 + 1;
                    if (str2.startsWith(str3, i3) && str2.charAt(str2.length() - 1) == '/') {
                        i2 = i3;
                    }
                }
            }
        }
        return arrayList3;
    }
}
