package p055w0;

import android.os.Process;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import p035n0.AbstractC0194a;
import p037o0.C0207e;
import p047s0.C0358b;
import p051u0.C0380c;
import p051u0.C0385h;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: w0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0410a {

    /* JADX INFO: renamed from: a */
    public static final String[] f2136a = {"ext", "rootfs", "yaffs", "f2fs", "ubifs", "reiserfs", "btrfs", "jffs", "unionfs", "aufs"};

    /* JADX INFO: renamed from: b */
    public static final String[] f2137b = {"cramfs", "squashfs"};

    /* JADX INFO: renamed from: c */
    public static final String[] f2138c = {"tmpfs", "proc", "sysfs", "cgroup"};

    /* JADX INFO: renamed from: d */
    public static final String[] f2139d = {"vfat", "msdos", "exfat", "ntfs"};

    /* JADX INFO: renamed from: e */
    public static final String[] f2140e = {"fuse", "sdcardfs"};

    /* JADX INFO: renamed from: f */
    public static final ArrayList<a> f2141f = new ArrayList<>();

    /* JADX INFO: renamed from: g */
    public static int f2142g = 0;

    /* JADX INFO: renamed from: w0.a$a */
    public static class a implements Comparable<a> {

        /* JADX INFO: renamed from: a */
        public String f2143a;

        /* JADX INFO: renamed from: b */
        public String f2144b;

        /* JADX INFO: renamed from: c */
        public String f2145c;

        /* JADX INFO: renamed from: d */
        public String f2146d;

        /* JADX INFO: renamed from: e */
        public byte f2147e;

        /* JADX INFO: renamed from: a */
        public final byte m1106a() {
            byte b2 = this.f2147e;
            if (b2 != -1) {
                return b2;
            }
            this.f2147e = (byte) 0;
            String[] strArr = C0410a.f2136a;
            for (int i2 = 0; i2 < 10; i2++) {
                if (this.f2145c.startsWith(strArr[i2])) {
                    this.f2147e = (byte) 1;
                    return (byte) 1;
                }
            }
            String[] strArr2 = C0410a.f2137b;
            for (int i3 = 0; i3 < 2; i3++) {
                if (this.f2145c.startsWith(strArr2[i3])) {
                    this.f2147e = (byte) 2;
                    return (byte) 2;
                }
            }
            String[] strArr3 = C0410a.f2138c;
            for (int i4 = 0; i4 < 4; i4++) {
                if (this.f2145c.startsWith(strArr3[i4])) {
                    this.f2147e = (byte) 3;
                    return (byte) 3;
                }
            }
            String[] strArr4 = C0410a.f2139d;
            for (int i5 = 0; i5 < 4; i5++) {
                if (this.f2145c.startsWith(strArr4[i5])) {
                    this.f2147e = (byte) 4;
                    return (byte) 4;
                }
            }
            String[] strArr5 = C0410a.f2140e;
            for (int i6 = 0; i6 < 2; i6++) {
                if (this.f2145c.startsWith(strArr5[i6])) {
                    this.f2147e = (byte) 5;
                    return (byte) 5;
                }
            }
            return this.f2147e;
        }

        @Override // java.lang.Comparable
        public final int compareTo(a aVar) {
            int length = this.f2144b.length();
            int length2 = aVar.f2144b.length();
            if (length == length2) {
                return 0;
            }
            return length > length2 ? 1 : -1;
        }
    }

    /* JADX INFO: renamed from: a */
    public static byte m1102a(File file) {
        if (f2142g == 0) {
            m1104c(1);
        }
        do {
            String absolutePath = file.getAbsolutePath();
            ArrayList<a> arrayList = f2141f;
            synchronized (arrayList) {
                for (a aVar : arrayList) {
                    if (aVar.f2144b.equals(absolutePath)) {
                        return aVar.m1106a();
                    }
                }
                file = file.getParentFile();
            }
        } while (file != null);
        return (byte) 0;
    }

    /* JADX INFO: renamed from: b */
    public static a m1103b(String str, boolean z2) {
        int i2 = (z2 && C0358b.m1038i("/")) ? 2 : 1;
        if (f2142g < i2) {
            m1104c(i2);
        }
        String str2 = C0380c.f2083a;
        if (!C0385h.m1081e(str2)) {
            String str3 = C0380c.f2084b;
            if (!C0385h.m1081e(str3) && !C0385h.m1081e(C0380c.f2085c)) {
                if (str.startsWith(str3)) {
                    str = str.replace(str3, str2);
                }
                if (C0380c.f2086d == null) {
                    C0380c.f2086d = new File(str3, String.valueOf(Process.myUid() / 100000)).getAbsolutePath();
                }
                if (str.startsWith(C0380c.f2086d)) {
                    str = str.replace(C0380c.f2086d, str2);
                }
            }
        }
        File file = new File(str);
        do {
            String absolutePath = file.getAbsolutePath();
            ArrayList<a> arrayList = f2141f;
            synchronized (arrayList) {
                for (a aVar : arrayList) {
                    if (aVar.f2144b.equals(absolutePath)) {
                        return aVar;
                    }
                }
                file = file.getParentFile();
            }
        } while (file != null);
        return null;
    }

    /* JADX INFO: renamed from: c */
    public static void m1104c(int i2) {
        Throwable th;
        FileInputStream fileInputStream;
        String str;
        String str2;
        f2142g = i2;
        BufferedReader bufferedReader = null;
        if (i2 == 1 || !m1105d(null)) {
            File file = new File("/proc/mounts");
            ArrayList<a> arrayList = f2141f;
            synchronized (arrayList) {
                arrayList.clear();
                try {
                    if (file.exists()) {
                        try {
                            fileInputStream = new FileInputStream(file);
                            try {
                                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(fileInputStream));
                                while (true) {
                                    try {
                                        String line = bufferedReader2.readLine();
                                        if (line == null) {
                                            break;
                                        }
                                        String[] strArrM1084h = C0385h.m1084h(line, ' ');
                                        if (strArrM1084h.length >= 2) {
                                            a aVar = new a();
                                            aVar.f2143a = strArrM1084h[0];
                                            aVar.f2144b = strArrM1084h[1];
                                            if (strArrM1084h.length <= 2 || (str = strArrM1084h[2]) == null) {
                                                str = "";
                                            }
                                            aVar.f2145c = str;
                                            if (strArrM1084h.length <= 3 || (str2 = strArrM1084h[3]) == null) {
                                                str2 = "";
                                            }
                                            aVar.f2146d = str2;
                                            aVar.f2147e = (byte) -1;
                                            f2141f.add(aVar);
                                        }
                                    } catch (Exception unused) {
                                        bufferedReader = bufferedReader2;
                                        if (bufferedReader != null) {
                                            bufferedReader.close();
                                        }
                                        if (fileInputStream != null) {
                                        }
                                        Collections.sort(f2141f);
                                    } catch (Throwable th2) {
                                        th = th2;
                                        bufferedReader = bufferedReader2;
                                        if (bufferedReader != null) {
                                            try {
                                                bufferedReader.close();
                                            } catch (Exception unused2) {
                                                throw th;
                                            }
                                        }
                                        if (fileInputStream == null) {
                                            throw th;
                                        }
                                        fileInputStream.close();
                                        throw th;
                                    }
                                }
                                bufferedReader2.close();
                            } catch (Exception unused3) {
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (Exception unused4) {
                            fileInputStream = null;
                        } catch (Throwable th4) {
                            th = th4;
                            fileInputStream = null;
                        }
                        fileInputStream.close();
                    }
                } catch (Exception unused5) {
                }
                Collections.sort(f2141f);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x006b  */
    /* JADX INFO: renamed from: d */
    public static boolean m1105d(AbstractC0194a abstractC0194a) {
        boolean z2;
        ArrayList<a> arrayList;
        if (abstractC0194a == null) {
            int i2 = C0358b.f1991m;
            if ((i2 == 2 && !ZApp.f1379g) || !AbstractC0194a.m590g(i2)) {
                return false;
            }
            abstractC0194a = AbstractC0194a.m589c(i2);
            if (!abstractC0194a.m595f()) {
                return false;
            }
        }
        ArrayList<C0207e.a> arrayList2 = new ArrayList();
        if (abstractC0194a.m592b("cat /proc/mounts")) {
            while (true) {
                String strM599k = abstractC0194a.m599k(true);
                if (strM599k == null) {
                    break;
                }
                try {
                    String[] strArrM1084h = C0385h.m1084h(strM599k, ' ');
                    if (strArrM1084h.length >= 6) {
                        C0207e.a aVar = new C0207e.a();
                        aVar.f1228a = strArrM1084h[0];
                        aVar.f1229b = strArrM1084h[1];
                        aVar.f1230c = strArrM1084h[2];
                        String str = strArrM1084h[3];
                        aVar.f1231d = str != null && str.contains("rw");
                        arrayList2.add(aVar);
                    }
                } catch (Exception unused) {
                }
            }
            if (abstractC0194a.f1190h == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        abstractC0194a.close();
        if (!z2) {
            return false;
        }
        ArrayList<a> arrayList3 = f2141f;
        synchronized (arrayList3) {
            arrayList3.clear();
            for (C0207e.a aVar2 : arrayList2) {
                a aVar3 = new a();
                aVar3.f2143a = aVar2.f1228a;
                aVar3.f2144b = aVar2.f1229b;
                aVar3.f2145c = aVar2.f1230c;
                aVar3.f2146d = aVar2.f1231d ? "rw" : "ro";
                aVar3.f2147e = (byte) -1;
                f2141f.add(aVar3);
            }
            arrayList = f2141f;
            Collections.sort(arrayList);
        }
        return arrayList.size() > 0;
    }
}
