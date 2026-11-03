package p055w0;

import android.content.Context;
import android.content.UriPermission;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.DocumentsContract;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;
import p004b.C0015d;
import p051u0.C0385h;
import ru.zdevs.zarchiver.C0287a;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.p044io.SAF;

/* JADX INFO: renamed from: w0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0412c {

    /* JADX INFO: renamed from: a */
    public static final ArrayList<a> f2149a = new ArrayList<>(5);

    /* JADX INFO: renamed from: b */
    public static final HashSet<Uri> f2150b = new HashSet<>(0);

    /* JADX INFO: renamed from: c */
    public static boolean f2151c = false;

    /* JADX INFO: renamed from: w0.c$a */
    public static final class a {

        /* JADX INFO: renamed from: b */
        public final String f2153b;

        /* JADX INFO: renamed from: c */
        public String f2154c;

        /* JADX INFO: renamed from: d */
        public byte f2155d;

        /* JADX INFO: renamed from: a */
        public String f2152a = null;

        /* JADX INFO: renamed from: e */
        public Object f2156e = null;

        /* JADX INFO: renamed from: f */
        public int f2157f = 4096;

        public a(String str, byte b2, String str2) {
            this.f2153b = str;
            this.f2154c = str2;
            this.f2155d = b2;
        }

        /* JADX INFO: renamed from: a */
        public final String m1126a() {
            return m1130e() ? "primary" : this.f2154c;
        }

        /* JADX INFO: renamed from: b */
        public final String m1127b(String str) {
            if (str == null) {
                return null;
            }
            int length = str.length();
            String str2 = this.f2153b;
            if (length <= str2.length()) {
                return null;
            }
            return C0015d.m65a0(str.substring(str2.length()));
        }

        /* JADX INFO: renamed from: c */
        public final Uri m1128c(String str, boolean z2) {
            String strConcat;
            String strM1126a = m1126a();
            if (strM1126a == null) {
                return null;
            }
            if (C0385h.m1081e(str)) {
                strConcat = strM1126a.concat("%3A");
            } else {
                strConcat = Uri.encode(strM1126a + ":" + str);
            }
            return SAF.m850a(strConcat, "", z2 ? 4 : 0);
        }

        /* JADX INFO: renamed from: d */
        public final boolean m1129d(String str) {
            if (C0385h.m1081e(str)) {
                return C0015d.m49K(this.f2157f, 8);
            }
            Uri uriM1128c = m1128c(str, true);
            if (uriM1128c == null) {
                return false;
            }
            HashSet<Uri> hashSet = C0412c.f2150b;
            if (hashSet.contains(uriM1128c)) {
                return true;
            }
            ZApp zApp = ZApp.f1375c;
            if (zApp == null || zApp.checkCallingOrSelfUriPermission(uriM1128c, 3) != 0) {
                return false;
            }
            hashSet.add(uriM1128c);
            return true;
        }

        /* JADX INFO: renamed from: e */
        public final boolean m1130e() {
            return C0015d.m49K(this.f2157f, 1);
        }

        /* JADX INFO: renamed from: f */
        public final boolean m1131f() {
            boolean zCreateNewFile = true;
            if (C0015d.m49K(this.f2157f, 16384)) {
                return true;
            }
            if (C0015d.m49K(this.f2157f, 8192)) {
                return false;
            }
            if (Build.VERSION.SDK_INT < 30) {
                if (!m1130e() && !C0015d.m49K(this.f2157f, 8)) {
                    ArrayList<a> arrayList = C0412c.f2149a;
                    StringBuilder sb = new StringBuilder();
                    String str = this.f2153b;
                    sb.append(str);
                    sb.append("/Android");
                    File file = new File(sb.toString());
                    if (!file.exists()) {
                        file = new File(str);
                    }
                    File file2 = new File(file, ".rw");
                    if (!file2.exists()) {
                        try {
                            zCreateNewFile = file2.createNewFile();
                        } catch (IOException unused) {
                            zCreateNewFile = false;
                        }
                    }
                    if (zCreateNewFile && file2.exists()) {
                        zCreateNewFile = file2.delete();
                    }
                }
            } else if (C0015d.m49K(this.f2157f, 4) && !C0015d.m49K(this.f2157f, 8)) {
                zCreateNewFile = false;
            }
            this.f2157f |= zCreateNewFile ? 16384 : 8192;
            return zCreateNewFile;
        }
    }

    /* JADX INFO: renamed from: w0.c$b */
    public static abstract class b {

        /* JADX INFO: renamed from: a */
        public Object f2158a;

        /* JADX INFO: renamed from: c */
        public abstract void mo784c(StorageVolume storageVolume, boolean z2);
    }

    /* JADX INFO: renamed from: a */
    public static synchronized void m1107a(Uri uri) {
        a aVarM1112f;
        if (f2150b.add(uri)) {
            if (uri.toString().endsWith("%3A")) {
                String[] strArrM1084h = C0385h.m1084h(DocumentsContract.getTreeDocumentId(uri), ':');
                if (strArrM1084h.length > 0 && (aVarM1112f = m1112f(strArrM1084h[0])) != null) {
                    aVarM1112f.f2157f = (aVarM1112f.f2157f & (-24577)) | 8;
                }
            }
            f2151c = false;
        }
    }

    /* JADX INFO: renamed from: b */
    public static synchronized void m1108b(StorageVolume storageVolume) {
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        try {
            File directory = storageVolume.getDirectory();
            if (directory == null) {
                return;
            }
            String absolutePath = directory.getAbsolutePath();
            if (m1113g(absolutePath) != null) {
                return;
            }
            a aVar = new a(absolutePath, absolutePath.startsWith("/mnt/media_rw") ? (byte) 4 : (byte) 2, storageVolume.getUuid());
            if (storageVolume.isRemovable()) {
                aVar.f2157f |= 2;
            }
            f2149a.add(aVar);
            Method methodM95w = C0015d.m95w(StorageVolume.class, "getUserLabel", new Class[0]);
            if (methodM95w != null) {
                aVar.f2152a = (String) methodM95w.invoke(storageVolume, new Object[0]);
            }
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    /* JADX INFO: renamed from: c */
    public static synchronized void m1109c(Context context) {
        f2149a.clear();
        f2150b.clear();
        m1110d(context);
    }

    /* JADX INFO: renamed from: d */
    public static synchronized void m1110d(Context context) {
        f2151c = true;
        int i2 = Build.VERSION.SDK_INT;
        if (context == null && (context = ZApp.f1375c) == null) {
            return;
        }
        if (i2 < 24) {
            m1119m(context);
            m1120n(context);
        } else {
            m1121o(context);
        }
        m1118l(context);
        m1125s(context);
        Log.i("StorageList", "Found " + f2149a.size() + " storage");
    }

    /* JADX INFO: renamed from: e */
    public static synchronized a m1111e(String str) {
        if (str == null) {
            return null;
        }
        ArrayList<a> arrayList = f2149a;
        if (arrayList.size() == 0) {
            m1110d(null);
        }
        for (a aVar : arrayList) {
            if (str.startsWith(aVar.f2153b)) {
                return aVar;
            }
        }
        try {
            String canonicalPath = new File(str).getCanonicalPath();
            if (str.equals(canonicalPath)) {
                return null;
            }
            for (a aVar2 : f2149a) {
                if (canonicalPath.startsWith(aVar2.f2153b)) {
                    return aVar2;
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    public static synchronized a m1112f(String str) {
        if (str == null) {
            return null;
        }
        if ("primary".equals(str)) {
            for (a aVar : f2149a) {
                if (aVar.m1130e()) {
                    return aVar;
                }
            }
        } else {
            for (a aVar2 : f2149a) {
                if (str.equals(aVar2.f2154c)) {
                    return aVar2;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: g */
    public static synchronized a m1113g(String str) {
        if (str == null) {
            return null;
        }
        for (a aVar : f2149a) {
            if (str.equals(aVar.f2153b)) {
                return aVar;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: h */
    public static String m1114h(String str, ArrayList<String> arrayList) {
        String str2 = "/dev/block/vold/public" + str.substring(str.indexOf(58), str.length() - 1);
        if (arrayList.size() == 0) {
            try {
                Scanner scanner = new Scanner(new File("/proc/mounts"));
                int i2 = 0;
                while (scanner.hasNextLine() && i2 < 1000) {
                    i2++;
                    String strNextLine = scanner.nextLine();
                    if (strNextLine.startsWith("/dev/block/vold/public")) {
                        arrayList.add(strNextLine);
                    }
                }
                scanner.close();
            } catch (Exception unused) {
            }
        }
        String strSubstring = null;
        for (String str3 : arrayList) {
            if (str3.startsWith(str2)) {
                int iIndexOf = str3.indexOf("/mnt/media_rw/");
                if (iIndexOf < 0) {
                    break;
                }
                int i3 = iIndexOf + 14;
                int iIndexOf2 = str3.indexOf(32, i3);
                if (iIndexOf2 < 0) {
                    iIndexOf2 = str3.indexOf(9, i3);
                }
                if (iIndexOf2 < 0) {
                    iIndexOf2 = i3 + 9;
                }
                strSubstring = str3.substring(i3, iIndexOf2);
            }
        }
        return strSubstring;
    }

    /* JADX INFO: renamed from: i */
    public static synchronized a m1115i() {
        for (a aVar : f2149a) {
            if (aVar.m1130e()) {
                return aVar;
            }
        }
        return new a(Environment.getExternalStorageDirectory().getPath(), (byte) 0, "primary");
    }

    /* JADX INFO: renamed from: j */
    public static String m1116j(String str) {
        String[] strArrM856g;
        a aVarM1112f;
        if (str == null || !str.startsWith("/SAF") || (strArrM856g = SAF.m856g(str)) == null || (aVarM1112f = m1112f(strArrM856g[0])) == null) {
            return str;
        }
        int iIndexOf = str.indexOf(47, 5);
        boolean zM49K = C0015d.m49K(aVarM1112f.f2157f, 4);
        String strReplace = aVarM1112f.f2153b;
        if (zM49K) {
            strReplace = strReplace.replace("/SAF", "/mnt/media_rw");
        }
        if (strArrM856g[1] != null) {
            strReplace = strReplace + "/" + strArrM856g[1];
        }
        if (iIndexOf == -1) {
            return strReplace;
        }
        return strReplace + str.substring(iIndexOf);
    }

    /* JADX INFO: renamed from: k */
    public static synchronized ArrayList m1117k() {
        ArrayList<a> arrayList;
        arrayList = f2149a;
        if (arrayList.size() == 0) {
            m1110d(null);
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: l */
    public static void m1118l(Context context) {
        List list;
        Boolean bool;
        String str;
        try {
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            if (storageManager == null) {
                return;
            }
            Class<?> cls = Class.forName("android.os.storage.DiskInfo");
            Method method = storageManager.getClass().getMethod("getDisks", new Class[0]);
            Method methodM95w = C0015d.m95w(cls, "getId", new Class[0]);
            Method methodM95w2 = C0015d.m95w(cls, "isUsb", new Class[0]);
            Field fieldM92t = C0015d.m92t(cls, "label");
            if (methodM95w == null || methodM95w2 == null || (list = (List) method.invoke(storageManager, new Object[0])) == null) {
                return;
            }
            int size = list.size();
            ArrayList arrayList = null;
            for (int i2 = 0; i2 < size; i2++) {
                Object obj = list.get(i2);
                if (obj != null && (bool = (Boolean) methodM95w2.invoke(obj, new Object[0])) != null && bool.booleanValue() && (str = (String) methodM95w.invoke(obj, new Object[0])) != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList(size);
                    }
                    String strM1114h = m1114h(str, arrayList);
                    if (!C0385h.m1081e(strM1114h)) {
                        a aVarM1112f = m1112f(strM1114h);
                        if (aVarM1112f == null) {
                            if (Build.VERSION.SDK_INT >= 30 ? new File("/mnt/media_rw/" + strM1114h).isDirectory() : false) {
                                aVarM1112f = new a("/mnt/media_rw/" + strM1114h, (byte) 4, strM1114h);
                            } else {
                                aVarM1112f = new a("/SAF/" + strM1114h, (byte) 4, strM1114h);
                                aVarM1112f.f2157f = aVarM1112f.f2157f | 4;
                            }
                            f2149a.add(aVarM1112f);
                        } else {
                            aVarM1112f.f2155d = (byte) 4;
                            aVarM1112f.f2157f |= 4096;
                        }
                        if (aVarM1112f.f2152a == null && fieldM92t != null) {
                            aVarM1112f.f2152a = (String) fieldM92t.get(obj);
                        }
                        aVarM1112f.f2157f |= 2;
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: m */
    public static void m1119m(Context context) {
        try {
            Environment.getExternalStorageDirectory().getCanonicalPath();
        } catch (Exception unused) {
        }
        File[] externalFilesDirs = context.getExternalFilesDirs(null);
        if (externalFilesDirs == null) {
            return;
        }
        for (File file : externalFilesDirs) {
            if (file != null) {
                String absolutePath = file.getAbsolutePath();
                int iIndexOf = absolutePath.indexOf("/Android");
                if (iIndexOf > 0) {
                    absolutePath = absolutePath.substring(0, iIndexOf);
                }
                a aVarM1113g = m1113g(absolutePath);
                if (aVarM1113g == null) {
                    byte b2 = 2;
                    a aVar = new a(absolutePath, (byte) 2, null);
                    f2149a.add(aVar);
                    try {
                        if (!Environment.isExternalStorageRemovable(new File(absolutePath))) {
                            b2 = 1;
                        }
                    } catch (IllegalArgumentException unused2) {
                        Log.w("StorageList", "Bad path: " + absolutePath);
                    }
                    aVar.f2155d = b2;
                } else {
                    aVarM1113g.f2157f |= 4096;
                }
            }
        }
    }

    /* JADX INFO: renamed from: n */
    public static void m1120n(Context context) {
        Class<?> cls;
        Object objInvoke;
        String str;
        Boolean bool;
        boolean z2;
        Boolean bool2;
        String str2;
        try {
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            if (storageManager == null) {
                return;
            }
            try {
                cls = Class.forName("android.os.storage.StorageVolume");
            } catch (ClassNotFoundException unused) {
                cls = null;
            }
            if (cls == null) {
                return;
            }
            Method methodM95w = C0015d.m95w(storageManager.getClass(), "getVolumeList", new Class[0]);
            Method methodM95w2 = C0015d.m95w(cls, "getPath", new Class[0]);
            Method methodM95w3 = C0015d.m95w(cls, "getUuid", new Class[0]);
            Method methodM95w4 = C0015d.m95w(cls, "getState", new Class[0]);
            Method methodM95w5 = C0015d.m95w(cls, "isPrimary", new Class[0]);
            Method methodM95w6 = C0015d.m95w(cls, "isRemovable", new Class[0]);
            Method methodM95w7 = C0015d.m95w(cls, "getUserLabel", new Class[0]);
            if (methodM95w == null || methodM95w2 == null || (objInvoke = methodM95w.invoke(storageManager, new Object[0])) == null) {
                return;
            }
            int length = Array.getLength(objInvoke);
            for (int i2 = 0; i2 < length; i2++) {
                Object obj = Array.get(objInvoke, i2);
                if (obj != null && ((methodM95w4 == null || (str2 = (String) methodM95w4.invoke(obj, new Object[0])) == null || "mounted".equals(str2) || "mounted_ro".equals(str2)) && (str = (String) methodM95w2.invoke(obj, new Object[0])) != null)) {
                    byte b2 = (methodM95w6 == null || (bool2 = (Boolean) methodM95w6.invoke(obj, new Object[0])) == null || bool2.booleanValue()) ? (byte) 2 : (byte) 1;
                    a aVarM1113g = m1113g(str);
                    ArrayList<a> arrayList = f2149a;
                    if (aVarM1113g == null) {
                        aVarM1113g = new a(str, b2, null);
                        arrayList.add(aVarM1113g);
                    } else {
                        aVarM1113g.f2157f |= 4096;
                        if (aVarM1113g.f2156e != null) {
                        }
                    }
                    if (aVarM1113g.f2154c == null && methodM95w3 != null) {
                        aVarM1113g.f2154c = (String) methodM95w3.invoke(obj, new Object[0]);
                    }
                    if (b2 == 2) {
                        aVarM1113g.f2157f = 2 | aVarM1113g.f2157f;
                    }
                    if (methodM95w7 != null) {
                        aVarM1113g.f2152a = (String) methodM95w7.invoke(obj, new Object[0]);
                    }
                    aVarM1113g.f2156e = obj;
                    if (methodM95w5 != null && !aVarM1113g.m1130e() && (bool = (Boolean) methodM95w5.invoke(obj, new Object[0])) != null && bool.booleanValue()) {
                        Iterator<a> it = arrayList.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (it.next().m1130e()) {
                                    z2 = false;
                                    break;
                                }
                            } else {
                                z2 = true;
                                break;
                            }
                        }
                        if (z2) {
                            aVarM1113g.f2157f |= 1;
                        }
                    }
                }
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:104:0x010d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:105:0x010b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:? A[LOOP:1: B:65:0x00f9->B:106:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00ca A[Catch: Exception -> 0x0117, TryCatch #0 {Exception -> 0x0117, blocks: (B:2:0x0000, B:4:0x0007, B:8:0x0015, B:11:0x0020, B:12:0x0028, B:14:0x002e, B:17:0x0037, B:19:0x003d, B:21:0x0045, B:24:0x004e, B:26:0x0052, B:29:0x0059, B:33:0x0069, B:35:0x0073, B:37:0x007a, B:42:0x0087, B:51:0x00b0, B:54:0x00b8, B:59:0x00dc, B:61:0x00e2, B:62:0x00e7, B:64:0x00f5, B:65:0x00f9, B:67:0x00ff, B:72:0x0110, B:55:0x00ca, B:58:0x00d6, B:45:0x0090, B:46:0x00a6, B:30:0x005e), top: B:76:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00e2 A[Catch: Exception -> 0x0117, TryCatch #0 {Exception -> 0x0117, blocks: (B:2:0x0000, B:4:0x0007, B:8:0x0015, B:11:0x0020, B:12:0x0028, B:14:0x002e, B:17:0x0037, B:19:0x003d, B:21:0x0045, B:24:0x004e, B:26:0x0052, B:29:0x0059, B:33:0x0069, B:35:0x0073, B:37:0x007a, B:42:0x0087, B:51:0x00b0, B:54:0x00b8, B:59:0x00dc, B:61:0x00e2, B:62:0x00e7, B:64:0x00f5, B:65:0x00f9, B:67:0x00ff, B:72:0x0110, B:55:0x00ca, B:58:0x00d6, B:45:0x0090, B:46:0x00a6, B:30:0x005e), top: B:76:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00ff A[Catch: Exception -> 0x0117, TryCatch #0 {Exception -> 0x0117, blocks: (B:2:0x0000, B:4:0x0007, B:8:0x0015, B:11:0x0020, B:12:0x0028, B:14:0x002e, B:17:0x0037, B:19:0x003d, B:21:0x0045, B:24:0x004e, B:26:0x0052, B:29:0x0059, B:33:0x0069, B:35:0x0073, B:37:0x007a, B:42:0x0087, B:51:0x00b0, B:54:0x00b8, B:59:0x00dc, B:61:0x00e2, B:62:0x00e7, B:64:0x00f5, B:65:0x00f9, B:67:0x00ff, B:72:0x0110, B:55:0x00ca, B:58:0x00d6, B:45:0x0090, B:46:0x00a6, B:30:0x005e), top: B:76:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x00f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x0110 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x00b8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x00d6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x0028 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x0028 A[SYNTHETIC] */
    /* JADX INFO: renamed from: o */
    public static void m1121o(Context context) {
        Method methodM95w;
        String state;
        String absolutePath;
        byte b2;
        int i2;
        a aVarM1113g;
        ArrayList<a> arrayList;
        Iterator<a> it;
        boolean z2;
        try {
            if (Build.VERSION.SDK_INT < 30) {
                methodM95w = C0015d.m95w(StorageVolume.class, "getPath", new Class[0]);
                if (methodM95w == null) {
                    return;
                }
            } else {
                methodM95w = null;
            }
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            if (storageManager == null) {
                return;
            }
            for (StorageVolume storageVolume : storageManager.getStorageVolumes()) {
                if (storageVolume != null && ((state = storageVolume.getState()) == null || "mounted".equals(state) || "mounted_ro".equals(state))) {
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 >= 30) {
                        File directory = storageVolume.getDirectory();
                        if (directory != null) {
                            absolutePath = directory.getAbsolutePath();
                        }
                    } else {
                        absolutePath = (String) methodM95w.invoke(storageVolume, new Object[0]);
                    }
                    if (absolutePath != null) {
                        if (absolutePath.startsWith("/mnt/media_rw")) {
                            String description = storageVolume.getDescription(context);
                            i2 = 4;
                            b2 = (description == null || !description.contains("SD")) ? (byte) 4 : (byte) 2;
                            if (i3 < 30 || !Os.access(absolutePath, OsConstants.R_OK)) {
                                absolutePath = "/SAF/" + storageVolume.getUuid();
                            }
                            aVarM1113g = m1113g(absolutePath);
                            arrayList = f2149a;
                            if (aVarM1113g == null) {
                                aVarM1113g = new a(absolutePath, b2, storageVolume.getUuid());
                                aVarM1113g.f2157f |= i2;
                                arrayList.add(aVarM1113g);
                            } else {
                                aVarM1113g.f2157f |= 4096;
                                if (aVarM1113g.f2156e != null) {
                                    aVarM1113g.f2154c = storageVolume.getUuid();
                                }
                            }
                            if (storageVolume.isRemovable()) {
                                aVarM1113g.f2157f |= 2;
                            }
                            aVarM1113g.f2156e = storageVolume;
                            aVarM1113g.f2152a = storageVolume.getDescription(context);
                            if (storageVolume.isPrimary()) {
                                it = arrayList.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        if (it.next().m1130e()) {
                                            z2 = false;
                                            break;
                                        }
                                    } else {
                                        z2 = true;
                                        break;
                                    }
                                }
                                if (z2) {
                                    aVarM1113g.f2157f |= 1;
                                }
                            }
                        } else {
                            b2 = storageVolume.isRemovable() ? (byte) 2 : (byte) 1;
                        }
                        i2 = 0;
                        aVarM1113g = m1113g(absolutePath);
                        arrayList = f2149a;
                        if (aVarM1113g == null) {
                            aVarM1113g = new a(absolutePath, b2, storageVolume.getUuid());
                            aVarM1113g.f2157f |= i2;
                            arrayList.add(aVarM1113g);
                        } else {
                            aVarM1113g.f2157f |= 4096;
                            if (aVarM1113g.f2156e != null) {
                                aVarM1113g.f2154c = storageVolume.getUuid();
                            }
                        }
                        if (storageVolume.isRemovable()) {
                            aVarM1113g.f2157f |= 2;
                        }
                        aVarM1113g.f2156e = storageVolume;
                        aVarM1113g.f2152a = storageVolume.getDescription(context);
                        if (storageVolume.isPrimary()) {
                            it = arrayList.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (it.next().m1130e()) {
                                        z2 = false;
                                        break;
                                    }
                                } else {
                                    z2 = true;
                                    break;
                                }
                            }
                            if (z2) {
                                aVarM1113g.f2157f |= 1;
                            }
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: p */
    public static synchronized boolean m1122p(ArrayList<a> arrayList) {
        int size;
        ArrayList<a> arrayList2 = f2149a;
        size = arrayList2.size();
        Iterator<a> it = arrayList2.iterator();
        while (it.hasNext()) {
            it.next().f2157f &= -4097;
        }
        m1110d(null);
        Iterator<a> it2 = f2149a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (C0015d.m49K(next.f2157f, 4096)) {
                next.f2157f &= -4097;
            } else {
                if (arrayList != null) {
                    arrayList.add(next);
                }
                it2.remove();
            }
        }
        return size != f2149a.size();
    }

    /* JADX INFO: renamed from: q */
    public static synchronized a m1123q(StorageVolume storageVolume) {
        a aVarM1112f = m1112f(storageVolume.getUuid());
        if (aVarM1112f == null || !f2149a.remove(aVarM1112f)) {
            return null;
        }
        return aVarM1112f;
    }

    /* JADX INFO: renamed from: r */
    public static void m1124r(Context context, C0287a c0287a) {
        if (c0287a.f2158a == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            ((StorageManager) context.getSystemService("storage")).unregisterStorageVolumeCallback((StorageManager.StorageVolumeCallback) c0287a.f2158a);
        } else {
            context.getContentResolver().unregisterContentObserver((ContentObserver) c0287a.f2158a);
        }
        c0287a.f2158a = null;
    }

    /* JADX INFO: renamed from: s */
    public static synchronized void m1125s(Context context) {
        f2151c = f2150b.isEmpty();
        List<UriPermission> persistedUriPermissions = context.getContentResolver().getPersistedUriPermissions();
        int size = persistedUriPermissions.size();
        for (int i2 = 0; i2 < size; i2++) {
            Uri uri = persistedUriPermissions.get(i2).getUri();
            if (uri != null) {
                m1107a(uri);
            }
        }
    }
}
