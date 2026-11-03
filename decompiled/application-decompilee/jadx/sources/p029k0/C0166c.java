package p029k0;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p004b.C0015d;
import p020g0.C0129h;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: k0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0166c {

    /* JADX INFO: renamed from: a */
    public static final String[] f1077a = {"_name", "_id", "_size", "_dir", "_last_mod"};

    /* JADX INFO: renamed from: b */
    public static final String[] f1078b = {"_name", "_id", "_size", "_dir", "_last_mod", "_path"};

    /* JADX INFO: renamed from: c */
    public static Boolean f1079c = Boolean.FALSE;

    /* JADX INFO: renamed from: d */
    public static final ArrayList<c> f1080d = new ArrayList<>(0);

    /* JADX INFO: renamed from: e */
    public static final ArrayList<String> f1081e = new ArrayList<>(0);

    /* JADX INFO: renamed from: k0.c$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public final long f1082a;

        /* JADX INFO: renamed from: b */
        public final long f1083b;

        /* JADX INFO: renamed from: c */
        public final String f1084c;

        public a(String str, long j2, long j3) {
            this.f1082a = j3;
            this.f1083b = j2;
            this.f1084c = str;
        }
    }

    /* JADX INFO: renamed from: k0.c$b */
    public static class b {

        /* JADX INFO: renamed from: a */
        public String f1085a;

        /* JADX INFO: renamed from: b */
        public String f1086b;

        /* JADX INFO: renamed from: c */
        public boolean f1087c;

        /* JADX INFO: renamed from: d */
        public long f1088d;

        /* JADX INFO: renamed from: e */
        public long f1089e;
    }

    /* JADX INFO: renamed from: k0.c$c */
    public static final class c {

        /* JADX INFO: renamed from: a */
        public final String f1090a;

        /* JADX INFO: renamed from: b */
        public final String f1091b;

        /* JADX INFO: renamed from: c */
        public final String f1092c;

        /* JADX INFO: renamed from: d */
        public int f1093d;

        public c(String str, String str2, String str3, int i2) {
            this.f1090a = str;
            this.f1091b = str2;
            this.f1092c = str3;
            this.f1093d = i2;
        }
    }

    /* JADX INFO: renamed from: a */
    public static boolean m541a(ContentResolver contentResolver, String str) {
        boolean z2;
        try {
            ContentProviderClient contentProviderClientAcquireContentProviderClient = contentResolver.acquireContentProviderClient(str);
            if (contentProviderClientAcquireContentProviderClient == null) {
                return false;
            }
            try {
                Cursor cursorQuery = contentProviderClientAcquireContentProviderClient.query(new Uri.Builder().authority(str).build(), new String[]{"_name", "_id", "_flags"}, "get=accounts", null, null);
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        String string = cursorQuery.getString(0);
                        String string2 = cursorQuery.getString(1);
                        int i2 = cursorQuery.getInt(2);
                        ArrayList<c> arrayList = f1080d;
                        Iterator<c> it = arrayList.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z2 = true;
                                break;
                            }
                            c next = it.next();
                            if (str.equals(next.f1091b) && string2.equals(next.f1092c) && string.equals(next.f1090a)) {
                                next.f1093d = i2;
                                z2 = false;
                                break;
                            }
                        }
                        if (z2) {
                            arrayList.add(new c(string, str, string2, i2));
                        }
                    }
                    cursorQuery.close();
                }
                return true;
            } catch (Exception unused) {
                return false;
            } finally {
                m542b(contentProviderClientAcquireContentProviderClient);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m542b(ContentProviderClient contentProviderClient) {
        if (Build.VERSION.SDK_INT >= 24) {
            contentProviderClient.close();
        } else {
            contentProviderClient.release();
        }
    }

    /* JADX INFO: renamed from: c */
    public static boolean m543c(C0129h c0129h, C0129h c0129h2, boolean z2) {
        ContentProviderClient contentProviderClientM545e = m545e(c0129h);
        if (contentProviderClientM545e == null) {
            return false;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("_account", c0129h.f1017e);
            bundle.putParcelable("_uri", m547g(c0129h));
            bundle.putParcelable("_uri_to", m547g(c0129h2));
            Bundle bundleCall = contentProviderClientM545e.call(z2 ? "move" : "copy", null, bundle);
            if (bundleCall == null) {
                return false;
            }
            return bundleCall.getInt("_ret") == 0;
        } catch (Exception unused) {
            return false;
        } finally {
            m542b(contentProviderClientM545e);
        }
    }

    /* JADX INFO: renamed from: d */
    public static int m544d(C0129h c0129h) {
        for (c cVar : f1080d) {
            if (cVar.f1092c.equals(c0129h.f1017e)) {
                if (cVar.f1091b.equals(c0129h.f1014b)) {
                    return cVar.f1093d;
                }
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: e */
    public static ContentProviderClient m545e(C0129h c0129h) {
        ZApp zApp;
        String str = c0129h.f1014b;
        if (str == null || (zApp = ZApp.f1375c) == null) {
            return null;
        }
        return zApp.getContentResolver().acquireUnstableContentProviderClient(str);
    }

    /* JADX INFO: renamed from: f */
    public static String m546f(C0129h c0129h) {
        ContentProviderClient contentProviderClientM545e = m545e(c0129h);
        if (contentProviderClientM545e == null) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("_account", c0129h.f1017e);
            Bundle bundleCall = contentProviderClientM545e.call("error", null, bundle);
            if (bundleCall == null) {
                return null;
            }
            return bundleCall.getString("_text");
        } catch (Exception unused) {
            return null;
        } finally {
            m542b(contentProviderClientM545e);
        }
    }

    /* JADX INFO: renamed from: g */
    public static Uri m547g(C0129h c0129h) {
        return new Uri.Builder().authority(c0129h.f1014b).path(c0129h.f1015c).fragment(c0129h.f1017e).query(c0129h.f1016d).build();
    }

    /* JADX INFO: renamed from: h */
    public static void m548h(Context context) {
        if (f1079c.booleanValue()) {
            return;
        }
        List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("ru.zdevs.zarchiver.plugin.PLUGIN_APPLICATION"), 0);
        ContentResolver contentResolver = context.getContentResolver();
        ArrayList<String> arrayList = f1081e;
        arrayList.clear();
        ArrayList<c> arrayList2 = f1080d;
        arrayList2.clear();
        arrayList2.ensureCapacity(listQueryIntentActivities.size() * 2);
        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
            if (m541a(contentResolver, resolveInfo.activityInfo.packageName)) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
        }
        f1079c = Boolean.TRUE;
    }

    /* JADX INFO: renamed from: i */
    public static boolean m549i() {
        ZApp zApp;
        if (f1081e.isEmpty() || (zApp = ZApp.f1375c) == null) {
            return false;
        }
        ArrayList<c> arrayList = f1080d;
        int size = arrayList.size();
        for (c cVar : arrayList) {
            cVar.f1093d = 1048576 | cVar.f1093d;
        }
        ContentResolver contentResolver = zApp.getContentResolver();
        Iterator<String> it = f1081e.iterator();
        while (it.hasNext()) {
            m541a(contentResolver, it.next());
        }
        Iterator<c> it2 = f1080d.iterator();
        while (it2.hasNext()) {
            if (C0015d.m49K(it2.next().f1093d, 1048576)) {
                it2.remove();
            }
        }
        return size != f1080d.size();
    }
}
