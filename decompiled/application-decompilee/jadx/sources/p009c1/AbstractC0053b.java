package p009c1;

import p004b.C0015d;

/* JADX INFO: renamed from: c1.b */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0053b {
    /* JADX INFO: renamed from: b */
    public static int m207b(String str, String str2) {
        if (str2 != null) {
            if ("text/x-c".equals(str2)) {
                return 1;
            }
            if ("text/x-java-source".equals(str2)) {
                return 2;
            }
            if (str2.contains("x-rust")) {
                return 3;
            }
            if (str2.contains("javascript")) {
                return 6;
            }
            if (str2.contains("x-php") || str2.contains("x-httpd-php")) {
                return 7;
            }
            if (str2.contains("x-python")) {
                return 8;
            }
            if (str2.contains("x-ruby")) {
                return 9;
            }
            if ("application/x-sh".equals(str2) || "application/x-shellscript".equals(str2)) {
                return 10;
            }
            if (str2.endsWith("/xml")) {
                return 11;
            }
            if (str2.endsWith("/css")) {
                return 13;
            }
        }
        if (str == null) {
            return 0;
        }
        String strM91s = C0015d.m91s(str);
        String str3 = "," + strM91s + ",";
        if (",c,cc,cpp,cxx,h,hh,hpp,cyc,m,".contains(str3)) {
            return 1;
        }
        if ("java".equals(strM91s)) {
            return 2;
        }
        if (",rc,rs,rust,".contains(str3)) {
            return 3;
        }
        if ("cs".equals(strM91s)) {
            return 4;
        }
        if ("go".equals(strM91s)) {
            return 5;
        }
        if (",js,ts,javascript,typescript,".contains(str3)) {
            return 6;
        }
        if ("php".equals(strM91s)) {
            return 7;
        }
        if (",cv,py,python,".contains(str3)) {
            return 8;
        }
        if (",rb,ruby,".contains(str3)) {
            return 9;
        }
        if (",sh,bsh,csh,bash,".contains(str3)) {
            return 10;
        }
        if (",xml,html,htm,".contains(str3)) {
            return 11;
        }
        if (",conf,cfg,ini,".contains(str3)) {
            return 12;
        }
        return "css".equals(strM91s) ? 13 : 0;
    }

    /* JADX INFO: renamed from: a */
    public abstract byte mo202a(byte b2, char c2, char[] cArr, int i2);

    /* JADX INFO: renamed from: c */
    public abstract int mo203c();

    /* JADX INFO: renamed from: d */
    public abstract byte mo204d(byte b2);

    /* JADX INFO: renamed from: e */
    public abstract byte mo205e(byte b2);

    /* JADX INFO: renamed from: f */
    public abstract byte mo206f(char[] cArr, int i2, int i3);
}
