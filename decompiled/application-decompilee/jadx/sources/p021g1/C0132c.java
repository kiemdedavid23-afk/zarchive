package p021g1;

import android.content.Context;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import p024i.C0147a;

/* JADX INFO: renamed from: g1.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0132c {

    /* JADX INFO: renamed from: g1.c$a */
    public static class a extends Exception {
    }

    /* JADX INFO: renamed from: a */
    public static String m496a(Context context, String str, String str2) throws a, ParseException {
        if (!str2.startsWith("DP")) {
            return null;
        }
        C0147a c0147a = new C0147a(context);
        String strM508a = c0147a.m508a(str2.substring(2), C0147a.m507c(str));
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmm", Locale.ENGLISH);
        String strSubstring = strM508a.substring(0, 12);
        Date date = simpleDateFormat.parse(strSubstring);
        Calendar calendar = Calendar.getInstance();
        calendar.add(10, -3);
        if (calendar.getTime().after(date)) {
            throw new a();
        }
        return c0147a.m508a(strM508a.substring(12), C0147a.m507c(strSubstring));
    }

    /* JADX INFO: renamed from: b */
    public static int m497b(String str) {
        if ("r".equals(str)) {
            return 268435456;
        }
        if ("w".equals(str) || "wt".equals(str)) {
            return 738197504;
        }
        if ("wa".equals(str)) {
            return 704643072;
        }
        if ("rw".equals(str)) {
            return 939524096;
        }
        if ("rwt".equals(str)) {
            return 1006632960;
        }
        throw new IllegalArgumentException("Invalid mode: " + str);
    }
}
