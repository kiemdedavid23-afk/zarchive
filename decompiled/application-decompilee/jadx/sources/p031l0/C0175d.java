package p031l0;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Collections;
import p004b.C0015d;
import p019g.C0118a;
import p020g0.C0129h;
import p020g0.InterfaceC0124c;
import p021g1.C0134e;
import p033m0.C0181d;
import p055w0.C0412c;
import p055w0.C0415f;
import ru.zdevs.zarchiver.p044io.SAF;
import ru.zdevs.zarchiver.provider.FileProvider;

/* JADX INFO: renamed from: l0.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0175d implements InterfaceC0124c {

    /* JADX INFO: renamed from: a */
    public final Uri f1123a;

    /* JADX INFO: renamed from: b */
    public final String f1124b;

    /* JADX INFO: renamed from: c */
    public final ArrayList<String> f1125c;

    /* JADX INFO: renamed from: d */
    public final String f1126d;

    /* JADX INFO: renamed from: e */
    public final int f1127e;

    public C0175d(ArrayList<String> arrayList, String str, int i2) {
        this.f1123a = null;
        this.f1124b = null;
        this.f1125c = arrayList;
        this.f1126d = str;
        this.f1127e = i2;
    }

    /* JADX INFO: renamed from: f */
    public static C0175d m553f(String str) {
        C0129h c0129hM862m;
        Cursor cursorM868s;
        String strM97y = C0015d.m97y(str);
        String strM39A = C0015d.m39A(str);
        String[] strArrM1133a = C0415f.m1133a(strM39A);
        int i2 = 0;
        Cursor cursor = null;
        if (strArrM1133a == null) {
            C0412c.a aVarM1111e = C0412c.m1111e(strM39A);
            if (aVarM1111e == null || !C0015d.m49K(aVarM1111e.f2157f, 4)) {
                return null;
            }
            c0129hM862m = null;
        } else {
            c0129hM862m = SAF.m862m(strArrM1133a[0], strArrM1133a[2], false, false);
        }
        if (c0129hM862m != null) {
            try {
                Uri uriM861l = SAF.m861l(1, c0129hM862m.f1015c);
                cursorM868s = uriM861l == null ? null : SAF.m868s(uriM861l, SAF.f1634b);
                if (cursorM868s == null) {
                    C0181d.m561b(cursorM868s);
                    return null;
                }
                try {
                    ArrayList arrayList = new ArrayList();
                    while (cursorM868s.moveToNext()) {
                        if (!"vnd.android.document/directory".equals(cursorM868s.getString(1))) {
                            String string = cursorM868s.getString(0);
                            if (C0015d.m43E(string) == 9) {
                                arrayList.add(string);
                            }
                        }
                    }
                    Collections.sort(arrayList, new C0134e(1));
                    int size = arrayList.size();
                    while (true) {
                        if (i2 >= size) {
                            i2 = -1;
                            break;
                        }
                        if (strM97y.equals(arrayList.get(i2))) {
                            break;
                        }
                        i2++;
                    }
                    if (i2 >= 0) {
                        C0175d c0175d = new C0175d(arrayList, c0129hM862m.f1015c, i2);
                        C0181d.m561b(cursorM868s);
                        return c0175d;
                    }
                } catch (Exception unused) {
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorM868s;
                    C0181d.m561b(cursor);
                    throw th;
                }
                C0181d.m561b(cursorM868s);
            } catch (Exception unused2) {
                cursorM868s = null;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return null;
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: a */
    public final int mo445a() {
        return this.f1127e;
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: b */
    public final Uri mo446b(Context context, int i2) {
        Uri uri = this.f1123a;
        if (uri != null) {
            return uri;
        }
        ArrayList<String> arrayList = this.f1125c;
        if (arrayList == null) {
            return null;
        }
        return FileProvider.m882c(C0015d.m78i(this.f1126d, arrayList.get(i2)));
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: c */
    public final boolean mo447c() {
        return true;
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: d */
    public final C0118a mo448d(int i2) {
        Uri uri = this.f1123a;
        if (uri != null) {
            return new C0118a(uri, null, null);
        }
        ArrayList<String> arrayList = this.f1125c;
        if (arrayList == null) {
            return new C0118a("Error");
        }
        try {
            Uri uriM860k = SAF.m860k(0, C0015d.m78i(this.f1126d, arrayList.get(i2)));
            if (uriM860k != null) {
                return new C0118a(uriM860k, null, null);
            }
            throw new NullPointerException("Uri must not be null");
        } catch (Exception e2) {
            String message = e2.getMessage();
            if (message == null) {
                message = "Failed to get Uri for document";
            }
            return new C0118a(message);
        }
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: e */
    public final C0129h mo449e() {
        Uri uri = this.f1123a;
        if (uri != null) {
            if ("file".equals(uri.getScheme())) {
                return new C0129h(C0015d.m39A(uri.getPath()));
            }
            return null;
        }
        String str = this.f1126d;
        if (str != null) {
            return new C0129h(str);
        }
        return null;
    }

    @Override // p020g0.InterfaceC0124c
    public final int getCount() {
        if (this.f1123a != null) {
            return 1;
        }
        ArrayList<String> arrayList = this.f1125c;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @Override // p020g0.InterfaceC0124c
    public final String getName(int i2) {
        String str = this.f1124b;
        if (str != null) {
            return str;
        }
        ArrayList<String> arrayList = this.f1125c;
        return arrayList != null ? arrayList.get(i2) : "";
    }

    @Override // p020g0.InterfaceC0124c
    public final boolean remove(int i2) {
        ArrayList<String> arrayList = this.f1125c;
        if (arrayList == null) {
            return false;
        }
        arrayList.remove(i2);
        return true;
    }

    public C0175d(Uri uri, String str) {
        this.f1123a = uri;
        this.f1124b = str;
        this.f1125c = null;
        this.f1126d = null;
        this.f1127e = 0;
    }
}
