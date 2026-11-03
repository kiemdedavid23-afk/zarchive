package p037o0;

import android.os.Build;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import p004b.C0015d;
import p035n0.AbstractC0194a;
import p051u0.C0385h;

/* JADX INFO: renamed from: o0.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0206d extends C0203a {

    /* JADX INFO: renamed from: o0.d$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public String f1219a;

        /* JADX INFO: renamed from: b */
        public long f1220b;

        /* JADX INFO: renamed from: c */
        public long f1221c;

        /* JADX INFO: renamed from: d */
        public int f1222d;

        /* JADX INFO: renamed from: e */
        public String f1223e;

        /* JADX INFO: renamed from: f */
        public String f1224f;

        /* JADX INFO: renamed from: g */
        public boolean f1225g;

        /* JADX INFO: renamed from: h */
        public boolean f1226h;

        /* JADX INFO: renamed from: i */
        public String f1227i;
    }

    /* JADX INFO: renamed from: c */
    public static int m609c(String str) {
        try {
            int i2 = 4;
            int i3 = str.charAt(1) == 'r' ? 4 : 0;
            if (str.charAt(2) == 'w') {
                i3 += 2;
            }
            if (str.charAt(3) == 'x') {
                i3++;
            }
            int i4 = (i3 * 100) + 0;
            int i5 = str.charAt(4) == 'r' ? 4 : 0;
            if (str.charAt(5) == 'w') {
                i5 += 2;
            }
            if (str.charAt(6) == 'x') {
                i5++;
            }
            int i6 = (i5 * 10) + i4;
            if (str.charAt(7) != 'r') {
                i2 = 0;
            }
            if (str.charAt(8) == 'w') {
                i2 += 2;
            }
            if (str.charAt(9) == 'x') {
                i2++;
            }
            return i6 + i2;
        } catch (Exception unused) {
            return -1;
        }
    }

    /* JADX INFO: renamed from: d */
    public static boolean m610d(AbstractC0194a abstractC0194a, ArrayList arrayList, String str, int i2, boolean z2) {
        if (!C0203a.m606b()) {
            return m612f(abstractC0194a, arrayList, str, i2, z2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(C0203a.m605a());
        sb.append(" ls -l");
        if ((i2 & 1) == 1) {
            sb.append("d");
        }
        if ((i2 & 2) == 2) {
            sb.append("L");
        }
        if ((i2 & 4) == 4) {
            sb.append("A");
        }
        sb.append(" '");
        if ((i2 & 16) == 16) {
            sb.append(str);
        } else {
            sb.append(str.replace("'", "'\\''"));
        }
        sb.append("'");
        if (!abstractC0194a.m592b(sb.toString())) {
            return false;
        }
        while (true) {
            String strM599k = abstractC0194a.m599k(true);
            if (strM599k == null) {
                break;
            }
            try {
                String[] strArrM1084h = C0385h.m1084h(strM599k, '\t');
                if (strArrM1084h.length >= 6) {
                    String str2 = strArrM1084h[0];
                    if (str2 != null && str2.length() >= 10 && strArrM1084h[5] != null) {
                        a aVar = new a();
                        aVar.f1225g = strArrM1084h[0].charAt(0) == 'd';
                        boolean z3 = strArrM1084h[0].charAt(0) == 'l';
                        aVar.f1226h = z3;
                        if (aVar.f1225g || z3) {
                            aVar.f1220b = 0L;
                        } else {
                            aVar.f1220b = C0015d.m81j0(0L, strArrM1084h[3]);
                        }
                        aVar.f1221c = C0015d.m81j0(0L, strArrM1084h[4]) * 1000;
                        aVar.f1219a = strArrM1084h[5];
                        if (z2) {
                            aVar.f1222d = m609c(strArrM1084h[0]);
                            aVar.f1223e = strArrM1084h[1];
                            aVar.f1224f = strArrM1084h[2];
                        }
                        if (!aVar.f1226h || strArrM1084h.length <= 6) {
                            aVar.f1227i = null;
                        } else {
                            aVar.f1227i = strArrM1084h[6].substring(2);
                            aVar.f1225g = strArrM1084h[6].charAt(0) == 'd';
                        }
                        try {
                            arrayList.add(aVar);
                        } catch (Exception unused) {
                        }
                    }
                }
            } catch (Exception unused2) {
            }
        }
        return abstractC0194a.f1190h == 0;
    }

    /* JADX INFO: renamed from: e */
    public static boolean m611e(AbstractC0194a abstractC0194a, ArrayList arrayList, String str, String[] strArr, int i2, boolean z2) {
        String strM68d = C0015d.m68d(str.replace("'", "'\\''"));
        StringBuilder sb = new StringBuilder();
        boolean z3 = true;
        for (String str2 : strArr) {
            if (z3) {
                z3 = false;
            } else {
                sb.append("' '");
            }
            sb.append(strM68d);
            sb.append(str2.replace("'", "'\\''"));
        }
        if (!m610d(abstractC0194a, arrayList, sb.toString(), i2 | 1 | 16, z2)) {
            return false;
        }
        int length = strM68d.length();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.f1219a.length() > length) {
                aVar.f1219a = aVar.f1219a.substring(length);
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:82:0x0156 A[Catch: Exception -> 0x0196, TryCatch #2 {Exception -> 0x0196, blocks: (B:28:0x0078, B:31:0x0082, B:33:0x0086, B:36:0x0090, B:46:0x00a6, B:50:0x00b0, B:54:0x00b9, B:56:0x00bd, B:57:0x00c5, B:59:0x00d7, B:62:0x00dd, B:68:0x00f4, B:71:0x011b, B:72:0x011f, B:74:0x0122, B:76:0x0126, B:78:0x012a, B:86:0x0177, B:79:0x0145, B:81:0x014f, B:82:0x0156, B:84:0x015a, B:85:0x0173, B:87:0x0179, B:89:0x017d, B:91:0x0185, B:63:0x00e9, B:65:0x00ed, B:67:0x00f2), top: B:131:0x0078 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x015a A[Catch: Exception -> 0x0196, TryCatch #2 {Exception -> 0x0196, blocks: (B:28:0x0078, B:31:0x0082, B:33:0x0086, B:36:0x0090, B:46:0x00a6, B:50:0x00b0, B:54:0x00b9, B:56:0x00bd, B:57:0x00c5, B:59:0x00d7, B:62:0x00dd, B:68:0x00f4, B:71:0x011b, B:72:0x011f, B:74:0x0122, B:76:0x0126, B:78:0x012a, B:86:0x0177, B:79:0x0145, B:81:0x014f, B:82:0x0156, B:84:0x015a, B:85:0x0173, B:87:0x0179, B:89:0x017d, B:91:0x0185, B:63:0x00e9, B:65:0x00ed, B:67:0x00f2), top: B:131:0x0078 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0173 A[Catch: Exception -> 0x0196, TryCatch #2 {Exception -> 0x0196, blocks: (B:28:0x0078, B:31:0x0082, B:33:0x0086, B:36:0x0090, B:46:0x00a6, B:50:0x00b0, B:54:0x00b9, B:56:0x00bd, B:57:0x00c5, B:59:0x00d7, B:62:0x00dd, B:68:0x00f4, B:71:0x011b, B:72:0x011f, B:74:0x0122, B:76:0x0126, B:78:0x012a, B:86:0x0177, B:79:0x0145, B:81:0x014f, B:82:0x0156, B:84:0x015a, B:85:0x0173, B:87:0x0179, B:89:0x017d, B:91:0x0185, B:63:0x00e9, B:65:0x00ed, B:67:0x00f2), top: B:131:0x0078 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0196  */
    /* JADX WARN: Instruction removed from duplicated block: B:84:0x015a, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: f */
    public static boolean m612f(AbstractC0194a abstractC0194a, ArrayList arrayList, String str, int i2, boolean z2) {
        boolean z3;
        String str2;
        String str3;
        String str4;
        char cCharAt;
        StringBuilder sb = new StringBuilder("ls -l");
        char c2 = 'd';
        if ((i2 & 1) == 1) {
            sb.append('d');
        } else if (Build.VERSION.SDK_INT >= 26) {
            sb.append('H');
        }
        int i3 = Build.VERSION.SDK_INT;
        int i4 = 2;
        if ((i2 & 2) == 2) {
            sb.append('L');
        }
        if ((i2 & 4) == 4) {
            sb.append(i3 >= 28 ? 'A' : 'a');
        }
        sb.append(" '");
        sb.append(str.replace("'", "'\\''"));
        sb.append("'");
        int i5 = 0;
        if (!abstractC0194a.m592b(sb.toString())) {
            return false;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.US);
        if (i3 <= 23) {
            i4 = 1;
            z3 = false;
        } else {
            z3 = true;
        }
        while (true) {
            String strM599k = abstractC0194a.m599k(true);
            if (strM599k == null) {
                break;
            }
            try {
                String[] strArrM1084h = C0385h.m1084h(strM599k, ' ');
                if (strArrM1084h.length >= 6 && (str4 = strArrM1084h[i5]) != null && str4.length() >= 10 && (cCharAt = strArrM1084h[i5].charAt(i5)) != '/') {
                    int i6 = (cCharAt == 'b' || cCharAt == 'c') ? 1 : i5;
                    a aVar = new a();
                    aVar.f1225g = cCharAt == c2 ? 1 : i5;
                    aVar.f1226h = cCharAt == 'l' ? 1 : i5;
                    if (z2) {
                        aVar.f1222d = m609c(strArrM1084h[i5]);
                    }
                    int i7 = i4 + 1;
                    aVar.f1223e = strArrM1084h[i4];
                    int i8 = i7 + 1;
                    aVar.f1224f = strArrM1084h[i7];
                    if (aVar.f1225g || aVar.f1226h || i6 != 0) {
                        aVar.f1220b = 0L;
                        if (z3) {
                            i8++;
                        } else if (i6 != 0) {
                            i8 += 2;
                        }
                    } else {
                        aVar.f1220b = C0015d.m81j0(0L, strArrM1084h[i8]);
                        i8++;
                    }
                    aVar.f1221c = 0L;
                    try {
                        aVar.f1221c = simpleDateFormat.parse(strArrM1084h[i8] + ' ' + strArrM1084h[i8 + 1]).getTime();
                    } catch (Exception unused) {
                    }
                    int i9 = i8 + 2;
                    aVar.f1219a = null;
                    aVar.f1227i = null;
                    while (i9 < strArrM1084h.length) {
                        if (aVar.f1226h) {
                            if (aVar.f1227i != null) {
                                aVar.f1227i += " " + strArrM1084h[i9];
                            } else if ("->".equals(strArrM1084h[i9])) {
                                i9++;
                                aVar.f1227i = strArrM1084h[i9];
                            } else if (aVar.f1219a != null) {
                                aVar.f1219a += ' ' + strArrM1084h[i9];
                            } else {
                                aVar.f1219a = strArrM1084h[i9];
                            }
                        } else if (aVar.f1219a != null) {
                            aVar.f1219a += ' ' + strArrM1084h[i9];
                        } else {
                            aVar.f1219a = strArrM1084h[i9];
                        }
                        i9++;
                    }
                    String str5 = aVar.f1219a;
                    if (str5 != null && !".".equals(str5) && !"..".equals(aVar.f1219a)) {
                        try {
                            arrayList.add(aVar);
                        } catch (Exception unused2) {
                        }
                    }
                }
            } catch (Exception unused3) {
            }
            c2 = 'd';
            i5 = 0;
        }
        if (abstractC0194a.f1190h != 0) {
            return false;
        }
        if ((i2 & 8) == 8) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                a aVar2 = (a) it.next();
                if (aVar2.f1226h && (str2 = aVar2.f1227i) != null) {
                    if (str2.startsWith("/")) {
                        str3 = aVar2.f1227i;
                    } else {
                        str3 = str + '/' + aVar2.f1227i;
                    }
                    arrayList2.clear();
                    m612f(abstractC0194a, arrayList2, str3, 7, false);
                    if (arrayList2.size() == 1) {
                        aVar2.f1225g = ((a) arrayList2.get(0)).f1225g;
                        aVar2.f1220b = ((a) arrayList2.get(0)).f1220b;
                    } else if (arrayList2.size() > 1) {
                        aVar2.f1225g = true;
                    }
                }
            }
        }
        return true;
    }
}
