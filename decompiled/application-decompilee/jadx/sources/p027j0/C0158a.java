package p027j0;

import android.content.ContentProviderClient;
import android.database.Cursor;
import android.os.Bundle;
import p004b.C0015d;
import p008c0.C0044b;
import p008c0.C0046d;
import p008c0.C0051i;
import p020g0.AbstractC0126e;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p020g0.InterfaceC0123b;
import p029k0.C0166c;
import p051u0.C0385h;
import p051u0.InterfaceC0381d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: j0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0158a implements InterfaceC0123b {

    /* JADX INFO: renamed from: a */
    public int f1062a = 0;

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: a */
    public final int mo434a(String str, C0129h c0129h) {
        return -1;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: b */
    public final boolean mo435b(C0129h c0129h, C0044b c0044b, int i2) {
        Cursor cursorQuery;
        if (!c0129h.m484k()) {
            return false;
        }
        this.f1062a = 0;
        c0044b.clear();
        if (c0129h.f1015c.length() > 1 && C0015d.m49K(i2, 4)) {
            c0044b.add(0, new C0046d("..", (byte) 3));
        }
        int size = c0044b.size();
        boolean z2 = !C0015d.m49K(i2, 32);
        try {
            int i3 = (C0015d.m49K(i2, 1) ? 2 : 0) | 1;
            ContentProviderClient contentProviderClientM545e = C0166c.m545e(c0129h);
            if (contentProviderClientM545e == null) {
                cursorQuery = null;
            } else {
                try {
                    cursorQuery = contentProviderClientM545e.query(C0166c.m547g(c0129h), C0166c.f1077a, "get=list", new String[]{String.valueOf(i3)}, null);
                    C0166c.m542b(contentProviderClientM545e);
                } catch (Exception unused) {
                    cursorQuery = null;
                }
            }
            if (cursorQuery != null) {
                c0044b.ensureCapacity(cursorQuery.getCount() + 1);
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(0);
                    if (!z2 || string.isEmpty() || string.charAt(0) != '.') {
                        c0044b.add(new C0046d(string, cursorQuery.getString(1), cursorQuery.getInt(3) == 1 ? (byte) 4 : (byte) -1, (byte) 0, cursorQuery.getLong(4), cursorQuery.getLong(2)));
                    }
                }
                cursorQuery.close();
            } else {
                String strM546f = C0166c.m546f(c0129h);
                if (strM546f != null) {
                    ZApp.m726j(strM546f);
                }
            }
            if (c0044b.size() <= size) {
                this.f1062a = R.string.MES_EMPTY_FOLDER;
            }
            c0129h.m490q("plugin");
            return true;
        } catch (Exception unused2) {
            this.f1062a = R.string.MES_ACCESS_DENIED;
            return false;
        }
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: c */
    public final C0051i mo436c(C0051i c0051i) {
        return null;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: d */
    public final int mo437d() {
        return this.f1062a;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: e */
    public final AbstractC0126e.b mo438e(C0129h c0129h, InterfaceC0381d interfaceC0381d) {
        if (!c0129h.m484k()) {
            return null;
        }
        try {
            AbstractC0127f abstractC0127fM463u = AbstractC0127f.m463u(c0129h);
            if (!abstractC0127fM463u.mo418d()) {
                return null;
            }
            AbstractC0126e.b bVar = new AbstractC0126e.b();
            bVar.f995a = abstractC0127fM463u.mo421l();
            bVar.f996b = abstractC0127fM463u.mo423n();
            bVar.f997c = abstractC0127fM463u.mo424o();
            return bVar;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: f */
    public final int mo439f(C0129h c0129h) {
        int iM544d = C0166c.m544d(c0129h);
        int i2 = C0015d.m49K(iM544d, 512) ? 33 : 32;
        return C0015d.m49K(iM544d, 256) ? i2 | 2 : i2;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: g */
    public final AbstractC0126e.b mo440g(C0129h[] c0129hArr, String[] strArr, InterfaceC0381d interfaceC0381d) {
        if (!c0129hArr[0].m484k()) {
            return null;
        }
        AbstractC0126e.b bVar = new AbstractC0126e.b();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            AbstractC0127f abstractC0127fM463u = AbstractC0127f.m463u(new C0129h(strArr[i2], c0129hArr[i2]));
            bVar.f997c = abstractC0127fM463u.mo424o() + bVar.f997c;
        }
        return bVar;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: h */
    public final AbstractC0126e.a mo441h(C0129h c0129h) {
        C0166c.a aVar;
        if (!c0129h.m484k()) {
            return null;
        }
        ContentProviderClient contentProviderClientM545e = C0166c.m545e(c0129h);
        if (contentProviderClientM545e == null) {
            aVar = null;
        } else {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("_account", c0129h.f1017e);
                bundle.putParcelable("_uri", C0166c.m547g(c0129h));
                Bundle bundleCall = contentProviderClientM545e.call("disk", null, bundle);
                if (bundleCall == null || bundleCall.getInt("_ret") != 0) {
                    C0166c.m542b(contentProviderClientM545e);
                    aVar = null;
                } else {
                    aVar = new C0166c.a(bundleCall.getString("_fs_type"), bundleCall.getLong("_used"), bundleCall.getLong("_free"));
                    C0166c.m542b(contentProviderClientM545e);
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                C0166c.m542b(contentProviderClientM545e);
                throw th;
            }
        }
        if (aVar == null) {
            return null;
        }
        long j2 = aVar.f1082a;
        long j3 = aVar.f1083b + j2;
        String str = aVar.f1084c;
        if (str == null) {
            str = "Remote";
        }
        return new AbstractC0126e.a(str, j2, j3);
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: i */
    public final boolean mo442i(C0129h c0129h, String str, int[] iArr, int i2, AbstractC0126e.c cVar, InterfaceC0381d interfaceC0381d) {
        Cursor cursorQuery;
        if (!c0129h.m484k()) {
            return false;
        }
        try {
            ContentProviderClient contentProviderClientM545e = C0166c.m545e(c0129h);
            if (contentProviderClientM545e == null) {
                cursorQuery = null;
            } else {
                try {
                    cursorQuery = contentProviderClientM545e.query(C0166c.m547g(c0129h), C0166c.f1078b, "get=search", new String[]{str}, null);
                    C0166c.m542b(contentProviderClientM545e);
                } catch (Exception unused) {
                    cursorQuery = null;
                }
            }
            if (cursorQuery != null) {
                C0129h c0129h2 = new C0129h(c0129h);
                while (cursorQuery.moveToNext()) {
                    if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                        return false;
                    }
                    String string = cursorQuery.getString(0);
                    if (AbstractC0126e.m456g(string, iArr)) {
                        AbstractC0126e.b bVar = new AbstractC0126e.b();
                        bVar.f995a = cursorQuery.getInt(3) == 0;
                        bVar.f996b = cursorQuery.getLong(4);
                        bVar.f997c = cursorQuery.getLong(2);
                        String string2 = cursorQuery.getString(1);
                        String string3 = cursorQuery.getString(5);
                        if (C0385h.m1081e(string3)) {
                            cVar.mo461d(bVar, c0129h, string, string2);
                        } else {
                            if (!c0129h2.f1015c.equals(string3)) {
                                c0129h2 = new C0129h(c0129h);
                                c0129h2.m489p(string3);
                            }
                            cVar.mo461d(bVar, c0129h2, string, string2);
                        }
                    }
                }
                cursorQuery.close();
            } else {
                String strM546f = C0166c.m546f(c0129h);
                if (strM546f != null) {
                    ZApp.m726j(strM546f);
                }
            }
            return true;
        } catch (Exception unused2) {
            return false;
        }
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: j */
    public final boolean mo443j(C0129h c0129h) {
        return c0129h.m484k();
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: k */
    public final AbstractC0126e.b mo444k(C0129h c0129h, String[] strArr, InterfaceC0381d interfaceC0381d) {
        if (!c0129h.m484k()) {
            return null;
        }
        AbstractC0126e.b bVar = new AbstractC0126e.b();
        for (String str : strArr) {
            bVar.f997c = AbstractC0127f.m463u(new C0129h(str, c0129h)).mo424o() + bVar.f997c;
        }
        return bVar;
    }
}
