package p051u0;

import android.content.Context;
import android.content.res.Resources;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: u0.h */
/* JADX INFO: loaded from: classes.dex */
public final class C0385h {

    /* JADX INFO: renamed from: a */
    public static String f2088a = "GB";

    /* JADX INFO: renamed from: b */
    public static String f2089b = "MB";

    /* JADX INFO: renamed from: c */
    public static String f2090c = "KB";

    /* JADX INFO: renamed from: d */
    public static String f2091d = "B";

    /* JADX INFO: renamed from: e */
    public static String f2092e = "MB/s";

    /* JADX INFO: renamed from: f */
    public static String f2093f = "KB/s";

    /* JADX INFO: renamed from: u0.h$a */
    public static class a implements Comparator<String> {
        @Override // java.util.Comparator
        public final int compare(String str, String str2) {
            return str2.length() - str.length();
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m1077a(StringBuilder sb, long j2, boolean z2) {
        long j3 = (!z2 || j2 < 10000) ? j2 % 100 : (j2 % 100) / 10;
        sb.append(j2 / 100);
        sb.append(j3 < 10 ? ".0" : ".");
        sb.append(j3);
    }

    /* JADX INFO: renamed from: b */
    public static String m1078b(long j2, int i2, String str) {
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append(str);
            sb.append(' ');
        }
        if (j2 > 1073741824) {
            m1077a(sb, (100 * j2) / 1073741824, i2 == 1);
            sb.append(f2088a);
        } else if (j2 > 1048576) {
            m1077a(sb, (100 * j2) / 1048576, i2 == 1);
            sb.append(f2089b);
        } else if (j2 > 1024) {
            m1077a(sb, (100 * j2) / 1024, i2 == 1);
            sb.append(f2090c);
        } else {
            if (j2 != 0) {
                m1077a(sb, 100 * j2, i2 == 1);
            } else {
                sb.append('0');
            }
            sb.append(f2091d);
        }
        if (i2 == 2) {
            sb.append(" (");
            sb.append(j2);
            sb.append(f2091d);
            sb.append(")");
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:23:0x004b  */
    /* JADX WARN: Switch 'out' block B:23:0x004b for B:19:0x0039 already processed. Defaulting to fallback option. */
    /* JADX INFO: renamed from: c */
    public static String[] m1079c(String str, boolean z2) {
        String string;
        boolean z3 = !str.contains("*");
        ArrayList<String> arrayList = new ArrayList(z3 ? 3 : 1);
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != ' ') {
                if (cCharAt != '.' && cCharAt != '?' && cCharAt != '[' && cCharAt != ']') {
                    switch (cCharAt) {
                        case '(':
                        case ')':
                        case '+':
                            sb.append('\\');
                            sb.append(cCharAt);
                            break;
                        case '*':
                            sb.append(".*");
                            continue;
                        default:
                            switch (cCharAt) {
                                case '{':
                                case '|':
                                case '}':
                                    sb.append('\\');
                                    sb.append(cCharAt);
                                    break;
                                default:
                                    sb.append(Character.toLowerCase(cCharAt));
                                    continue;
                            }
                            break;
                    }
                } else {
                    sb.append('\\');
                    sb.append(cCharAt);
                }
            } else if (sb.length() != 0) {
                if (z3) {
                    arrayList.add(sb.toString());
                    sb = new StringBuilder();
                } else {
                    sb.append(cCharAt);
                }
            }
        }
        if (sb.length() > 0) {
            arrayList.add(sb.toString());
        }
        int size = arrayList.size();
        if (size == 0) {
            String[] strArr = new String[1];
            strArr[0] = z2 ? "*" : ".*";
            return strArr;
        }
        if (z3) {
            StringBuilder sb2 = new StringBuilder();
            for (String str2 : arrayList) {
                sb2.append("(?=.*");
                sb2.append(str2);
                sb2.append(')');
            }
            sb2.append(".*");
            string = sb2.toString();
        } else {
            string = null;
        }
        if (z2) {
            if (size > 1) {
                Collections.sort(arrayList, new a());
            }
            String strConcat = (String) arrayList.get(0);
            if (!strConcat.startsWith(".*")) {
                strConcat = "*".concat(strConcat);
            }
            if (!strConcat.endsWith(".*")) {
                strConcat = strConcat.concat("*");
            }
            return new String[]{strConcat, string};
        }
        if (z3) {
            return new String[]{string};
        }
        String strConcat2 = (String) arrayList.get(0);
        if (!strConcat2.startsWith(".*")) {
            strConcat2 = ".*".concat(strConcat2);
        }
        if (!strConcat2.endsWith(".*")) {
            strConcat2 = strConcat2.concat(".*");
        }
        return new String[]{strConcat2};
    }

    /* JADX INFO: renamed from: d */
    public static void m1080d(Context context) {
        Resources resources = context.getResources();
        if (resources == null) {
            return;
        }
        f2088a = resources.getString(R.string.INFO_GB);
        f2089b = resources.getString(R.string.INFO_MB);
        f2090c = resources.getString(R.string.INFO_KB);
        f2091d = resources.getString(R.string.INFO_B);
        f2092e = resources.getString(R.string.INFO_MB_S);
        f2093f = resources.getString(R.string.INFO_KB_S);
    }

    /* JADX INFO: renamed from: e */
    public static boolean m1081e(String str) {
        return str == null || str.isEmpty();
    }

    /* JADX INFO: renamed from: f */
    public static boolean m1082f(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equals(str2);
    }

    /* JADX INFO: renamed from: g */
    public static String[] m1083g(String str) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            int iIndexOf = str.indexOf(";#;", i2);
            if (iIndexOf <= -1) {
                break;
            }
            if (i2 != iIndexOf) {
                arrayList.add(str.substring(i2, iIndexOf));
            }
            i2 = 3 + iIndexOf;
        }
        if (i2 < str.length()) {
            arrayList.add(str.substring(i2));
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX INFO: renamed from: h */
    public static String[] m1084h(String str, char c2) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            int iIndexOf = str.indexOf(c2, i2);
            if (iIndexOf <= -1) {
                break;
            }
            if (i2 != iIndexOf) {
                arrayList.add(str.substring(i2, iIndexOf));
            }
            i2 = iIndexOf + 1;
        }
        if (i2 < str.length()) {
            arrayList.add(str.substring(i2));
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX INFO: renamed from: i */
    public static String m1085i(String str) {
        int length = str.length();
        char[] charArray = null;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                if (charArray == null) {
                    charArray = str.toCharArray();
                }
                charArray[i2] = (char) (cCharAt + ' ');
            }
        }
        return charArray != null ? new String(charArray) : str;
    }
}
