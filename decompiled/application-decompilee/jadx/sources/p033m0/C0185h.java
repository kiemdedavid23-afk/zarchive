package p033m0;

import android.os.Build;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: renamed from: m0.h */
/* JADX INFO: loaded from: classes.dex */
public final class C0185h {

    /* JADX INFO: renamed from: a */
    public static final String f1157a = String.valueOf((char) 8234);

    /* JADX INFO: renamed from: b */
    public static final HashMap<String, Boolean> f1158b = new HashMap<>(3);

    /* JADX INFO: renamed from: a */
    public static String m579a(String str, String str2) {
        return str2 == null ? str.replace("/Android/", "/\u202aAndroid/") : str.replace("/".concat(str2), "/\u202a".concat(str2));
    }

    /* JADX INFO: renamed from: b */
    public static boolean m580b(String[] strArr) {
        Boolean boolValueOf;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 30) {
            return false;
        }
        HashMap<String, Boolean> map = f1158b;
        Boolean bool = map.get(strArr[0]);
        if (bool != null) {
            return bool.booleanValue();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(strArr[3]);
        sb.append("/\u202a");
        boolean z2 = true;
        sb.append(strArr[1]);
        File file = new File(sb.toString());
        String[] list = file.list();
        if (i2 >= 33) {
            boolValueOf = Boolean.valueOf(list != null);
        } else if (list == null) {
            boolValueOf = Boolean.FALSE;
        } else if (list.length > 0) {
            File file2 = new File(file, list[0]);
            if (!file2.isFile() && file2.list() == null) {
                z2 = false;
            }
            boolValueOf = Boolean.valueOf(z2);
        } else {
            boolValueOf = Boolean.TRUE;
        }
        map.put(strArr[0], boolValueOf);
        return boolValueOf.booleanValue();
    }
}
