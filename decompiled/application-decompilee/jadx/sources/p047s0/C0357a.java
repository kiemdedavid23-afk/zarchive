package p047s0;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Environment;
import android.preference.PreferenceManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p005b0.C0023e;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p029k0.C0166c;
import p051u0.C0385h;
import p055w0.C0412c;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: s0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0357a {

    /* JADX INFO: renamed from: c */
    public static ArrayList<C0023e> f1974c;

    /* JADX INFO: renamed from: a */
    public static final ArrayList<C0023e> f1972a = new ArrayList<>();

    /* JADX INFO: renamed from: b */
    public static final ReentrantReadWriteLock f1973b = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: d */
    public static boolean f1975d = false;

    /* JADX INFO: renamed from: e */
    public static final String[] f1976e = {Environment.DIRECTORY_DOWNLOADS, Environment.DIRECTORY_MUSIC, "Documents"};

    /* JADX INFO: renamed from: f */
    public static final int[] f1977f = {5, 6, 4};

    /* JADX INFO: renamed from: g */
    public static final int[] f1978g = {R.string.FVR_DOWNLOAD, R.string.FVR_MUSIC, R.string.FVR_DOCUMENTS};

    /* JADX INFO: renamed from: a */
    public static void m1019a(int i2, ZArchiver zArchiver, String str, String str2) {
        ReentrantReadWriteLock reentrantReadWriteLock = f1973b;
        C0023e c0023e = new C0023e(i2, 4, str, new C0129h(str2));
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(zArchiver);
        String str3 = defaultSharedPreferences.getString("sFavorite", "") + c0023e + "|";
        SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
        editorEdit.putString("sFavorite", str3);
        editorEdit.apply();
        try {
            reentrantReadWriteLock.writeLock().lock();
            f1972a.add(c0023e);
        } finally {
            reentrantReadWriteLock.writeLock().unlock();
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m1020b() {
        int i2;
        int i3;
        Iterator it;
        String strReplace;
        int i4;
        Context contextM720c = ZApp.m720c(null);
        if (contextM720c == null) {
            return;
        }
        Resources resources = contextM720c.getResources();
        ArrayList arrayListM1117k = C0412c.m1117k();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(contextM720c);
        ArrayList<C0023e> arrayList = f1972a;
        arrayList.clear();
        f1975d = false;
        String[] strArr = C0358b.f1980b;
        int i5 = 2;
        byte b2 = 1;
        if (C0412c.m1113g(strArr[0]) == null || C0412c.m1113g(strArr[1]) == null) {
            arrayList.add(new C0023e(2, 33, resources.getString(R.string.FVR_HOME), new C0129h(strArr[0])));
        }
        if (C0358b.m1035f(16777216)) {
            arrayList.add(new C0023e(-2, 1, "ROOT", new C0129h("/")));
        }
        if (f1974c == null) {
            String string = defaultSharedPreferences.getString("sFavoriteCustomName", null);
            if (C0385h.m1081e(string)) {
                f1974c = new ArrayList<>(0);
            } else {
                String[] strArrM1084h = C0385h.m1084h(string, '|');
                f1974c = new ArrayList<>(strArrM1084h.length);
                for (String str : strArrM1084h) {
                    C0023e c0023eM124a = C0023e.m124a(64, str);
                    if (c0023eM124a != null) {
                        f1974c.add(c0023eM124a);
                    }
                }
            }
        }
        Iterator it2 = arrayListM1117k.iterator();
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (it2.hasNext()) {
            byte b3 = ((C0412c.a) it2.next()).f2155d;
            if (b3 == 0) {
                i6++;
            } else if (b3 == 2) {
                i7++;
            } else if (b3 == 4) {
                i8++;
            }
        }
        Iterator it3 = arrayListM1117k.iterator();
        int i9 = 1;
        int i10 = 1;
        int i11 = 1;
        while (it3.hasNext()) {
            C0412c.a aVar = (C0412c.a) it3.next();
            C0023e c0023eM1023e = m1023e(i5, aVar.f2153b);
            if (c0023eM1023e == null) {
                byte b4 = aVar.f2155d;
                it = it3;
                if (b4 != 0) {
                    if (b4 != b2) {
                        if (b4 == 2) {
                            strReplace = resources.getString(R.string.FVR_EXTERNAL).replace("%1", i7 > 1 ? "" + i11 : "");
                            i11++;
                            i4 = 1;
                        } else if (b4 == 4) {
                            strReplace = resources.getString(R.string.FVR_EXTERNAL_USB).replace("%1", i8 > 1 ? "" + i10 : "");
                            i10++;
                            i4 = 0;
                        }
                        c0023eM1023e = new C0023e(i4, 2, strReplace, new C0129h(aVar.f2153b));
                    } else {
                        strReplace = resources.getString(R.string.FVR_INTERNAL);
                    }
                    it3 = it;
                    i5 = 2;
                    b2 = 1;
                } else {
                    strReplace = resources.getString(R.string.FVR_DEVICE).replace("%1", i6 > 1 ? "" + i9 : "");
                    i9++;
                }
                i4 = -1;
                c0023eM1023e = new C0023e(i4, 2, strReplace, new C0129h(aVar.f2153b));
            } else {
                it = it3;
            }
            arrayList.add(c0023eM1023e);
            it3 = it;
            i5 = 2;
            b2 = 1;
        }
        String str2 = C0358b.f1979a;
        if (str2 != null && C0412c.m1113g(str2) == null) {
            C0023e c0023eM1023e2 = m1023e(16, C0358b.f1979a);
            if (c0023eM1023e2 == null) {
                c0023eM1023e2 = new C0023e(3, 16, resources.getString(R.string.FVR_ARCHIVE), new C0129h(C0358b.f1979a));
            }
            arrayList.add(c0023eM1023e2);
        }
        String string2 = defaultSharedPreferences.getString("sFavorite", null);
        if (C0385h.m1081e(string2)) {
            i2 = 0;
            if (!defaultSharedPreferences.getBoolean("sFavoGenerated", false)) {
                StringBuilder sb = new StringBuilder();
                int i12 = 0;
                while (true) {
                    String[] strArr2 = f1976e;
                    if (i12 >= strArr2.length) {
                        break;
                    }
                    try {
                        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(strArr2[i12]);
                        if (externalStoragePublicDirectory.exists()) {
                            C0023e c0023e = new C0023e(f1977f[i12], 4, resources.getString(f1978g[i12]), new C0129h(externalStoragePublicDirectory.getAbsolutePath()));
                            arrayList.add(c0023e);
                            sb.append(c0023e);
                            sb.append('|');
                        }
                    } catch (Exception unused) {
                    }
                    i12++;
                }
                SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
                editorEdit.putBoolean("sFavoGenerated", true);
                editorEdit.putString("sFavorite", sb.toString());
                editorEdit.apply();
            }
        } else {
            for (String str3 : C0385h.m1084h(string2, '|')) {
                C0023e c0023eM124a2 = C0023e.m124a(4, str3);
                if (c0023eM124a2 != null) {
                    arrayList.add(c0023eM124a2);
                }
            }
            i2 = 0;
        }
        C0166c.m548h(contextM720c);
        for (C0166c.c cVar : C0166c.f1080d) {
            int i13 = cVar.f1093d & 255;
            if (i13 == 1) {
                i3 = i2;
            } else if (i13 != 2) {
                i3 = i13 != 3 ? 10 : 12;
            } else {
                i3 = 11;
            }
            C0023e c0023e2 = new C0023e(i3, 8, cVar.f1090a, new C0129h("plugin", "/", cVar.f1092c, cVar.f1091b));
            Objects.toString(c0023e2.f186c);
            arrayList.add(c0023e2);
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m1021c() {
        ReentrantReadWriteLock reentrantReadWriteLock = f1973b;
        try {
            reentrantReadWriteLock.readLock().lock();
            ArrayList<C0023e> arrayList = f1972a;
            boolean zIsEmpty = arrayList.isEmpty();
            reentrantReadWriteLock.readLock().unlock();
            if (zIsEmpty) {
                try {
                    reentrantReadWriteLock.writeLock().lock();
                    if (arrayList.isEmpty()) {
                        m1020b();
                    }
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
        } catch (Throwable th) {
            reentrantReadWriteLock.readLock().unlock();
            throw th;
        }
    }

    /* JADX INFO: renamed from: d */
    public static ArrayList<C0023e> m1022d(boolean z2) {
        ArrayList<C0023e> arrayList;
        ReentrantReadWriteLock reentrantReadWriteLock = f1973b;
        m1021c();
        try {
            reentrantReadWriteLock.readLock().lock();
            ArrayList<C0023e> arrayList2 = f1972a;
            if (z2) {
                arrayList = new ArrayList<>(arrayList2.size());
                for (C0023e c0023e : arrayList2) {
                    if (c0023e.f186c.m488o()) {
                        arrayList.add(c0023e);
                    }
                }
            } else {
                arrayList = new ArrayList<>(arrayList2);
            }
            reentrantReadWriteLock.readLock().unlock();
            return arrayList;
        } catch (Throwable th) {
            reentrantReadWriteLock.readLock().unlock();
            throw th;
        }
    }

    /* JADX INFO: renamed from: e */
    public static C0023e m1023e(int i2, String str) {
        ArrayList<C0023e> arrayList = f1974c;
        if (arrayList == null) {
            return null;
        }
        for (C0023e c0023e : arrayList) {
            if (str.equals(c0023e.f186c.m491r())) {
                c0023e.f188e = i2 | 64;
                return c0023e;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    public static C0023e m1024f(int i2) {
        ReentrantReadWriteLock reentrantReadWriteLock = f1973b;
        try {
            reentrantReadWriteLock.readLock().lock();
            ArrayList<C0023e> arrayList = f1972a;
            return (i2 >= arrayList.size() || i2 < 0) ? null : arrayList.get(i2);
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0032  */
    /* JADX INFO: renamed from: g */
    public static boolean m1025g(int i2) {
        boolean z2;
        ReentrantReadWriteLock reentrantReadWriteLock = f1973b;
        try {
            reentrantReadWriteLock.readLock().lock();
            if (i2 >= 1) {
                ArrayList<C0023e> arrayList = f1972a;
                z2 = i2 < arrayList.size() && !arrayList.get(i2 + (-1)).m125b(19) && arrayList.get(i2).m125b(4);
            }
            return z2;
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0022  */
    /* JADX INFO: renamed from: h */
    public static boolean m1026h(int i2) {
        boolean z2;
        ReentrantReadWriteLock reentrantReadWriteLock = f1973b;
        try {
            reentrantReadWriteLock.readLock().lock();
            if (i2 >= 0) {
                ArrayList<C0023e> arrayList = f1972a;
                if (i2 >= arrayList.size() || !arrayList.get(i2).m125b(4)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
            } else {
                z2 = false;
            }
            return z2;
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0023  */
    /* JADX INFO: renamed from: i */
    public static boolean m1027i(int i2) {
        boolean z2;
        ReentrantReadWriteLock reentrantReadWriteLock = f1973b;
        try {
            reentrantReadWriteLock.readLock().lock();
            if (i2 >= 0) {
                ArrayList<C0023e> arrayList = f1972a;
                if (i2 >= arrayList.size() || !arrayList.get(i2).m125b(22)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
            } else {
                z2 = false;
            }
            return z2;
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX INFO: renamed from: j */
    public static void m1028j(ZArchiver zArchiver, int i2, int i3, String str) {
        C0023e c0023eM1024f;
        ArrayList<C0023e> arrayList;
        if (m1027i(i2) && (c0023eM1024f = m1024f(i2)) != null) {
            if (!c0023eM1024f.m125b(4)) {
                if (!c0023eM1024f.m125b(18) || (arrayList = f1974c) == null) {
                    return;
                }
                if ((c0023eM1024f.f188e & 64) != 0) {
                    c0023eM1024f.f185b = str;
                    c0023eM1024f.f184a = i3;
                } else {
                    arrayList.add(new C0023e(i3, 64, str, c0023eM1024f.f186c));
                }
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(zArchiver);
                if (f1974c == null) {
                    return;
                }
                StringBuilder sb = new StringBuilder();
                Iterator<C0023e> it = f1974c.iterator();
                while (it.hasNext()) {
                    sb.append(it.next().toString());
                    sb.append('|');
                }
                SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
                editorEdit.putString("sFavoriteCustomName", sb.toString());
                editorEdit.apply();
                return;
            }
            SharedPreferences defaultSharedPreferences2 = PreferenceManager.getDefaultSharedPreferences(zArchiver);
            String string = defaultSharedPreferences2.getString("sFavorite", "");
            if (C0385h.m1081e(string)) {
                return;
            }
            c0023eM1024f.f185b = str;
            c0023eM1024f.f184a = i3;
            String[] strArrM1084h = C0385h.m1084h(string, '|');
            StringBuilder sb2 = new StringBuilder();
            for (String string2 : strArrM1084h) {
                C0023e c0023eM124a = C0023e.m124a(0, string2);
                if (c0023eM124a != null) {
                    if (c0023eM124a.f186c.equals(c0023eM1024f.f186c)) {
                        string2 = c0023eM1024f.toString();
                    }
                    sb2.append(string2);
                    sb2.append('|');
                }
            }
            SharedPreferences.Editor editorEdit2 = defaultSharedPreferences2.edit();
            editorEdit2.putString("sFavorite", sb2.toString());
            editorEdit2.apply();
        }
    }

    /* JADX INFO: renamed from: k */
    public static void m1029k() {
        AbstractC0126e.a aVarM453d;
        ReentrantReadWriteLock reentrantReadWriteLock = f1973b;
        boolean z2 = f1975d;
        try {
            reentrantReadWriteLock.readLock().lock();
            f1975d = true;
            for (C0023e c0023e : f1972a) {
                c0023e.f187d = "";
                if (c0023e.m125b(2) && (aVarM453d = AbstractC0126e.m453d(c0023e.f186c)) != null) {
                    c0023e.f187d = C0385h.m1078b(aVarM453d.f992a, 0, null) + "/\n" + C0385h.m1078b(aVarM453d.f993b, 0, null);
                }
            }
            reentrantReadWriteLock.readLock().unlock();
        } catch (Throwable th) {
            reentrantReadWriteLock.readLock().unlock();
            throw th;
        }
    }
}
