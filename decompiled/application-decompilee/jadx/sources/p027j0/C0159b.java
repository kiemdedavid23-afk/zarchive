package p027j0;

import android.content.ContentProviderClient;
import android.database.Cursor;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import p004b.C0015d;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p029k0.C0166c;
import p029k0.C0167d;
import p029k0.C0168e;

/* JADX INFO: renamed from: j0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0159b extends AbstractC0127f {

    /* JADX INFO: renamed from: b */
    public C0166c.b f1063b;

    public C0159b(C0129h c0129h, C0166c.b bVar) {
        super(c0129h);
        this.f1063b = bVar;
    }

    /* JADX INFO: renamed from: A */
    public final boolean m528A() {
        C0166c.b bVar;
        if (this.f1063b == null) {
            C0129h c0129h = this.f1004a;
            ContentProviderClient contentProviderClientM545e = C0166c.m545e(c0129h);
            C0166c.b bVar2 = null;
            if (contentProviderClientM545e != null) {
                try {
                    Cursor cursorQuery = contentProviderClientM545e.query(C0166c.m547g(c0129h), C0166c.f1077a, "get=file", null, null);
                    if (cursorQuery != null) {
                        if (cursorQuery.moveToNext()) {
                            bVar = new C0166c.b();
                            bVar.f1085a = cursorQuery.getString(0);
                            bVar.f1086b = cursorQuery.getString(1);
                            bVar.f1087c = cursorQuery.getInt(3) == 1;
                            bVar.f1088d = cursorQuery.getLong(4);
                            bVar.f1089e = cursorQuery.getLong(2);
                        } else {
                            bVar = null;
                        }
                        cursorQuery.close();
                        bVar2 = bVar;
                    }
                } catch (Exception unused) {
                } finally {
                    C0166c.m542b(contentProviderClientM545e);
                }
            }
            this.f1063b = bVar2;
        }
        return this.f1063b != null;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: a */
    public final boolean mo464a(C0129h c0129h) {
        if (c0129h.m484k()) {
            String str = c0129h.f1017e;
            C0129h c0129h2 = this.f1004a;
            if (str.equals(c0129h2.f1017e)) {
                return C0166c.m543c(c0129h2, c0129h, false);
            }
        }
        return false;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: b */
    public final C0129h mo416b(String str) {
        return null;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: c */
    public final boolean mo417c() {
        C0129h c0129h = this.f1004a;
        ContentProviderClient contentProviderClientM545e = C0166c.m545e(c0129h);
        boolean z2 = false;
        if (contentProviderClientM545e != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("_account", c0129h.f1017e);
                bundle.putParcelable("_uri", C0166c.m547g(c0129h));
                Bundle bundleCall = contentProviderClientM545e.call("remove", null, bundle);
                if (bundleCall != null && bundleCall.getInt("_ret") == 0) {
                    z2 = true;
                }
            } catch (Exception unused) {
            } finally {
                C0166c.m542b(contentProviderClientM545e);
            }
        }
        return z2;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: d */
    public final boolean mo418d() {
        return m528A();
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: f */
    public final boolean mo419f(String str) {
        return false;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: h */
    public final String mo466h() {
        return C0166c.m546f(this.f1004a);
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: k */
    public final boolean mo420k() {
        return m528A() && this.f1063b.f1087c;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: l */
    public final boolean mo421l() {
        return m528A() && !this.f1063b.f1087c;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: m */
    public final boolean mo422m() {
        return false;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: n */
    public final long mo423n() {
        if (m528A()) {
            return this.f1063b.f1088d;
        }
        return 0L;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: o */
    public final long mo424o() {
        if (m528A()) {
            return this.f1063b.f1089e;
        }
        return 0L;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: p */
    public final AbstractC0127f[] mo425p() {
        C0129h c0129h = this.f1004a;
        ContentProviderClient contentProviderClientM545e = C0166c.m545e(c0129h);
        int i2 = 0;
        ArrayList<C0166c.b> arrayList = null;
        if (contentProviderClientM545e != null) {
            ArrayList arrayList2 = new ArrayList(0);
            try {
                Cursor cursorQuery = contentProviderClientM545e.query(C0166c.m547g(c0129h), C0166c.f1077a, "get=list", null, null);
                if (cursorQuery != null) {
                    arrayList2.ensureCapacity(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        C0166c.b bVar = new C0166c.b();
                        bVar.f1085a = cursorQuery.getString(0);
                        boolean z2 = true;
                        bVar.f1086b = cursorQuery.getString(1);
                        if (cursorQuery.getInt(3) != 1) {
                            z2 = false;
                        }
                        bVar.f1087c = z2;
                        bVar.f1088d = cursorQuery.getLong(4);
                        bVar.f1089e = cursorQuery.getLong(2);
                        arrayList2.add(bVar);
                    }
                    cursorQuery.close();
                }
                C0166c.m542b(contentProviderClientM545e);
                arrayList = arrayList2;
            } catch (Exception unused) {
                C0166c.m542b(contentProviderClientM545e);
            } catch (Throwable th) {
                C0166c.m542b(contentProviderClientM545e);
                throw th;
            }
        }
        if (arrayList == null) {
            return new AbstractC0127f[0];
        }
        AbstractC0127f[] abstractC0127fArr = new AbstractC0127f[arrayList.size()];
        for (C0166c.b bVar2 : arrayList) {
            C0129h c0129h2 = new C0129h(bVar2.f1085a, c0129h);
            c0129h2.f1016d = bVar2.f1086b;
            abstractC0127fArr[i2] = new C0159b(c0129h2, bVar2);
            i2++;
        }
        return abstractC0127fArr;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: q */
    public final boolean mo426q(String str) {
        C0129h c0129h = this.f1004a;
        ContentProviderClient contentProviderClientM545e = C0166c.m545e(c0129h);
        boolean z2 = false;
        if (contentProviderClientM545e != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("_account", c0129h.f1017e);
                bundle.putParcelable("_uri", C0166c.m547g(c0129h));
                bundle.putString("_name", str);
                Bundle bundleCall = contentProviderClientM545e.call("mkdir", null, bundle);
                if (bundleCall != null && bundleCall.getInt("_ret") == 0) {
                    z2 = true;
                }
            } catch (Exception unused) {
            } finally {
                C0166c.m542b(contentProviderClientM545e);
            }
        }
        return z2;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: s */
    public final boolean mo427s(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: t */
    public final boolean mo428t(C0129h c0129h) {
        if (!c0129h.m484k()) {
            return false;
        }
        String str = c0129h.f1017e;
        C0129h c0129h2 = this.f1004a;
        if (str.equals(c0129h2.f1017e)) {
            return C0166c.m543c(c0129h2, c0129h, true);
        }
        return false;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: v */
    public final ParcelFileDescriptor mo429v(int i2) throws FileNotFoundException {
        ParcelFileDescriptor parcelFileDescriptorOpenFile;
        boolean zM49K = C0015d.m49K(i2, 36864);
        C0129h c0129h = this.f1004a;
        if (zM49K) {
            ContentProviderClient contentProviderClientM545e = C0166c.m545e(c0129h);
            parcelFileDescriptorOpenFile = null;
            if (contentProviderClientM545e != null) {
                try {
                    parcelFileDescriptorOpenFile = contentProviderClientM545e.openFile(C0166c.m547g(c0129h), "rt");
                } catch (Exception unused) {
                } finally {
                    C0166c.m542b(contentProviderClientM545e);
                }
            }
        } else {
            boolean z2 = (i2 & 536870912) == 536870912;
            ContentProviderClient contentProviderClientM545e2 = C0166c.m545e(c0129h);
            try {
                if (contentProviderClientM545e2 == null) {
                    throw new FileNotFoundException();
                }
                try {
                    ParcelFileDescriptor parcelFileDescriptorOpenFile2 = contentProviderClientM545e2.openFile(C0166c.m547g(c0129h), z2 ? "w" : "r");
                    C0166c.m542b(contentProviderClientM545e2);
                    parcelFileDescriptorOpenFile = parcelFileDescriptorOpenFile2;
                } catch (RemoteException unused2) {
                    throw new FileNotFoundException();
                }
            } catch (Throwable th) {
                C0166c.m542b(contentProviderClientM545e2);
                throw th;
            }
        }
        if (parcelFileDescriptorOpenFile != null) {
            return parcelFileDescriptorOpenFile;
        }
        throw new FileNotFoundException();
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: w */
    public final InputStream mo430w() throws FileNotFoundException {
        long jMo424o = mo424o();
        C0129h c0129h = this.f1004a;
        ContentProviderClient contentProviderClientM545e = C0166c.m545e(c0129h);
        C0167d c0167d = null;
        if (contentProviderClientM545e != null) {
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFile = contentProviderClientM545e.openFile(C0166c.m547g(c0129h), "r");
                if (parcelFileDescriptorOpenFile != null) {
                    c0167d = new C0167d(contentProviderClientM545e, c0129h, parcelFileDescriptorOpenFile, jMo424o);
                } else {
                    C0166c.m542b(contentProviderClientM545e);
                }
            } catch (Exception unused) {
            }
        }
        if (c0167d != null) {
            return c0167d;
        }
        throw new FileNotFoundException();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0028 A[Catch: Exception -> 0x002f, TRY_LEAVE, TryCatch #0 {Exception -> 0x002f, blocks: (B:7:0x0012, B:8:0x001e, B:10:0x0028), top: B:18:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:12:0x002f  */
    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: x */
    public final OutputStream mo431x(long j2) throws FileNotFoundException {
        ParcelFileDescriptor parcelFileDescriptorOpenFile;
        C0129h c0129h = this.f1004a;
        ContentProviderClient contentProviderClientM545e = C0166c.m545e(c0129h);
        C0168e c0168e = null;
        if (contentProviderClientM545e != null) {
            String str = "w";
            if (j2 > 0) {
                try {
                    str = "w" + j2;
                    parcelFileDescriptorOpenFile = contentProviderClientM545e.openFile(C0166c.m547g(c0129h), str);
                    if (parcelFileDescriptorOpenFile != null) {
                        c0168e = new C0168e(contentProviderClientM545e, c0129h, parcelFileDescriptorOpenFile);
                    } else {
                        C0166c.m542b(contentProviderClientM545e);
                    }
                } catch (Exception unused) {
                }
            } else {
                parcelFileDescriptorOpenFile = contentProviderClientM545e.openFile(C0166c.m547g(c0129h), str);
                if (parcelFileDescriptorOpenFile != null) {
                    c0168e = new C0168e(contentProviderClientM545e, c0129h, parcelFileDescriptorOpenFile);
                } else {
                    C0166c.m542b(contentProviderClientM545e);
                }
            }
        }
        if (c0168e != null) {
            return c0168e;
        }
        throw new FileNotFoundException();
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: y */
    public final boolean mo432y(String str) {
        C0129h c0129h = this.f1004a;
        ContentProviderClient contentProviderClientM545e = C0166c.m545e(c0129h);
        boolean z2 = false;
        if (contentProviderClientM545e != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("_account", c0129h.f1017e);
                bundle.putParcelable("_uri", C0166c.m547g(c0129h));
                bundle.putString("_name", str);
                Bundle bundleCall = contentProviderClientM545e.call("rename", null, bundle);
                if (bundleCall != null && bundleCall.getInt("_ret") == 0) {
                    z2 = true;
                }
            } catch (Exception unused) {
            } finally {
                C0166c.m542b(contentProviderClientM545e);
            }
        }
        return z2;
    }

    @Override // p020g0.AbstractC0127f
    /* JADX INFO: renamed from: z */
    public final boolean mo433z(long j2, OutputStream outputStream) {
        return false;
    }

    public C0159b(C0129h c0129h) {
        super(c0129h);
        this.f1063b = null;
    }
}
