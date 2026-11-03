package p025i0;

import android.os.Build;
import android.os.Environment;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import android.system.StructStatVfs;
import java.io.File;
import java.util.Iterator;
import p004b.C0015d;
import p008c0.C0044b;
import p008c0.C0046d;
import p008c0.C0048f;
import p008c0.C0051i;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p021g1.C0137h;
import p033m0.C0185h;
import p047s0.C0358b;
import p051u0.InterfaceC0381d;
import p055w0.C0412c;
import p055w0.C0415f;
import p059y0.C0441e;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.p044io.SAF;

/* JADX INFO: renamed from: i0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0149b extends C0148a {
    /* JADX WARN: Code duplicated, block: B:124:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:125:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:127:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:133:0x0201 A[Catch: Exception -> 0x0292, TryCatch #2 {Exception -> 0x0292, blocks: (B:46:0x00ae, B:51:0x00b9, B:53:0x00bd, B:55:0x00c7, B:57:0x00cd, B:60:0x00d7, B:63:0x00de, B:66:0x00f2, B:68:0x00f8, B:70:0x0100, B:72:0x0106, B:73:0x010e, B:76:0x0113, B:80:0x0132, B:82:0x0140, B:84:0x0146, B:85:0x014f, B:89:0x015d, B:91:0x0165, B:95:0x0173, B:148:0x023e, B:99:0x017e, B:101:0x0193, B:103:0x019b, B:106:0x01a6, B:108:0x01b0, B:110:0x01b6, B:119:0x01d7, B:120:0x01d9, B:117:0x01ca, B:128:0x01f7, B:133:0x0201, B:136:0x021a, B:140:0x0223, B:150:0x024c, B:154:0x0256, B:156:0x025e, B:158:0x0264, B:159:0x026d, B:164:0x027d, B:167:0x0284), top: B:178:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:134:0x0217  */
    /* JADX WARN: Code duplicated, block: B:190:0x0230 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x009d  */
    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: b */
    public final boolean mo435b(C0129h c0129h, C0044b c0044b, int i2) {
        char c2;
        int i3;
        String[] strArr;
        int i4;
        String str;
        boolean z2;
        byte b2;
        long j2;
        byte b3;
        String[] strArrM1133a;
        C0129h c0129hM862m;
        this.f1049a = 0;
        File file = c0129h.toFile();
        if (file == null) {
            return false;
        }
        String absolutePath = file.getAbsolutePath();
        int i5 = Build.VERSION.SDK_INT;
        boolean z3 = true;
        if (i5 < 30 || (strArrM1133a = C0415f.m1133a(absolutePath)) == null) {
            c2 = 0;
        } else {
            boolean z4 = "Android/data".equals(strArrM1133a[2]) || "Android/obb".equals(strArrM1133a[2]);
            if (C0358b.m1035f(67108864)) {
                c2 = '\n';
            } else if (C0185h.m580b(strArrM1133a)) {
                file = new File(C0185h.m579a(absolutePath, strArrM1133a[2]));
                c2 = 11;
            } else if (i5 < 33 || !z4) {
                String strM858i = SAF.m858i(strArrM1133a[2]);
                C0412c.a aVarM1112f = C0412c.m1112f(strArrM1133a[0]);
                if (aVarM1112f != null && aVarM1112f.m1129d(strM858i) && (c0129hM862m = SAF.m862m(aVarM1112f.m1126a(), strM858i, true, false)) != null) {
                    c0129h.m489p(c0129hM862m.f1015c);
                    c0129h.m490q(c0129hM862m.f1013a);
                    return false;
                }
                if (z4) {
                    c2 = 1;
                } else {
                    c2 = 3;
                }
            } else if (!"Android/obb".equals(strArrM1133a[2]) || C0137h.m500b()) {
                c2 = 2;
            } else {
                c2 = 1;
            }
        }
        if (!file.isDirectory() && c2 != 2) {
            return false;
        }
        c0044b.clear();
        try {
            String[] list = file.list();
            if (c2 == 2) {
                if (list != null) {
                    int length = list.length;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= length) {
                            z3 = true;
                            break;
                        }
                        String str2 = list[i6];
                        if (!".".equals(str2) && !"..".equals(str2) && !"ru.zdevs.zarchiver".equals(str2)) {
                            z3 = false;
                            break;
                        }
                        i6++;
                    }
                }
                if (z3) {
                    list = C0154g.m518a(absolutePath, absolutePath.startsWith(C0412c.m1115i().f2153b));
                }
            }
            if (list == null) {
                if (!C0015d.m49K(i2, 2)) {
                    return false;
                }
                if (!"/".equals(absolutePath) && C0015d.m49K(i2, 4)) {
                    c0044b.add(0, new C0046d("..", (byte) 3));
                }
                this.f1049a = R.string.MES_ACCESS_DENIED;
                return true;
            }
            String strM68d = C0015d.m68d(file.getAbsolutePath());
            byte bM512n = C0148a.m512n(absolutePath.replace(C0185h.f1157a, ""), false);
            boolean z5 = !C0015d.m49K(i2, 32);
            c0044b.ensureCapacity(list.length + 1);
            if (strM68d.lastIndexOf(47) > 1 && C0015d.m49K(i2, 4)) {
                c0044b.add(0, new C0046d("..", (byte) 3));
            }
            int size = c0044b.size();
            boolean zM49K = C0015d.m49K(i2, 2);
            boolean z6 = !zM49K;
            int length2 = list.length;
            boolean z7 = z6;
            int i7 = 0;
            boolean z8 = zM49K;
            boolean z9 = false;
            while (i7 < length2) {
                String str3 = list[i7];
                if (str3.isEmpty()) {
                    strArr = list;
                    i4 = length2;
                } else {
                    strArr = list;
                    i4 = length2;
                    if (!z5 || str3.charAt(0) != '.') {
                        try {
                            String str4 = strM68d + str3;
                            StructStat structStatLstat = Os.lstat(str4);
                            str = strM68d;
                            try {
                                if (OsConstants.S_ISLNK(structStatLstat.st_mode)) {
                                    structStatLstat = Os.stat(str4);
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                try {
                                    long j3 = -2;
                                    if (OsConstants.S_ISDIR(structStatLstat.st_mode)) {
                                        byte bM510l = C0148a.m510l(str3, bM512n);
                                        if (bM510l == 0) {
                                            bM510l = C0148a.m511m(str4);
                                        }
                                        if (!z2) {
                                            j3 = 0;
                                        }
                                        b3 = bM510l;
                                        j2 = j3;
                                        b2 = 4;
                                    } else {
                                        if (!z2) {
                                            j3 = structStatLstat.st_size;
                                        }
                                        b2 = -1;
                                        j2 = j3;
                                        z7 = false;
                                        b3 = 0;
                                    }
                                    c0044b.add(new C0046d(str3, b2, b3, structStatLstat.st_mtime * 1000, j2));
                                } catch (ErrnoException unused) {
                                    if (z8) {
                                        if (c2 != '\n') {
                                            return false;
                                        }
                                        if (c2 != 0 && C0358b.m1038i(absolutePath)) {
                                            return false;
                                        }
                                        if (c2 != 2) {
                                            c0044b.add(new C0046d(str3, (byte) 4, (byte) 126, -1L, 0L));
                                        } else {
                                            if ((c2 != 1 && Build.VERSION.SDK_INT < 33) || c2 == 3) {
                                                c0044b.clear();
                                                this.f1049a = R.string.MES_ACCESS_DENIED;
                                                return true;
                                            }
                                            z9 = true;
                                            z8 = true;
                                        }
                                    }
                                    i7++;
                                    length2 = i4;
                                    list = strArr;
                                    strM68d = str;
                                    z5 = z5;
                                }
                            } catch (ErrnoException unused2) {
                                z5 = z5;
                                if (z8) {
                                    if (c2 != '\n') {
                                        return false;
                                    }
                                    if (c2 != 0) {
                                    }
                                    if (c2 != 2) {
                                        if (c2 != 1) {
                                            z9 = true;
                                            z8 = true;
                                        } else {
                                            z9 = true;
                                            z8 = true;
                                        }
                                        c0044b.clear();
                                        this.f1049a = R.string.MES_ACCESS_DENIED;
                                        return true;
                                    }
                                    c0044b.add(new C0046d(str3, (byte) 4, (byte) 126, -1L, 0L));
                                }
                                i7++;
                                length2 = i4;
                                list = strArr;
                                strM68d = str;
                                z5 = z5;
                            }
                        } catch (ErrnoException unused3) {
                            str = strM68d;
                        }
                    }
                    i7++;
                    length2 = i4;
                    list = strArr;
                    strM68d = str;
                    z5 = z5;
                }
                str = strM68d;
                z5 = z5;
                i7++;
                length2 = i4;
                list = strArr;
                strM68d = str;
                z5 = z5;
            }
            if (z7 && (((i3 = Build.VERSION.SDK_INT) >= 33 || (i3 >= 30 && !C0441e.m1178c(ZApp.f1375c))) && !Environment.isExternalStorageManager())) {
                c0044b.clear();
                this.f1049a = R.string.MES_ACCESS_DENIED;
            } else if (c0044b.size() <= size) {
                this.f1049a = z9 ? R.string.MES_ACCESS_DENIED : R.string.MES_EMPTY_FOLDER;
            } else if (c2 == 11) {
                c0129h.m489p(file.getAbsolutePath());
            }
            c0129h.m490q("file");
            return true;
        } catch (Exception unused4) {
            return false;
        }
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: c */
    public final C0051i mo436c(C0051i c0051i) {
        C0051i c0051i2 = new C0051i(c0051i.size());
        Iterator<C0046d> it = c0051i.iterator();
        while (it.hasNext()) {
            C0048f c0048f = (C0048f) it.next();
            try {
                if (Os.access(c0048f.f365k.f1015c + '/' + c0048f.f352a, OsConstants.F_OK)) {
                    c0051i2.m200i(c0048f);
                }
            } catch (ErrnoException unused) {
            }
        }
        return c0051i2;
    }

    @Override // p025i0.C0148a, p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: e */
    public final AbstractC0126e.b mo438e(C0129h c0129h, InterfaceC0381d interfaceC0381d) {
        AbstractC0126e.b bVarMo438e = super.mo438e(c0129h, interfaceC0381d);
        if (bVarMo438e != null && c0129h != null) {
            try {
                StructStat structStatStat = Os.stat(c0129h.f1015c);
                if (structStatStat != null) {
                    int i2 = structStatStat.st_mode;
                    int i3 = 1;
                    int i4 = 0;
                    int i5 = 0;
                    while (i4 < 3) {
                        i5 += (i2 % 8) * i3;
                        i4++;
                        i3 *= 10;
                        i2 /= 8;
                    }
                    bVarMo438e.f1003i = i5;
                }
            } catch (Exception unused) {
            }
        }
        return bVarMo438e;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: h */
    public final AbstractC0126e.a mo441h(C0129h c0129h) {
        if (!c0129h.m483j() || c0129h.m485l()) {
            return null;
        }
        try {
            StructStatVfs structStatVfsStatvfs = Os.statvfs(c0129h.m491r());
            long j2 = structStatVfsStatvfs.f_bavail;
            long j3 = structStatVfsStatvfs.f_bsize;
            return new AbstractC0126e.a("Local", j2 * j3, structStatVfsStatvfs.f_blocks * j3);
        } catch (Exception unused) {
            return null;
        }
    }
}
